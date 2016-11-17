/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 15 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;

Circle[] circles;
PVector[] pos;

void setup(){
  size(1600,1000,PDF,"result/circles04.pdf");
  //size(1600,1000);
  palb = new Palette("blauw");
  palb.addRGBColors("blauwen.png", 10, 255);
  palb.sortColors();
  palg = new Palette("groen");
  palg.addRGBColors("groenen2.png", 10, 255);
  palg.sortColors();
  
  circles = new Circle[10];
 
  
  
  circles[0] = new Circle( new PVector(width/2, height/2), width-200,  height-350);
  circles[1] = new Circle( new PVector(width/2, height/2), width-500,  height-250);
 
  
 
}
void draw(){
  background(255);
  
  circles[0].waveMotif( circles[0].pos, 300, 0, color(212,212,30,255),2);
  circles[1].waveMotif( circles[0].pos, 160, 0, color(0,73,145,100),2);
 exit();
  noLoop();
 
}