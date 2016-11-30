

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;

Palette pal1, pal2;
ArrayList<Circle[]> circles;
color[] colors;
Grid grid;
PVector[] p;
float ut;
float pwidth;
float pheight;
float angle;

Pattern pattern;


void setup(){
  size(800,600);
  //beginRecord(PDF, "result/pattern-1.pdf"); 
  background(100,0,200);
  pal1 = new Palette("nice");
  pal1.addColor(color(204,0,153,40));
  pal1.addColor(color(255,0,0,40));       //red
  pal1.addColor(color(0,0,200,60));
  pal1.addColor(color(153,204,255,40));
  
  pal1.addColor(color(102,0,204,40));
  pal2 = new Palette("transparent");
  
  pal2.addColor(color(255,0,0,40));
  //pal2.addColor(color(153,204,255,40));
// pal2.addColor(color(255));
   pal2.addColor(color(204,0,153,30));
  
  
  this.pattern = new Pattern(300, 200,10,7);
  angle = 0;
  frameRate(1);

}

void draw(){
  
   println(this.pattern.grid.size);
  if(frameCount < 14){
     angle += 0.2;
     //noStroke();
     //fill(pal2.colors[2]);
     for( int y = -1; y <= ceil(height/this.pattern.pheight); y += 1){
      for( int x = -1; x <= ceil(width/this.pattern.pwidth); x +=1 ){
        pushMatrix();
          translate(x * this.pattern.pwidth,y * this.pattern.pheight);
         pattern.draw();
       popMatrix();
      }
     }
   }
   else{
     //endRecord();
     //exit();
     noLoop();
   }
    if(mousePressed){
     saveFrame("result/pattern01.jpg");
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
  circles[0] = new Circle(center,random(-ut*0.5,ut*0.7),random(PI),random(-PI/3, PI/3));
  for(int i = 1; i < circles.length; i++){
   
    center.y += random(ut/2);
    circles[i] = new Circle(center,random(-ut*0.2,ut*0.5),random(PI),random(-PI/3, PI/3));
    circles[i].add(PI/8,16);
  }

}
void drawKwal(Circle[] circles, PVector pos ){
    
    for(int py = -1; py < 2; py += 1){
      for(int px = -1; px < 2; px += 1){
      
    pushMatrix();
    translate(pos.x + (px * pwidth), pos.y + (py * pheight));
    rotate(circles[0].angle);
    
    
  
    beginShape();
       for(int c = 0; c < circles[0].a.size(); c++){
           stroke(circles[0].acolor);        
           fill(circles[0].bcolor);
           strokeWeight(1);
           
           for(int i =0; i < 2 ; i++){
             curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);
           } 
                      
           for(int i =2; i < circles.length ; i++){ 
             noFill(); 
             stroke(circles[i].bcolor);
             strokeWeight(0.5);
             curveVertex(circles[i].a.get(c).x, circles[i].a.get(c).y);          
           }
        }
   endShape();  
  popMatrix();
  }
    }
  
}
void openKwal(Circle[] circles){
  
  circles[0].change(random(ut*0.1, ut*0.2));
  for(int i = 1; i < circles.length; i++){
    circles[i].change(random(0,ut*0.04));
  }
}
void showKwal(Circle[] circles, PVector pos){
  
  for(int py = -1; py < 2; py += 1){
      for(int px = -1; px < 2; px += 1){
        pushMatrix();
          translate(pos.x + (px * pwidth), pos.y + (py * pheight));translate(pos.x, pos.y);
          rotate(circles[0].angle);
          stroke(255);
          strokeWeight(0.1);
          for(int i = 0; i < circles.length; i++){
            circles[i].draw();
          }
        popMatrix();
      }
   }

  
}
int irandom(int min, int max){
  return int(random(min,max));
}
  