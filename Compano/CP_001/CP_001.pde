/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 8 november 2016 */
/* Big Graphics */

import processing.pdf.*;

App app;
void setup(){
 //size(4000,2000,PDF,"result/cp_totem.pdf");
 size(2000, 1000);
  background(255);
  app = new App("Compano Totems");
  
  

}
void draw(){
  app.draw();
  textSize(24);
  text("www.riastroes.nl", width/10, height-(height/12));
  //save("result/001.jpg");
  noLoop();
  
 //exit();
}