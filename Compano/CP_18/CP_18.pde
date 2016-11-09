/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 8 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
 size(2000,4000,PDF,"result/cp_knitting-4.pdf");
 //size(1000,2000);
  app = new App("Compano");
  
  

}
void draw(){
  app.draw();
  noLoop();
 exit();
}