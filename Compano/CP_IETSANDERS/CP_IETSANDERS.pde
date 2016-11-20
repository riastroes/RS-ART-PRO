/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 16 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;

Circle[] circles;
PVector[] pos;
float a, b;

void setup(){
  //size(1600,1000,PDF,"result/circles05.pdf");
  size(500,1200);
  
  palg = new Palette("groen");
  palg.addRGBColors("groenen.png", 10, 255);
  palg.sortColors();
  
  float a = 0;
  float b = 0;
  
  circles = new Circle[10];
  circles[0] = new Circle(new PVector(width/2, 50),150,150);
  circles[1] = new Circle(new PVector(width/2, 150),100,100);
  circles[2] = new Circle(new PVector(width/2, 200),100,100);
  circles[3] = new Circle(new PVector(width/2, 450),200,200);
  circles[4] = new Circle(new PVector(width/2, 450),100,100);
  circles[5] = new Circle(new PVector(width/2, 750),100,100);
  
  background(255);
  stroke(palg.colors[0]);
  noFill();
  strokeWeight(1);
 
}
void draw(){
  for(int  i = 0; i < 40; i++){ 
    beginShape();
    
    circles[0].drawLine(PI/4 + a, PI/4*3 + a);
   // circles[1].drawLine(PI/4 + b, PI/4*3 + b);
    //circles[2].drawLine(0 + b, PI/4*3 + b);
   // circles[3].drawLine(PI/4*3 + b, 0 + b );
    //if(i%5 == 0){
   // circles[4].drawLine(PI/2 + a, TAU + a);
   // }
    circles[5].drawLine(PI/2 + a, -PI -(PI/2)- a);
    endShape();
    a += 0.03;
    b += 0.1;
  }
 //exit();
 noLoop();
 
}