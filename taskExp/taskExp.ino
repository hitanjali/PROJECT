
// Observation : 
/* 
Task Enable    : If not already enabled [ Enable for the first time ] starts from iteration 0 
                 If re-enable a disable task - starts from the last iterator where the task was disabled. 
	         Expired task do not have any effect on enable. 
		 re-enabling the already enabled task has no effect at-least with the following set-up. [ we do not have onEnable , onDisable callbacks]
Task disable   : Disables the task and the iterator retains the value. 
                 Can be re-enabled. But will start from the last iterator.
                 Expired task do not have any effect. 

Task re-start  : Restarts an expired/ already running task wit hiterator value = 0.
                 No need to enable the taks first time , re-start enables the task too.

Task Expired   : Enable have no effect. 
                 Restart can do the job of enabling the task with iterator 0. 
*/

#include <Arduino.h>
#include <painlessMesh.h>
#include <PubSubClient.h>
#include <WiFiClient.h>

void mqttstateCb();
void mqttReconnectCb();


Scheduler userScheduler; // to control your personal task
Task mqttstate (TASK_SECOND*25, TASK_FOREVER , &mqttstateCb);
Task mqttReconnect (TASK_SECOND*5, 9 , &mqttReconnectCb);
int state = 0;

void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  Serial.begin(115200);
  delay(5000);
  Serial.println("In side setup");
  Serial.println("In side setup");
  Serial.println("In side setup");
  userScheduler.addTask(mqttstate);
  userScheduler.addTask(mqttReconnect);
 

}

// the loop function runs over and over again forever
void loop() {
 
 userScheduler.execute();

 if(Serial.available() > 0){ // Checks whether data is comming from the serial port
    state = Serial.read(); // Reads the data from the serial port
    Serial.print("State : ");
    Serial.println(state);
 }
 else  {
 	Serial.println("Waiting for command ");
	delay(3000);
 }
 

 if (state == '1') {
	Serial.println("Enabling mqttstate [ task 1]");
 	mqttstate.enableIfNot();
 }
 else if (state == '2') {
	Serial.println("Enabling mqttReconnect [ task 2]");
 	mqttReconnect.enable();
 } 
 else if (state == '3') {
	Serial.println("Disabling mqttstate [ task 1]");
 	mqttstate.disable();
 }
 else if (state == '4') {
	Serial.println("Disabling mqttReconnect [ task 2]");
	mqttReconnect.disable();
 }
 else if (state == '5') {
	Serial.println("restarting mqttReconnect [ task 2]");
	mqttReconnect.restart();
 }



}


void mqttstateCb()  {
	static int count = 0;
  	Serial.printf("Inside mqttstate CB : %d \n",count);
	count++;
	mqttReconnect.enableIfNot();
}
//========================================================================================================================

void mqttReconnectCb(){ // V1.4

	static int count = 0;
    	Serial.printf("In side the mqttReconnect \n");
	if (mqttReconnect.isLastIteration()) {
		Serial.printf("mqttReconnect last interation : %d \n",count);
		count = 0;
		delay(10000);
	}
    	else if (state == '9') { 
		Serial.printf("Disable conition for mqttReconnect : %d \n",count);
		mqttReconnect.disable();
    	} 
    	else {
	    count++;
    	    Serial.printf("Count : %d \n",count);
	    Serial.println(" Try again in 5 seconds");
    	}
}

