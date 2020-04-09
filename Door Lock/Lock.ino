#include <IRremote.h>

#include <Servo.h>
Servo mylock;
#define numinput 3
#define num  2
#define VCC 13
#define ECHO 9
#define TRIG 8
#define SERVO 10
#define IR  11
#define POWERHEX 0xFFA25D
#define pullup  6
#define UP  150
#define DOWN 20

IRrecv irrecv(IR);
decode_results results;

int num1 =0;
int button2 =1;
int button1 = 1;
float distance = 0;
float duration = 0;
int num2 = 0; 
int num3 = 0;
int num4 = 0;
int count = 0;
int angle =UP;
int numinput_count =0;
int state =0;

void setup() {
  // put your setup code here, to run once:
  irrecv.enableIRIn();
  
  pinMode(num, INPUT);
  pinMode(pullup, INPUT);
  pinMode( VCC, OUTPUT);
  pinMode( TRIG, OUTPUT);
  pinMode(ECHO, INPUT);
  pinMode(numinput, INPUT);
  digitalWrite(VCC, HIGH);
  
  mylock.attach(SERVO);
  mylock.write(angle);
  
  Serial.begin(9600);
  delay(3000);
     
}

void loop() 
{
  
  if(digitalRead(pullup)==LOW) //if button is pressed lock opens
  {
          angle=UP; 
          mylock.write(angle); //set the angle to open position
          state=0;           
          delay(10000);//delay so no unwanted reactions occur in the sysem
  }
  else if(irrecv.decode(&results)) //if the IR receiver has received information
  {
    
    if(results.value == POWERHEX) //if the correct hex value has been sent 
    {
          angle=UP; 
          mylock.write(angle);//set the angle to open position
          state=0;
          delay(10000);//delay so no unwanted reactions occur in the sysem
    }
    irrecv.resume();//continue to receive information
  }
  
  else
  {
    if (Ultrasonic()==HIGH)//if the door is closed
    {
      //update the password counters
      inputbutton(); 
      countbutton();
    
        if (numinput_count==4 && num1 == 2 && num2 == 3 &&num3 == 8 && num4== 5)//if the correct password has been inputed (2 3 8 5)
         {
              //reset all counters
              num1=num2=num3=num4=0; 
              count=0;
              numinput_count =0;
              
              angle = UP;
              state =0;
              mylock.write(angle);//set the angle to open position
              delay(10000);
         }
        else //if the door is closed but the correct password has not been inputed
        { 
             if (state =0)//if the lock was previously open then put it in the closed postion
             {
             angle =DOWN;
             mylock.write(angle);
             state=1;
             }
        }
    }

  }

}

void inputbutton()
{
  if( digitalRead(numinput)==LOW && button2 == 1)//if the number counter button has been pressed
  {
    numinput_count++;
    if(numinput_count==1)
    {
      num1 = count;
    }
    else if ( numinput_count == 2)
    {
      num2 = count;
    }
    else if (numinput_count == 3)
    {
      num3 = count;
    }
    else if (numinput_count == 4) 
    {
      num4 = count;
    }
    count = 0; //reset count to 0 as next digit of password will be inputed
    button2=0;
   }
   else if (digitalRead(numinput) == HIGH)
   {
     button2=1;
   }
  if (digitalRead(num)==LOW && digitalRead(numinput)==LOW)//to reset the counts press both buttons at the same time
  {
    num1=num2=num3=num4=0;
    numinput_count =0;
    count =0;
  }
  
}

void countbutton()
{
  if( digitalRead(num)==LOW && button1 == 1)//if the count button has been pressed
  {
  count++;
  button1 =0;
  }
  else if (digitalRead(num)==HIGH)
  {
    button1 = 1;
  }
}

bool Ultrasonic()
{
  digitalWrite(TRIG, LOW);
  delayMicroseconds(2);
  digitalWrite(TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG, LOW);
    
   duration = pulseIn(ECHO,HIGH);
   distance = float(duration*(0.034/2)); //getting approximate distance of object in front of sensor
   
  if (distance<3.0) //if the door is closed
  {
   return HIGH;
  }
  else 
  {
   return LOW;
  }
}
