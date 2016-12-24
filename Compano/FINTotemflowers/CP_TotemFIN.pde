/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 8 november 2016 */
/* Big Graphics */

import processing.pdf.*;

float u ;
App app;
void setup(){
 //size(4000,2000,PDF,"result/cp_totem3.pdf");
// size(4000*3.5, 2800*3.5);
  size(14000, 9800);

  u = 3.5;
  app = new App("Compano Totems", u);
 
  

}
void draw(){
  pushMatrix();
  translate(875,700);
  scale(0.9);
  
  
  app.draw();
  textSize(24 * 4);
  text("www.riastroes.nl", width/10, height-(height/12));
  save("result/totemflowers.jpg");
  popMatrix();
  noLoop();
  
 //exit();
}