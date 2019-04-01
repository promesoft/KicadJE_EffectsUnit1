
/* 
 * Wavetable LFO inspiration: 
 * https://www.muffwiggler.com/forum/viewtopic.php?t=169706&sid=4b0d7d4af599d0df3e7b6fc29ece21b8 
 *  
 */ 

#include "wavetable.h";
#include "globals.h";


/* =====================================================
==============INIT DATA STRUCTURES======================
======================================================*/  
void setupDataStruct(){
   for (int i=0; i <= 3; i++){
     for (int j=0; j <= 3; j++){
      LEDData[i][j]=false;
     }
     LFO_CH[i] = EEPROM.read(i);
     if (LFO_CH[i] > 15) LFO_CH[i] = 0;
      updateLEDValue(LFO_CH[i], i);
      encoder[i] = LFO_CH[i] << 2;
   }
}
/* =====================================================
==============SETUP=====================================
======================================================*/  
void setup() {  
  Serial.begin(38400);
  Serial.println();
  Serial.println("");
  Serial.println(F(__FILE__));
  Serial.print(F("Build date: "));
  Serial.println(F(__DATE__));
  delay(50);  
  setupDataStruct();
  
/* ===========Encoder Setup=============================*/
  pinMode(SWpin, INPUT);
  pinMode(Apin, INPUT);
  pinMode(Bpin, INPUT);
  // Enable internal pull-up resistors
  digitalWrite(SWpin, HIGH);
  digitalWrite(Apin, HIGH);
  digitalWrite(Bpin, HIGH);

/* ===========LED Setup=================================*/
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED_Out6, OUTPUT);
  pinMode(LED_Out9, OUTPUT);
  pinMode(LED_Out10, OUTPUT);
  pinMode(LED_Out11, OUTPUT);
    
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
  digitalWrite(LED_Out6, HIGH);
  digitalWrite(LED_Out9, HIGH);
  digitalWrite(LED_Out10, HIGH);
  digitalWrite(LED_Out11, HIGH);
  delay(150);

  updateLED();

/* =========Setup LFO Output pins=======================*/
  pinMode(LFO1, OUTPUT);                                           // Sets Pin 6 PWM1
  pinMode(LFO2, OUTPUT);                                           // Sets Pin 9 PWM2
  pinMode(LFO3, OUTPUT);                                           // Sets Pin 10 PWM3
  pinMode(LFO4, OUTPUT);                                           // Sets Pin 11 PWM3
  
/* =========Enable interrupt on A0,1,2==================*/
  // 1. PCIE1: Pin Change Interrupt Enable 1
  PCICR =  0b00000010; 
  // Enable Pin Change Interrupt for A0, A1, A2
  PCMSK1 = 0b00000111; 

  delay(100); 
/* =====================================================*/

} 

/* =====================================================
==============MAIN LOOP=================================
======================================================*/  
void loop() { 
  checkencoder();                  //Check encoder and update values

  updateLED();                     //LED on for active state    
  updateLEDValue(LFO_CH[0], 0); //Update current midi chan for state 0
  clearLED();                      //LED off (dim light)

  updatewave();
}

/* =====================================================
==============Update LED's based on LED Values==========
======================================================*/ 
char getWaveSample(unsigned int PWMshape){
    switch (PWMshape) {
      case 1:
        PWMdata = tableStep;
        // Saw wave for shape 1
        break;
      case 2:
        PWMdata = 256-tableStep;
        // Inv Saw wave for shape 2
        break;
      case 3:
        //Triangle wave for shape 3
        PWMdata = tableStep * 2;
        if (tableStep > 127) PWMdata = 256-(2*(tableStep-127)); 
        break;
      case 4: // Step 4
        PWMdata = (tableStep&0b11000000)+64;
        break;
      case 5: // Step 8
        PWMdata = (tableStep&0b11100000)+32;
        break;
      case 6: // Step 16
        PWMdata = (tableStep&0b11110000)+16;
        break;
      case 7: // Step 32
        PWMdata = (tableStep&0b11111000)+8;
        break;
      case 8: // Step 4 + noise
        PWMdata = random(120) * (tableStep>>6);
        break;
      case 9: // Step 8 + noise
        PWMdata = random(60) * (tableStep>>5);
        break;
      case 10: // noise
        PWMdata = random(255);
        break;
      case 11: // noise
        PWMdata = random(128) + tableStep;
        break;
      case 12: // ramp and noise
        if (tableStep < 127 ) {
          PWMdata = 2 * tableStep;
        }
        else {
          PWMdata = random(255);
        }
        break;
      case 13: // half ramp
        if (tableStep < 127 ) {
          PWMdata = 2 * tableStep;
        }
        else {
          PWMdata = 0;
        }
        break;
      case 14: // 25% duty cycle
        if (tableStep < 63 ) {
          PWMdata = 255;
        }
        else {
          PWMdata = 0;
        }
        break;
      case 15: // pulse 6% duty cycle
        PWMdata = 0;
        if (tableStep < 64) {
          PWMdata = 255;
        }
        if (tableStep > 128) {
          if (tableStep < 192) {
            PWMdata = 255;
          }
        }
        break;
      default:
        // Sine wave for shape 0
        PWMdata = waveTable[tableStep];
        break;
    }
    return PWMdata;
}
/* =====================================================
==============Update Wave data pointer==================
======================================================*/ 
void updatewave(){
  if ( millis() >= (lastwaveupdate+delayTime) ){
    lastwaveupdate = millis();
    tableStep++;                                                // Jumps to the next step. 
                                                                /* tableStep is an 8-Bit unsigned integer, 
                                                                so it can only store a value between 0 and 255 and will 
                                                                automatically "overflow" and go back to 0 when it gets 
                                                                bigger than 255, which is the lenght of the lookup table. 
                                                                 */ 
  /*  Serial.print(F("Delay time: "));
    Serial.print(LFO_CH[3]<<1);
    Serial.println(F(" "));*/
    delayTime =  32 - (LFO_CH[3]<<1);                                 // values from 0 to 15 shifted up 1 
                                                                // multiplied by 2 as delay from sample to sample 
  /* ===========Update Square Output======================*/
    if(tableStep<128) {                                           // Turn LED on for first half of the cycle, indicate Tempo 
      digitalWrite(LFO3, HIGH); 
      digitalWrite(LFO4, LOW); 
    } 
    else {                                                        // Turn it off for the second half 
      digitalWrite(LFO3, LOW); 
      digitalWrite(LFO4, HIGH); 
    } 
  /* ===========Update PWM1 Output========================*/
    PWMdata = getWaveSample(LFO_CH[2]);

  //  analogWrite(PWM1, waveTable[PWMshape1][tableStep]);              // Writes the value at the current step in the table to Pin 5 as PWM-Signal.  
    analogWrite(LFO1, PWMdata);
  
  /* ===========Update PWM2 Output========================*/
    PWMdata = getWaveSample(0b00001111&(LFO_CH[2]+4));
  //  analogWrite(PWM2, waveTable[PWMshape2][tableStep]);              // Writes the value at the current step in the table to Pin 5 as PWM-Signal.  
     analogWrite(LFO2, PWMdata);
  }
}

/* =====================================================
==============Check encoder interrupt===================
======================================================*/ 
void checkencoder(){
  if (left){
    left = false;
    if (encoder[state] != 0) encoder[state]--; // Decrement if not 0
    if (state < 4) {
      if(((LFO_CH[state]=encoder[state] >> 2) == 0) && state == 2) LFO_CH[state]=16;
      updateLEDValue(LFO_CH[state], state);
      EEPROM.write(state, LFO_CH[state]);
    }
  }
  if (right){
    right = false;
    if (encoder[state] < 0x3f) encoder[state]++;
    if (state < 4) {
      LFO_CH[state]=encoder[state] >> 2;
      updateLEDValue(LFO_CH[state], state);
      EEPROM.write(state, LFO_CH[state]);
    }
  }
  if (button){
    button = false;    
    buttoncnt++;
    buttoncnt = buttoncnt & B00000111;
    state = buttoncnt >> 1;
    }
}
/* =====================================================
==============Update LED Values based on input==========
======================================================*/ 
void updateLEDValue(unsigned int nibble,unsigned int updstate)
{
  if (nibble >= 0x10) nibble = 0x0f;
  else (nibble = nibble & 0x0f);
  if (nibble & 0x01){
//    LED1Data = true;
    LEDData[updstate][0] = true;
  }
  else {
//    LED1Data = false;
    LEDData[updstate][0] = false;
  }
  if (nibble & 0x02){
//    LED2Data = true;
    LEDData[updstate][1] = true;
  }
  else {
//    LED2Data = false;
    LEDData[updstate][1] = false;
  }
  if (nibble & 0x04){
//    LED3Data = true;
    LEDData[updstate][2] = true;
  }
  else {
//    LED3Data = false;
    LEDData[updstate][2] = false;
  }
  if (nibble & 0x08){
//    LED4Data = true;
    LEDData[updstate][3] = true;
  }
  else {
//    LED4Data = false;
    LEDData[updstate][3] = false;
  }

}
/* =====================================================
==============Update LED's based on LED Values==========
======================================================*/ 
void updateLED(){
  digitalWrite(LED1, LEDData[state][0]);
  digitalWrite(LED2, LEDData[state][1]);
  digitalWrite(LED3, LEDData[state][2]);
  digitalWrite(LED4, LEDData[state][3]);
  delay(1);
  digitalWrite(LED_Out6, state == 0);
  digitalWrite(LED_Out9, state == 1);
  digitalWrite(LED_Out10, state == 2);
  digitalWrite(LED_Out11, state == 3);
}

void clearLED(){
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED_Out6, LOW);
  digitalWrite(LED_Out9, LOW);
  digitalWrite(LED_Out10, LOW);
  digitalWrite(LED_Out11, LOW);
}

/* =====================================================
==============Encoder change interrupt==================
======================================================*/  
ISR (PCINT1_vect) {
// If interrupt is triggered by the button
  boolean SW_val = digitalRead(SWpin);
  if (SW_val != SW_old) {
    SW_old = SW_val;
    button = true;}

// Else if interrupt is triggered by encoder signals
  else {
    
    // Read A and B signals
    boolean A_val = digitalRead(Apin);
    if (A_val != A_old) {
      A_old = A_val;
      if (A_val^B_old) {
        right = true;
      }
      else {
        left = true;
      }
    }
    else {
      boolean B_val = digitalRead(Bpin);
      B_old = B_val;
      if (A_val^B_val) {
        left = true;
      }
      else {
        right = true;
      }
    }
  }
}
