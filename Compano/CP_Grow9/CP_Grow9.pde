

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;

Circle[] circles1,circles2, circles3, circles4, circles5;
float ut;


void setup(){
  size(2800,2000);
  beginRecord(PDF, "result/grow9-1.pdf"); 
  background(0,0,25);
  
  ut = 400;
  
 circles1 = new Circle[10];
 circles2 = new Circle[10];
 circles3 = new Circle[10];
 circles4 = new Circle[10];
 circles5 = new Circle[10];

  createKwal(circles1);
  createKwal(circles2);
  createKwal(circles3);
  createKwal(circles4);
  createKwal(circles5);

 println(circles1.length);
}

void draw(){
    
 drawKwal(circles1, new PVector(ut, 3* ut));
 drawKwal(circles2, new PVector(2* ut, 1* ut));
 drawKwal(circles3, new PVector(3* ut, 4* ut));
 drawKwal(circles4, new PVector(5* ut, 1* ut));
 drawKwal(circles5, new PVector(6* ut, 3* ut));
 
       
  
   if(frameCount <10){
       openKwal(circles1);
       openKwal(circles2);
       openKwal(circles3);
       openKwal(circles4);
       openKwal(circles5);
   }
   else{
      endRecord();
     noLoop();
   }
    if(mousePressed){
     
    }
  }
PVector posOnCircle(PVector center, float radius, float r){
  PVector pos = new PVector(center.x,center.y);
  pos.x += radius * sin(r);
  pos.y += radius * cos(r);
  
  return pos;
}
void createKwal(Circle[] circles){
  
  for(int i = 0; i < circles.length; i++){
    PVector center = new PVector(0,0);
    center.y +=((ut/random(3,5))* i);
    circles[i] = new Circle(center,random(-ut*0.1,ut*0.1), PI,random(-PI/3, PI/3));
    circles[i].add(PI/8,16);
  }

}
void drawKwal(Circle[] circles, PVector pos ){
    
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(circles[0].angle);
    stroke(255,100);
    strokeWeight(0.1);
    beginShape();
       for(int c = 0; c < circles[0].a.size(); c++){
           
           for(int i = 0; i < circles.length; i+=2){
           color acolor = lerpColor(color(255,10), color(255,255,200), i/circles.length);
           fill(acolor);
           curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);
           }
           for(int i = circles.length - 2; i >= 0 ; i-=2){
           curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);
           }
       }
  endShape();
  popMatrix();
}
void openKwal(Circle[] circles){
  
  circles[0].change(random(ut*0.1, ut*0.2));
  for(int i = 1; i < circles.length; i++){
    circles[i].change(random(0,ut*0.04));
  }
}
void showKwal(Circle[] circles, PVector pos){
  
  pushMatrix();
    translate(pos.x, pos.y);
    rotate(circles[0].angle);
    stroke(255);
    strokeWeight(0.1);
  for(int i = 0; i < circles.length; i++){
    circles[i].draw();
  }
  popMatrix();
}

  