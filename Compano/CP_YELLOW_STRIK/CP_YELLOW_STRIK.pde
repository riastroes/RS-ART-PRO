

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;

Wisp[] wisp;
Wisp2[] wisp2;
PVector force;

void setup(){
  size(500,500);
  //beginRecord(PDF, "result/Wisp.pdf"); 
  //wisp = new Wisp[20];
  //for(int i = 0; i < 10; i++){
  //wisp[i] = new Wisp(new PVector(-50,random(height)), random(5), random(-2,0), random(0,2));
  //wisp[19-i] = new Wisp(new PVector(width+50,random(height)), random(5), 3 - random(-2,0),3 - random(0,2) );
  //}
 background(0,0,20);
 wisp2 = new Wisp2[3];
 wisp2[0] = new Wisp2(new PVector(-50,random(height/4)),50, 0);
 wisp2[0].strokecolor = color(255, 191, 0);
 wisp2[0].grow(35);
 wisp2[1] = new Wisp2(new PVector(-50,random(height/4,height/2)),50, 1);
 wisp2[1].strokecolor = color(255, 191, 0);
 wisp2[1].grow(35);
 wisp2[2] = new Wisp2(new PVector(-50,random(height/2,height/4*3)),50, 2);
 wisp2[2].strokecolor = color(255, 191, 0);
 wisp2[2].grow(35);
 
 force = new PVector(random(-3,3),10);
 
 
}

void draw(){
    strokeWeight(1);
    stroke(255);
    noFill();
    
    //PVector pos = new PVector(width/2,height/2);
    //point(pos.x, pos.y);
    //pos.x += 100 * sin(-PI/2);
    //pos.y += 100 * cos(-PI/2);
    //point(pos.x, pos.y);
    for (int i = 0; i < wisp2.length; i++){
      wisp2[i].draw();
    }
   
    if(frameCount == 400){
      //endRecord();
    }
  }
  