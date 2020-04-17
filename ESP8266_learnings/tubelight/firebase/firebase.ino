//
// Copyright 2015 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

// FirebaseRoom_ESP8266 is a sample that demo using multiple sensors
// and actuactor with the FirebaseArduino library.

#include <ESP8266WiFi.h>
#include "FirebaseESP8266.h" 

// Set these to run example.
#define FIREBASE_HOST "m-test-ba6ba.firebaseio.com"
#define FIREBASE_AUTH "gJcnVUObNLDDPv89iHQiypu8VPDwsNem0zupxuoj"
#define WIFI_SSID "NU_JIO"
#define WIFI_PASSWORD "j0jioNathan"

//global variables
uint8_t BuiltIn_LED = 2;

FirebaseData firebaseData;

void setup() {
  Serial.begin(9600);

   pinMode(BuiltIn_LED, OUTPUT);

 // connect to wifi.
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("connecting");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }
  Serial.println();
  Serial.print("connected: ");
  Serial.println(WiFi.localIP());

  
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  Firebase.reconnectWiFi(true);

  if(Firebase.get(firebaseData, "/nodes/node1/power"))
  {
    //Success
    Serial.print("Get int data success, int = ");
    Serial.println(firebaseData.stringData());

  }else{
    //Failed?, get the error reason from firebaseData

    Serial.print("Error in getInt, ");
    Serial.println(firebaseData.errorReason());
  }
}

void loop() {

  delay(1000);
  if(Firebase.get(firebaseData, "/nodes/node1/power"))
  {
    //Success
    Serial.print("Get int data success, int = ");
    String val = firebaseData.stringData();
    Serial.println(val);

    if(val == "on") {
      digitalWrite(BuiltIn_LED, LOW);
    } else {
      digitalWrite(BuiltIn_LED, HIGH);
    }
   }else{
    //Failed?, get the error reason from firebaseData

    Serial.print("Error in getInt, ");
    Serial.println(firebaseData.errorReason());
  }
}

  
