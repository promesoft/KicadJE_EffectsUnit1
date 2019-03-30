# KicadJE_EffectsUnit1
JE-EU1 - PT2399 based reverb - distortion units
Eurorack form factor

# MK1 Design
## Status - Gerber done
# Status - Preliminary tests
## Initial 
| Stage  | Detail | Status |
| ------------- | ------------- | ------------- |
| create material  | sch/pcb | produced Rev A  |
| | gerber | Produced |
| production  | ordered  | YES |
|  | produced | YES |
|  | delivered | YES |
## Preliminary validation
| Test  | Detail | Status |
| ------------- | ------------- | ------------- |
| Initial Inspection |  | OK |
| Initial Technical Test | PT2399 | OK - See Errata |
| Initial Technical Test |   |  |
| Initial Technical Test |   |  |
| Initial Product Test |   |  |
| Initial Power Consumption | PT2399 | 40-60mA ! depending on VCO circuit |
| Initial Power Consumption | Counter | 10mA  |
| Initial Power Consumption | Bitcrunch |  |

## Secondary validation
| Test  | Detail | Status |
| ------------- | ------------- |------------- |
| Product Test |  | ok after mod |
| Quality |  | ongoing |
| Long Term Product Test | | Modded version installed in rack |

## Errata
### ERRATA - PT2399
 * 78L05 inv pinout
 * MMBT2222 wrong pinout - workaround flip and turn
 * Delay time pot reversed
 * PT2399 occational latchup with modification
### ERRATA - Counter
### ERRATA - Bitcrunch
## Issues and Notes
### Issues and Notes - PT2399
 * Replace 20k across Q203 w Yellow LED
 * Replace 120k R214 with 47k
 * Move C222 across RV202 - move D2015 across R214 and remove Q202+R213
 * Consider Vactrol of RV202 and RV201
 * Consider +5V supply...
### Issues and Notes - Counter
 * Replace 100uF C310 with 10-22uF (consider a switch for next rev)
 * Reset/Clk in Trigger not 5V tolerant

### Issues and Notes - Bit Crunch
 
### Workarounds

## Base Construction 
The idea is to have 3 different units.
Practically it may be required to fit the bitcrusher and the distortion in one unit.
### Distortion base board with Arduino Bitcrusher
 - 16pin Europower connector
### PT2399 base board 
 - 10pin Europower connector
 - BC547 or BC337 NPN and Zener 7v5 regulator followed by 78L05 regulator
 - PT2399 echo circuit with anti lockup circuit for pin 6
 - 
### Binary counter and clock
 - 10pin Europower connector
 - Build around a CD4017 counter chip (SOP-14)
 
![](KicadJE-EU1-MK1-RevA-Schematic.png) 
 
![](KicadJE-EU1-MK1-RevA-Top3D.png)

![](KicadJE-EffectsUnit1_3D2.png)

## Vital Components
 - Arduino Nano
 - PT2399
 - CD4017
 - NE555
 - Mini Jacks (PJ-321) 
 - ALPS RV09 potentiometer
 - TL072 or similar dual op amp
 - Diode clipping (silicium signal diodes, LED, power, shottkey, germanium
 
### Mechanical
![](EU1-MK1-mechanical.png)

The construction is 
-----------------------------------------------------
