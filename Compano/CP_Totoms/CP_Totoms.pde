/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 8 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
 //size(2000,4000,PDF,"result/cp_totem.pdf");
 size(displayWidth, displayHeight);

  app = new App("Compano Totems");
  
  

}
void draw(){
  app.draw();
  textSize(24);
  text("www.riastroes.nl", 180, height-80);
  noLoop();
 //exit();
}