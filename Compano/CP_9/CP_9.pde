/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
  //size(2000,4000,PDF,"result/cp8-1.pdf");
  size(1000,2000);
  app = new App("Compano 9");
  
  

}
void draw(){
  app.draw();
  noLoop();
  //exit();
}