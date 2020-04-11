# Arduino Door Lock Project-Pierce McKinnon
Welcome to my Arduino Door Lock Project!  
  
This project involves creating an automated door locking system for my apartment room.
[This](https://github.com/PierceMckinnon/Arduino-PierceMcKinnon/blob/master/Door%20Lock/Lock.ino) is the code which controls the system and it was written in the Arduino IDE.  
## Distance Sensor
To detect when the door was closed I used the HC-SR04 ultrasonic sensor. I placed it a few centimeters from the closed door. When the door is closed the ultrasonic sensor read a distance of about 2.3cm. Thus, I set a threshold of 3cm for the detection of the door. When the sensor goes below this threshold, the lock closed. Below is a picture of the ultrasonic sensor.  
  
![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/Distance.jpg)   
## Main Control Breadboard
I needed a method to open the lock from inside my room. Using what I had available, I created two different mechanisms. The first is a push button and the second is an IR receiver. Once the IR receiver reads a specific hex value the lock opens. This hex value corresponds with the power button on the IR remote. Below is a picture of the main breadboard.  
  
![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/Main%20Control.jpg)  
## Detection System
Below is a picture of the ultrasonic sensor, the Arduino and the main breadboard.  
  
![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/All%20together.jpg)   
## Password Input and Lock

![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/Lock_Password.jpg)    
## Password Input
![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/Password.jpg)    
## Power
Originally 
![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/Power.jpg)   
## Door Lock System Schematic
![](https://raw.githubusercontent.com/PierceMckinnon/Arduino-PierceMcKinnon/master/Door%20Lock/Images/Schema.PNG)    
