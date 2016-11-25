

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;


Circle[] circles1,circles2, circles3, circles4, circles5;
Circle[] circles6,circles7, circles8, circles9, circles10;
color[] colors;
PVector[] p;
float ut;


void setup(){
  size(4800,2400);
  beginRecord(PDF, "result/grow12-6.pdf"); 
  background(0,0,25);
  ut = 120;
  
  colors = new color[10];
  colors[0] = color(255,10);
  colors[1]= color(153,204,255,10);
  colors[2] = color(255,204,255,10);
  colors[3] = color(255,0,0,30);
  colors[4] = color(255,10);
  colors[5] = color(255,10);
  colors[6] = color(255,10);
  colors[7] = color(255,10);
  colors[8] = color(255,10);
  
  
 
 circles1 = new Circle[irandom(3,20)];
 circles2 = new Circle[irandom(3,20)];
 circles3 = new Circle[irandom(3,20)];
 circles4 = new Circle[irandom(3,20)];
 circles5 = new Circle[irandom(3,20)];
 circles6 = new Circle[irandom(3,20)];
 circles7 = new Circle[irandom(3,20)];
 circles8 = new Circle[irandom(3,20)];
 circles9 = new Circle[irandom(3,20)];
 circles10 =new Circle[irandom(3,20)];

  createKwal(circles1);
  createKwal(circles2);
  createKwal(circles3);
  createKwal(circles4);
  createKwal(circles5);
  createKwal(circles6);
  createKwal(circles7);
  createKwal(circles8);
  createKwal(circles9);
  createKwal(circles10);

  p = new PVector[11];
  for(int i = 0; i < 11; i++){   
    p[i] = new PVector(irandom(300,width-300),irandom(100,height-300));
  }
 
}

void draw(){
    
 drawKwal(circles1, p[1]);
 drawKwal(circles2, p[2]);
 drawKwal(circles3, p[3]);
 drawKwal(circles4, p[4]);
 drawKwal(circles5, p[5]);
 drawKwal(circles6, p[6]);
 drawKwal(circles7, p[7]);
 drawKwal(circles8, p[8]);
 drawKwal(circles9, p[9]);
 drawKwal(circles10, p[10]);
 
 
   
  
   if(frameCount <15){
       openKwal(circles1);
       openKwal(circles2);
       openKwal(circles3);
       openKwal(circles4);
       openKwal(circles5);
       openKwal(circles6);
       openKwal(circles7);
       openKwal(circles8);
       openKwal(circles9);
       openKwal(circles10);
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
  PVector center = new PVector(0,0);
  for(int i = 0; i < circles.length; i++){
   
    center.y += random(ut);
    circles[i] = new Circle(center,random(-ut*0.2,ut*0.5), PI,random(-PI/3, PI/3));
    circles[i].add(PI/8,16);
  }

}
void drawKwal(Circle[] circles, PVector pos ){
    
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(circles[0].angle);
    
    
    beginShape();
       for(int c = 0; c < circles[0].a.size(); c++){
           color acolor = lerpColor(colors[irandom(0,9)],colors[irandom(0,9)], c/circles.length);
           stroke(255,100);
           strokeWeight(0.1);
           fill(acolor);
           for(int i = 0; i < circles.length; i+=2){
           
           curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);
           }
           for(int i = circles.length - 2; i >= 0 ; i-=2){
           
           stroke(colors[irandom(0,8)]);
           strokeWeight(0.02);
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
int irandom(int min, int max){
  return int(random(min,max));
}
  