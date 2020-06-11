
#define _TASK_MICRO_RES
#include <TaskScheduler.h>
#include <EEPROM.h>

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

#define _50HZ

#ifdef _50HZ
#define MAX_DELAY 93
#elif _60HZ  
#define MAX_DELAY 77  
#endif

#ifdef _DEBUG_1
#define _PP1(a) Serial.print(a);
#define _PL1(a) Serial.println(a);
#else
#define _PP1(a)
#define _PL1(a)
#endif
const byte DIMVAL = 0; // Address to store value for power cycle

const byte RESET = 1;
const byte TENS  = 2;
const byte ONES  = 4;
const byte COMP  = 8;

const byte ZCD_INT      = 2;
const byte DIM_INT      = 3;
const byte DIGIT_SEL    = 6;
const byte TRIAC_EN     = 4;

volatile int dimVal     = 100;

int lastdimVal          = 100;
int state               = 1;

Scheduler userSch;

void dimmerCb();

Task dimmerStart(TASK_IMMEDIATE,TASK_FOREVER,&dimmerCb);

void setup() {
  pinMode(DIGIT_SEL, INPUT);
  pinMode(DIM_INT, INPUT_PULLUP);

  #if defined(_DEBUG_) || defined(_DEBUG_1)
  Serial.begin(115200);
  Serial.println("Task based approach");
  #endif

  pinMode(ZCD_INT, INPUT_PULLUP);
  pinMode(TRIAC_EN,OUTPUT);
  digitalWrite(TRIAC_EN,HIGH);
	
  dimVal = EEPROM.read(DIMVAL);
  if ( dimVal > 100 ) dimVal = 100; // In case EEPROM does not have correct value for the first time

  userSch.addTask(dimmerStart);
  attachInterrupt(digitalPinToInterrupt(DIM_INT), dimValISR, FALLING);
  attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);

}

void loop() {
	userSch.execute();
}

//================================================================================
// Functions 
//================================================================================
void zeroCrossISR() {
  detachInterrupt(digitalPinToInterrupt(ZCD_INT));
  dimmerStart.enable();
}


void dimValISR () {
	
	int digitSel = digitalRead(DIGIT_SEL);
	static byte dig10s = 0;
	static byte dig1s  = 0;

	_PL(micros());
	_PP("Digit Sel pin : ");
	_PL(digitSel);

	switch (state) { 
	
	case RESET : 
	
		if(digitSel) 
			state = TENS;
	break;
	
	case TENS : 
		
		if(digitSel)
			dig10s++;
		else
			state = ONES;

	break; 
	
	case ONES : 
		
		if(!digitSel)
			dig1s++;
		else {
			dimVal = 100 - (dig10s*10+dig1s);
			EEPROM.write(DIMVAL,dimVal);
			state = COMP;
		}
	break; 

	case COMP : 
		
		if(digitSel) { 
			dig10s = 0;
			dig1s  = 0;
			state = TENS;
		}
	break;

	} // Case


	_PL(micros());
	_PP("State : ");
	_PL(state);
	_PP("No of Tens : ");
	_PL(dig10s);
	_PP("No of ones : ");
	_PL(dig1s);
	_PP("Dim Value : ");
	_PL1(dimVal);


}
//========================================================================================================================
void dimmerCb () {


	int diff = lastdimVal - dimVal;
	if(diff > 0)
		lastdimVal--;
	else if( diff < 0)
		lastdimVal++;
		
	dimmerStart.delay(MAX_DELAY*lastdimVal); // For 50 hz freq [10 ms half cycle] we take 9000 uS - 9 ms is the highest ON time  
	dimmerStart.setCallback(&traicEnableCb);
	_PL("Inside dimmerCb");
}

void traicEnableCb() {

	// Enable Traic 
	digitalWrite(TRIAC_EN,LOW);   // Active Low
	dimmerStart.delay(MAX_DELAY*100-MAX_DELAY*lastdimVal);
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
