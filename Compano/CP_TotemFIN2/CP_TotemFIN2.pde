/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 8 november 2016 */
/* Big Graphics */

import processing.pdf.*;

float u ;
App app;
void setup(){
 size(4000,2800);
//// size(4000*3.5, 2800*3.5);
  //size(14000, 9800);
//
  u = 3.5;
  //u = 1;
  app = new App("Compano Totems", u);
 
  

}
void draw(){
  beginRecord(PDF, "result/totemflowers.jpg");
  pushMatrix();
  translate(875,700);
  scale(0.9);
  
  
  app.draw();
  
  textSize(24 * 4);
  text("www.riastroes.nl", width/10, height-(height/12));
  endRecord();
  //save(PDF, "result/totemflowers.jpg");
  popMatrix();
  noLoop();
  
 //exit();
}