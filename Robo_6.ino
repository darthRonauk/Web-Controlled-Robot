#include <LiquidCrystal.h>
const int rs = 7, en = 6, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

int pin1=11;
int pin2=10;
int pin3=9;
int pin4=8;

void setup() 
{
  pinMode(pin1, OUTPUT);
  pinMode(pin2, OUTPUT);
  pinMode(pin3, OUTPUT);
  pinMode(pin4, OUTPUT);
  Serial.begin(9600);
  lcd.begin(16, 2);
  lcd.print("Initializing...");
  delay(2500);
  lcd.clear();
  lcd.print("Hello,I am Robo6");
}

void loop()
{
  if(Serial.available()>0)
  {
    unsigned char data=Serial.read();
    switch(data)
    {
    case 'F':
      digitalWrite(pin1,HIGH);
      digitalWrite(pin2,LOW);
      digitalWrite(pin3,HIGH);
      digitalWrite(pin4,LOW);
      Serial.println("FORWARD");
      lcd.setCursor(0,1);
    lcd.print("Forward         ");
    break;
    
    case 'B':
      digitalWrite(pin1,LOW);
      digitalWrite(pin2,HIGH);
      digitalWrite(pin3,LOW);
      digitalWrite(pin4,HIGH);
      Serial.println("BACKWARD");
      lcd.setCursor(0,1);
     lcd.print("Backward       ");
    break;
    
    case 'R':
      digitalWrite(pin1,HIGH);
      digitalWrite(pin2,LOW);
      digitalWrite(pin3,LOW);
      digitalWrite(pin4,HIGH);
      Serial.println("RIGHT");
      lcd.setCursor(0,1);
    lcd.print("Right           ");
    break;
    
    case 'L':
      digitalWrite(pin1,LOW);
      digitalWrite(pin2,HIGH);
      digitalWrite(pin3,HIGH);
      digitalWrite(pin4,LOW);
      Serial.println("LEFT");
      lcd.setCursor(0,1);
     lcd.print("Left           ");
    break;
    
    case 'G':
      digitalWrite(pin1,LOW);
      digitalWrite(pin2,LOW);
      digitalWrite(pin3,HIGH);
      digitalWrite(pin4,LOW);
      Serial.println("FORWARD LEFT");
      lcd.setCursor(0,1);
    lcd.print("Left            ");
    break;
    
    case 'I':
      digitalWrite(pin1,HIGH);
      digitalWrite(pin2,LOW);
      digitalWrite(pin3,LOW);
      digitalWrite(pin4,LOW);
      Serial.println("FORWARD RIGHT");
      lcd.setCursor(0,1);
    lcd.print("Right           ");
    break;
    
    case 'S':
      digitalWrite(pin1,LOW);
      digitalWrite(pin2,LOW);
      digitalWrite(pin3,LOW);
      digitalWrite(pin4,LOW);
      Serial.println("STOP");
      lcd.setCursor(0,1);
    lcd.print("Stop            ");
    break;
    
    default : 
      Serial.println("INVALID CHOICE");
      lcd.setCursor(0,1);
      lcd.print("Invalid        ");
    }
  }
}
