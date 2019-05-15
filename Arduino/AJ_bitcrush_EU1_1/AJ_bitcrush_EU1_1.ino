
/* 
 * Wavetable LFO inspiration: 
 * https://www.muffwiggler.com/forum/viewtopic.php?t=169706&sid=4b0d7d4af599d0df3e7b6fc29ece21b8 
 *  
 *  TODO: 
 */ 

#include "globals.h";

/* =====================================================
==============INIT DATA STRUCTURES======================
======================================================*/  
void setupDataStruct(){
   LFO_CH[0][3] = LFO0_pin;              // [LFO Ch0]  [PWMpin]
   LFO_CH[0][4] = LED_Out6;              // [LFO Ch0]  [LEDpin] 
   LFO_CH[1][3] = LFO1_pin;              // [LFO Ch1]  [PWMpin]
   LFO_CH[1][4] = LED_Out9;              // [LFO Ch1]  [LEDpin] 
   LFO_CH[2][3] = LFO2_pin;              // [LFO Ch2]  [PWMpin]
   LFO_CH[2][4] = LED_Out10;             // [LFO Ch2]  [LEDpin] 
   LFO_CH[3][3] = LFO3_pin;              // [LFO Ch3]  [PWMpin]
   LFO_CH[3][4] = LED_Out11;             // [LFO Ch3]  [LEDpin] 
   Serial.println("");
   for (int i=0; i <= 3; i++){
     for (int j=0; j <= 3; j++){
      LEDData[i][j]=false;
     }
     LFO_CH[i][0] = EEPROM.read(i);              // [LFO Ch0-3]  [State,Counter,LastUpdate,PWMpin,LEDpin,StepA4,DelayA5]
     LFO_CH[i][5] = EEPROM.read(i+StepA4EEPROM);              // [LFO Ch0-3]  [State,Counter,LastUpdate,PWMpin,LEDpin,StepA4,DelayA5]
     LFO_CH[i][6] = EEPROM.read(i+StepA5EEPROM);              // [LFO Ch0-3]  [State,Counter,LastUpdate,PWMpin,LEDpin,StepA4,DelayA5]
     if (LFO_CH[i][0] > 15) LFO_CH[i][0] = 0;
     updateLEDValue(LFO_CH[i][0], i);
     encoder[i] = LFO_CH[i][0] << 2;
     LFO_CH[i][1] = 0;              // [LFO Ch0-3]  [Counter]
     LFO_CH[i][2] = 0;              // [LFO Ch0-3]  [LastUpdate]
     //LFO_CH[i][5] = 1;              // [LFO Ch0-3]  [StepA4]
     //LFO_CH[i][6] = 1;              // [LFO Ch0-3]  [DelayA5]   
     lastwaveupdate[i] = 0;  
   Serial.print("LFO");
   Serial.print(i);
   Serial.print(",");
   Serial.print(LFO_CH[i][0]);
   Serial.print(",");
   Serial.print(LFO_CH[i][1]);
   Serial.print(",");
   Serial.print(LFO_CH[i][2]);
   Serial.print(",");
   Serial.print(LFO_CH[i][3]);
   Serial.print(",");
   Serial.print(LFO_CH[i][4]);
   Serial.print(",");
   Serial.print(LFO_CH[i][5]);
   Serial.print(",");
   Serial.println(LFO_CH[i][6]);
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
  pinMode(LFO0_pin, OUTPUT);                           // Sets Pin 6 PWM1
  pinMode(LFO1_pin, OUTPUT);                           // Sets Pin 9 PWM2
  pinMode(LFO2_pin, OUTPUT);                           // Sets Pin 10 PWM3
  pinMode(LFO3_pin, OUTPUT);                           // Sets Pin 11 PWM3

/* =========Setup Trigger Input pins====================*/
  pinMode(RightCenterIn, INPUT);                       // Sets Pin 
  pinMode(RightBottomIn, INPUT);                       // Sets Pin 
  pinMode(LeftIn, INPUT);                              // Sets Pin 
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

//  readinputs();
  updatewave();
}

/* =====================================================
==============Update Wave data pointer==================
======================================================*/ 
void updatewave(){
  unsigned int LFOTrig0 = analogRead(RightCenterIn);
//  unsigned int LFOTrig1 = analogRead(RightBottomIn);
  unsigned int LFOTrig2 = analogRead(LeftIn);
/*  if ( millis() >= lastbuttonupdate + 1000 ){
    LFO_CH[state][5] = (analogRead(LeftBottomPot)>>4);          // Update Step Len
    LFO_CH[state][6] = (analogRead(LeftTopPot)>>4);             // Update Delay Time
  }*/
  analogWrite(LFO0_pin, LFOTrig0);
  analogWrite(LFO1_pin, LFOTrig0);
  analogWrite(LFO2_pin, LFOTrig2);
  analogWrite(LFO3_pin, LFOTrig2);
//        analogWrite(LFO_CH[i][3], PWMdata);
}
/* =====================================================
==============Read Input Values=========================
======================================================*/ 
void readinputs(){

  
}

/* =====================================================
==============Check encoder interrupt===================
======================================================*/ 
void checkencoder(){
  if (left){
    left = false;
    if (encoder[state] != 0) encoder[state]--; // Decrement if not 0
    if (state < 4) {
      if(((LFO_CH[state][0]=encoder[state] >> 2) == 0) && state == 2) LFO_CH[state][0]=16;
      updateLEDValue(LFO_CH[state][0], state);
      EEPROM.write(state, LFO_CH[state][0]);
    }
  }
  if (right){
    right = false;
    if (encoder[state] < 0x3f) encoder[state]++;
    if (state < 4) {
      LFO_CH[state][0]=encoder[state] >> 2;
      updateLEDValue(LFO_CH[state][0], state);
      EEPROM.write(state, LFO_CH[state][0]);
    }
  }
  if (button){
    button = false;    
    buttoncnt++;
    buttoncnt = buttoncnt & B00000111;
    EEPROM.write(state+StepA4EEPROM, LFO_CH[state][5]);
    EEPROM.write(state+StepA5EEPROM, LFO_CH[state][6]);
    state = buttoncnt >> 1;
    lastbuttonupdate = millis(); 
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
  if ( millis() < lastbuttonupdate + 10000 ){
    digitalWrite(LED_Out6, state == 0);
    digitalWrite(LED_Out9, state == 1);
    digitalWrite(LED_Out10, state == 2);
    digitalWrite(LED_Out11, state == 3);
  }
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
        left = true; //swap dir
//        right = true;
      }
      else {
        right = true; //swap dir
//        left = true;
      }
    }
    else {
      boolean B_val = digitalRead(Bpin);
      B_old = B_val;
      if (A_val^B_val) {
        right = true; //swap dir
//        left = true;
      }
      else {
        left = true; //swap dir
//        right = true;
      }
    }
  }
}
