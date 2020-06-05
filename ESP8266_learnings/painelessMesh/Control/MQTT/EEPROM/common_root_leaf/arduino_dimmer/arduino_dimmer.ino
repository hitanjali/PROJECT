
#define _TASK_MICRO_RES
#include <TaskScheduler.h>
//#define _DEBUG_
#define _DEBUG_1

#ifdef _DEBUG_
#define _DEBUG_1
#define _PP(a) Serial.print(a);
#define _PL(a) Serial.println(a);
#else
#define _PP(a)
#define _PL(a)
#endif


#ifdef _DEBUG_1
#define _PP1(a) Serial.print(a);
#define _PL1(a) Serial.println(a);
#else
#define _PP1(a)
#define _PL1(a)
#endif


const byte ZCD_INT      = 2;
const byte DIM_INT      = 3;
const byte DIM_DEC      = 6;
const byte TRIAC_EN     = 4;

volatile bool zcdFlag   = false;

int currDim             = 9000;
int dimVal              = 100;
int newDim              = 100;
bool newVal             = false;
bool deviceOFF          = true;

Scheduler userSch;

void dimmerCb();

Task dimmerStart(TASK_IMMEDIATE,TASK_FOREVER,&dimmerCb);

void setup() {
  pinMode(DIM_DEC, INPUT);
  pinMode(DIM_INT, INPUT_PULLUP);

  #if defined(_DEBUG_) || defined(_DEBUG_1)
  Serial.begin(115200);
  Serial.println("Task based approach");
  #endif

  pinMode(ZCD_INT, INPUT_PULLUP);
  pinMode(TRIAC_EN,OUTPUT);
  digitalWrite(TRIAC_EN,HIGH);

  userSch.addTask(dimmerStart);
  attachInterrupt(digitalPinToInterrupt(DIM_INT), dimValISR, FALLING);
  attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);

}

void loop() {

	userSch.execute();

//	if(zcdFlag || deviceOFF) {
//		// As serial reading casues the light to go off , we have taken these inside the zcdFlag so as to have a smooth effect
//		// so the light goes off at zero crossing does not cause flicker/falshing during off
//		if(mySerial.available()) {
//			_PL1(millis());
//			String stringVar = mySerial.readString();
//			newDim = stringVar.toInt();
//			_PL(newDim);
//
//			if(newDim < 90) {
//				_PL("Attach Interrupt");
//				currDim = 9000;
//				newVal = true;
//				if(deviceOFF)
//				{
//					deviceOFF = false;
//					_PL(millis()); // 1000 ms from above 
//  					attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);
//				}
//			}
//			else {
//				deviceOFF = true;
//				detachInterrupt(digitalPinToInterrupt(ZCD_INT));
//				_PL("Detach Interrupt");
//				t2.enable();
//			}
//		}
//		else if(!deviceOFF) {
//			dimmerControl(newDim*100);
//		}
//
//		zcdFlag = false;
//	}
}

void zeroCrossISR() {
  detachInterrupt(digitalPinToInterrupt(ZCD_INT));
  dimmerStart.enable();
}


void dimValISR () {
	
	_PL(micros());
	_PL(digitalRead(DIM_DEC));

	if (digitalRead(DIM_DEC)) {
		dimVal--;
	}
	else {
		dimVal++;
	}
	_PL(micros());
	_PL1(dimVal);


}
//========================================================================================================================
void dimmerCb () {

	dimmerStart.delay(93*dimVal); // For 50 hz freq [10 ms half cycle] we take 9000 uS - 9 ms is the highest ON time  
	dimmerStart.setCallback(&traicEnableCb);
	_PL("Inside dimmerCb");
}

void traicEnableCb() {

	// Enable Traic 
	digitalWrite(TRIAC_EN,LOW);   // Active Low
	dimmerStart.delay(9300-90*dimVal);
	dimmerStart.setCallback(&traicDisableCb);
	_PL("Inside Triac EN");
}

void traicDisableCb() { 

	// Disable Traic
	digitalWrite(TRIAC_EN,HIGH);   // Active Low
	dimmerStart.disable();
	dimmerStart.setCallback(&dimmerCb);
	_PL("Inside Triac DIS");
	attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);
}




//void dimmerControl(int newDim) {
//
//	delayMicroseconds(currDim);
//	digitalWrite(TRIAC_EN,LOW);
//	int remaing = 9000 - currDim;
//	delayMicroseconds(remaing);
//	digitalWrite(TRIAC_EN,HIGH);
//	if (newVal) {
//		if(currDim > newDim) 
//	     		currDim = currDim - 10; 
//		else
//			newVal = false;
//	}
//
//}


