/* Opdracht Compano */

/* Ria Stroes */
/* @updated: 15 november 2016 */
/* Big Graphics */

import processing.pdf.*;

Palette palb, palg;
Chain horizon;
Chain[] air;
Chain[] land;
Sun sun;
float sunsize;
Lake lake;
float lakesize;
Bird[] birds;

void setup(){
  size(2000,1500,PDF,"result/landscape04.pdf");
  //size(2000,1000);
  palb = new Palette("blauw");
  palb.addRGBColors("blauwen.png", 10, 255);
  palb.sortColors();
  palg = new Palette("groen");
  palg.addRGBColors("groenen2.png", 10, 255);
  palg.sortColors();
  
  sun = new Sun(new PVector((width/4.4)*3, height/4), 350, color(255,255,0), color(255));
  lake = new Lake( new PVector((width/4.4)*3, height/4*3), 600, palg.colors[0], color(255,255,0));  
  horizon = new Chain(new PVector(0, height/2),new PVector(width, height/2),500, 5);
  
  air = new Chain[200];
  float rand = random(50,100);
  float h =(height/2)-100;
  for(int i = 0; i < air.length; i++){
    rand = random(50,100);
    air[i] = new Chain(new PVector(rand,((h/air.length)*i)+100),new PVector(width-(2*rand),  ((h/air.length)*i+100)), 400, 5);
    air[i].addForce(sun.pos, sun.size/2);
  }
  
  
  land = new Chain[300];
  h = (height/2) - 100;
  for(int i = 0; i < land.length; i++){
    rand = random(50,100);
    land[i] = new Chain(new PVector(rand, h+100 + ((h/land.length)*i)),new PVector(width-(2*rand), h+ ((h/land.length)*i)), 500, 5);
    land[i].addForce(lake.pos, lake.size/2);  
  }
  
  birds = new Bird[40];
  int count = 130;
  int max = air.length-20;
  int maxpos = air[0].pos.length/3;
 
  for(int i = 0; i < birds.length -3; i++){
      PVector fly = air[max - count].pos[(maxpos - (i*2)) -1];
      PVector fly1 = air[max - count].pos[(maxpos - (i*2))];
      PVector fly2 = air[max - count].pos[(maxpos - (i*2)) + 1];
     birds[i] = new Bird(fly, fly1, fly2, palb.colors[3], 2);
     count += 1;
   }
   max = air.length/2;
   maxpos = air[0].pos.length - 55;
   for(int i = 0; i < 3; i++){
      PVector fly = air[max + (i * 2)].pos[(maxpos - (i*2)) -1];
      PVector fly1 = air[max + (i * 2)].pos[(maxpos - (i*2))];
      PVector fly2 = air[max + (i * 2)].pos[(maxpos - (i*2)) + 1];
     birds[birds.length -3 + i] = new Bird(fly, fly1, fly2, palg.colors[0], 2);
     count += 1;
   }
}
void draw(){
  background(200);
  
  //background sun
  noStroke();
  fill(color(255, 255, 0,150));
  ellipse(sun.pos.x, sun.pos.y, sun.size/3*2, sun.size/3*2);
  
  //noStroke();
  //fill(color(255, 155, 0,120));
  //ellipse(lake.pos.x, lake.pos.y, lake.size - 80, lake.size-80);
  
  
  
  //horizon
  horizon.draw(color(255,0,0,150) ,color(255,0,0,150),1,1);
  
  //lake
  lake.draw();
  for(int i = 0; i < land.length; i++){
    land[i].draw(palg.colors[floor(i/30)],palg.colors[floor(i/30)],1,1);
  }
  //air
  for(int i = 0; i < air.length; i++){
    air[i].draw(palb.colors[floor(i/20)],palb.colors[floor(i/20)], 0.5, 1);
  }
  //birds
   for(int i = 0; i < birds.length; i++){
     birds[i].draw();
   }
   //sun
   sun.draw();
   //noLoop();
  exit();
}