#! /bin/bash
mv LCD-B_Cu.gbr LCD.GBL
mv LCD-F_Cu.gbr LCD.GTL
mv LCD-F_Mask.gbr LCD.GTS
mv LCD-B_Mask.gbr LCD.GBS
mv LCD-F_SilkS.gbr LCD.GTO
mv LCD-B_SilkS.gbr LCD.GBO
mv LCD-Edge_Cuts.gbr LCD.GML
mv LCD.drl LCD.TXT
zip LCDZip.zip LCD.*
