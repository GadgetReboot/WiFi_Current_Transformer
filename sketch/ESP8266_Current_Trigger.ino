/*

   SCT013 Current Transformer interface
   Target Hardware:  ESP8266 WeMos D1 Mini and op amp circuit:
   https://github.com/GadgetReboot/WiFi_Current_Transformer

   Library used: TrueRMS  https://github.com/MartinStokroos/TrueRMS

   Tested with Arduino IDE 1.8.13
   Gadget Reboot
   https://www.youtube.com/gadgetreboot

*/


#include <TrueRMS.h>      // for rms calculations of adc readings (removes DC offset) 

#define loopPeriod 1000   // loop period time in us. In this case 1.0ms
#define adcPin A0         // adc input channel
//#define rmsWindow 40    // rms window of 40 samples, 2 periods @50Hz
#define rmsWindow 50      // rms window of 50 samples, 3 periods @60Hz

#define triggerOut 4       // pin D2 (GPIO4) is trigger out
#define threshold 0.075    // threshold rms current (in amps) to trigger on

#define sensorGain 1       // amount of gain on current transformer's op amp
#define ampsPerVolt 5      // current transformer output: 1 volt per 5 amps rms
#define adcMaxVoltage 3.3  // adc max input voltage is 3.3v on WeMos D1 Mini 
#define adcResolution adcMaxVoltage/1024  // each bit represents 3.3v/1024 for 10 bit adc

unsigned long nextLoop;    // main loop timing counter for sampling interval control (blocking code)
float voltRange = 3.3;     // the full scale value is set to 3.3 Volts

Rms readRms;               // create an instance of rms calculator

void setup() {

  Serial.begin(9600);
  digitalWrite(triggerOut, 0);  // turn off current trigger indicator
  pinMode(triggerOut, OUTPUT);

  // configure for automatic base-line restoration and continuous scan mode:
  readRms.begin(voltRange, rmsWindow, ADC_10BIT, BLR_ON, CNT_SCAN);
  readRms.start();                  // start measuring
  nextLoop = micros() + loopPeriod; // set loop timer for the next sampling interval
}


void loop() {
  static int lapsedIntervals = 0;                            // how many sampling intervals since last publishing
  int adcVal = analogRead(adcPin);                           // read adc signal
  readRms.update(adcVal);                                    // add sample to ongoing rms calculation

  lapsedIntervals++;
  if (lapsedIntervals >= 200) {                              // publish rms reading every 200mS
    readRms.publish();
    float rmsVal = readRms.rmsVal;                           // calculated rms value of adc voltage readings
    float currentRms = (rmsVal / sensorGain) * ampsPerVolt;  // actual current (amps) in current transformer
    if (currentRms >= threshold) {                           // generate a trigger event if current threshold
      digitalWrite(triggerOut, 1);                           // is reached
    }
    Serial.print(rmsVal / sensorGain * 1000, 2);             // show raw rms voltage (mV) on adc
    Serial.print("mV ");
    Serial.print(currentRms * 1000, 2);                      // show actual current (mA) with 2 decimal places
    Serial.println("mA");
    lapsedIntervals = 0;                                     // start a new sampling interval 
  }

  while (nextLoop > micros());                               // wait until the end of the loop time interval (blocking)
  nextLoop += loopPeriod;                                    // set next loop duration to current time + loopPeriod
  if (lapsedIntervals == 100) {                              // turn off (momentarily) triggered output after a while 
    digitalWrite(triggerOut, 0);
  }
}
