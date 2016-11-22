/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
Wisp[] wisp;
Wisp[] wisp2;
void setup(){
  size(500,500);
  wisp = new Wisp[2];
  wisp[0] = new Wisp(new PVector(-50,350), 3, -1,1);
  wisp[1] = new Wisp(new PVector(-50,350), 3,  -1,1);
  wisp2 = new Wisp[3];
  wisp2[0] = new Wisp(new PVector(-50,350), 3,    -1,1);
  wisp2[1] = new Wisp(new PVector(-50,350), 3,  -1,1);
  wisp2[2] = new Wisp(new PVector(-50,350), 3,   -1,1);
}

void draw(){
  strokeWeight(3);
   stroke(255,0,0,50);
   noFill();
   beginShape();
    for(Wisp w : wisp){
    w.grow();
    w.draw();
    }
  endShape();
  stroke(0,255,0,50);
  beginShape();
    for(Wisp w : wisp2){
    w.grow();
    w.draw();
    }
  endShape();
}