/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Big Graphics */

import processing.pdf.*;
boolean print;
App app;
void setup(){
  print = true;
  //size(550,1000);
  size(1100,2000,PDF,"result/cp14-1.pdf");
  
  
  app = new App("Compano 14");
  
  

}
void draw(){
  app.draw();
  noLoop();
  if(print){
  exit();
  }
}