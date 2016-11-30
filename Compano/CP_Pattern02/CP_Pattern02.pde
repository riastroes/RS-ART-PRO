

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
String name;

Pattern pattern;
/* inch = 2.54 cm
/* 300 dpi = 300 * 2.54 = 762 dots per cm
/* 21 inch * 18 inch (53,34 cm * 45,72 cm)
/* 21 * 300 = 6300 * 5400
/* 21/18 = 7/6
/* yard = 0,9144 meter
*/

void setup(){
  size(6300,5400);
  name = "papapaars2";
  //beginRecord(PDF, "result/" + name + ".pdf"); 
  background(100,0,200);
  pal1 = new Palette("nice");
  pal1.addColor(color(204,0,153,40));
  pal1.addColor(color(255,0,0,40));       //red
  pal1.addColor(color(0,0,200,60));
  pal1.addColor(color(153,204,255,40));
   pal1.addColor(color(182,80,204,40));
  pal2 = new Palette("transparent");
  
  pal2.addColor(color(255,0,0,40));
  pal2.addColor(color(153,204,255,40));
  pal2.addColor(color(255,40));
  pal2.addColor(color(204,0,153,30));
  pal2.addColor(color(80,200,100,30));
  
  
  this.pattern = new Pattern(630, 540,8,7);
  angle = 0;
  frameRate(1);

}

void draw(){
  
  //println(this.pattern.grid.size);
  if(frameCount < 6){
     
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
     saveFrame("result/" + name + ".png");
     //exit();
     noLoop();
   }
    
  }
PVector posOnCircle(PVector center, float radius, float r){
  PVector pos = new PVector(center.x,center.y);
  pos.x += radius * sin(r);
  pos.y += radius * cos(r);
  
  return pos;
}

int irandom(int min, int max){
  return int(random(min,max));
}
  