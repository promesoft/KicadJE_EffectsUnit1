#include <EEPROM.h>
/* -----------------------------------------------
 *  GLOBAL DEFINES
 * -----------------------------------------------
 */
//OVERRIDE PINS FOR LFO
#define LFO0 6 // Sets Pin PWM1 = Out 6 (top right)
#define LFO1 11 // Sets Pin PWM2 = Out 11 (mid right)
#define LFO2 10 // Sets Pin PWM6 = Out 10 (top left)
#define LFO3 9 // Sets Pin PWM4 = Out 9 (mid left)

#define SWpin A0 //add 100nF to GND for debounce 
#define Apin A1 //add 100nF to GND for debounce
#define Bpin A2 //add 100nF to GND for debounce

#define LeftIn A3 // Lowest Left feeds to left two top outputs
#define LeftBottomPot A4 // Addon board
#define LeftTopPot A5 // Addon board
#define RightCenterIn A6 // Feeds to Right Top out
#define RightBottomIn A7 // Feeds to Right Center out

#define LED1 2
#define LED2 3
#define LED3 4
#define LED4 5
#define LED_Out6 7
#define LED_Out9 13
#define LED_Out10 12
#define LED_Out11 8

/* -----------------------------------------------
 *  GLOBAL VAR
 * -----------------------------------------------
 */
boolean A_old=0, B_old=1, SW_old=0;
boolean left = false, right = false, button = false;

boolean LEDSelData = false, LEDSel2Data = false; 
unsigned int encoder[4], buttoncnt = 0;
unsigned int state = 0; 
//For LFO - State 00 = Out6 - 01 = Out9 - 10 = Out10 - 11 = Out11
byte LFO_CH[4][5]; //(see state above) [LFO Ch0-3] [State,Counter,LastUpdate,StepA4,DelayA5]
boolean LEDData[4][4]; //(see state)

unsigned long lastwaveupdate = 0; // LFO millis timer between samples
unsigned int delayTime = 4; 
uint8_t tableStep = 0;
uint8_t PWMdata = 0;
