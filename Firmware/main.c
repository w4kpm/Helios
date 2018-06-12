// internal reference voltage calibration  0x1FFF F7BA - 0x1FFF F7BB

// TS_CAL1 TS_CAL2 = 0x1FFF F7B8 - 0x1FFF F7B9 and 0x1FFF F7C2 - 0x1FFF F7C3




/*
    ChibiOS - Copyright (C) 2006..2015 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#define CHPRINTF_USE_FLOAT   TRUE
#include "ch.h"
#include "hal.h"
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "math.h"
//#include "chprintf.h"
#include "hal_queues.h"
#include <string.h>
#include "stm32f3xx.h"

static uint8_t txbuf[2];
static uint8_t rxbuf[3];

static char text[255];


#define ADC_GRP1_NUM_CHANNELS   2
#define ADC_GRP2_NUM_CHANNELS   5
#define ADC_GRP1_BUF_DEPTH      1
#define ADC_GRP2_BUF_DEPTH      1
static adcsample_t samples1[ADC_GRP1_NUM_CHANNELS * ADC_GRP1_BUF_DEPTH];
static adcsample_t samples2[ADC_GRP2_NUM_CHANNELS * ADC_GRP2_BUF_DEPTH];
size_t nx = 0, ny = 0;
static void adcerrorcallback(ADCDriver *adcp, adcerror_t err) {

  (void)adcp;
  (void)err;
  dbg('error!!');
}



static const SPIConfig std_spicfg0 = {
  NULL,
  NULL,
  GPIOA,                                                        /*port of CS  */
  4,                                                /*pin of CS   */

  0,
  SPI_CR2_DS_2 | SPI_CR2_DS_1 | SPI_CR2_DS_0                    /*CR2 register*/
};



void spi_write(location,data)
{
  spiStart(&SPID1,&std_spicfg0);
  spiSelect(&SPID1);
  txbuf[0] = location;
  txbuf[1] = data;
  spiSend(&SPID1,2,&txbuf);

  
  spiUnselect(&SPID1);
  spiStop(&SPID1);
}

void spi_read(location)
{
  spiStart(&SPID1,&std_spicfg0);
  spiSelect(&SPID1);
  txbuf[0] = location;
  spiSend(&SPID1,1,&txbuf);
  spiReceive(&SPID1,3,&rxbuf);
  spiUnselect(&SPID1);
  spiStop(&SPID1);
}




static const ADCConversionGroup adcgrpcfg1 = {
  FALSE,
  ADC_GRP1_NUM_CHANNELS,
  NULL,
  adcerrorcallback,
  ADC_CFGR_CONT,            /* CFGR    */
  ADC_TR(0, 4095),          /* TR1     */
  {                         /* SMPR[2] sample Register */
    0,
    ADC_SMPR2_SMP_AN16(ADC_SMPR_SMP_601P5)|ADC_SMPR2_SMP_AN18(ADC_SMPR_SMP_601P5)
  },
  {                         /* SQR[4]  Sequence Register - order & channel to read*/
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN16)|   ADC_SQR1_SQ2_N(ADC_CHANNEL_IN18),
    0,
    0,
    0
  }
};



static const ADCConversionGroup adcgrpcfg2 = {
  FALSE,
  ADC_GRP2_NUM_CHANNELS,
  NULL,
  adcerrorcallback,
  ADC_CFGR_CONT,            /* CFGR    */
  ADC_TR(0, 4095),          /* TR1     */
  {                         /* SMPR[2] sample Register */

      ADC_SMPR1_SMP_AN7(ADC_SMPR_SMP_601P5)|ADC_SMPR1_SMP_AN3(ADC_SMPR_SMP_601P5),
        ADC_SMPR2_SMP_AN11(ADC_SMPR_SMP_601P5)|ADC_SMPR2_SMP_AN12(ADC_SMPR_SMP_601P5)|ADC_SMPR2_SMP_AN18(ADC_SMPR_SMP_601P5),
  },
  {                         /* SQR[4]  Sequence Register - order & channel to read*/
      ADC_SQR1_SQ1_N(ADC_CHANNEL_IN12) | ADC_SQR1_SQ2_N(ADC_CHANNEL_IN7) | ADC_SQR1_SQ3_N(ADC_CHANNEL_IN18) | ADC_SQR1_SQ4_N(ADC_CHANNEL_IN11), // solar,ext temp, internal reference, wind
    ADC_SQR2_SQ5_N(ADC_CHANNEL_IN3),
    0,
    0
  }
};






// this should set a timeout of .625 seconds (LSI = 40k / (64 * 1000))

static const WDGConfig wdgcfg = {
  STM32_IWDG_PR_64,
  STM32_IWDG_RL(1000),
  STM32_IWDG_WIN_DISABLED};

// This got redefined in a later version of Chibios for this board
#define GPIOA_PIN0 0



//static uint8_t vbuf[64][128];
//static uint8_t vbuf2[64][128];

static mailbox_t RxMbx;
#define MAILBOX_SIZE 25
static msg_t RxMbxBuff[MAILBOX_SIZE];
static char current_key;
static  uint16_t step =0;
static  int16_t deg,speed =0;

static char rx_text[32][32];
static int rx_queue_pos=0;
static int rx_queue_num=0;
static uint8_t my_address = 0x10;
static SerialConfig uartCfg =
{
    115200,// bit rate
    0,
    0,
    0,
};


static SerialConfig uartCfg2 =
{
    9600,// bit rate
    0,
    0,
    0,
};


dbg(char *string)
{
    chprintf((BaseSequentialStream*)&SD1,string);
    chThdSleepMilliseconds(100);
}


/*
 * Application entry point.
 */


/* *******************
stolen from http://www.modbustools.com/modbus.html#crc
*/
uint16_t CRC16 (const char *nData, uint16_t wLength)
{
static const uint16_t wCRCTable[] = {
   0X0000, 0XC0C1, 0XC181, 0X0140, 0XC301, 0X03C0, 0X0280, 0XC241,
   0XC601, 0X06C0, 0X0780, 0XC741, 0X0500, 0XC5C1, 0XC481, 0X0440,
   0XCC01, 0X0CC0, 0X0D80, 0XCD41, 0X0F00, 0XCFC1, 0XCE81, 0X0E40,
   0X0A00, 0XCAC1, 0XCB81, 0X0B40, 0XC901, 0X09C0, 0X0880, 0XC841,
   0XD801, 0X18C0, 0X1980, 0XD941, 0X1B00, 0XDBC1, 0XDA81, 0X1A40,
   0X1E00, 0XDEC1, 0XDF81, 0X1F40, 0XDD01, 0X1DC0, 0X1C80, 0XDC41,
   0X1400, 0XD4C1, 0XD581, 0X1540, 0XD701, 0X17C0, 0X1680, 0XD641,
   0XD201, 0X12C0, 0X1380, 0XD341, 0X1100, 0XD1C1, 0XD081, 0X1040,
   0XF001, 0X30C0, 0X3180, 0XF141, 0X3300, 0XF3C1, 0XF281, 0X3240,
   0X3600, 0XF6C1, 0XF781, 0X3740, 0XF501, 0X35C0, 0X3480, 0XF441,
   0X3C00, 0XFCC1, 0XFD81, 0X3D40, 0XFF01, 0X3FC0, 0X3E80, 0XFE41,
   0XFA01, 0X3AC0, 0X3B80, 0XFB41, 0X3900, 0XF9C1, 0XF881, 0X3840,
   0X2800, 0XE8C1, 0XE981, 0X2940, 0XEB01, 0X2BC0, 0X2A80, 0XEA41,
   0XEE01, 0X2EC0, 0X2F80, 0XEF41, 0X2D00, 0XEDC1, 0XEC81, 0X2C40,
   0XE401, 0X24C0, 0X2580, 0XE541, 0X2700, 0XE7C1, 0XE681, 0X2640,
   0X2200, 0XE2C1, 0XE381, 0X2340, 0XE101, 0X21C0, 0X2080, 0XE041,
   0XA001, 0X60C0, 0X6180, 0XA141, 0X6300, 0XA3C1, 0XA281, 0X6240,
   0X6600, 0XA6C1, 0XA781, 0X6740, 0XA501, 0X65C0, 0X6480, 0XA441,
   0X6C00, 0XACC1, 0XAD81, 0X6D40, 0XAF01, 0X6FC0, 0X6E80, 0XAE41,
   0XAA01, 0X6AC0, 0X6B80, 0XAB41, 0X6900, 0XA9C1, 0XA881, 0X6840,
   0X7800, 0XB8C1, 0XB981, 0X7940, 0XBB01, 0X7BC0, 0X7A80, 0XBA41,
   0XBE01, 0X7EC0, 0X7F80, 0XBF41, 0X7D00, 0XBDC1, 0XBC81, 0X7C40,
   0XB401, 0X74C0, 0X7580, 0XB541, 0X7700, 0XB7C1, 0XB681, 0X7640,
   0X7200, 0XB2C1, 0XB381, 0X7340, 0XB101, 0X71C0, 0X7080, 0XB041,
   0X5000, 0X90C1, 0X9181, 0X5140, 0X9301, 0X53C0, 0X5280, 0X9241,
   0X9601, 0X56C0, 0X5780, 0X9741, 0X5500, 0X95C1, 0X9481, 0X5440,
   0X9C01, 0X5CC0, 0X5D80, 0X9D41, 0X5F00, 0X9FC1, 0X9E81, 0X5E40,
   0X5A00, 0X9AC1, 0X9B81, 0X5B40, 0X9901, 0X59C0, 0X5880, 0X9841,
   0X8801, 0X48C0, 0X4980, 0X8941, 0X4B00, 0X8BC1, 0X8A81, 0X4A40,
   0X4E00, 0X8EC1, 0X8F81, 0X4F40, 0X8D01, 0X4DC0, 0X4C80, 0X8C41,
   0X4400, 0X84C1, 0X8581, 0X4540, 0X8701, 0X47C0, 0X4680, 0X8641,
   0X8201, 0X42C0, 0X4380, 0X8341, 0X4100, 0X81C1, 0X8081, 0X4040 };

char nTemp;
uint16_t wCRCWord = 0xFFFF;

   while (wLength--)
   {
      nTemp = *nData++ ^ wCRCWord;
      wCRCWord >>= 8;
      wCRCWord  ^= wCRCTable[nTemp];
   }
   return wCRCWord;
} // End: CRC16





static THD_WORKING_AREA(waThread3, 512);
static THD_FUNCTION(Thread3, arg) {
  (void)arg;
  int pass = 0;
  msg_t b = 0;

  chRegSetThreadName("serial");
  while(TRUE)
      {
	  
	  b = sdGetTimeout(&SD2,TIME_MS2I(2));

	  
	  if ((b!= Q_TIMEOUT) && (rx_queue_pos < 31))
	      {
		  //chprintf((BaseSequentialStream*)&SD1,"got char: %x\r\n",b);
		  rx_text[rx_queue_num][rx_queue_pos++]=b;
	      }
	  if ((b == Q_TIMEOUT) && (rx_queue_pos > 0))
	      {

		  rx_text[rx_queue_num][rx_queue_pos] = 0;

		  chMBPostTimeout(&RxMbx,(rx_queue_num<<8)|rx_queue_pos,TIME_INFINITE); // let our mailbox know
		  rx_queue_pos = 0;
		  // we have a new entry
		  rx_queue_num = (++rx_queue_num)%32;
		  memset(rx_text[rx_queue_num],0,5);
	      }
	  
  
      }

  return MSG_OK;
}

uint8_t decode_pos(char pos)
{
  return pos - 32;
}


float calc_temp(float vdd,int rawread)
{
    float vts,vts2,temp;
    vts = (rawread / 4095.0)*vdd;
    //chprintf((BaseSequentialStream*)&SD1,"vts %f \r\n",vts);
    vts2 = 1.4-vts;
    //chprintf((BaseSequentialStream*)&SD1,"vts2 %f \r\n",vts2);
    temp = (vts2    / .0043) + 25.0;
    return temp;
	
}


float calc_rtemp(float vdd,int rawread)
{
    float vts,vts2,temp;
    vts = (rawread / 4095.0)*vdd;
    //chprintf((BaseSequentialStream*)&SD1,"vts %f \r\n",vts);
    vts2 = 1.4-vts;
    //chprintf((BaseSequentialStream*)&SD1,"vts2 %f \r\n",vts2);
    temp = (vts2    / .0043) + 25.0;
    return temp;
	
}



float calc_volts(float vdd,int rawread)
{
    return (rawread/4095.0)*vdd;
}


static THD_WORKING_AREA(waThread4, 2048);
static THD_FUNCTION(Thread4, arg) {
    int charnum;
    int index;
    msg_t key;
    int x;
    char *starttxt;
    char text[255];
    char lcltext[32];
    uint8_t command;
    int row;
    int col;
    int len;
    msg_t rxRow;
    msg_t rxPos;
    msg_t response;
    uint8_t skip_next;
    uint16_t reg;
    uint16_t value;
    while (TRUE)
	{
	    // the skip is because the way I have it hooked up right now
	    // causes it to read whatever we send.
	    chMBFetchTimeout(&RxMbx,&rxRow,TIME_INFINITE);
	    rxPos = rxRow & 0xFF;
	    rxRow = rxRow >> 8;
	    memcpy(lcltext,rx_text[rxRow],rxPos);
	    // if the message is for us and the CRC matches - otherwise -
	    // ignore.

            if ((lcltext[0] == my_address) &&
		(*(uint16_t*)(lcltext+rxPos-2) == CRC16(lcltext,rxPos-2)))

		{
		    
		    command = lcltext[1];		
		    palSetPad(GPIOA,4);
		    //chprintf((BaseSequentialStream*)&SD1,"+");
		    if (command == 4)
			{
			    reg = (lcltext[2]<<8)|lcltext[3];
			    value = step;
			    if (reg==1)
				value = deg;
			    if (reg==2)
				value = speed;
			    lcltext[0] = my_address;
			    lcltext[1] = 4;
			    lcltext[2] = 2;
			    lcltext[3] = (value & 0xFF00 ) >> 8;
			    lcltext[4] = value & 0xFF ;
			    *(uint16_t*)(lcltext+5) = CRC16(lcltext,5);
			    lcltext[7] = 0;
			    sdWrite(&SD2,lcltext,7);
			}
		    else
			sdWrite(&SD2,lcltext,rxPos);
		    //chprintf((BaseSequentialStream*)&SD1,"Queue not empty %X %x %x\r\n",SD3.oqueue.q_counter,SD3.oqueue.q_rdptr,SD3.oqueue.q_wrptr);
		    //chprintf((BaseSequentialStream*)&SD1,"command %d - register %d, %d\r\n",lcltext[1],reg,value);
		    // I've been having problems with this - setting it too
		    // short causes truncated communications back to the
		    // PLC - I should really find a way to trigger it once the
		    // call co sdWrite is done.chOQIsEmptyI

		    while (!(oqIsEmptyI(&(&SD2)->oqueue)))
		    {
			//chprintf((BaseSequentialStream*)&SD1,".");
		    	chThdSleepMilliseconds(1);
		    }

		    chThdSleepMilliseconds(2);
		    palClearPad(GPIOA,4);
		    //chThdSleepMilliseconds(1);
		    //chprintf((BaseSequentialStream*)&SD1,"-");
		    //hprintf(&SD1,lcltext);
		    //skip_next = 0;
		}

	}

    }


int main(void) {
  unsigned i;

  /*
   * System initializations.
   * - HAL initialization, this also initializes the configured device drivers
   *   and performs the board-specific initializations.
   * - Kernel initialization, the main() function becomes a thread and the
   *   RTOS is active.
   */
  halInit();
  chSysInit();

void adcSTM32EnableTSVREFE(void) {

  ADC12_COMMON->CCR |= ADC12_CCR_VREFEN;
  ADC34_COMMON->CCR |= ADC34_CCR_VREFEN;
}

  
  palSetPad(GPIOB, 5);
  wdgStart(&WDGD1, &wdgcfg);
  wdgReset(&WDGD1);
  chMBObjectInit(&RxMbx,&RxMbxBuff,MAILBOX_SIZE);
  adcStart(&ADCD1, NULL);

  adcSTM32EnableTSVREFE();

  adcSTM32EnableTS(&ADCD1);
  

  adcStart(&ADCD4, NULL);

  /*
   * SPI1 I/O pins setup.
   */

  palSetPadMode(GPIOD, 8, PAL_MODE_INPUT_ANALOG);
  palSetPadMode(GPIOD, 10, PAL_MODE_INPUT_ANALOG);
  palSetPadMode(GPIOD, 11, PAL_MODE_INPUT_ANALOG);
  palSetPadMode(GPIOD, 14, PAL_MODE_INPUT_ANALOG);
  
  palSetPadMode(GPIOB, 6, PAL_MODE_ALTERNATE(7));    
  palSetPadMode(GPIOB, 7, PAL_MODE_ALTERNATE(7));

  palSetPadMode(GPIOA, 2, PAL_MODE_ALTERNATE(7));    
  palSetPadMode(GPIOA, 3, PAL_MODE_ALTERNATE(7));


  // Temp SPI
  //  palSetPadMode(GPIOA, 4, PAL_MODE_ALTERNATE(5));
  palSetPadMode(GPIOA, 4, PAL_MODE_OUTPUT_PUSHPULL);
  palSetPadMode(GPIOA, 5, PAL_MODE_ALTERNATE(5)|PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(GPIOA, 6, PAL_MODE_ALTERNATE(5)|PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(GPIOA, 7, PAL_MODE_ALTERNATE(5)|PAL_STM32_OSPEED_HIGHEST);


  
  palSetPadMode(GPIOB, 5, PAL_MODE_OUTPUT_PUSHPULL);
  palSetPadMode(GPIOB, 8, PAL_MODE_INPUT_PULLUP);
  palSetPadMode(GPIOB, 9, PAL_MODE_INPUT_PULLUP);
  
  //palSetPadMode(GPIOA, 4, PAL_MODE_OUTPUT_PUSHPULL);
  //palSetPadMode(GPIOA, 5, PAL_MODE_ALTERNATE(5)|PAL_STM32_OSPEED_HIGHEST);
  //palSetPadMode(GPIOA, 6, PAL_MODE_ALTERNATE(5)|PAL_STM32_OSPEED_HIGHEST);
  //palSetPadMode(GPIOA, 7, PAL_MODE_ALTERNATE(5)|PAL_STM32_OSPEED_HIGHEST);
  //palClearPad(GPIOA,4);

  my_address = my_address | palReadPad(GPIOB,8);
  my_address = my_address | (palReadPad(GPIOB,9)<<1);

  
  sdStart(&SD1, &uartCfg);
  sdStart(&SD2, &uartCfg2);
    // chprintf((BaseSequentialStream*)&SD2,"Hello World 2\r\n");
  chprintf((BaseSequentialStream*)&SD1,"Hello World - I am # %d\r\n",my_address);
  //palSetPadMode(GPIOB, 8, PAL_MODE_OUTPUT_PUSHPULL); 

  //palClearPad(GPIOB, 8);     /* Green.  */







    


  //  chThdCreateStatic(waThread1, sizeof(waThread1), NORMALPRIO, Thread1, NULL);

  chprintf((BaseSequentialStream*)&SD1,"HelloA\r\n")  ;
  chThdCreateStatic(waThread3, sizeof(waThread3), NORMALPRIO, Thread3, NULL);
  chprintf((BaseSequentialStream*)&SD1,"HelloB\r\n")  ;
  chThdCreateStatic(waThread4, sizeof(waThread4), NORMALPRIO, Thread4, NULL);
  chprintf((BaseSequentialStream*)&SD1,"HelloC\r\n")  ;
  ////chThdCreateStatic(waThread5, sizeof(waThread5), NORMALPRIO, Thread5, NULL);

  ////chThdCreateStatic(waThread6, sizeof(waThread6), NORMALPRIO, Thread6, NULL);  
  uint32_t x,y;
  float VDD;
  float outsideTemp;
  float internalTemp;
  float irradiance;
  float irradiance2;
  uint8_t lsb,hsb;
  float result;
  float z1,z2,z3,z4;
  float pt100temp;
#define RTD_A 3.9083e-3
#define RTD_B -5.775e-7


  
  OPAMP4->CSR = 0X8041;
  chThdSleepMilliseconds(250);
  chprintf(&SD1,"Default OPAMP4 CSR %X\r\n",OPAMP4->CSR);


  while (TRUE)
      {
	  wdgReset(&WDGD1);
	  step = (step +1)%100;

	  //chprintf((BaseSequentialStream*)&SD1,"RefV %d \r\n",*(uint16_t*)0x1FFFF7BA);
	  adcConvert(&ADCD4, &adcgrpcfg2, samples2, ADC_GRP2_BUF_DEPTH);
	  chThdSleepMilliseconds(250);
	  // datasheet RM0316 VDDA = 3.3 V ₓ VREFINT_CAL / VREFINT_DATA
	  
	  chprintf(&SD1,"calibrated at 3.3 %d\r\n",*(uint16_t*)0x1FFFF7BA);
	  chprintf((BaseSequentialStream*)&SD1,"ADC4 %d %d %d %d \r\n",samples2[0],samples2[1],samples2[2],samples2[3]);
	  float resistance = (2048.0/samples2[1]) * 10000.0;
	  // see http://www.giangrandi.ch/electronics/ntc/ntc.shtml
	  float outsidetemp = (1.0/((log(resistance/10000.0)/4200.0)+1/298.15))-273.15;
	  
	  chprintf((BaseSequentialStream*)&SD1,"Resistance %f %f\r\n",resistance,outsidetemp);
	  VDD = 3.3 * (*(uint16_t*)0x1FFFF7BA) / (samples2[2] * 1.0);
	  irradiance = calc_volts(VDD,samples2[0])/.0002;
	  irradiance2 = calc_volts(VDD,samples2[4])/(8*.0002);
	  //outsideTemp = calc_rtemp(VDD,samples2[1]);
	  chprintf((BaseSequentialStream*)&SD1,"OpAmp Mult %.2f\r\n",calc_volts(VDD,samples2[4])/calc_volts(VDD,samples2[0]));
	  

	  adcConvert(&ADCD1, &adcgrpcfg1, samples1, ADC_GRP1_BUF_DEPTH);
	  chThdSleepMilliseconds(250);
	  internalTemp = calc_temp(VDD,samples1[0]);
	  chprintf((BaseSequentialStream*)&SD1,"ADC1 %d %d \r\n",samples1[0],samples1[1]);

	  //internalTemp = calc_temp(VDD,samples1[0]);
	  float amps = (calc_volts(VDD,samples2[3])/120.0);
	  float windspeed = (amps-0.004)*(50.0/.016);
	  float opamp4 = calc_volts(VDD,samples2[4]);
	  
	  if (windspeed < 0.5)
	      windspeed = 0;
          chprintf((BaseSequentialStream*)&SD1,"irr: %.2f : %.2f,  inside: %.2f outside: %.2f,vdd: %.2f windV: %.4f %.2fmph  \r\n",irradiance,irradiance2,internalTemp,outsidetemp,VDD,amps,windspeed*2.237);
	  spi_write(0x80,0xc0);
	  spi_read(0x0);
	  chprintf((BaseSequentialStream*)&SD1,"spi: %x %x %x\r\n",rxbuf[0],rxbuf[1],rxbuf[2]);
	  lsb = rxbuf[2];
	  hsb = rxbuf[1];
	  result = (hsb << 8) + lsb;
	  chprintf((BaseSequentialStream*)&SD1,"r: %.2f\r\n",result);
	  result = (result*430.0) / 32768.0;
	  
	  chprintf((BaseSequentialStream*)&SD1,"r: %.2f\r\n",result);
	  z1 = -RTD_A;
	  z2 = RTD_A * RTD_A - (4 * RTD_B);
	  z3 = (4 * RTD_B) / 100.0;
	  z4 = 2 * RTD_B;
	  pt100temp = z2 + (z3 * result);
	  pt100temp = (sqrt(pt100temp) + z1) / z4;
	  chprintf((BaseSequentialStream*)&SD1,"t: %.2f\r\n",pt100temp);

	  
	  chThdSleepMilliseconds(250);
	  palSetPad(GPIOB, 5);
	  chThdSleepMilliseconds(500);
	  
	  palClearPad(GPIOB, 5);
   }



  return 0;
}
