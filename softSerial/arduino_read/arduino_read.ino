#include <SoftwareSerial.h>

#define rxPin 5 
#define txPin 6 
#define DEBUG "//"

const byte ledPin = 13;
const byte interruptPin = 2;
const byte START_PHASE = 4;
volatile bool zcdFlag = false;
int currDim = 9000;
int newDim = 90;
bool newVal = false;
bool deviceOFF = true;

Scheduler userSch;
void t1Cb();

Task t1(TASK_IMMEDIATE,TASK_FOREVER,&t1Cb); 

// set up a new serial port
SoftwareSerial mySerial(rxPin, txPin);

void setup() {
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  // set the data rate for the SoftwareSerial port
  mySerial.begin(9600);
  Serial.begin(115200);

  pinMode(ledPin, OUTPUT);
  pinMode(interruptPin, INPUT_PULLUP);
  pinMode(START_PHASE,OUTPUT);
  digitalWrite(START_PHASE,HIGH);
}

void loop() {

	if(zcdFlag || deviceOFF) {
		// As serial reading casues the light to go off , we have taken these inside the zcdFlag so as to have a smooth effect
		// so the light goes off at zero crossing does not cause flicker/falshing during off
		if(mySerial.available()) {
			String stringVar = mySerial.readString();
			newDim = stringVar.toInt();

			//Serial.println(newDim);

			if(newDim < 90) {
				//Serial.println("Attach Interrupt");
				currDim = 9000;
				newVal = true;
				if(deviceOFF)
				{
					deviceOFF = false;
					Serial.println(millis()); // 1000 ms from above 
  					attachInterrupt(digitalPinToInterrupt(interruptPin), zeroCrossISR, FALLING);
				}
			}
			else {
				deviceOFF = true;
				detachInterrupt(digitalPinToInterrupt(interruptPin));
			//	Serial.println("Detach Interrupt");
			}
		}
		else if(!deviceOFF) {
			dimmerControl(newDim*100);
		}

		zcdFlag = false;
	}
}

void zeroCrossISR() {
  zcdFlag = true;
}


void dimmerControl(int newDim) {

	delayMicroseconds(currDim);
	digitalWrite(START_PHASE,LOW);
	int remaing = 9000 - currDim;
	delayMicroseconds(remaing);
	digitalWrite(START_PHASE,HIGH);
	if (newVal) {
		if(currDim > newDim) 
	     		currDim = currDim - 10; 
		else
			newVal = false;
	}

}


