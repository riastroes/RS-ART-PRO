class Bird {
  PVector posleft;
  PVector posright;
  int nr;

  PVector pos;
  float poswidth;
  float leglength = random(100, 200);
  PVector legpos;
  PVector toplegs;
  PVector center;
  PVector body;
  float angle;
  PVector head;
  PVector[] bek;

  Bird(PVector posleft, int nr) {
    this.nr = nr;
    this.posleft = posleft;
    this.posright = posOnCircle(this.posleft, 50, random(TWO_PI)); 
    this.toplegs = PVector.sub(this.posright, this.posleft).div(2);
    this.toplegs.add(this.posleft);
    this.toplegs.y -= random(100, 300);
    this.bek = new PVector[3];

  }
  void draw() {
    if(this.nr < 12){
    stroke(255, 0, 0);
    strokeWeight(20);
    
    this.drawLegs();
    this.drawTales();
    this.drawBody();
    this.drawWings();
    this.drawHead();
    this.drawSnavel();
    }
  }
  void drawFoot(PVector foot) {
    stroke(0);
    strokeWeight(5);

    line(foot.x, foot.y-10, foot.x+20, foot.y + 5);
    line(foot.x, foot.y-10, foot.x-20, foot.y + 5);
    line(foot.x, foot.y-10, foot.x, foot.y + 10);
  }

  void drawLegs() {
    drawLeg(this.posleft, floor(random(2)));
    drawLeg(this.posright, floor(random(2)));
    drawFoot(this.posleft);
    drawFoot(this.posright);
  }
  void drawLeg(PVector foot, int parts) {
    stroke(0);
    strokeWeight(5);
    
    if(parts == 0){
      line(foot.x, foot.y, this.toplegs.x, this.toplegs.y);
    }
    else{
        PVector knee = new PVector(foot.x, foot.y);
        float up = random(50,90);
        knee.y -= up;
        knee.x += random(-115,115);
        if(up > 70){
        foot.y -= 100;
        }
        line(foot.x, foot.y,  knee.x,  knee.y);
        line( knee.x,  knee.y, this.toplegs.x, this.toplegs.y);
    }
  }

  void drawBody() {
    noStroke();
    fill(255, 0, 0);
    this.center = new PVector(this.toplegs.x, this.toplegs.y - 120);
    if(this.nr < 10){
      this.angle = 0;
    }
    else{
      this.angle = random(-PI/2,-PI/2); //random(PI, TWO_PI);
      this.angle += this.nr * 0.2;
    }

    this.body = this.toplegs.copy();

    pushMatrix();
    translate(body.x, body.y);
    rotate(this.angle);
    this.head = new PVector(240, 0); 
    popMatrix();
  }

  void drawHead() {
    this.angle = random(-PI/2,PI/2);
    pushMatrix();
    translate(this.body.x, this.body.y);
    rotate(this.angle);
    stroke(255, 0, 0);
    strokeWeight(20);
    line(0, 0, this.head.x, this.head.y);
    noStroke();
    fill(255, 0, 0);
    ellipse(0,0, 200, 130);
    
    ellipse(this.head.x, this.head.y, 80, 80);
    stroke(0);
    strokeWeight(4);
    fill(255);
    ellipse(this.head.x, this.head.y+16, 40,40);//eye
    fill(0);
    ellipse(this.head.x, this.head.y+6, 20, 20);//eye
    popMatrix();
  }

  void drawSnavel() {
    fill(0);
    noStroke();
    pushMatrix();
    translate(this.body.x, this.body.y);
    rotate(this.angle);

    this.bek[0] = posOnCircle(this.head, 40, this.angle + PI);
    this.bek[1] = posOnCircle(this.head, 40, this.angle + PI-(PI/4));
    this.bek[2] = posOnCircle(this.head, 40, this.angle + PI+(PI/4));
    PVector top1 = posOnCircle(this.head, 120, this.angle + PI + random(-PI/8, PI/8) );
    PVector top2 = posOnCircle(this.head, 120, this.angle + PI + random(-PI/8, PI/8) );


    fill(0);
    noStroke();
    triangle(this.bek[0].x, this.bek[0].y, this.bek[1].x, this.bek[1].y, top1.x, top1.y);
    triangle(this.bek[0].x, this.bek[0].y, this.bek[2].x, this.bek[2].y, top2.x, top2.y);
    popMatrix();
  }

  void drawTales() {
    fill(255, 0, 0);
    stroke(255, 0, 0);
    strokeWeight(2);
    pushMatrix();
    translate(this.toplegs.x, this.toplegs.y);


    rotate(this.angle + (this.nr *0.4));
    PVector cen = new PVector(0, 0);
    PVector pos;
    float radius = random(200, 240);
    float aangle = random(TWO_PI);
    for (int i = 0; i < 30; i +=1) {
      pos = posOnEllipse(cen, radius, 100, aangle + (i* (PI/50)));
      println(pos);
      stroke(0);
      line(0, 0, pos.x, pos.y);

      stroke(255);
      ellipse(pos.x, pos.y, 10, 10);
    }

    popMatrix();
  }
  void drawWings() {
    fill(255);
    stroke(0);
    strokeWeight(1);
    pushMatrix();
    translate(this.body.x, this.body.y);
    rotate(this.angle + (this.nr *0.1));
    PVector center = new PVector(100, 0);
    PVector pos;
    float radius = random(200, 400);
    for (int r = 10; r > 0; r--) {
      radius -= 20;
      for (float i = PI; i < TWO_PI; i += PI/30) {
        pos = posOnCircle(center, radius, i);

        ellipse(pos.x+(r*20), pos.y, r*2, r*2);
        line(0, 0, pos.x+(r*20), pos.y);
      }
    }


    popMatrix();
  }
}


/*

 
 function Bird(pg, pos, poswidth) {
 this.pg = pg;
 this.pos = pos;
 this.poswidth = poswidth;
 this.leglength = random(50, 100);
 this.legpos = createVector(this.pos.x + random(this.poswidth), this.pos.y-this.leglength)
 }
 Bird.prototype.style = function(nr) {
 switch(nr) {
 case 0: //legs
 this.strokecolor = app.pal.colors[0];
 this.fillcolor = false;
 this.thickness = 3;
 break;
 case 1: //body
 this.strokecolor = false;
 this.fillcolor = app.pal.colors[2];
 this.thickness = 3;
 break;
 case 2: //eye
 this.strokecolor = app.pal.colors[0];
 this.fillcolor = app.pal.colors[1];
 this.thickness = 3;
 break;
 case 3: //snavel
 this.strokecolor = app.pal.colors[0];
 this.fillcolor = app.pal.colors[0];
 this.thickness = 1;
 break;
 case 4: //wings
 this.strokecolor = app.pal.colors[0];
 this.fillcolor = app.pal.colors[1];
 this.thickness = 1;
 break;
 case 5: //neck
 this.strokecolor = app.pal.colors[2];
 this.fillcolor = app.pal.colors[2];
 this.thickness = 4;
 break;
 }
 app.style.pg(this.pg, this.strokecolor, this.fillcolor, this.thickness);
 }
 Bird.prototype.drawLegs = function() {
 this.style(0);
 var foot = createVector(this.pos.x+ random(this.poswidth), this.pos.y);
 this.pg.line(this.legpos.x, this.legpos.y, foot.x, foot.y);
 this.pg.line(foot.x, foot.y-10, foot.x+10, foot.y);
 this.pg.line(foot.x, foot.y-10, foot.x-10, foot.y);
 this.pg.line(foot.x, foot.y-10, foot.x, foot.y);
 var l = random(-this.leglength/2, this.leglength/2);
 var knee = createVector(this.legpos.x + random(-30, 30), this.legpos.y + l);
 this.pg.line(knee.x, knee.y, this.legpos.x, this.legpos.y);
 l = random(0, this.leglength);
 foot =createVector(knee.x + random(-30, 30), knee.y + l);
 
 this.pg.line(knee.x, knee.y, foot.x, foot.y);
 this.pg.line(foot.x, foot.y, foot.x+10, foot.y+10);
 this.pg.line(foot.x, foot.y, foot.x-10, foot.y+10);
 this.pg.line(foot.x, foot.y, foot.x, foot.y+10);
 }
 Bird.prototype.drawBody = function() {
 this.style(1);
 this.center = createVector(this.legpos.x, this.legpos.y - 30);
 this.pg.ellipse(this.center.x, this.center.y, 60, 60);
 this.angle = random(PI, TWO_PI);
 this.body = app.posOnCircle(this.center, 20, TWO_PI, this.angle);
 
 this.pg.push();
 this.pg.translate(this.body.x, this.body.y);
 this.pg.rotate(this.angle);
 this.style(0);
 this.head = createVector(100, 0);
 
 
 this.pg.pop();
 }
 Bird.prototype.drawHead = function() {
 this.pg.push();
 this.pg.translate(this.body.x, this.body.y);
 this.pg.rotate(this.angle);
 this.style(5);//neck
 this.pg.line(0, 0, this.head.x, this.head.y);
 this.style(1);
 this.pg.ellipse(0, 0, 80, 50);
 this.pg.ellipse(this.head.x, this.head.y, 40, 40);
 this.style(2);
 this.pg.ellipse(this.head.x, this.head.y+8, 20, 20);//eye
 this.style(3);
 this.pg.ellipse(this.head.x, this.head.y+3, 10, 10);//eye
 this.pg.pop();
 }
 Bird.prototype.drawSnavel = function() {
 this.style(3);
 this.pg.push();
 this.pg.translate(this.body.x, this.body.y);
 this.pg.rotate(this.angle);
 this.bek =[];
 append(this.bek, app.posOnCircle(this.head, 20, TWO_PI, TWO_PI));
 append(this.bek, app.posOnCircle(this.head, 20, TWO_PI, TWO_PI-(PI/5)));
 append(this.bek, app.posOnCircle(this.head, 20, TWO_PI, TWO_PI+(PI/5)));
 this.pg.triangle(this.bek[0].x-10, this.bek[0].y, this.bek[1].x, this.bek[1].y, this.bek[1].x+40, this.bek[1].y);
 this.pg.triangle(this.bek[0].x-10, this.bek[0].y, this.bek[2].x, this.bek[2].y, this.bek[2].x+40, this.bek[2].y);
 this.pg.pop();
 }
 Bird.prototype.drawWings = function() {
 this.style(4);
 this.pg.push();
 this.pg.translate(this.body.x, this.body.y);
 this.pg.rotate(this.angle - PI/2);
 var center = createVector(0, -60);
 var pos;
 var radius = random(50, 150);
 for (var r = 0; r <10; r++) {
 radius -= 10;
 for (var i = 0; i < PI; i += PI/30) {
 pos = app.posOnEllipse(center, radius, 120, TWO_PI, i);
 this.pg.line(0, 0, pos.x, pos.y);
 this.pg.ellipse(pos.x, pos.y, 10-r, 10-r);
 //this.style(3);
 }
 }
 
 this.pg.pop();
 }
 Bird.prototype.drawTales = function() {
 this.style(4);
 this.pg.push();
 this.pg.translate(this.legpos.x, this.legpos.y);
 
 this.pg.rotate(this.angle);
 var center = createVector(0, 0);
 var pos;
 var radius =random(10, 50)
 for (var i = 0; i < PI; i += PI/30) {
 pos = app.posOnEllipse(center, radius, 50, TWO_PI, i);
 // this.pg.ellipse(pos.x, pos.y, 5,5);
 // //this.style(3);
 // this.pg.line(0,0,pos.x,pos.y);
 }
 
 this.pg.pop();
 }
 */