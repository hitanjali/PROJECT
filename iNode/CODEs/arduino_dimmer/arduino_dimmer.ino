
// Version 1.1 : Attach interrupt and detach interrupt causing initial flickering 
//               during arduino startup and power cycke is resolved by removing those

#define _TASK_MICRO_RES
#include <TaskScheduler.h>
#include <EEPROM.h>

//#define _DEBUG_
//#define _DEBUG_1

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

const byte SLOWX  = 5;
const byte DIMVAL[4] = {0,1,2,3}; // Address to store value for power cycle

const byte RESET    = 1;
const byte TENS     = 2;
const byte ONES     = 4;
const byte DIM_SEL  = 8;
const byte COMP     = 16;

const byte ZCD_INT      = 2;
const byte DIM_INT      = 3;
const byte DIGIT_SEL    = 4;
const byte TRIAC_EN0    = 5;
const byte TRIAC_EN1    = 6;
const byte TRIAC_EN2    = 7;
const byte TRIAC_EN3    = 8;

volatile int dimVal[4]  = {100,100,100,100};

int lastdimVal[4]       = {100,100,100,100};
int dimSel              = 0;
int state               = 1;
unsigned long t1;
bool flag               = true;

Scheduler userSch;

void dimmerCb0();
void dimmerCb1();
void dimmerCb2();
void dimmerCb3();

Task dimmerStart0(TASK_IMMEDIATE,TASK_FOREVER,&dimmerCb0);
Task dimmerStart1(TASK_IMMEDIATE,TASK_FOREVER,&dimmerCb1);
Task dimmerStart2(TASK_IMMEDIATE,TASK_FOREVER,&dimmerCb2);
Task dimmerStart3(TASK_IMMEDIATE,TASK_FOREVER,&dimmerCb3);

void setup() {

  //detachInterrupt(digitalPinToInterrupt(ZCD_INT)); // This avoids the initial 1st slight flicker issue at the arduino restart
  // TODO : Actual interrupt pins to be identified
  detachInterrupt(ZCD_INT); // This avoids the initial 1st slight flicker issue at the arduino restart
  pinMode(DIGIT_SEL, INPUT);
  pinMode(DIM_INT, INPUT_PULLUP);

  #if defined(_DEBUG_) || defined(_DEBUG_1)
  Serial.begin(115200);
  Serial.println("Task based approach");
  #endif

  pinMode(ZCD_INT, INPUT_PULLUP);
  pinMode(TRIAC_EN0,OUTPUT);
  pinMode(TRIAC_EN1,OUTPUT);
  pinMode(TRIAC_EN2,OUTPUT);
  pinMode(TRIAC_EN3,OUTPUT);
  digitalWrite(TRIAC_EN0,HIGH);
  digitalWrite(TRIAC_EN1,HIGH);
  digitalWrite(TRIAC_EN2,HIGH);
  digitalWrite(TRIAC_EN3,HIGH);
	
  for (int i=0; i < 3; i++) {
  	dimVal[i] = EEPROM.read(DIMVAL[i]);
  	if ( dimVal[i] > 100 ) dimVal[i] = 100; // In case EEPROM does not have correct value for the first time
  }
  userSch.addTask(dimmerStart0);
  userSch.addTask(dimmerStart1);
  userSch.addTask(dimmerStart2);
  userSch.addTask(dimmerStart3);
  attachInterrupt(DIM_INT, dimValISR, FALLING);
  attachInterrupt(ZCD_INT, zeroCrossISR, FALLING);
  //attachInterrupt(digitalPinToInterrupt(DIM_INT), dimValISR, FALLING);
  //attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);


}

void loop() {
	userSch.execute();
}

//================================================================================
// Functions 
//================================================================================
void zeroCrossISR() {
//  detachInterrupt(digitalPinToInterrupt(ZCD_INT)); // ISSUE 1 : This was causing flickering duirng reset and power cycle with arduino running
  dimmerStart0.enable();
  dimmerStart1.enable();
  dimmerStart2.enable();
  dimmerStart3.enable();
}


void dimValISR () {
	
	int digitSel = digitalRead(DIGIT_SEL);
	static byte dig10s = 0;
	static byte dig1s  = 0;
	static byte dimSel = 0;

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
			state = DIM_SEL;
		}
	break; 
	
	case DIM_SEL : 

		if(digitSel)
			dimSel++;
		else {
			dimVal[dimSel] = 100 - (dig10s*10+dig1s);
			EEPROM.write(DIMVAL[dimSel],dimVal[dimSel]);
			state = COMP;
		}



	break;

	case COMP : 
		
		if(digitSel) { 
			dig10s = 0;
			dig1s  = 0;
			dimSel = 0;
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
	_PP("Dimmer Sel : ");
	_PL(dimSel);
	_PP1("Dim Value : ");
	_PL1(dimVal[dimSel]);


}
//========================================================================================================================
void dimmerCb0 () {

	static byte slowX = SLOWX;
	int diff = lastdimVal[0] - dimVal[0];
	if(diff > 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[0]--;
			_PL("lastdimVal--");
		}
	else if( diff < 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[0]++;
			_PL("lastdimVal++");
		}
	else if (lastdimVal[0] == 100) {  // diff == 0 // Bulb off do not ON the traic and just return
		dimmerStart0.disable();
		return; 
	}

		
	dimmerStart0.delay(MAX_DELAY*lastdimVal[0]); // For 50 hz freq [10 ms half cycle] we take 9000 uS - 9 ms is the highest ON time  
	dimmerStart0.setCallback(&traicEnableCb0);
	_PL("Inside dimmerCb");
}

void traicEnableCb0() {

	// Enable Traic 
	digitalWrite(TRIAC_EN0,LOW);   // Active Low
	dimmerStart0.delay(MAX_DELAY*100-MAX_DELAY*lastdimVal[0]);
	dimmerStart0.setCallback(&traicDisableCb0);
	_PL("Inside Triac EN");
}

void traicDisableCb0() { 

	// Disable Traic
	digitalWrite(TRIAC_EN0,HIGH);   // Active Low
	dimmerStart0.disable();
	dimmerStart0.setCallback(&dimmerCb0);
	_PL("Inside Triac DIS");
//	attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);  // This was causing issues ISSUE 1
}
//========================================================================================================================
void dimmerCb1 () {

	static byte slowX = SLOWX;
	int diff = lastdimVal[1] - dimVal[1];
	if(diff > 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[1]--;
			_PL("lastdimVal--");
		}
	else if( diff < 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[1]++;
			_PL("lastdimVal++");
		}
	else if (lastdimVal[1] == 100) {  // diff == 0 // Bulb off do not ON the traic and just return
		dimmerStart1.disable();
		return; 
	}

		
	dimmerStart1.delay(MAX_DELAY*lastdimVal[1]); // For 50 hz freq [10 ms half cycle] we take 9000 uS - 9 ms is the highest ON time  
	dimmerStart1.setCallback(&traicEnableCb1);
	_PL("Inside dimmerCb");
}

void traicEnableCb1() {

	// Enable Traic 
	digitalWrite(TRIAC_EN1,LOW);   // Active Low
	dimmerStart1.delay(MAX_DELAY*100-MAX_DELAY*lastdimVal[1]);
	dimmerStart1.setCallback(&traicDisableCb1);
	_PL("Inside Triac EN");
}

void traicDisableCb1() { 

	// Disable Traic
	digitalWrite(TRIAC_EN1,HIGH);   // Active Low
	dimmerStart1.disable();
	dimmerStart1.setCallback(&dimmerCb1);
	_PL("Inside Triac DIS");
//	attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);  // This was causing issues ISSUE 1
}
//========================================================================================================================
void dimmerCb2 () {

	static byte slowX = SLOWX;
	int diff = lastdimVal[2] - dimVal[2];
	if(diff > 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[2]--;
			_PL("lastdimVal--");
		}
	else if( diff < 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[2]++;
			_PL("lastdimVal++");
		}
	else if (lastdimVal[2] == 100) {  // diff == 0 // Bulb off do not ON the traic and just return
		dimmerStart2.disable();
		return; 
	}

		
	dimmerStart2.delay(MAX_DELAY*lastdimVal[2]); // For 50 hz freq [10 ms half cycle] we take 9000 uS - 9 ms is the highest ON time  
	dimmerStart2.setCallback(&traicEnableCb2);
	_PL("Inside dimmerCb");
}

void traicEnableCb2() {

	// Enable Traic 
	digitalWrite(TRIAC_EN2,LOW);   // Active Low
	dimmerStart2.delay(MAX_DELAY*100-MAX_DELAY*lastdimVal[2]);
	dimmerStart2.setCallback(&traicDisableCb2);
	_PL("Inside Triac EN");
}

void traicDisableCb2() { 

	// Disable Traic
	digitalWrite(TRIAC_EN2,HIGH);   // Active Low
	dimmerStart2.disable();
	dimmerStart2.setCallback(&dimmerCb2);
	_PL("Inside Triac DIS");
//	attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);  // This was causing issues ISSUE 1
}
//========================================================================================================================
void dimmerCb3 () {

	static byte slowX = SLOWX;
	int diff = lastdimVal[3] - dimVal[3];
	if(diff > 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[3]--;
			_PL("lastdimVal--");
		}
	else if( diff < 0)
		if(slowX)
			slowX--;
		else {
			slowX = SLOWX;
			lastdimVal[3]++;
			_PL("lastdimVal++");
		}
	else if (lastdimVal[3] == 100) {  // diff == 0 // Bulb off do not ON the traic and just return
		dimmerStart3.disable();
		return; 
	}

		
	dimmerStart3.delay(MAX_DELAY*lastdimVal[3]); // For 50 hz freq [10 ms half cycle] we take 9000 uS - 9 ms is the highest ON time  
	dimmerStart3.setCallback(&traicEnableCb3);
	_PL("Inside dimmerCb");
}

void traicEnableCb3() {

	// Enable Traic 
	digitalWrite(TRIAC_EN3,LOW);   // Active Low
	dimmerStart3.delay(MAX_DELAY*100-MAX_DELAY*lastdimVal[3]);
	dimmerStart3.setCallback(&traicDisableCb3);
	_PL("Inside Triac EN");
}

void traicDisableCb3() { 

	// Disable Traic
	digitalWrite(TRIAC_EN3,HIGH);   // Active Low
	dimmerStart3.disable();
	dimmerStart3.setCallback(&dimmerCb3);
	_PL("Inside Triac DIS");
//	attachInterrupt(digitalPinToInterrupt(ZCD_INT), zeroCrossISR, FALLING);  // This was causing issues ISSUE 1
}
