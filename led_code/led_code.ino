int ledRed = 7;
int ledBlue = 9;
int ledGreen = 12;

char data;

void setup() {
  pinMode(ledRed, OUTPUT);
  pinMode(ledBlue, OUTPUT);
  pinMode(ledGreen, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if(Serial.available()){
      data = Serial.read();      
      if(data=='r'){
          digitalWrite(ledRed, HIGH);
        }
      if(data=='b'){
          digitalWrite(ledBlue, HIGH);
        }
      if(data=='g'){
          digitalWrite(ledGreen, HIGH);
        }
      if(data=='f'){
          digitalWrite(ledRed, LOW);
          digitalWrite(ledBlue, LOW);
          digitalWrite(ledGreen, LOW);
        }
    }
}
