/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 16 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;

Circle[] circles;
PVector[] pos;

void setup(){
  //size(1600,1000,PDF,"result/circles05.pdf");
  size(1600,1000);
  
  palg = new Palette("groen");
  palg.addRGBColors("groenen.png", 10, 255);
  palg.sortColors();
  
  
  
  circles = new Circle[10];
  circles[0] = new Circle(new PVector(width/4,height/4),100,100);
  
  
  
 
}
void draw(){
  background(255);
  circles[0].draw();
 
 
 //exit();
 noLoop();
 
}