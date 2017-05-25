import processing.serial.*;
import cc.arduino.*;
 Serial port;
 float val;
 int x;
 float easing = 0.05;
 float easedVal;
 
 void setup() {
   size(440, 220);
   frameRate(30);
   smooth();
   String arduinoPort = "/dev/tty.usbmodem1411";
   port = new Serial(this, arduinoPort, 9600);
   background(0);
 }
 
 void draw() {
   if (port.available() > 0) {
     val = port.read();
     val = map(val, 0, 255, 0, height);
   }
   System.out.println(val);
   float targetVal = val;
   easedVal += (targetVal - easedVal) * easing;
   stroke(0);
   line(x, 0, x, height);
   stroke(255);
   line(x + 1, 0, x + 1, height);
   line(x, 220, x, val);
   line(x, 440, x, easedVal + 220);
   
   x++;
   if (x > width) {
     x = 0;
   }
 }