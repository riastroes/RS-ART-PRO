

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;

Wisp[] wisp;
Wisp2[] wisp2;
PVector force;
float angle;
color strokecolor;

void setup(){
  size(4500,3000);
  beginRecord(PDF, "result/Wisp4-18.pdf"); 
  
 background(20,0,0);
 wisp2 = new Wisp2[3];
 wisp2[0] = new Wisp2(new PVector(200, -height/2),30, PI/2);
 wisp2[0].grow(300);

 wisp2[1] = new Wisp2(new PVector(width-200,-height/2),30,PI/2);
 wisp2[1].grow(300);
 angle = 0;
 strokecolor = 0;
 
 
 println(wisp2[0].a);
 
}

void draw(){
  
    this.strokecolor = lerpColor(color(255, 191, 0,60),color(255, 0, 0,30),angle/(TAU*10));
    stroke(this.strokecolor);
    strokeWeight(0.1);
    noFill();
    wisp2[0].draw();
    wisp2[1].draw();
   
    angle += 0.08;
    if(mousePressed){
      endRecord();
    }
  }
  