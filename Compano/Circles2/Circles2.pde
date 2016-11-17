/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 15 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;

Circle[] circles;
PVector[] pos;

void setup(){
  //size(2000,1500,PDF,"result/circles01.pdf");
  size(2000,1000);
  palb = new Palette("blauw");
  palb.addRGBColors("blauwen.png", 10, 255);
  palb.sortColors();
  palg = new Palette("groen");
  palg.addRGBColors("groenen2.png", 10, 255);
  palg.sortColors();
  
  circles = new Circle[10];
  pos = new PVector[5];
  
  for(int i = 0; i < 5; i++){
    pos[i] = new PVector((width/7) * (i+1), height/2);
    if(i<3){
    circles[i] = new Circle( pos[i], 400 +(i*60));}
    else if( i == 3 ){
    circles[i] = new Circle( pos[i], 460);} 
    else if( i == 4 ){
    circles[i] = new Circle( pos[i], 400);} 
  }
  circles[5] = new Circle(new PVector(width/4, height/4*3),400);
  circles[6] = new Circle(new PVector(width/4, height/4*3),300);
  circles[7] = new Circle(new PVector(width/4*3, height/4*3),400);
  circles[8] = new Circle(new PVector(width/4*3, height/4*3),300);
 
  
 
}
void draw(){
  background(255);
  
  for(int i = 0; i < 5; i++){
   circles[i].waveMotif( circles[i].pos, 200, 0, color(255,255,255,225),2);
   circles[i].waveMotif( circles[i].pos.add(100,0), 134, PI/134, color(212,212, 30,225),1);
   circles[i].waveMotif( circles[i].pos.add(0,-100), 100, PI/17, color(0,73, 145,225),1);
   circles[i].waveMotif( circles[i].pos.add(0,200), 100, PI/17, color(0,73, 145,225),1);
  }
  circles[5].waveMotif( circles[5].pos, 100, PI/17, color(255,100),4);
  circles[6].waveMotif( circles[6].pos, 100, PI/17, color(0,73, 145),2);
  circles[7].waveMotif( circles[7].pos, 100, PI/17, color(255),3);
  circles[8].waveMotif( circles[8].pos, 100, PI/17, color(212,212, 30),1);
   noLoop();
 //exit();
}