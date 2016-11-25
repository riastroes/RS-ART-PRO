

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;

ArrayList<Circle[]> circles;
color[] colors;
Grid grid;
PVector[] p;
float ut;


void setup(){
  size(4800,2400);
  beginRecord(PDF, "result/pattern-1.pdf"); 
  background(0,0,40);
  ut = 150;
  
  grid = new Grid(10,6);
  
  circles = new ArrayList<Circle[]>();
  for(int i = 0; i < grid.pos.size(); i++){
    Circle[] c = new Circle[irandom(3,20)];
    createKwal(c);
    circles.add(c);
  }
  
  
  colors = new color[10];
  colors[0] = color(255,50);
  colors[1] = color(255,50);
  colors[2] = color(255,0,0,30);  //rood
  colors[3] = color(0,0,255,30);  //helder blauw
  colors[4] = color(255,30);
  
  colors[5] = color(255,10);
  colors[6] = color(255,10);
  colors[7] = color(255,10);
  colors[8] = color(153,204,255,10);
  colors[9] = color(255,204,255,10);
  
  
 
}

void draw(){
  
   
  if(frameCount < 5){
    println(frameCount);
      for(int i = 0; i < circles.size(); i++){
        drawKwal(circles.get(i), grid.get(i));
        openKwal(circles.get(i));
      }
    
   }
   else{
      endRecord();
     exit();
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
   
    center.y += random(ut/2);
    circles[i] = new Circle(center,random(-ut*0.2,ut*0.5),random(PI),random(-PI/3, PI/3));
    circles[i].add(PI/8,16);
  }

}
void drawKwal(Circle[] circles, PVector pos ){
    
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(circles[0].angle);
    
    
    beginShape();
       for(int c = 0; c < circles[0].a.size(); c++){
           color acolor = lerpColor(colors[irandom(0,5)],colors[irandom(0,5)], c/circles.length);
           color bcolor = lerpColor(colors[irandom(6,9)],colors[irandom(6,9)], c/circles.length);
           stroke(acolor);
           strokeWeight(1);
           fill(bcolor);
           for(int i =0; i < 2 ; i++){
             curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);
           } 
           fill(acolor);           
           for(int i =2; i < circles.length ; i++){          
             stroke(bcolor);
             strokeWeight(1);
             curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);          
           }
        }
  endShape();
  //
   beginShape();
       for(int c = 0; c < circles[0].a.size(); c++){
           color acolor = lerpColor(colors[irandom(0,5)],colors[irandom(0,5)], c/circles.length);
           color bcolor = lerpColor(colors[irandom(6,9)],colors[irandom(6,9)], c/circles.length);
           stroke(acolor);
           strokeWeight(1);
           fill(bcolor);
           for(int i =0; i < 2 ; i++){
             curveVertex(circles[i].a.get(c).x+width, circles[i].a.get(c).y);
           } 
           fill(acolor);           
           for(int i =2; i < circles.length ; i++){          
             stroke(bcolor);
             strokeWeight(1);
             curveVertex(circles[i].a.get(c).x+width, circles[i].a.get(c).y);          
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
  