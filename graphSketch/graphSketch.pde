import processing.serial.*;
import cc.arduino.*;
 Serial port;
 float val;
 int x;
 
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
   float targetVal = val;
   stroke(0);
   line(x, 0, x, height);
   stroke(255);
   line(x + 1, 0, x + 1, height);
   line(x, 220, x, val);
   line(x, 440, x, val + 220);
   
   x++;
   if (x > width) {
     x = 0;
   }
 }
