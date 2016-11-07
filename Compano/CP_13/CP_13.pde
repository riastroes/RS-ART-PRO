/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
  //size(1100,2000,PDF,"result/cp13-1.pdf");
  size(550,1000);
  app = new App("Compano 13");
  
  

}
void draw(){
  app.draw();
  noLoop();
 // exit();
}