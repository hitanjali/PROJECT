const byte ledPin = 13;
const byte interruptPin = 2;
const byte START_PHASE = 4;
volatile bool zcdFlag = false;
bool change = false;
volatile int steps = 0;


void setup() {
  Serial.begin(115200);
  pinMode(ledPin, OUTPUT);
  pinMode(interruptPin, INPUT_PULLUP);
  pinMode(START_PHASE,OUTPUT);
  digitalWrite(START_PHASE,HIGH);
  attachInterrupt(digitalPinToInterrupt(interruptPin), blink, RISING);
}

void loop() {
	if(Serial.available()) {
		String stringVar = Serial.readString();
		steps = stringVar.toInt();
		Serial.println(steps);
	}
	else if(zcdFlag) {
		zcdFlag = false;
		change = true;
		delayStart(steps);
	}
	else if ( change ) {
//		Serial.println("In loop flag : false ");  
		change = false;
	}
		
}

void blink() {
//  Serial.println("Inside ISR");
  zcdFlag = true;
}


void delayStart(unsigned int steps) {

	delayMicroseconds(steps);
	digitalWrite(START_PHASE,LOW);
	int remaing_millis = 9 - (steps/1000);
	delay(remaing_millis);
	digitalWrite(START_PHASE,HIGH);
    //    Serial.println("Inside Dimmer");
}


