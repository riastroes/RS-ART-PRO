import processing.pdf.*;

/**
 * Created by Ria Stroes on 15-5-2017.
 * Compano 
 * Computer Birds2
 * Design Wallpaper
 * 450 * 270 (2x)
 */


Palette pal;
Tower[] towers;
Bird[] birds;
PVector[] pos;
int max;

void setup() {
  size(1500, 1200);


  pal = new Palette("nice");
  pal.addColor(color(153, 204, 255));
  max = 7;
  towers = new Tower[max];
  birds = new Bird[max];
  pos = new PVector[max+1];
  float space = (width-200)/ max;

  for (int i = 0; i < max; i++) {
    pos[i] = new PVector(100 + (space * i), height);
    towers[i] = new Tower(pos[i], space, floor(random(3,12)));
  }
}
void draw() {
  beginRecord(PDF, "computerbirds.pdf");
  drawBackground();
  drawTowers();
  drawBirds();
  noLoop();
  endRecord();
}

void drawTowers() {

  for (int i = 0; i < max; i++) {
    towers[i].draw();
  }
}
void drawBirds() {
  for (int i = 0; i < max; i++) {
    pos[i].x += towers[i].top.x;
    pos[i].y = towers[i].top.y;

    birds[i]= new Bird( pos[i],i);
    birds[i].draw();
  }
}
void drawBackground() {
  background(pal.colors[0]);
  fill(255);
  int x, y;
  for (int i = 0; i < 15; i+= 1) {
    x = 10;
    y = 200*i;
    text("Palette pal;", x, y + 10 ) ;
    text("Tower[] towers;", x, y + 20 ) ;
    text("Bird[] birds;", x, y + 30 ) ;
    text("PVector[] pos;", x, y + 40 ) ;
    text("int max;", x, y + 50 ) ;
    text("void setup(){", x, y + 60 ) ;
    text(" size(4500,2700)", x, y + 70 ) ;
    text(" pal = new Palette('nice');", x, y + 80) ;
    text(" pal.addColor(color(153, 204, 255));", x, y +90) ;
    text(" max = 18", x, y +100) ;
    text(" towers = new Tower[max];", x, y +  110) ;
    text(" birds = new Bird[max];", x, y +  120) ;
    text(" pos = new PVector[max+1];", x, y + 130) ;
    text(" float space = (width-200)/ max;", x, y + 140) ;
    text(" for(int i = 0; i < max; i++){", x, y + 150) ;
    text("  pos[i] = new PVector(100 + (space * i), height);", x, y + 160) ;
    text("  towers[i] = new Tower(pos[i],space,floor(random(3,13)));", x, y +  170) ;
    text(" }", x, y +180) ;
    text("}", x, y +190) ;
  }
  for (int i = 0; i < 15; i+= 1) {
    x = 200;
    y = 200*i;
    text("void draw(){", x, y + 10 ) ;
    text("beginRecord(PDF,'computerbirds.pdf');", x, y + 20 ) ;
    text(" drawBackground();", x, y + 30 ) ;
    text(" drawTowers();", x, y + 40 ) ;
    text(" drawBirds();", x, y + 50 ) ;
    text("endRecord();", x, y + 60 ) ;
    text("noLoop();", x, y + 70 ) ;
    text("}", x, y + 80 ) ;
  }
  for (int i = 0; i < 15; i+= 1) {
    x = 420;
    y = 220*i;


    text("class Tower{", x, y + 10 ) ;
    text(" PVector pos;", x, y + 20 ) ;
    text(" PVector top;", x, y + 30 ) ;
    text(" float colwidth;", x, y + 40 ) ;
    text(" ArrayList<Etage> etages;", x, y + 50 ) ;
    text(" float topy;", x, y + 60 ) ;
    text(" float topwidth;", x, y + 70 ) ;
    text(" int max;", x, y + 80 ) ;
    text(" float minx; ", x, y + 90 ) ;
    text(" float maxx;", x, y + 100 ) ;
    text("Tower(PVector pos, float colwidth, int max){", x, y + 110 ) ;
    text("  this.pos = pos.copy();", x, y + 120 ) ;
    text("  this.top = this.pos.copy();", x, y + 130 ) ;
    text("  this.colwidth = colwidth;", x, y + 140 ) ;
    text("  this.etages = new ArrayList<Etage>();", x, y + 150 ) ;
    text("  this.max = max;", x, y + 160 ) ;
    text("  this.minx = width-(this.colwidth/2);", x, y + 170 ) ;
    text("  this.maxx = (this.colwidth/2);", x, y + 180 ) ;
    text("  createEtages();", x, y + 190 ) ;
    text("}", x, y + 200 ) ;
  }
  for (int i = 0; i < 15; i+= 1) {
    x = 660;
    y = 120*i;
    text("void createEtages(){", x, y + 10 ) ;
    text("this.top = new PVector(random(50,this.colwidth-50),height);", x, y + 20 ) ;
    text("for(int i = 0; i < this.max; i++){", x, y + 30 ) ;
    text("  int type = floor(random(1,4));", x, y + 40 ) ;
    text("  this.etages.add(new Etage(this.top,type));", x, y + 50 ) ;
    text("  this.top = this.etages.get(i).pos.copy();", x, y + 60 ) ;
    text("  this.top.x += random(this.etages.get(i).width);", x, y + 70 ) ;
    text("  if(this.top.x < 50) this.top.x =50;", x, y + 80 ) ;
    text("  if(this.top.x > width-300) this.top.x = width -300;", x, y + 90 ) ;

    text("}", x, y + 100 ) ;
    text("}", x, y + 110 ) ;
  }
  for (int i = 0; i < 25; i+= 1) {
    x = 1000;
    y = 120*i;
    text("void draw(){", x, y + 10 ) ;
    text(" strokeWeight(1);", x, y + 20 ) ;
    text("stroke(0);", x, y + 30 ) ;
    text("pushMatrix();", x, y + 40 ) ;
    text("  translate(this.pos.x, 0);", x, y + 50 ) ;
    text("  for(int i = 0; i < this.max; i++){", x, y + 60 ) ;
    text("  fill(random(50,255));", x, y + 70 ) ;
    text("  this.etages.get(i).draw();", x, y + 80 ) ;
    text("  }", x, y + 90 ) ;
    text("popMatrix();", x, y + 100 ) ;
    text("}", x, y + 110 ) ;
  }
  for (int i = 0; i < 2; i+= 1) {
    x = 1200;
    y = 220*i;
    text("class Bird {", x, y + 10 ) ;
    text("PVector posleft;", x, y + 20 ) ;
    text("PVector posright;", x, y + 30 ) ;

    text("PVector pos;", x, y + 40 ) ;
    text("float poswidth;", x, y + 50 ) ;
    text("float leglength = random(100, 200);", x, y + 60 ) ;
    text("PVector legpos;", x, y + 70 ) ;
    text("PVector toplegs;", x, y + 80 ) ;
    text("PVector center;", x, y + 90 ) ;
    text("PVector body;", x, y + 100 ) ;
    text("float angle;", x, y + 110 ) ;
    text("PVector head;", x, y + 120 ) ;
    text("PVector[] bek;", x, y + 130 ) ;

    text("Bird(PVector posleft) {", x, y + 140 ) ;
    text("this.posleft = posleft;", x, y + 150 ) ;
    text("this.posright = posOnCircle(this.posleft, 100, random(TWO_PI)); ", x, y + 160 ) ;
    text("this.toplegs = PVector.sub(this.posright, this.posleft).div(2);", x, y + 170 ) ;
    text("this.toplegs.add(this.posleft);", x, y + 180 ) ;
    text("this.toplegs.y -= random(200, 300);", x, y + 190 ) ;
    text("this.bek = new PVector[3];", x, y + 200 ) ;

    text(" }", x, y + 210 ) ;
  }
  for (int i = 0; i < 15; i+= 1) {
    x = 1550;
    y = 110*i;
    text("void draw() {", x, y + 10 ) ;
    text(" stroke(255, 0, 0);", x, y + 20 ) ;
    text(" strokeWeight(20);", x, y + 30 ) ;

    text(" this.drawLegs();", x, y + 40 ) ;
    text(" this.drawTales();", x, y + 50 ) ;
    text(" this.drawBody();", x, y + 60 ) ;
    text(" this.drawWings();", x, y + 70 ) ;
    text(" this.drawHead();", x, y + 80 ) ;
    text(" this.drawSnavel();", x, y + 90 ) ;
    text("}", x, y + 100 ) ;
  }
  for (int i = 0; i < 15; i+= 1) {
    x = 1670;
    y = 210*i;
    text(" void drawWings() {", x, y + 10 ) ;
    text("fill(255);", x, y + 20 ) ;
    text("stroke(0);", x, y + 30 ) ;
    text("strokeWeight(2);", x, y + 40 ) ;
    text("pushMatrix();", x, y + 50 ) ;
    text("translate(this.body.x, this.body.y);", x, y + 60 ) ;
    text("rotate(this.angle);", x, y + 70 ) ;
    text("PVector center = new PVector(100, 0);", x, y + 80 ) ;
    text("PVector pos;", x, y + 90 ) ;
    text("float radius = random(200, 400);", x, y + 100 ) ;
    text(" for (int r = 10; r > 0; r--) {", x, y + 110 ) ;
    text("  radius -= 20;", x, y + 120 ) ;
    text("  for (float i = PI; i < TWO_PI; i += PI/30) {", x, y + 130 ) ;
    text("    pos = posOnCircle(center, radius, i);", x, y + 140 ) ;

    text("    ellipse(pos.x+(r*20), pos.y, r*2, r*2);", x, y + 150 ) ;
    text("    line(0, 0, pos.x+(r*20), pos.y);", x, y + 160 ) ;
    text("  }", x, y + 170 ) ;
    text(" }", x, y + 180 ) ;


    text("popMatrix();", x, y + 190 ) ;
    text("}", x, y + 200 ) ;
  }
  for (int i = 0; i < 10; i+= 1) {

    x = 1200;
    y = 440 + (220*i);
    text("void drawTales() {", x, y + 10 ) ;
    text("fill(255, 0, 0);", x, y + 20 ) ;
    text("stroke(255, 0, 0);", x, y + 30 ) ;
    text("strokeWeight(4);", x, y + 40 ) ;
    text("pushMatrix();", x, y + 50 ) ;
    text("translate(this.toplegs.x, this.toplegs.y);", x, y + 60 ) ;


    text("rotate(this.angle);", x, y + 70 ) ;
    text(" PVector cen = new PVector(0, 0);", x, y +80 ) ;
    text("PVector pos;", x, y + 90 ) ;
    text("float radius = random(300, 340);", x, y + 100 ) ;
    text("float aangle = random(TWO_PI);", x, y + 110 ) ;
    text("for (int i = 0; i < 30; i +=1) {", x, y + 120 ) ;
    text("  pos = posOnEllipse(cen, radius, 100, aangle + (i* (PI/50)));", x, y + 130 ) ;
    text("  println(pos);", x, y + 140 ) ;
    text("  stroke(0);", x, y + 150 ) ;
    text("  line(0, 0, pos.x, pos.y);", x, y + 160 ) ;

    text("   stroke(255);", x, y + 170 ) ;
    text("   ellipse(pos.x, pos.y, 10, 10);", x, y + 180 ) ;
    text(" }", x, y + 190 ) ;

    text(" popMatrix();", x, y + 200 ) ;
    text("}", x, y + 210 ) ;
  }

  for (int i = 0; i < 15; i+= 1) {

    x = 1900;
    y =(180*i);
    text("void drawSnavel() {", x, y + 10 ) ;
    text("fill(0);", x, y +20 ) ;
    text("noStroke();", x, y +30 ) ;
    text("pushMatrix();", x, y + 40 ) ;
    text("translate(this.body.x, this.body.y);", x, y + 50 ) ;
    text("rotate(this.angle);", x, y + 60 ) ;

    text(" this.bek[0] = posOnCircle(this.head, 40, this.angle + PI);", x, y + 70 ) ;
    text("this.bek[1] = posOnCircle(this.head, 40, this.angle + PI-(PI/4));", x, y +80 ) ;
    text("this.bek[2] = posOnCircle(this.head, 40, this.angle + PI+(PI/4));", x, y + 90 ) ;
    text(" PVector top1 = posOnCircle(this.head, 120, this.angle + PI + random(-PI/8, PI/8) );", x, y + 100 ) ;
    text("PVector top2 = posOnCircle(this.head, 120, this.angle + PI + random(-PI/8, PI/8) );", x, y + 110 ) ;


    text("fill(0);", x, y + 120 ) ;
    text("noStroke();", x, y + 130 ) ;
    text("triangle(this.bek[0].x, this.bek[0].y, this.bek[1].x, this.bek[1].y, top1.x, top1.y);", x, y + 140 ) ;
    text("triangle(this.bek[0].x, this.bek[0].y, this.bek[2].x, this.bek[2].y, top2.x, top2.y);", x, y + 150 ) ;
    text("popMatrix();", x, y + 160 ) ;
    text("}", x, y + 170 ) ;
  }

  for (int i = 0; i < 15; i+= 1) {

    x = 2350;
    y =(200*i);
    text(" void drawHead() {", x, y + 10 ) ;

    text("pushMatrix();", x, y + 20 ) ;
    text("translate(this.body.x, this.body.y);", x, y + 30 ) ;
    text("rotate(this.angle);", x, y + 40 ) ;
    text("stroke(255, 0, 0);", x, y + 50 ) ;
    text("strokeWeight(20);", x, y + 60 ) ;
    text("line(0, 0, this.head.x, this.head.y);", x, y + 70 ) ;
    text("noStroke();", x, y + 80 ) ;
    text("fill(255, 0, 0);", x, y + 90 ) ;
    text("ellipse(0,0, 200, 130);", x, y + 100 ) ;

    text("ellipse(this.head.x, this.head.y, 80, 80);", x, y + 110 ) ;
    text("stroke(0);", x, y + 120 ) ;
    text("strokeWeight(4);", x, y + 130 ) ;
    text("fill(255);", x, y + 140 ) ;
    text("ellipse(this.head.x, this.head.y+16, 40,40);//eye", x, y + 150 ) ;
    text("fill(0);", x, y + 160 ) ;
    text("ellipse(this.head.x, this.head.y+6, 20, 20);//eye", x, y + 170 ) ;
    text(" popMatrix();", x, y + 180 ) ;
    text("}", x, y + 190 ) ;
  }

  for (int i = 0; i < 25; i+= 1) {

    x = 2600;
    y =(90*i);
    text("void drawBirds() {", x, y + 10 ) ;
    text("for (int i = 0; i < max; i++) {", x, y +20 ) ;
    text("  pos[i].x += towers[i].top.x;", x, y + 30 ) ;
    text("  pos[i].y = towers[i].top.y;", x, y + 40 ) ;
    text("  birds[i]= new Bird( pos[i]);", x, y + 50 ) ;
    text("  birds[i].draw();", x, y + 60 ) ;
    text("}", x, y + 70 ) ;
    text("}", x, y +80 ) ;
  }
  for (int i = 0; i < 25; i+= 1) {

    x = 2750;
    y =(130*i);
    text("void drawBody() {", x, y + 10 ) ;
    text("noStroke();", x, y + 20 ) ;
    text("fill(255, 0, 0);", x, y + 30 ) ;
    text("this.center = new PVector(this.toplegs.x, this.toplegs.y - 60);", x, y +40 ) ;

    text("this.angle = random(PI, TWO_PI);", x, y + 50 ) ;

    text("this.body = this.toplegs.copy();", x, y + 60 ) ;

    text("pushMatrix();", x, y + 70 ) ;
    text("translate(body.x, body.y);", x, y + 80 ) ;
    text("rotate(angle);", x, y + 90 ) ;
    text("this.head = new PVector(240, 0); ", x, y + 100 ) ;
    text("popMatrix();", x, y + 110 ) ;
    text("}", x, y + 120 ) ;
  }
  for (int i = 0; i < 25; i+= 1) {

    x = 3070;
    y =(170*i);
    text("void drawComputer(){", x, y + 10 ) ;

    text("rect(this.pos.x,this.pos.y, this.width, this.height,10);", x, y + 20 ) ;
    text("rect(this.pos.x +10,this.pos.y +40, this.width-20, 20,6);", x, y + 30 ) ;
    text("rect(this.pos.x +60,this.pos.y +20, 10, 10,6);", x, y + 410 ) ;
    text("}", x, y + 50 ) ;
    text("void drawMonitor(){", x, y + 60 ) ;

    text("rect(this.pos.x,this.pos.y, this.width, this.height,10);", x, y + 70 ) ;
    text("rect(this.pos.x +10,this.pos.y + 10, this.width -20, this.height -20,10);", x, y + 80 ) ;
    text("}", x, y + 90 ) ;
    text("void drawKeyboard(){", x, y + 100 ) ;

    text("rect(this.pos.x,this.pos.y, this.width, this.height,10);", x, y + 110 ) ;
    text("for(int i = 1; i < 16; i++){", x, y + 120 ) ;
    text("rect(this.pos.x + (i *12), this.pos.y+(10), 8,8);", x, y + 130 ) ;
    text(" rect(this.pos.x + (i *12), this.pos.y+(24), 8,8);", x, y + 140 ) ;
    text("rect(this.pos.x + (i *12), this.pos.y+(38), 8,8);", x, y + 150 ) ;
    text("}", x, y + 160 ) ;
  }
  for (int i = 0; i < 25; i+= 1) {

    x = 3450;
    y =(280*i);
    text("class Etage{", x, y + 10 ) ;
    text("PVector pos;", x, y + 20 ) ;
    text("int type;", x, y + 30 ) ;
    text("float width;", x, y + 40 ) ;
    text("float height;", x, y + 50 ) ;
    text("float maxx;", x, y + 60 ) ;
    text("float minx;", x, y + 70 ) ;


    text("Etage(PVector pos, int type){", x, y + 80 ) ;
    text("this.pos  = pos;", x, y + 90 ) ;
    text("this.type = type;", x, y + 100 ) ;


    text("if(this.type == 1){ //computer", x, y + 110 ) ;
    text("this.width = 80;", x, y + 120 ) ;
    text("this.height = 200;", x, y + 130 ) ;

    text("}", x, y + 140 ) ;
    text("else if(this.type == 2){  //monitor", x, y + 150 ) ;
    text("this.width = 200;", x, y + 160 ) ;
    text(" this.height = 160;", x, y + 170 ) ;
    text(" }", x, y + 180 ) ;
    text("else if(this.type == 3){ //keyboard", x, y + 190 ) ;
    text("  this.width = 200;", x, y + 200 ) ;
    text("  this.height = 60;", x, y + 210 ) ;
    text("}", x, y + 220 ) ;

    text("this.minx = this.pos.x - (this.width/2);", x, y + 230 ) ;
    text(" this.maxx = this.pos.x + (this.width/2);", x, y + 240 ) ;
    text("this.pos.y -= this.height;", x, y + 250 ) ;
    text("this.pos.x -= this.width / 2;", x, y +260 ) ;
    text("}", x, y + 270 ) ;
  }
  for (int i = 0; i < 45; i+= 1) {

    x = 3720;
    y =(50*i);
    text("void drawTowers() { ", x, y + 10 ) ;
    text("for (int i = 0; i < max; i++) {", x, y + 20 ) ;
    text(" towers[i].draw(); ", x, y + 30 ) ;
    text("}", x, y + 40 ) ;
  }
  for (int i = 0; i < 45; i+= 1) {

    x = 3900;
    y =(130*i);
    text("PVector posOnCircle(PVector center, float radius, float angle){", x, y + 10 ) ;
    text(" PVector pos = center.copy();", x, y + 20 ) ;
    text("pos.x += radius * sin(angle);", x, y + 30 ) ;
    text(" pos.y += radius * cos(angle);", x, y +40 ) ;
    text("return pos;", x, y + 50 ) ;
    text("}", x, y + 60 ) ;

    text("PVector posOnEllipse(PVector center, float wradius, float hradius, float angle){", x, y + 70 ) ;
    text("PVector pos = center.copy();", x, y + 80 ) ;
    text("pos.x += (wradius * sin(angle));", x, y + 90 ) ;
    text("pos.y += (hradius * cos(angle));", x, y + 100 ) ;

    text(" return pos;", x, y + 110 ) ;
    text("}", x, y + 120 ) ;
  }
  for (int i = 0; i < 45; i+= 1) {

    x = 4350;
    y =(90*i);
    text(" void drawBirds() {", x, y + 10 ) ;
    text(" for (int i = 0; i < max; i++) {", x, y + 20 ) ;
    text("pos[i].x += towers[i].top.x;", x, y + 30 ) ;
    text("pos[i].y = towers[i].top.y;", x, y + 50 ) ;

    text("birds[i]= new Bird( pos[i]);", x, y +60 ) ;
    text(" birds[i].draw();", x, y + 70 ) ;
    text("}", x, y + 80 ) ;
  }
}