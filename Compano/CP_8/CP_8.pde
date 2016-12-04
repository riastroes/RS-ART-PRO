/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
  //size(2000,4000,PDF,"result/cp7-1.pdf");
  size(800,1600);
  app = new App("Compano 3");
  
  

}
void draw(){
  app.draw();
  noLoop();
  //exit();
}