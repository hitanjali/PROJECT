// Revision 1.0 : Sending message only when required / asked
// Revision 1.1 : Update Credentials over MQTT
// Revision 1.2 : Solving the restart issue
// Revision 1.3 : Status and VER issue
// Revision 1.4 : Adding re-connecting attempt for the mqtt client to solve wifi connection loss and reconnect issue
// Revision 1.5 : Leaf node hang : Not able to re-c0nnect to mesh
// Revision 2.0 : Broken TCP link re-connect issue
// Revision 2.1 : Leafs to send message only to the sender [ root/gateway as of now ]
// Revision 2.2 : mqtt tasks enabling disabling changed
// Revision 2.3 : Will Message for connected
// Revision 2.4 : ClineID setting during the initial phase
// Revision 2.5 : ClineID length requirements and also in not Bhagvadgita
// Revision 2.6 : Root node re-connection in the mesh has issue [ Ref gitlab ]
// Revision 2.7 : Device initial flickering issue
// Revision 3.0 : Dimmer device added
// Revision 3.1 : Sending Dimmer value over interrupts
/* Revision 4.0 : Mux device and topic changes accordingly
                  LIMITATION : At a time only 1 of the 4 dimmers can work
		  the same dimmer channel e.g 0 can be updated without an issue 
		  But there can not be more than 1 simultaneous commands for update of dimmer values
		  The reason being we use not blocking dimming controls which take time to complete max 100x5 ms = 500 ms
		  so on the application side we would request to wait for the completion of the previous dimmer value change
		  We can avoid this limitation by implementing max 4 different tasks for 4 different dimmers and use static device 
		  variable in the callbacks

		  Removed this limitation need to check
*/
/*
Seems like the HiveMQ is disconnecting and hence we are not able to send the commands throght hiveMQ
*/
#define _DEBUG_

//#define _DEBUG_1

#ifdef _DEBUG_
#define _PP(a) Serial.print(a);
#define _PL(a) Serial.println(a);
#define _PF(a) Serial.printf(a);
#define _PF2(a,b) Serial.printf(a,b);
#define _PF3(a,b,c) Serial.printf(a,b,c);
#else
#define _PP(a)
#define _PL(a)
#define _PF(a)
#define _PF2(a,b)
#define _PF3(a,b,c)
#endif


#ifdef _DEBUG_1
#define _PP1(a) Serial.print(a);
#define _PL1(a) Serial.println(a);
#else
#define _PP1(a)
#define _PL1(a)
#endif

// Task defines
#define _TASK_MICRO_RES

#include <ESP8266WiFi.h>
#include <EEPROM.h>

#define analogInPin A0

#define VERSION "V3.1"
#define MAX_RECON_ATTEMPT 18
#define CLIENT_ID_MIN_LENGTH 18
#define FIVE_MILLIS 5
#define DIMMER_MAX_ITERATION 100

// ++++++++++++++++++++++++++++++++++++++++ MERGE CODE ++++++++++++++++++++++++++++++++++++++++
#include <Arduino.h>
#include <painlessMesh.h>
#include <PubSubClient.h>
#include <WiFiClient.h>

#define MESH_PREFIX     "matrix"
#define MESH_PASSWORD   "therisnospoon"
#define MESH_PORT       5555

#define STATION_SSID     "dada100"
#define STATION_PASSWORD "dada2020"

#define MID_CMD_STATUS     "MID_RCVD"
#define RST_CMD_STATUS     "RST_RCVD"
#define HOSTNAME "MQTT_Bridge"


//======================================================================================================================== 

// Prototypes
void rt_receivedCallback( const uint32_t &from, const String &msg );
void mqttCallback(char* topic, byte* payload, unsigned int length);
void mqttstateCb();
void mqttReconnectCb();
void pingCb(); //V1.5
void dimmerUpdate0Cb();
void dimmerUpdate1Cb();
void dimmerUpdate2Cb();
void dimmerUpdate3Cb();

// User stub
void sendMessage(uint32_t from,String respStr) ; // Prototype so PlatformIO doesn't complain

IPAddress getlocalIP();

IPAddress myIP(0,0,0,0);
//IPAddress mqttBroker(broker.hivemq.com);

painlessMesh  mesh;
WiFiClient wifiClient;
PubSubClient mqttClient("broker.hivemq.com", 1883, mqttCallback, wifiClient);

Scheduler userScheduler; // to control your personal task

Task mqttstate (TASK_SECOND*90, TASK_FOREVER , &mqttstateCb);
Task mqttReconnect (TASK_SECOND*5, MAX_RECON_ATTEMPT , &mqttReconnectCb);
Task pingNodes(TASK_SECOND*5, MAX_RECON_ATTEMPT, &pingCb); //V1.5

Task dimmerUpdate0(FIVE_MILLIS,DIMMER_MAX_ITERATION,&dimmerUpdate0Cb);
Task dimmerUpdate1(FIVE_MILLIS,DIMMER_MAX_ITERATION,&dimmerUpdate1Cb);
Task dimmerUpdate2(FIVE_MILLIS,DIMMER_MAX_ITERATION,&dimmerUpdate2Cb);
Task dimmerUpdate3(FIVE_MILLIS,DIMMER_MAX_ITERATION,&dimmerUpdate3Cb);

// ++++++++++++++++++++++++++++++++++++++++ MERGE CODE ++++++++++++++++++++++++++++++++++++++++

// WiFi Definitions

const char* ssid = "RAW_MESH";
const char* password = "j0espNathan"; // has to be longer than 7 chars

const int PW_LENGTH = 8;
const int ID_LENGTH = 4;
//------------------------------------------------------------------------------------------------------------------------ 
// EEPROM ADDRESSES 
//------------------------------------------------------------------------------------------------------------------------ 

const int SSID_START  = 0;
const int SSID_LENGTH = 16;
const int SSID_STATUS = 17;

const int PASS_START  = 18; // 32;
const int PASS_LENGTH = 34; // 48;
const int PASS_STATUS = 35; // 49;

const int MID_START   = 36; // 64;
const int MID_LENGTH  = 52; // 80;
const int MID_STATUS  = 53; // 81;

const int MPW_START   = 54; // 96;
const int MPW_LENGTH  = 70; // 112;
const int MPW_STATUS  = 71; // 113;

const int CID_START   = 72; // 128;
const int CID_LENGTH  = 136; // 192;
const int CID_STATUS  = 137; // 193;

const int NODE_TYPE   = 138; // 115;

const int DIMMER_EN   = 139; // 194;
const int SIXTEEN_EN  = 140; 

const int LAST_STATE_START  = 141;

const int EEPROM_END = 256;
//------------------------------------------------------------------------------------------------------------------------ 
// Device PINS 
//------------------------------------------------------------------------------------------------------------------------ 
// TODO ERASE PIN again should be function of select pins = 0;

const int SEL0      = 5;   // D1
const int SEL1      = 4;   // D2
const int SEL2      = 0;   // D3
const int SEL3      = 2;   // D4
const int SEL_EN    = 14;  // D5  
const int DIN       = 12;  // D6
const int DOUT      = 13;  // D7

// TODO Dimmer would be function of above select pins  
//------------------------------------------------------------------------------------------------------------------------ 

String status = "NULL";
String resp_type = "NULL";

String rtrssid     = STATION_SSID;
String rtrpwd      = STATION_PASSWORD;

String node_type   = "PENDING";
String mid         = MESH_PREFIX;
String mpw         = MESH_PASSWORD;
int    mesh_port   = MESH_PORT;
String value       = "Default ID and PASSWORD";
String clientId    = "PENDING"; 
String topicBegin;
String willTopic     = "/painlessMesh/from/will";
String gatewayTopic  = "/painlessMesh/from/gateway";
String hashTopic     = "/painlessMesh/to/#";
String nodeTopic     = "/painlessMesh/from/";

String new_mid,new_mpw,new_ssid,new_pass;

int ap_mode    = 1;
int root_node  = 0;
int noOfDimmer = 0;
byte is16      = 0;

int device     = 0; // Only MQTT call back updates based on subTopic

std::map <uint32_t, String> nodeResponse;

WiFiServer server(80);

//========================================================================================================================

void setup() {

   ioSetup();
   EEPROM.begin(EEPROM_END);
   Serial.begin(115200);

   int rt_node = (EEPROM.read(NODE_TYPE)==1); // EEPROM may have junk data so assigned the value after found valid
   _PP("EEPROM mode of the node : ");
   _PL(rt_node);

   ifEraseRequested();

   if ((EEPROM.read(MID_STATUS)==1)  && (EEPROM.read(MPW_STATUS)==1) && 
            ((rt_node && (EEPROM.read(SSID_STATUS)==1) && (EEPROM.read(PASS_STATUS)==1)) || !rt_node)) {

	// TODO For all devices

        noOfDimmer = EEPROM.read(DIMMER_EN); // V3.0 // TODO decision based on this 
        is16     = EEPROM.read(SIXTEEN_EN); // V4.0 // TODO decision based on this 
	readLastState(); // TODO : What if dimmer ,need last value along with the state too



   	mid     = eeprom_read_idpw(MID_START,MID_LENGTH);
   	mpw     = eeprom_read_idpw(MPW_START,MPW_LENGTH);
	ap_mode = 0; // Run the mesh code 
	root_node = rt_node; // Assign only if the EEPROM is actually written
	if ( root_node ) {
   		rtrssid = eeprom_read_idpw(SSID_START,SSID_LENGTH);
   		rtrpwd  = eeprom_read_idpw(PASS_START,PASS_LENGTH);
		clientId = eeprom_read_idpw(CID_START,CID_LENGTH);
		extractTopicBegin(); 

		root_node_setup();
	}
	else
		leaf_node_setup();

   	
	// For both root and leaf node

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
else if(root_node)
	root_node_loop();
else
	leaf_node_loop();
}


//========================================================================================================================
// Functions 
//========================================================================================================================

void ap_mode_loop () 
{
static int mid_updated      = 0;
static int mpw_updated      = 0;
static int rtrssid_updated  = 0;
static int rtrpwd_updated   = 0;

  // Check of client has connected
  WiFiClient client = server.available();
  if(!client) {
    return;
  }

  // Read the request line
  String request = client.readStringUntil('\r');
  _PL(request);
  client.flush();
  
  if(node_type == "PENDING") {
  	if(request.indexOf("/node/") !=-1) {
      		update_id_pw(request, &node_type);
		if( node_type == "root")
			root_node = 1;
	}
	else 
		value = "Update node type [root/leaf] first";
  }
  else if(root_node && clientId == "PENDING") { 
  	if(request.indexOf("/clientid/") !=-1) {
      		update_id_pw(request, &clientId);
		if(clientId.length() < CLIENT_ID_MIN_LENGTH) {
			clientId = "PENDING";
			value = "clientId length < CLIENT_ID_MIN_LENGTH characters. Not accepted";
		}
	}
	else 
		value = "Update clientid first";
  
  
  }

  // Match request
  else if(request.indexOf("/mid/") != -1) {
      update_id_pw(request, &mid);
      mid_updated = 1;

  } 
  else if(request.indexOf("/mpw/") != -1) {
      update_id_pw(request, &mpw);
      mpw_updated = 1;
  }
  else if(request.indexOf("/dimmer/") != -1) { // Dimmer_<X>  where <X> is number of dimmers [ max 4]
	String dimString;
	update_id_pw(request, &dimString);

	noOfDimmer = dimString.toInt(); // if not dimmer is disabled by default  V3.0

	if(noOfDimmer > 4) { 
		value = "Max dimmer supported is : 4";
	}
	else 
		value = "No. Of Dimmer/s : " + noOfDimmer;
  }
  else if(request.indexOf("/sixteen_en") != -1) {
	is16 = 1; // if not dimmer is disabled by default  V3.0
	value = "Sixteen Channel Enabled";
  }

  else if(request.indexOf("/confirmed")!=-1) {

	if(mid_updated && mpw_updated && ((root_node && rtrssid_updated && rtrpwd_updated) || !root_node)) {
			
		_PL("Confirmation received , Restarting device in to mesh mode");
		for ( int i = 0; i<16; i++)
			EEPROM.write(LAST_STATE_START+i,0);		 // TODO : All devices junk value removal

		EEPROM.write(NODE_TYPE,root_node);
  		EEPROM.write(DIMMER_EN,noOfDimmer); // V3.0
  		EEPROM.write(SIXTEEN_EN,is16); // V4.0
		eeprom_write(mid,MID_START,MID_LENGTH,MID_STATUS);
		eeprom_write(mpw,MPW_START,MPW_LENGTH,MPW_STATUS);
		if(root_node) {
			eeprom_write(clientId,CID_START,CID_LENGTH,CID_STATUS);
			eeprom_write(rtrssid,SSID_START,SSID_LENGTH,SSID_STATUS);
			eeprom_write(rtrpwd,PASS_START,PASS_LENGTH,PASS_STATUS);
		}
  		client.flush();
		delay(1000);
		ESP.restart();
	}
	else {
	}
		if ( root_node ) {
			_PL("Both Mesh and Router credentials [ID and PW] still not updated");
			value = "Update both Router and Mesh credentials";
		}
		else {
			_PL("Both Mesh ID and PW still not updated");
			value = "Update both Mesh ID and PW ";
		}

  }
  else if( root_node ) {
  	if(request.indexOf("/rtrssid/") != -1)  {
      		update_id_pw(request, &rtrssid);
		rtrssid_updated = 1;
  	}
  	else if(request.indexOf("/rtrpwd/") != -1)  {
      		update_id_pw(request, &rtrpwd);
		rtrpwd_updated = 1;
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
  _PL("Client disconnected");

  // The client will actually be disconnected when the function returns and the client object is destroyed
}

//========================================================================================================================
void root_node_loop() {
  

  static int checkmqttstatus = 0;

  userScheduler.execute();
  mesh.update();

  if(!mqttClient.loop() && checkmqttstatus) 
  	mqttstate.enableIfNot();
  else 
  	mqttstate.disable();


  if(myIP != getlocalIP()){
    	myIP = getlocalIP();
    	_PL("My IP is " + myIP.toString());
	String stationIP = myIP.toString();
	if(stationIP.indexOf("IP unset") != -1) 
		checkmqttstatus = 0;
	else
		checkmqttstatus = 1;
	
	mqttReconnect.enable();
	
  }

}

//========================================================================================================================
void mqttReconnectCb(){ // V1.4

    	_PF2("Attempting to connect MQTT client : %s \n",clientId.c_str());
	if (mqttReconnect.isLastIteration()) {
		_PL("Restarting as not able to connect to MQTT broker");
		ESP.restart();
	}
    	else if (mqttClient.connect(clientId.c_str(), willTopic.c_str(),2,1, "DISC")) { 
    	// else if (mqttClient.connect(clientId.c_str(),"KrishnamVande","J@9@tGurum", willTopic.c_str(),2,1, "DISC")) { 
    	  mqttClient.publish(willTopic.c_str(),"CONN",true);
    	  mqttClient.subscribe(hashTopic.c_str());
	  mqttReconnect.restart();
	  mqttReconnect.disable();
    	} 
    	else {
    	    _PP("failed , rc= ");
    	    _PP(mqttClient.state());
	    _PL(" Try again in 5 seconds");
    	}
}
//========================================================================================================================
void leaf_node_loop() { 

  userScheduler.execute();
  mesh.update();

}

//========================================================================================================================
/*int erase_eeprom ()
{
int erase = 0;
unsigned long ini_time ;

	_PL("Hold the Erase button for 3 seconds to erase the Mesh Id and Password");

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
			_PL("Reelase the erase button. Erasing flash ....");
	                break;
		}
	}

	if(erase) 
	{
		for(int i = 0 ; i < EEPROM_END ; i++)
			EEPROM.write(i,0);
		EEPROM.commit();
		_PL("Restarting the device ...");
		delay(10000);
		ESP.restart();
	}
	
	return erase;
}
*/
//========================================================================================================================
// Read from EEPROM 
String eeprom_read_idpw(int start_addr, int length_addr)
{
String idpw = ""; 

	int length = EEPROM.read(length_addr);
	for ( int i = 0 ; i < length ; i++)
		idpw += char(EEPROM.read(start_addr+i));

  	_PP("Updated ID/PW from the EEPROM :");
	_PL(idpw);

	return idpw;
}

//========================================================================================================================
void ap_mode_setup()
{
	_PL("Entering AP-mode node setup");
   	WiFi.mode(WIFI_AP);
   	WiFi.softAP(ssid, password);
  
   	IPAddress Server_IP = WiFi.softAPIP();
   	_PP("AP IP address: ");
   	_PL(Server_IP);
   	server.begin();
}

//========================================================================================================================
void root_node_setup()
{
   _PL("Entering root node setup");

   mesh.setDebugMsgTypes( ERROR | STARTUP | CONNECTION );  // set before init() so that you can see startup messages

  // Channel set to 6. Make sure to use the same channel for your mesh and for you other
  // network (STATION_SSID)
  mesh.init( mid, mpw, mesh_port, WIFI_AP_STA, 6 );
  mesh.onReceive(&rt_receivedCallback);

  mesh.stationManual(rtrssid, rtrpwd);
  mesh.setHostname(HOSTNAME);

  mesh.setRoot(true);
  // This and all other mesh should ideally now the mesh contains a root
  mesh.setContainsRoot(true);
  userScheduler.addTask(mqttstate);
  userScheduler.addTask(mqttReconnect);
  userScheduler.addTask( dimmerUpdate0 );
  userScheduler.addTask( dimmerUpdate1 );
  userScheduler.addTask( dimmerUpdate2 );
  userScheduler.addTask( dimmerUpdate3 );

}
//========================================================================================================================
void leaf_node_setup() {

   _PL("Entering leaf node setup");
  mesh.setDebugMsgTypes( ERROR | STARTUP );  // set before init() so that you can see startup messages

  mesh.init( mid , mpw , mesh_port , WIFI_AP_STA, 6);
  mesh.onReceive(&lf_receivedCallback);
  mesh.onNewConnection(&newConnectionCallback);
  mesh.onChangedConnections(&changedConnectionCallback);
  mesh.onNodeTimeAdjusted(&nodeTimeAdjustedCallback);

  userScheduler.addTask( pingNodes );
  userScheduler.addTask( dimmerUpdate0 );
  userScheduler.addTask( dimmerUpdate1 );
  userScheduler.addTask( dimmerUpdate2 );
  userScheduler.addTask( dimmerUpdate3 );

  // This and all other mesh should ideally now the mesh contains a root
  mesh.setContainsRoot(true);


}

//========================================================================================================================

void update_id_pw(String req,String* changeObject)
{
     	digitalWrite(LED_BUILTIN, HIGH);
     	int first_slash = req.indexOf('/');
     	int second_slash = req.indexOf('/', first_slash+1);
	int end_index = req.indexOf(' ',second_slash+1);    // string ends with " HTTP/1.1" Hence the last index is " "
     	*changeObject = req.substring(second_slash+1,end_index);
     	value = *changeObject;
     	_PP("MESH credintial received is : ");
     	_PL(*changeObject);
     	delay(1000);
     	digitalWrite(LED_BUILTIN, LOW);

}
//========================================================================================================================

void eeprom_write(String idpw,int start_addr,int length_addr,int status_addr)
{

	int length = idpw.length();

	_PP("New ID/PW is : ");
	_PL(idpw);

	_PP("Lenght of the id/pw : ");
	_PL(length);

	for ( int i = 0 ; i < length ; i++) { 
	        EEPROM.write(start_addr+i,idpw[i]);
	}

	EEPROM.write(length_addr,length);
	EEPROM.write(status_addr,1);
	EEPROM.commit();
}
//========================================================================================================================
// Message is recieved from the leaf nodes [ they broadcast the message ]
void rt_receivedCallback( const uint32_t &from, const String &msg ) {

// TODO : The nodes should send the msg with subTopic string 
//        Needs to extracted and publish topic will be to the topic with subTopic
  _PF3("bridge: Received from %u msg=%s\n", from, msg.c_str());
  String topic = nodeTopic + String(from);
  mqttClient.publish(topic.c_str(), msg.c_str());


  // Update the nodeResponse to validate if all are updated or not
  if(update_nodeResponse(from,msg,resp_type)) {
	if( resp_type == MID_CMD_STATUS) {
  		_PF2("All ndoes %s recieved \n",resp_type.c_str());
		resp_type = RST_CMD_STATUS;
	}
	else if (resp_type == RST_CMD_STATUS) {
		
  		_PF2("All ndoes %s recieved \n",resp_type.c_str());
		eeprom_write(new_mid,MID_START,MID_LENGTH,MID_STATUS);
		eeprom_write(new_mpw,MPW_START,MPW_LENGTH,MPW_STATUS);
		// Restart CMD from gateway
	}
  }

}

//========================================================================================================================
void mqttCallback(char* topic, uint8_t* payload, unsigned int length) {
  char* cleanPayload = (char*)malloc(length+1);
  payload[length] = '\0';
  memcpy(cleanPayload, payload, length+1);
  String msg = String(cleanPayload);
  free(cleanPayload);

  static int topicBeginLength = topicBegin.length();
  // Extract the string after the topicBeginLength/painlessMesh/to/ 
  String target_subTopic = String(topic).substring(topicBeginLength + 1 + 16 ); // TopicBegin length + / [1] + painlessMesh/to/ [15] + 1 for starting next

  String targetStr; 
  String subTopic = "0"; // Reserved for the node instructions itself

  int first_slash = target_subTopic.indexOf('/'); 

  if ( first_slash != -1) {
  	targetStr =  target_subTopic.substring(0,first_slash);
  	subTopic  =  target_subTopic.substring(first_slash+1); // From the first slash till end 
  }
  else {
  	targetStr =  target_subTopic;
  }

  _PF2("Sub Topic : %s \n", subTopic.c_str());
  _PF2("Target String %s \n", targetStr.c_str());

  String respStr;


  if(targetStr == "gateway") 
  {
     if(msg == "getNodes")
     {
       mqttClient.publish(gatewayTopic.c_str(), mesh.subConnectionJson().c_str());
       //mqttClient.publish(topic.c_str(), mesh.subConnectionJson().c_str()); //  TODO : If we do this we need to remove "to/from" from all the topic
       // as the topic presently containts "to"
     }
     else if(msg == "getList") {
     
    	std::list<uint32_t> nodelist = mesh.getNodeList();
	String nodeId;
    	for (std::list<uint32_t>::iterator it=nodelist.begin() ; it != nodelist.end();it++)
    	{
		nodeId += String(*it) + String(" ");
    	}
	String no_of_nodes;
	no_of_nodes = nodelist.size();
	respStr = nodeId + "# : " + no_of_nodes;
	_PF2("Sending getList response %s\n",respStr.c_str());

       	mqttClient.publish(gatewayTopic.c_str(),respStr.c_str());
       	// mqttClient.publish(topic.c_str(),respStr.c_str());
     }

     else if((msg == "ON") || (msg == "OFF") || (msg == "STATUS") || (msg == "VER") || (msg == "BLINK")) {
     	service_request(msg, subTopic, &respStr);
	// TODO : Publishing topic needs to change as per the subTopic
        mqttClient.publish(gatewayTopic.c_str(),  respStr.c_str());
        // mqttClient.publish(topic.c_str(),  respStr.c_str());
     }
     else if(msg.startsWith("BRI")) {                            // V3.0
  	if(noOfDimmer) {
  		service_request(msg, subTopic, &respStr);
	}
	else {
		_PL("Dimmer not enabled");
		respStr = "BRI0";
	}
	mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());
     }

     else if ( msg == "RESTART") {
     	_PL("Restart command from the app received ....");
	ESP.restart();
     }
     else if(msg.startsWith("update_mesh")) {
	
	// Take the new credentials
	if (mqtt_update_idpw(msg, &new_mid, &new_mpw, &respStr)) { 
		_PF2("ID : %s \n",new_mid.c_str());
		_PF2("PASS : %s \n",new_mpw.c_str());

    		std::list<uint32_t> nodelist = mesh.getNodeList();
    		for (std::list<uint32_t>::iterator it=nodelist.begin() ; it != nodelist.end();it++)
    		{
			nodeResponse.insert({ *it , "NA"});
    		}
		for (std::map <uint32_t, String>::iterator mitr = nodeResponse.begin(); mitr != nodeResponse.end(); mitr++)
		{
			
			_PF3("Node Resposes : %u : %s \n",mitr->first,mitr->second.c_str());
		}
		respStr = "Updating mesh credentials";
		resp_type = MID_CMD_STATUS;
		mesh.sendBroadcast(msg);
	}
        mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());
     }
     else if (msg.startsWith("update_ssid")) {
	if(mqtt_update_idpw(msg, &new_ssid, &new_pass, &respStr)) {
		_PF2("ID : %s \n",new_ssid.c_str());
		_PF2("PASS : %s \n",new_pass.c_str());
		respStr = "Updating rtr credentials";
		eeprom_write(new_ssid,SSID_START,SSID_LENGTH,SSID_STATUS);
		eeprom_write(new_pass,PASS_START,PASS_LENGTH,PASS_STATUS);
        	//mqttClient.publish(gatewayTopic.c_str(), respStr.c_str()); // This message required if we retart with ESP command here 
		// Restart from app
	}
        mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());
     }
     else if ((resp_type == RST_CMD_STATUS) && (msg == "mesh_push")) {
     	//
	mesh.sendBroadcast(msg);
	respStr = "Leaf nodes will restart with new credentials";
        mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());
     }
     else if(msg == "mesh_cred") {
     	respStr = "Mesh ID : ";
	respStr += mid;
        mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());
     	respStr = "Mesh PW : ";
	respStr += mpw;
        mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());
     }
	
  }
  else if(targetStr == "HiveClient") {
  	_PF2("HiveClient will Message : %s \n",msg.c_str()); 
  }
  else if(targetStr == "broadcast") 
  {
    mesh.sendBroadcast(msg);
     // Do the action for the root node also 
     service_request(msg, subTopic, &respStr);
     mqttClient.publish(gatewayTopic.c_str(), respStr.c_str());

  }
  else
  {
    uint32_t target = strtoul(targetStr.c_str(), NULL, 10);
    if(mesh.isConnected(target))
    {
      mesh.sendSingle(target, msg);
      // TODO : the nodes also need to know the device [ subTopic ]
    }
    else
    {
      mqttClient.publish(gatewayTopic.c_str(), "NOCON");
    }
  }
}

//========================================================================================================================
IPAddress getlocalIP() {
  return IPAddress(mesh.getStationIP());
}
//========================================================================================================================
void sendMessage(uint32_t from,String respStr) {
  
  mesh.sendSingle(from,respStr);
}

// Needed for painless library
void lf_receivedCallback( uint32_t from, String &msg ) {


// TODO : Msg should have teh subtopic and needs to be extracted

  _PF3("startHere: Received from %u msg=%s\n", from, msg.c_str());

  String respStr;

  if((msg == "ON") || (msg == "OFF") || (msg == "STATUS") || (msg == "VER") || (msg == "BLINK"))  {
  	service_request(msg, subTopic, &respStr);
	sendMessage(from,respStr);
  }
  else if ( msg == "RESTART") {
     	_PL("Restart command from the app received ....");
	ESP.restart();
  }
  else if(msg.startsWith("BRI"))
  {
  	if(noOfDimmer) {
  		service_request(msg, subTopic, &respStr);
	}
	else {
		_PL("Dimmer not enabled");
		respStr = "BRI0";
	}
	sendMessage(from,respStr);

  }
  else if(msg.startsWith("update_mesh")) {
	
	// Take the new credentials
	if(mqtt_update_idpw(msg, &new_mid, &new_mpw, &respStr)){
		_PF2("ID : %s \n",new_mid.c_str());
		_PF2("PASS : %s \n",new_mpw.c_str());
		respStr = MID_CMD_STATUS;
	}
	sendMessage(from,respStr);
  }
  else if(msg == "mesh_push")
  {
  	respStr = RST_CMD_STATUS;
	sendMessage(from,respStr);
	// Write to EEPROM and restart
	eeprom_write(new_mid,MID_START,MID_LENGTH,MID_STATUS);
	eeprom_write(new_mpw,MPW_START,MPW_LENGTH,MPW_STATUS);
  }

}

void newConnectionCallback(uint32_t nodeId) {
    _PF2("--> startHere: New Connection, nodeId = %u\n", nodeId);
}

void changedConnectionCallback() {
    String networkTopo = mesh.subConnectionJson();
    _PF2("Changed connections %s\n",networkTopo.c_str());
    
    if(!root_node) { // For leaf node             V1.5 : If the leaf node is not able to connect to any other mesh node
	if(networkTopo.indexOf("\"root\":true") == -1) // V2.6 will also solve V1.5 as that too will not have root
		pingNodes.enableIfNot();
	else {
		pingNodes.restart();
		pingNodes.disable();
	}
    }
    
}

void nodeTimeAdjustedCallback(int32_t offset) {
    _PF3("Adjusted time %u. Offset = %d\n", mesh.getNodeTime(),offset);
}


void service_request(String req, String subTopic, String* respStr)
{
	// TODO : Control / status for the device

	device = subTopic.toInt();

	if(noOfDimmer)
		if((device < noOfDimmer*2) && device%2) { // Odd device subTopic in case of dimmer  
		*respStr = "NODEV_1";
		_PF2("Incorrect device subtopic : %d \n",device);
		return;
	}

	_PF2("Device selected : %d \n",device);


	if(req == "ON") {
		if(device >= noOfDimmer*2 ) {
			if(!EEPROM.read(LAST_STATE_START+device)) {
				EEPROM.write(LAST_STATE_START+device,1);
				EEPROM.commit();
			}
			writeDevice(device,1);
			*respStr = "ON";
		}
		else 
			*respStr = "NODEV";
	}
	else if(req == "OFF") {
		if(device >= noOfDimmer*2 ) {
			if(EEPROM.read(LAST_STATE_START+device)) {
				EEPROM.write(LAST_STATE_START+device,0);
				EEPROM.commit();
			}
			writeDevice(device,0);
			*respStr = "OFF";
		}
		else 
			*respStr = "NODEV";
	}
	else if(req == "STATUS")
		int status = EEPROM.read(LAST_STATE_START+device);

		if(device >= noOfDimmer*2 ) {
			if(status)
				*respStr = "ON"; // V1.3
			else
				*respStr = "OFF";
		}
		else 
			*respStr = "BRI" + status;

	else if(req == "VER")
		*respStr = VERSION;

	else if(req == "BLINK") {
		unsigned long iniTime = millis();   
		while(millis()-iniTime < 500)
		{
			if(millis()-iniTime < 250)
				digitalWrite(LED_BUILTIN,LOW);
			else
				digitalWrite(LED_BUILTIN,HIGH);
		} 
		*respStr = ":)";

	}
	else if(req.startsWith("BRI")) {
		
		int dimmerNo = device/2; //  [ device 0,1 - dimmerNo : 0 , device 2,3 - dimmerNo - 1  ...]

		if( dimmerNo > noOfDimmer ) { // if dimmer not exist
			*respStr = "NODIM";
			_PL("Dimmer does not exist");
			return;
		}
			
		int brightness = req.substring(3).toInt(); // Index of the first letter after D[0]I[1]M[2]
		static int lastDimValue[4] = {100,100,100,100};
		_PF2("Dimmer value : %d \n",dimVal);
		dimVal = 100-brightness;   // The wheel on the app is indicating brightness 
		

		int diff = lastDimValue[dimmerNo] - dimVal; 
		lastDimValue[dimmerNo] = dimVal;

		EEPROM.write(LAST_STATE_START+device,brightness);
		EEPROM.commit();
		// Last Dim value to EEPROM
		_PF3("Last Dim : %d , diff : %d \n",lastDimValue[dimmerNo],diff);

		dimmerPinsControl(diff);
		*respStr = req;
	}
	else if(req == "ANSTAT") {
	//	sendAnalogStatus(analogInPin);
	}
		

	

}

void dimmerUpdate0Cb() { 
	
	_PP1("Inside dimmer update Callback 0 :");
	_PL1(millis());
	static bool dimInt = false;

	if( dimInt ) { 
		writeDevice(1,0);
		_PL1("Write LOW");
	}
	else {
		writeDevice(1,1);
		_PL1("Write HIGH");
	}
	
	dimInt = !dimInt; 
}

void dimmerUpdate1Cb() { 
	
	_PP1("Inside dimmer update Callback 1 :");
	_PL1(millis());
	static bool dimInt = false;

	if( dimInt ) { 
		writeDevice(3,0);
		_PL1("Write LOW");
	}
	else {
		writeDevice(3,1);
		_PL1("Write HIGH");
	}
	
	dimInt = !dimInt; 
}

void dimmerUpdate2Cb() { 
	
	_PP1("Inside dimmer update Callback 2 :");
	_PL1(millis());
	static bool dimInt = false;

	if( dimInt ) { 
		writeDevice(5,0);
		_PL1("Write LOW");
	}
	else {
		writeDevice(5,1);
		_PL1("Write HIGH");
	}
	
	dimInt = !dimInt; 
}

void dimmerUpdate3Cb() { 
	
	_PP1("Inside dimmer update Callback 3 :");
	_PL1(millis());
	static bool dimInt = false;

	if( dimInt ) { 
		writeDevice(7,0);
		_PL1("Write LOW");
	}
	else {
		writeDevice(7,1);
		_PL1("Write HIGH");
	}
	
	dimInt = !dimInt; 
}
//========================================================================================================================
// If the ID and PW are of sufficient length return 1 [with update id pw ] or else 0 
int mqtt_update_idpw(String new_idpw, String* id,String* pw, String* respStr)
{
	int first_space  = new_idpw.indexOf(' ');
	int second_space = new_idpw.indexOf(' ',first_space+1);
	int last_index   = new_idpw.length()+1;
	
	// ID and PW to be of minimum lenght
	if ((second_space - first_space) <= ID_LENGTH ) {
		*respStr  = "ID length < ";
		*respStr += ID_LENGTH;
		return 0;
	}
	if((last_index-second_space) <= PW_LENGTH) {
		*respStr  = "PW length < ";
		*respStr += PW_LENGTH;
		return 0;
	}

	*id = new_idpw.substring(first_space+1,second_space);
	*pw = new_idpw.substring(second_space+1);
	return 1;
}
//========================================================================================================================
int update_nodeResponse(uint32_t nodeid, String resp ,String cmd_status )
{
	String respStr;
	if(resp.startsWith(cmd_status)) {
		std::map <uint32_t, String>::iterator mitr = nodeResponse.find(nodeid);
		if(mitr != nodeResponse.end()) { 
				nodeResponse.erase(nodeid);
				nodeResponse.insert({nodeid,cmd_status});
		}
		else 
		{
			_PF2(" Node : %u NOT FOUND \n",nodeid);
			return 0;
		}
		for(mitr = nodeResponse.begin(); mitr != nodeResponse.end();mitr++)
		{
			if(mitr->second != cmd_status) {
				respStr = mitr->first;
				respStr += " : Response awaited";
  				mqttClient.publish(gatewayTopic.c_str(),respStr.c_str());
				return 0;
			}
		}
		
		// Write to eeprom and restart 
		respStr = cmd_status + " All nodes";
  		mqttClient.publish(gatewayTopic.c_str(),respStr.c_str());
		return 1;
	}
	else 
		return 0;
}

//========================================================================================================================
void mqttstateCb()  {
  	_PF2("MQTT connection state : %d \n",mqttClient.state()); 
	mqttReconnect.enableIfNot();
}
//========================================================================================================================
void pingCb() {  //V1.5
	
	if(pingNodes.isFirstIteration()) {
		_PF("\nWaiting to connect with the root node");
	}
	else if(pingNodes.isLastIteration()) {
		_PF("\nFailed to connect to the root node...\n");
		_PL("Restarting the node ....");
		ESP.restart();
	}
	else 
		_PP(".");
}
//========================================================================================================================
void extractTopicBegin() {

	int start_index = clientId.lastIndexOf("Shrimad");
	if(start_index !=-1) 
		topicBegin = clientId.substring(start_index);
	else {
		int last_index = clientId.length();
		topicBegin = clientId.substring(last_index-CLIENT_ID_MIN_LENGTH); // Last 18 characters taken
	}
		
	_PF2("All the topics will begin with : %s \n", topicBegin.c_str()); 

	willTopic    = topicBegin + willTopic;
	_PF2("Will Topic : %s \n", willTopic.c_str());
	gatewayTopic = topicBegin + gatewayTopic;
	_PF2("Gateway Topic : %s \n", gatewayTopic.c_str());
	hashTopic    = topicBegin + hashTopic;
	_PF2("hash Topic : %s \n", hashTopic.c_str());
	nodeTopic    = topicBegin + nodeTopic;
	_PF2("Nodes Topic : %s \n", nodeTopic.c_str());

}
//========================================================================================================================
//void sendAnalogStatus(String* anaResp) {
//	int anaValue = analogRead(analpgPin);
//        // Based on the sensor type the conversion will change 
//}
//========================================================================================================================
void ioSetup () {

   // TODO sel lines and din dout

   pinMode(SEL0, OUTPUT);
   digitalWrite(SEL0, LOW); // V2..7 for inital flickering  OFF at start

   pinMode(SEL1, OUTPUT);
   digitalWrite(SEL1, LOW); // V4.0

   pinMode(SEL2, OUTPUT);
   digitalWrite(SEL2, LOW); // V4.0

   pinMode(SEL3, OUTPUT);
   digitalWrite(SEL3, LOW); // V4.0

   pinMode(SEL_EN, OUTPUT);
   digitalWrite(SEL_EN, LOW); // V4.0

   pinMode(DOUT, OUTPUT);
   digitalWrite(DOUT, LOW); // V4.0

   pinMode(DIN, INPUT);

   pinMode(LED_BUILTIN, OUTPUT);
   digitalWrite(LED_BUILTIN, HIGH); // turn off

}

// SEL_EN = 0 which does not change any o/p but If DIN follows DOUT seq then we can go for erase
void ifEraseRequested() { 

	int val = 0xF05A; // 'b11110000_01011010 

	for (int i = 0; i<16;i++)
	{
		digitalWrite(DOUT,val.bit(i));

		if (digitalRead(DIN) != val.bit(i)) {
			_PL("Erase not intended");
			return;
		}
	}

	_PL("Erase EEPROM requested");

	for(int i = 0 ; i < EEPROM_END ; i++)
		EEPROM.write(i,0);

	EEPROM.commit();
	_PL("Restarting the device ...");
	delay(10000);
	ESP.restart();
}

int readDevice (int device) { 
	

	digitalWrite(SEL0,device.bit[0]);
	digitalWrite(SEL1,device.bit[1]);
	digitalWrite(SEL2,device.bit[2]);
	digitalWrite(SEL3,device.bit[3]);
	
	return digitalRead(DIN);

	
}
void writeDevice(int device,int data) {

	digitalWrite(SEL0,device.bit[0]);
	digitalWrite(SEL1,device.bit[1]);
	digitalWrite(SEL2,device.bit[2]);
	digitalWrite(SEL3,device.bit[3]);
	
	digitalWrite(DOUT,data);

	// TODO : How to latch the data / May be generating a pulse 
	digitalWrite(SEL_EN,HIGH);
	// some delay 
	digitalWrite(SEL_EN,LOW);


}


void readLastState() { 

	int lastState; 
	//TODO  Dimmer last state update
	for ( int i = 0; i < noOfDimmer ; i ++) { 
		lastState = EEPROM.read(LAST_STATE_START+i*2);  // Dimmer status on even address
		device = i*2; // Dimmer device should be 0,2,4,6 : Device value needed for the dimmer pin control
		// TODO call dimmer Pin control
		dimmerPinsControl(lastState);
	}
	for ( int i = noOfDimmer*2 ; i < 8; i++) {
		lastState = EEPROM.read(LAST_STATE_START+i);
		writeDevice(i,lastState);
	}
	if( is16 ) { 
		for ( int i = 8; i < 16; i++) {
			lastState = EEPROM.read(LAST_STATE_START+i);
			writeDevice(i,lastState);
		}
	}
}


void dimmerPinsControl(int diff) { 

	// TODO : Control the required dimmer  bases on device value 0-3 , device 0 - pins 0,1 , device - 1 , pins 2,3 ... , deivce - 3 , pins 6,7

	if(diff > 0) {
		writeDevice(device,1);
		_PL("DIM DEC");
	}
	else if(diff < 0) {
		writeDevice(device,0);
		_PL("DIM INC");
	}

	diff = abs(diff);
	if(diff) {

		switch (device/2) {
		case 0 : 
			dimmerUpdate0.setIterations(diff*2);
			dimmerUpdate0.restart();
		break;
		case 1 : 
			dimmerUpdate1.setIterations(diff*2);
			dimmerUpdate1.restart();
		break;
		case 2 : 
			dimmerUpdate2.setIterations(diff*2);
			dimmerUpdate2.restart();
		break;
		case 3 : 
			dimmerUpdate3.setIterations(diff*2);
			dimmerUpdate3.restart();
		break;
			
		}
	}
}
