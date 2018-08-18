from pymodbus.client.sync import ModbusSerialClient 
from pymodbus.constants import Endian
from pymodbus.payload import BinaryPayloadDecoder
from pymodbus.payload import BinaryPayloadBuilder
import time


def readmodbus(modbusid,register,fieldtype,readtype,serialport):
    instrument = ModbusSerialClient(method ='rtu',port=serialport,baudrate=9600)
    instrument.connect()
    
    #print("Reading ModbusID %d register %d"%(modbusid,register)),
    x = None
    read = False
    validread = True
    while read == False:
        lock = True

        if lock:

            read = True
           # instrument.serial.reset_input_buffer()
            signed = False
            try:
                if fieldtype in ['int','sint']:
                    readlen = 1
                if fieldtype in ['long','slong','float']:
                    readlen = 2
                if fieldtype == 'string':
                    readlen = 10
                #print(".")
                if readtype == 3:
                    x = instrument.read_holding_registers(register,readlen,unit=modbusid,timeout=.5)
                if readtype ==4:
                    x = instrument.read_input_registers(register,readlen,unit=modbusid,timeout=.5)
                #print("..")
                instrument.close()
                #print(x)
                decoder = BinaryPayloadDecoder.fromRegisters(x.registers, endian=Endian.Little)
                if fieldtype == 'slong':
                    x = decoder.decode_32bit_int()
                if fieldtype == 'long':
                    x = decoder.decode_32bit_uint()
                if fieldtype == 'sint':
                    x = decoder.decode_16bit_int()
                if fieldtype == 'int':
                    x = decoder.decode_16bit_uint()
                if fieldtype == 'float':
                    x = decoder.decode_32bit_float()
                if fieldtype == 'string':
                    x = decoder.decode_string(10)

            except Exception as e:
                print(e)
                x=0
                validread = False
    #print(x,validread)
    #if fieldtype in ['sint','slong','int','long']:
    #    print("%X"%x)
    #time.sleep(.1)
    return x


def change_tracker_setpoint(modbusid,serialport,setpoint):
    instrument = ModbusSerialClient(method ='rtu',port=serialport,baudrate=9600)

    builder = BinaryPayloadBuilder(endian=Endian.Big)

    builder.add_16bit_int(setpoint)
    payload = builder.build()
    #print(payload)

    #print(payload[0][0])
    #print(payload[0][1])
    
    pld = payload[0][1]|(payload[0][0]<<8)
    
    instrument.connect()
    instrument.write_register(3,pld,unit=modbusid,timeout=.1)
    instrument.close()


#print("xTemp1 *10 ",readmodbus(10,3,'sint',4,'/dev/ttyUSB1'))
print("Irradiance*10",readmodbus(60,1,'sint',4,'/dev/ttyUSB1'))
print("Wind *10 "    ,readmodbus(60,2,'sint',4,'/dev/ttyUSB1'))
print("Temp1 *10 "   ,readmodbus(60,3,'sint',4,'/dev/ttyUSB1'))
print("Temp2 *10 "   ,readmodbus(60,4,'sint',4,'/dev/ttyUSB1'))
print("Temp3 *10 "   ,readmodbus(60,5,'sint',4,'/dev/ttyUSB1'))
print("Temp4 *10 "   ,readmodbus(60,6,'sint',4,'/dev/ttyUSB1'))
print("Temp5 *10 "   ,readmodbus(60,7,'sint',4,'/dev/ttyUSB1'))
print("Snow "        ,readmodbus(60,8,'sint',4,'/dev/ttyUSB1'))
