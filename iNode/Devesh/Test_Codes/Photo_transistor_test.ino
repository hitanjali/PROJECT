int ALC = 50;

void setup() {
  Serial.begin(9600);
  analogReference(INTERNAL);
  pinMode(A0, INPUT); 
  pinMode(13, OUTPUT);

}

void loop() {
  int a;
  a= analogRead(A0);
  Serial.println(a);
  delay(1000);
  
 if(a<ALC){
  digitalWrite(13, HIGH);
 }
 else{
  digitalWrite(13, LOW);
 }
}

/*
At ambient light condition in a room undern Fresnel's lens (ALC = 530), the phototrasistor consumes 3.3uA current.
the LED glows when it becomes dark i.e (ALC=50)
Test done on 23rd March 2021.
Phototransistor used 3711 from OSRAM
 */
