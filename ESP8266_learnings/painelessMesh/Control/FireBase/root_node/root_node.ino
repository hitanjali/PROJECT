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
//#include <PubSubClient.h>
#include <WiFiClient.h>
#include <ESP8266WiFi.h>
#include "FirebaseESP8266.h"

#define   MESH_PREFIX     "gloria1B"
#define   MESH_PASSWORD   "gloria1B_pass"
#define   MESH_PORT       5555

#define   STATION_SSID     "NU_JIO"
#define   STATION_PASSWORD "j0jioNathan"

#define FIREBASE_HOST "m-test-ba6ba.firebaseio.com"
#define FIREBASE_AUTH "gJcnVUObNLDDPv89iHQiypu8VPDwsNem0zupxuoj"

#define HOSTNAME "Firebase_host"

const unsigned long TIMER         = 1000; 

// Prototypes
void receivedCallback( const uint32_t &from, const String &msg );

IPAddress getlocalIP();

IPAddress myIP(0,0,0,0);
//IPAddress mqttBroker(broker.hivemq.com);

FirebaseData firebaseData;
painlessMesh  mesh;
WiFiClient wifiClient;
uint8_t BuiltIn_LED = 2;

unsigned long start_time       = 0;

unsigned long new_time         = 0;

int fb_start = 0;

void setup() {
  Serial.begin(115200);

    pinMode(BuiltIn_LED, OUTPUT);

  mesh.setDebugMsgTypes( ERROR | STARTUP | CONNECTION );  // set before init() so that you can see startup messages

  // Channel set to 6. Make sure to use the same channel for your mesh and for you other
  // network (STATION_SSID)
  mesh.init( MESH_PREFIX, MESH_PASSWORD, MESH_PORT, WIFI_AP_STA, 6 );
  mesh.onReceive(&receivedCallback);

  mesh.stationManual(STATION_SSID, STATION_PASSWORD);
  mesh.setHostname(HOSTNAME);

  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  Firebase.reconnectWiFi(true);

  

  mesh.setRoot(true);
  // This and all other mesh should ideally now the mesh contains a root
  mesh.setContainsRoot(true);

  start_time = millis();
}

void loop() {

  
  mesh.update();

  
  new_time = millis();
  if ((new_time - start_time >= TIMER ) && fb_start) {
   firebaseGetmsg();
   start_time = millis();
  }
  
  if(myIP != getlocalIP()){
    myIP = getlocalIP();
    Serial.println("My IP is " + myIP.toString());

    fb_start = 1;
    
  }
}

void receivedCallback( const uint32_t &from, const String &msg ) {
  Serial.printf("bridge: Received from %u msg=%s\n", from, msg.c_str());
  String topic = "painlessMesh/from/" + String(from);
  // mqttClient.publish(topic.c_str(), msg.c_str());
  // Put the message to the firebase corresponding node
  firebaseSetstatus(msg);
}

// Get message from the firebase and borascast/send to corresponsing node
void firebaseGetmsg () {
 
 if(Firebase.get(firebaseData, "/nodes/node1/power"))
  {
    //Success
    Serial.print("Get int data success, int = ");
    String val = firebaseData.stringData();
    Serial.println(val);

    if(val == "on") {
      mesh.sendBroadcast("ON");
      digitalWrite(BuiltIn_LED, LOW);
    } else {
      digitalWrite(BuiltIn_LED, HIGH);
      mesh.sendBroadcast("OFF");
    }
   }else{
    //Failed?, get the error reason from firebaseData

    Serial.print("Error in getInt, ");
    Serial.println(firebaseData.errorReason());
  }


}

void firebaseSetstatus (String status ) {

 if(Firebase.setString(firebaseData, "/nodes/node2/power", status))
  {
    //Success
     Serial.println("Set status data success");

  }else{
    //Failed?, get the error reason from firebaseData

    Serial.print("Error in setString, ");
    Serial.println(firebaseData.errorReason());
  }
}

/*
void mqttCallback(char* topic, uint8_t* payload, unsigned int length) {
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
*/

IPAddress getlocalIP() {
  return IPAddress(mesh.getStationIP());
}
