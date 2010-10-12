
int bottom_center[2] = {13, 11};
int top_center[2] = {4, 6};
int bottom_top = 10;
int top_top = 8;
int bottom_middle[2] = {9, 12};
int top_middle[2] = {5, 7};
int bottom_bottom = 14;
int top_bottom[2] = {2, 3};
int pins[14] = {2,3,4,5,6,7,8,9,10,11,12,13,14};
int i;
int val;
int delayT = 500;

void setup()   { 
  Serial.begin(9600);  
  for(i = 0; i < 14; i++){
    pinMode(pins[i], OUTPUT);  
  }   
  pinMode(1, INPUT);
}

// the loop() method runs over and over again,
// as long as the Arduino has power

void loop()                     
{
  val = analogRead(1);
  Serial.println(val);
  if(val < 60){
    digitalWrite(bottom_center[0], HIGH);
    delay(delayT);
    digitalWrite(bottom_center[0], LOW);
    digitalWrite(bottom_center[1], HIGH);
    delay(delayT);
    digitalWrite(bottom_center[1], LOW);
    digitalWrite(bottom_top, HIGH);
    delay(delayT);
    digitalWrite(bottom_top, LOW);
    digitalWrite(bottom_middle[0], HIGH);
    digitalWrite(bottom_middle[1], HIGH);
    delay(delayT);
    digitalWrite(bottom_middle[0], LOW);
    digitalWrite(bottom_middle[1], LOW);
    digitalWrite(bottom_bottom, HIGH);
    delay(delayT);
    digitalWrite(bottom_bottom, LOW);
    digitalWrite(top_center[0], HIGH);
    delay(delayT);
    digitalWrite(top_center[0], LOW);
    digitalWrite(top_center[1], HIGH);
    delay(delayT);
    digitalWrite(top_center[1], LOW);
    digitalWrite(top_top, HIGH);
    delay(delayT);
    digitalWrite(top_top, LOW);
    digitalWrite(top_middle[0], HIGH);
    digitalWrite(top_middle[1], HIGH);
    delay(delayT);
    digitalWrite(top_middle[0], LOW);
    digitalWrite(top_middle[1], LOW);
    digitalWrite(top_bottom[0], HIGH);
    digitalWrite(top_bottom[1], HIGH);
    delay(delayT);
    digitalWrite(top_bottom[0], LOW);
    digitalWrite(top_bottom[1], LOW);
    delay(4000);
  }
  delay(1000);
}
