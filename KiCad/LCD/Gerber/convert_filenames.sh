#! /bin/bash
mv LCD-B.Cu.gbr LCD.GBL
mv LCD-F.Cu.gbr LCD.GTL
mv LCD-F.Mask.gbr LCD.GTS
mv LCD-B.Mask.gbr LCD.GBS
mv LCD-F.SilkS.gbr LCD.GTO
mv LCD-B.SilkS.gbr LCD.GBO
mv LCD-Edge.Cuts.gbr LCD.GML
mv LCD.drl LCD.TXT
zip LCDZip.zip LCD.*
