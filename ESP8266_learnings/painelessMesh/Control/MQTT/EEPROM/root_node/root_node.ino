//************************************************************
// this is a simple example that uses the painlessMesh library to
// connect to a another network and relay messages from a MQTT broker to the nodes of the mesh network.
// To send a message to a mesh node, you can publish it to "painlessMesh/to/12345678" where 12345678 equals the nodeId.
// To broadcast a message to all nodes in the mesh you can publish it to "painlessMesh/to/broadcast".
// When you publish "getNodes" to "painlessMesh/to/gateway" you receive the mesh topology as JSON
// Every message from the mesh which is send to the gateway node will be published to "painlessMesh/from/12345678" where 12345678 
// is the nodeId from which the packet was send.
//************************************************************

#include <Arduino.h>
#include <painlessMesh.h>
#include <PubSubClient.h>
#include <WiFiClient.h>
#include <EEPROM.h>           // Enabling EEPROM

#define   MESH_PREFIX     "gloria1B"
#define   MESH_PASSWORD   "gloria1B_pass"
#define   MESH_PORT       5555

#define   STATION_SSID     "NU_JIO"
#define   STATION_PASSWORD "j0jioNathan"

#define HOSTNAME "MQTT_Bridge"

const int EEPROM_CONTROL   = 5;

const int SSID_START_ADDR  = 0;
const int SSID_LENGTH_ADDR = 16;
const int SSID_STATUS_ADDR = 17;
const int PASS_START_ADDR  = 32;
const int PASS_LENGTH_ADDR = 48;
const int PASS_STATUS_ADDR = 49;

const int MID_START_ADDR   = 64;
const int MID_LENGTH_ADDR  = 80;
const int MID_STATUS_ADDR  = 81;
const int MPW_START_ADDR   = 96;
const int MPW_LENGTH_ADDR  = 112;
const int MPW_STATUS_ADDR  = 113;

const int EEPROM_END_ADDR = 128;

String ssid     = STATION_SSID;
String password = STATION_PASSWORD;

String mesh_id    = MESH_PREFIX;
String mesh_pw    = MESH_PASSWORD;
int    mesh_port  = MESH_PORT;

// Prototypes
void receivedCallback( const uint32_t &from, const String &msg );
void mqttCallback(char* topic, byte* payload, unsigned int length);

IPAddress getlocalIP();

IPAddress myIP(0,0,0,0);
//IPAddress mqttBroker(broker.hivemq.com);

painlessMesh  mesh;
WiFiClient wifiClient;
PubSubClient mqttClient("broker.hivemq.com", 1883, mqttCallback, wifiClient);

void setup() {

  int ssid_from_eeprom  = 0;
  int pass_from_eeprom  = 0;

  Serial.begin(115200);
  
  // EEPROM code for updating the SSID and password throgh serial
  EEPROM.begin(EEPROM_END_ADDR);
  Serial.println();

  for ( int i = 0; i<64 ; i++) {
	
  	Serial.printf( "EEPROM : addr = %x , char = %c ,data = 0x%x  \n", i , char(EEPROM.read(i)), EEPROM.read(i));
  }

  if (EEPROM.read(SSID_STATUS_ADDR)==1) { 
        ssid = "";
	int length = EEPROM.read(SSID_LENGTH_ADDR);
	for ( int i = 0 ; i < length ; i++)
		ssid += char(EEPROM.read(SSID_START_ADDR+i));

	ssid_from_eeprom = 1;
  	Serial.print("Updated SSID from the EEPROM :");
	Serial.println(ssid);
  }

  if (EEPROM.read(PASS_STATUS_ADDR)==1) { 
        password = "";
	int length = EEPROM.read(PASS_LENGTH_ADDR);
	for ( int i = 0 ; i < length ; i++)
		password += char(EEPROM.read(PASS_START_ADDR+i));

	pass_from_eeprom = 1;
  	Serial.print("Updated PASSWORD from the EEPROM :");
	Serial.println(password);
  }
  // MID and PW
  if (EEPROM.read(MID_STATUS_ADDR)==1) { 
        mesh_id = "";
	int length = EEPROM.read(MID_LENGTH_ADDR);
	for ( int i = 0 ; i < length ; i++)
		mesh_id += char(EEPROM.read(MID_START_ADDR+i));

  	Serial.print("Updated SSID from the EEPROM :");
	Serial.println(mesh_id);
  }
  if (EEPROM.read(MPW_STATUS_ADDR)==1) { 
        mesh_pw = "";
	int length = EEPROM.read(MPW_LENGTH_ADDR);
	for ( int i = 0 ; i < length ; i++)
		mesh_pw += char(EEPROM.read(MPW_START_ADDR+i));

  	Serial.print("Updated SSID from the EEPROM :");
	Serial.println(mesh_pw);
  }

  // In case the ssid and password are wrong then we need to erase the eeprom
  if(ssid_from_eeprom || pass_from_eeprom ) { 

      Serial.println("Your chance to erase the wrong EEPROM settings.");
      Serial.println("The device will reset and start with the default SSID and PASSWORD");
      Serial.println("You will need admin permissions to change the WiFi credentials");
      
      pinMode(EEPROM_CONTROL,INPUT);
      int erase_control = digitalRead(EEPROM_CONTROL); // active LOW

      while(!erase_control) {
      	if(Serial.available()) {
      	     String erase = Serial.readString();
      	     erase.trim();
      	     int el = erase.length();
      	     Serial.print("Lenght of the erase : ");
      	     Serial.println(el);
      	     if ( erase == "erase_ssid_pw") {
    
      	     	Serial.println("Inside Erase Status ");
      	     	EEPROM.write(SSID_STATUS_ADDR,0);
      	     	EEPROM.write(PASS_STATUS_ADDR,0);
      	     	EEPROM.commit();
      	        Serial.printf( "EEPROM : ssid addr = %x , data = 0x%x \n", SSID_STATUS_ADDR , EEPROM.read(SSID_STATUS_ADDR));
      	        Serial.printf( "EEPROM : pass addr = %x , data = 0x%x \n", PASS_STATUS_ADDR , EEPROM.read(PASS_STATUS_ADDR));
      	        ESP.restart();
      	     }
      	     else if ( erase == "erase_all") {
      	     	Serial.println("Inside Erase All ");
      	     	for ( int i=0; i < EEPROM_END_ADDR ; i++) {
      	     		EEPROM.write(i,0);
      	     	}
      	     	EEPROM.commit();
      	        ESP.restart();
      	     }
      	     
      	 
      	  }
	}
  }

  mesh.setDebugMsgTypes( ERROR | STARTUP | CONNECTION );  // set before init() so that you can see startup messages

  // Channel set to 6. Make sure to use the same channel for your mesh and for you other
  // network (STATION_SSID)
  mesh.init( mesh_id, mesh_pw, mesh_port, WIFI_AP_STA, 6 );
  mesh.onReceive(&receivedCallback);

  mesh.stationManual(ssid, password);

  mesh.setHostname(HOSTNAME);

  mesh.setRoot(true);
  // This and all other mesh should ideally now the mesh contains a root
  mesh.setContainsRoot(true);

}

void loop() {


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
}

void receivedCallback( const uint32_t &from, const String &msg ) {
  Serial.printf("bridge: Received from %u msg=%s\n", from, msg.c_str());
  String topic = "painlessMesh/from/" + String(from);
  mqttClient.publish(topic.c_str(), msg.c_str());
}

void mqttCallback(char* topic, uint8_t* payload, unsigned int length) {

  static int ssid_updated = 0;

  static int pass_updated = 0;

  char* cleanPayload = (char*)malloc(length+1);
  payload[length] = '\0';
  memcpy(cleanPayload, payload, length+1);
  String msg = String(cleanPayload);
  free(cleanPayload);

  String targetStr = String(topic).substring(16);

  if(targetStr == "gateway")
  {
    if(msg == "getNodes")
    {
      mqttClient.publish("painlessMesh/from/gateway", mesh.subConnectionJson().c_str());
    }
    if(msg.startsWith("update_mid")) 
    {
 	String new_mid = msg.substring(11);
	int length = new_mid.length();


	Serial.print("New MESH_ID is : ");
	Serial.println(new_mid);

	Serial.print("Lenght of the mesh id : ");
	Serial.println(length);
	for ( int i = 0 ; i < length ; i++) { 
		printf( "Character  : %d = %c ,\n",i, new_mid[i]);
	        EEPROM.write(MID_START_ADDR+i,new_mid[i]);
	}

	EEPROM.write(MID_LENGTH_ADDR,length);
	EEPROM.write(MID_STATUS_ADDR,1);
	EEPROM.commit();
	ssid_updated = 1;
	String ssid_mqc = "";
	for ( int i = 0 ; i < length ; i++)
		ssid_mqc += char(EEPROM.read(MID_START_ADDR+i));
  	Serial.print("Updated SSID from the EEPROM : ");
	Serial.println(ssid_mqc);
     	
        mqttClient.publish("painlessMesh/from/gateway", "Updated MESH ID" );
    }
    if(msg.startsWith("update_mpw")) 
    {
 	String new_mpw = msg.substring(11);
	int length = new_mpw.length();


	Serial.print("New MESH_ID is : ");
	Serial.println(new_mpw);

	Serial.print("Lenght of the mesh id : ");
	Serial.println(length);
	for ( int i = 0 ; i < length ; i++) { 
		printf( "Character  : %d = %c ,\n",i, new_mpw[i]);
	        EEPROM.write(MPW_START_ADDR+i,new_mpw[i]);
	}

	EEPROM.write(MPW_LENGTH_ADDR,length);
	EEPROM.write(MPW_STATUS_ADDR,1);
	EEPROM.commit();
	ssid_updated = 1;
	String ssid_mqc = "";
	for ( int i = 0 ; i < length ; i++)
		ssid_mqc += char(EEPROM.read(MPW_START_ADDR+i));
  	Serial.print("Updated SSID from the EEPROM : ");
	Serial.println(ssid_mqc);
     	
        mqttClient.publish("painlessMesh/from/gateway", "Updated MESH PASSWORD" );
    }

    //
    if(msg.startsWith("update_ssid")) 
    {
 	String new_ssid = msg.substring(12);
	int length = new_ssid.length();


	Serial.print("New SSID is : ");
	Serial.println(new_ssid);

	Serial.print("Lenght of the ssid : ");
	Serial.println(length);
	for ( int i = 0 ; i < length ; i++) { 
		printf( "Character  : %d = %c ,\n",i, new_ssid[i]);
	        EEPROM.write(SSID_START_ADDR+i,new_ssid[i]);
	}

	EEPROM.write(SSID_LENGTH_ADDR,length);
	EEPROM.write(SSID_STATUS_ADDR,1);
	EEPROM.commit();
	ssid_updated = 1;
	String ssid_mqc = "";
	for ( int i = 0 ; i < length ; i++)
		ssid_mqc += char(EEPROM.read(SSID_START_ADDR+i));
  	Serial.print("Updated SSID from the EEPROM : ");
	Serial.println(ssid_mqc);
     	
        mqttClient.publish("painlessMesh/from/gateway", "Updated SSID" );
    }
    else if(msg.startsWith("update_pass"))  { 
		String new_pass = msg.substring(12);
		new_pass.trim();
		int length = new_pass.length();
		Serial.print("New PASSWORD is : ");
		Serial.println(new_pass);

		Serial.print("Lenght of the pass : ");
		Serial.println(length);

		for ( int i = 0 ; i < length ; i++) { 
			printf( "Character  : %d = %c ,\n",i, new_pass[i]);
		        EEPROM.write(PASS_START_ADDR+i,new_pass[i]);

		// As there may be a digit in the password it is considered as interger and hence the writing is done differently and 
		// hence we are not able to ge the correct password
		// This behaviour was verified as the pass word that contains only letters works well and password that contains the 
		// number digits fail.
		// The above approach in the for loop works fine and the below aaproach of the EEPROM.put doesn't work
		}
		// EEPROM.put(PASS_START_ADDR,new_pass); 
		EEPROM.write(PASS_LENGTH_ADDR,length);
		EEPROM.write(PASS_STATUS_ADDR,1);
		EEPROM.commit();
		pass_updated = 1;
                String password_mqc = "";
		for ( int i = 0 ; i < length ; i++)
			password_mqc += char(EEPROM.read(PASS_START_ADDR+i));

  		Serial.print("Updated PASSWORD from the EEPROM : ");
		Serial.println(password_mqc);
                mqttClient.publish("painlessMesh/from/gateway", "Updated PASSOWRD" );
	}

   if ( ssid_updated && pass_updated) ESP.restart();


  }
  else if(targetStr == "broadcast") 
  {
    mesh.sendBroadcast(msg);
  }
  else
  {
    uint32_t target = strtoul(targetStr.c_str(), NULL, 10);
    if(mesh.isConnected(target))
    {
      mesh.sendSingle(target, msg);
    }
    else
    {
      mqttClient.publish("painlessMesh/from/gateway", "Client not connected!");
    }
  }
}

IPAddress getlocalIP() {
  return IPAddress(mesh.getStationIP());
}
