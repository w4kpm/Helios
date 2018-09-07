from pymodbus.client.sync import ModbusSerialClient 
from pymodbus.constants import Endian
from pymodbus.payload import BinaryPayloadDecoder
from pymodbus.payload import BinaryPayloadBuilder
import time

baud=9600
station_id = 60
port = '/dev/ttyUSB0'

def readmodbus(modbusid,register,fieldtype,readtype,serialport):
    instrument = ModbusSerialClient(method ='rtu',port=serialport,baudrate=baud)
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
                decoder = BinaryPayloadDecoder.fromRegisters(x.registers, byteorder=Endian.Big)
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
print("Irradiance ",readmodbus(station_id,1,'sint',4,port)/10.0)
time.sleep(.1)
print("Wind "    ,readmodbus(station_id,2,'sint',4,port)/10.0)
time.sleep(.1)
print("Temp1 "   ,readmodbus(station_id,3,'sint',4,port)/10.0)
time.sleep(.1)
print("Temp2 "   ,readmodbus(station_id,4,'sint',4,port)/10.0)
time.sleep(.1)
print("Temp3 "   ,readmodbus(station_id,5,'sint',4,port)/10.0)
time.sleep(.1)
print("Temp4 "   ,readmodbus(station_id,6,'sint',4,port)/10.0)
time.sleep(.1)
print("Temp5 "   ,readmodbus(station_id,7,'sint',4,port)/10.0)
time.sleep(.1)
print("Snow "        ,readmodbus(station_id,8,'sint',4,port))
time.sleep(.1)
print("Rain Rate "   ,readmodbus(station_id,9,'sint',4,port)/100.0)
time.sleep(.1)
print("Lifetime Rain "   ,readmodbus(station_id,10,'sint',4,port)/100.0)
