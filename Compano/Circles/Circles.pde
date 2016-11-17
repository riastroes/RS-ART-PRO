/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 15 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;

Circle[] circles;
PVector[] pos;

void setup(){
  size(2000,1500,PDF,"result/circles01.pdf");
  //size(2000,1000);
  palb = new Palette("blauw");
  palb.addRGBColors("blauwen.png", 10, 255);
  palb.sortColors();
  palg = new Palette("groen");
  palg.addRGBColors("groenen2.png", 10, 255);
  palg.sortColors();
  
  circles = new Circle[5];
  pos = new PVector[5];
  for(int i = 0; i < pos.length; i++){
    pos[i] = new PVector((width/7) * (i+1), height/2);
    circles[i] = new Circle( pos[i], 400 +(i*40), palg.colors[i*2], color(255,255,0));  
  }
  
 
  
 
}
void draw(){
  background(255);
  
  for(int i = 0; i < pos.length; i++){
    circles[i].draw();
  }
  
  
   //noLoop();
 exit();
}