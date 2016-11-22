

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
  size(1500,1000);
  beginRecord(PDF, "result/Wisp10.pdf"); 
  //wisp = new Wisp[20];
  //for(int i = 0; i < 10; i++){
  //wisp[i] = new Wisp(new PVector(-50,random(height)), random(5), random(-2,0), random(0,2));
  //wisp[19-i] = new Wisp(new PVector(width+50,random(height)), random(5), 3 - random(-2,0),3 - random(0,2) );
  //}
 background(10,0,0);
 wisp2 = new Wisp2[2];
 wisp2[0] = new Wisp2(new PVector(100,-(height/2)-100),40, 0);
 wisp2[0].grow(50);
 wisp2[1] = new Wisp2(new PVector(width-100,-(height/2)-100),40,PI);
 wisp2[1].grow(50);
 angle = 0;
 strokecolor = 0;
 
 force = new PVector(random(-3,3),10);
 
 
}

void draw(){
    this.strokecolor = lerpColor(color(255, 0, 0),color(255, 191, 0),angle/TAU);
    stroke(this.strokecolor);
    strokeWeight(0.1);
    noFill();
    pushMatrix();
    translate(width/4, height/2);
    rotate(angle);
    wisp2[0].draw();
    popMatrix();
    
    pushMatrix();
     translate(width/4*3, height/2);
    rotate(-angle);
    
    wisp2[1].draw();
   
    popMatrix();
    
    angle += 0.004;
    
    
    if(mousePressed){
      endRecord();
    }
  }
  