/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
  size(800,1600);
  app = new App("Compano 3");
  
  app.create3();

}
void draw(){
  app.draw();
  noLoop();
}