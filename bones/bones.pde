// first function to set up our canvas;
// every processing program is probably going
// to need this and draw()
// setup only runs once
void setup() {
  
  // size(width, height);
  // size of our canvas;
  size(440, 220);
  
  // smooths the edges of our
  // lines (especially curves)
  smooth();
  
  // sets the background color
  // of our canvas (in hex)
  background(#FFCBCB);
  
  // no stroke on shapes
  noStroke();
}

// runs over and over and
// draws on our canvas
void draw() {
  
  // reset our background each time
  background(#FFCBCB);
  
  // make our shape black; could
  // be any color (hex or otherwise)
  fill(0);
  
  // draw an ellipse
  //      x pos   y pos  across  down
  ellipse(mouseX, mouseY, 20,     20);
}