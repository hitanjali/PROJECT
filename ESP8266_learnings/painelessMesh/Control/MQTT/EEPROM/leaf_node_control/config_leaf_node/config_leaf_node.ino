
#include<ESP8266WiFi.h>
#include <EEPROM.h>

#define ERASE_PIN 5 // D1

// ++++++++++++++++++++++++++++++++++++++++ MERGE CODE ++++++++++++++++++++++++++++++++++++++++
#include <painlessMesh.h>

#define   MESH_PREFIX     "matrix"
#define   MESH_PASSWORD   "therisnospoon"
#define   MESH_PORT       5555

const int DEVICE1     = 4; // D2
const int LAST_STATE  = 114;

Scheduler userScheduler; // to control your personal task
painlessMesh  mesh;

String status = "NULL";

// User stub
void sendMessage() ; // Prototype so PlatformIO doesn't complain

Task taskSendMessage( TASK_SECOND * 1 , TASK_FOREVER, &sendMessage );

void sendMessage() {
  String msg = String(status + " : ");
  msg += mesh.getNodeId();
  mesh.sendBroadcast( msg );
  taskSendMessage.setInterval( random( TASK_SECOND * 1, TASK_SECOND * 5 ));
}

// Needed for painless library
void receivedCallback( uint32_t from, String &msg ) {
  Serial.printf("startHere: Received from %u msg=%s\n", from, msg.c_str());

  if ( msg == "ON")
  {
	if(!EEPROM.read(LAST_STATE)) {
		EEPROM.write(LAST_STATE,1);
		EEPROM.commit();
	}
  	digitalWrite(DEVICE1,HIGH); //For ESP8266 1=0
	status = "ON";
  }
  else if (msg == "OFF")
  {
	if(EEPROM.read(LAST_STATE)) {
		EEPROM.write(LAST_STATE,0);
		EEPROM.commit();
	}
  	digitalWrite(DEVICE1,LOW); //For ESP8266 1=0
	status = "OFF";
  }

}

void newConnectionCallback(uint32_t nodeId) {
    Serial.printf("--> startHere: New Connection, nodeId = %u\n", nodeId);
}

void changedConnectionCallback() {
    Serial.printf("Changed connections %s\n",mesh.subConnectionJson().c_str());
}

void nodeTimeAdjustedCallback(int32_t offset) {
    Serial.printf("Adjusted time %u. Offset = %d\n", mesh.getNodeTime(),offset);
}

// ++++++++++++++++++++++++++++++++++++++++ MERGE CODE ++++++++++++++++++++++++++++++++++++++++

// WiFi Definitions

const char* ssid = "RAW_MESH";
const char* password = "j0espNathan"; // has to be longer than 7 chars

const int SSID_START  = 0;
const int SSID_LENGTH = 16;
const int SSID_STATUS = 17;
const int PASS_START  = 32;
const int PASS_LENGTH = 48;
const int PASS_STATUS = 49;

const int MID_START   = 64;
const int MID_LENGTH  = 80;
const int MID_STATUS  = 81;
const int MPW_START   = 96;
const int MPW_LENGTH  = 112;
const int MPW_STATUS  = 113;


const int EEPROM_END = 128;


String mid         = MESH_PREFIX;
String mpw         = MESH_PASSWORD;
int    mesh_port   = MESH_PORT;
String value       = "Default ID and PASSWORD";


int ap_mode = 1;

WiFiServer server(80);

//========================================================================================================================

void setup() {

   Serial.begin(115200);
   EEPROM.begin(EEPROM_END);
   pinMode(DEVICE1, OUTPUT);
   pinMode(LED_BUILTIN, OUTPUT);
   pinMode(ERASE_PIN,INPUT);

   digitalWrite(LED_BUILTIN,HIGH);

   if(!digitalRead(ERASE_PIN)) { 
   	if(!erase_eeprom()) 
		Serial.println("Erase failed ");;
   }
   else if ((EEPROM.read(MID_STATUS)==1)  && (EEPROM.read(MPW_STATUS)==1)) {  

	if (EEPROM.read(LAST_STATE))
   		digitalWrite(DEVICE1, HIGH); // turn on
	else 
   		digitalWrite(DEVICE1, LOW); // turn on

   	mid     = eeprom_read_idpw(MID_START,MID_LENGTH);
   	mpw     = eeprom_read_idpw(MPW_START,MPW_LENGTH);
	ap_mode = 0; // Run the mesh code 
	leaf_node_setup();
   }
   else // if the mesh id and password not updated run the AP mode setup and the code
   {
   	ap_mode = 1;
	ap_mode_setup();
   }
   
}
   
//========================================================================================================================


void loop() {

if(ap_mode)  
	ap_mode_loop();
else
	leaf_mode_loop();
}


//========================================================================================================================



// Functions 

void ap_mode_loop () 
{
static int idpw_vector      = 0;

  // Check of client has connected
  WiFiClient client = server.available();
  if(!client) {
    return;
  }

  // Read the request line
  String request = client.readStringUntil('\r');
  Serial.println(request);
  client.flush();
  
  // Match request
  if(request.indexOf("/mid/") != -1) {
      mid = update_id_pw(request);
      bitSet(idpw_vector,0);

  } else if(request.indexOf("/mpw/") != -1) {
      mpw = update_id_pw(request);
      bitSet(idpw_vector,1);
  }
  else if(request.indexOf("/confirmed")!=-1) {

	switch ( idpw_vector ) { 

	case 3 : 
		// Write in to EEPROM and restart
		Serial.println("Confirmation received , Restarting device in to mesh mode");
		EEPROM.write(LAST_STATE,0);
		eeprom_write(mid,MID_START,MID_LENGTH,MID_STATUS);
		eeprom_write(mpw,MPW_START,MPW_LENGTH,MPW_STATUS);
  		client.flush();
		delay(100);
		ESP.restart();
	break;
	
	default : 
		Serial.println("Both Mesh ID and PW still not updated");
		value = "Update both Mesh ID and PW ";
	break;
  	}
  }
  
  client.flush();
   
  // JSON response
  String s = "HTTP/1.1 200 OK\r\n";
  s += "Content-Type: application/json\r\n\r\n";
  s += "{\"data\":{\"message\":\"success\",\"value\":\"";
  s += value;
  s += "\"}}\r\n";
  s += "\n";

  // Send the response to the client
  client.print(s);
  delay(1);
  Serial.println("Client disconnected");

  // The client will actually be disconnected when the function returns and the client object is destroyed
}

//========================================================================================================================
/* void root_mode_loop() {
  
  mesh.update();
  mqttClient.loop();

  if(myIP != getlocalIP()){
    myIP = getlocalIP();
    Serial.println("My IP is " + myIP.toString());

    if (mqttClient.connect("painlessMeshClient")) {
      mqttClient.publish("painlessMesh/from/gateway","Ready!");
      mqttClient.subscribe("painlessMesh/to/#");
    } 
  }

} */
//========================================================================================================================
void leaf_mode_loop() { 
  userScheduler.execute(); // it will run mesh scheduler as well
  mesh.update();
}

//========================================================================================================================
int erase_eeprom ()
{
int erase = 0;
unsigned long ini_time ;

	Serial.println("Hold the Erase button for 3 seconds to erase the Mesh Id and Password");

	ini_time = millis();
	while(!digitalRead(ERASE_PIN))
	{
		if ((millis()-ini_time)<3000) // Blink till the time is less than 3 sec
		{
			delay(500);
			digitalWrite(LED_BUILTIN,HIGH);
			delay(500);
			digitalWrite(LED_BUILTIN,LOW);
	
		}
		else // if more than 3 sec
		{
			erase = 1; 
			Serial.println("Reelase the erase button. Erasing flash ....");
	                break;
		}
	}

	if(erase) 
	{
		for(int i = 0 ; i < EEPROM_END ; i++)
			EEPROM.write(i,0);
		EEPROM.commit();
		Serial.println("Restarting the device ...");
		delay(10000);
		ESP.restart();
	}
	
	return erase;
}

//========================================================================================================================
// Read from EEPROM 
String eeprom_read_idpw(int start_addr, int length_addr)
{
String idpw = ""; 

	int length = EEPROM.read(length_addr);
	for ( int i = 0 ; i < length ; i++)
		idpw += char(EEPROM.read(start_addr+i));

  	Serial.print("Updated ID/PW from the EEPROM :");
	Serial.println(idpw);

	return idpw;
}

//========================================================================================================================
void ap_mode_setup()
{
	Serial.println("Entering AP-mode node setup");
   	WiFi.mode(WIFI_AP);
   	WiFi.softAP(ssid, password);
  
   	IPAddress Server_IP = WiFi.softAPIP();
   	Serial.print("AP IP address: ");
   	Serial.println(Server_IP);
   	server.begin();
}

//========================================================================================================================
/*void root_node_setup()
{
   Serial.println("Entering root node setup");
   mesh.setDebugMsgTypes( ERROR | STARTUP | CONNECTION );  // set before init() so that you can see startup messages

  // Channel set to 6. Make sure to use the same channel for your mesh and for you other
  // network (STATION_SSID)
  mesh.init( mid, mpw, mesh_port, WIFI_AP_STA, 6 );
  mesh.onReceive(&receivedCallback);

  mesh.stationManual(rtrssid, rtrpwd);
  mesh.setHostname(HOSTNAME);

  mesh.setRoot(true);
  // This and all other mesh should ideally now the mesh contains a root
  mesh.setContainsRoot(true);

}*/

//========================================================================================================================
void leaf_node_setup() {

  mesh.setDebugMsgTypes( ERROR | STARTUP );  // set before init() so that you can see startup messages

  mesh.init( mid , mpw , &userScheduler, mesh_port , WIFI_AP_STA, 6);
  mesh.onReceive(&receivedCallback);
  mesh.onNewConnection(&newConnectionCallback);
  mesh.onChangedConnections(&changedConnectionCallback);
  mesh.onNodeTimeAdjusted(&nodeTimeAdjustedCallback);

  userScheduler.addTask( taskSendMessage );
  taskSendMessage.enable();
  // This and all other mesh should ideally now the mesh contains a root
  mesh.setContainsRoot(true);


}

//========================================================================================================================

String update_id_pw(String req)
{
     	digitalWrite(LED_BUILTIN, HIGH);
     	int first_slash = req.indexOf('/');
     	int second_slash = req.indexOf('/', first_slash+1);
     	int end_index = req.indexOf(' ',second_slash+1);
     	String mesh_idpw = req.substring(second_slash+1,end_index);
     	value = mesh_idpw;
     	Serial.print("MESH credintial received is : ");
     	Serial.println(mesh_idpw);
     	delay(1000);
     	digitalWrite(LED_BUILTIN, LOW);
	return mesh_idpw;

}
//========================================================================================================================

void eeprom_write(String idpw,int start_addr,int length_addr,int status_addr)
{

	int length = idpw.length();

	Serial.print("New ID/PW is : ");
	Serial.println(idpw);

	Serial.print("Lenght of the id/pw : ");
	Serial.println(length);

	for ( int i = 0 ; i < length ; i++) { 
	        EEPROM.write(start_addr+i,idpw[i]);
	}

	EEPROM.write(length_addr,length);
	EEPROM.write(status_addr,1);
	EEPROM.commit();
}
//========================================================================================================================
