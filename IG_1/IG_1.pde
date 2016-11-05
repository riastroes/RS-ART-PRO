

/* Ria Stroes */
/* @updated: 27 november 2016 */
/* In this sketch the colors are controlled by the camera capture */

OSC osc;

App app;
void setup() {
  
  size(1280,640);
  colorMode(HSB, 360, 100, 100,100);
 
  background(255);
  app = new App("Interactive Graphics I");
  osc = new OSC();
}

void draw() {
  
  app.draw();
  
  osc.sendOsc();
 
 
}