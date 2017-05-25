import processing.serial.*;
import cc.arduino.*;
 Serial port;
 float val;
 
 void setup() {
   size(440, 220);
   String arduinoPort = "/dev/tty.usbmodem1421";
   port = new Serial(this, arduinoPort, 9600);
 }
 
 void draw() {
   if (port.available() > 0) {
     val = port.read();
     val = map(val, 0, 255, 0, height);
   }
   rect(40, val-10, 360, 20);
 }