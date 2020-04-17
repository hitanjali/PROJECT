
#include<ESP8266WiFi.h>

// WiFi Definitions
const char* ssid = "RAW_MESH";
const char* password = "j0espNathan"; // has to be longer than 7 chars

int ledPin = 2; // GPIO13
String value;
WiFiServer server(80);



void setup() {

   Serial.begin(115200);
   delay(10);
   pinMode(ledPin, OUTPUT);
   digitalWrite(ledPin, LOW); // turn on

   WiFi.mode(WIFI_AP);
   WiFi.softAP(ssid, password);
  
   IPAddress IP = WiFi.softAPIP();
   Serial.print("AP IP address: ");
   Serial.println(IP);
   server.begin();
}

void loop() {


static int mid_updated = 0;
static int mpw_updated = 0;

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
     digitalWrite(ledPin, HIGH);
     int first_slash = request.indexOf('/');
     int second_slash = request.indexOf('/', first_slash+1);
     int end_index = request.indexOf(' ',second_slash+1);
     String mid = request.substring(second_slash+1,end_index);
     value = mid;
     Serial.print("MESH ID received is : ");
     Serial.println(mid);
     delay(1000);
     digitalWrite(ledPin, LOW);
     mid_updated = 1;


  } else if(request.indexOf("/mpw/") != -1) {
     digitalWrite(ledPin, HIGH);
     int first_slash = request.indexOf('/');
     int second_slash = request.indexOf('/', first_slash+1);
     int end_index = request.indexOf(' ',second_slash+1);
     String mpw = request.substring(second_slash+1,end_index);
     value = mpw;
     Serial.print("MESH PASSWORD received is : ");
     Serial.println(mpw);
     delay(1000);
     digitalWrite(ledPin, LOW);
     mpw_updated = 1;
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
