/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 15 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;

Circle[] circles;
PVector[] pos;

void setup(){
  //size(1600,1000,PDF,"result/circles05.pdf");
  size(1600,1000);
  palb = new Palette("blauw");
  palb.addRGBColors("blauwen.png", 10, 255);
  palb.sortColors();
  palg = new Palette("groen");
  palg.addRGBColors("groenen2.png", 10, 255);
  palg.sortColors();
  
  circles = new Circle[10];
 
  
  
  circles[0] = new Circle( new PVector(width/2, height-100), width-200,  height-350);
  circles[1] = new Circle( new PVector(width/2, height-100), width-500,  height);
  circles[2] = new Circle( new PVector(width/2, (height/2)+200), width/3,  height);
  circles[3] = new Circle( new PVector((width/2)-50,height/6), 600,200);//HAIR
  circles[4] = new Circle( new PVector((width/2)+150,height/4), 300,300);//FACE
  
 
}
void draw(){
  background(255);
  
  circles[2].waveMotif( circles[2].pos, 100, PI/2, color(212,212,30,255),2);
  circles[0].waveMotif( circles[0].pos, 210, PI/2, color(212,212,30,255),2);
  circles[1].waveMotif( circles[1].pos, 60, PI/2, color(0,73,145,100),2);
  circles[4].waveMotif( circles[4].pos, 210, PI/2, color(212,212,30,255),2);//FACE
  circles[3].waveMotif( circles[3].pos, 60, PI/2, color(0,73,145,100),2);//HAIR
 
 //exit();
  noLoop();
 
}