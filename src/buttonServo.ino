/* Sweep
 by BARRAGAN <http://barraganstudio.com>
 This example code is in the public domain.

 modified 8 Nov 2013
 by Scott Fitzgerald
 http://www.arduino.cc/en/Tutorial/Sweep
*/

#include <Servo.h>

const int buttonPin1 = 2;     // the number of the pushbutton pin
const int buttonPin2 = 4;
int buttonState1 = 0;         // variable for reading the pushbutton status
int buttonState2 = 0;

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards

int pos = 0;    // variable to store the servo position

void setup() {
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin1, INPUT);
  Serial.begin(9600);
}

void loop() {

  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState1 == HIGH) {
    // turn LED on:
    pos = pos + 1;}

  if (buttonState2 == HIGH) {
    pos = pos - 1;}

  if (buttonState1 == HIGH && buttonState2 == HIGH) {
    pos = 0;}
    
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    Serial.println(pos);
    delay(200);                       // waits 200ms for the servo to reach the position
  
  }
