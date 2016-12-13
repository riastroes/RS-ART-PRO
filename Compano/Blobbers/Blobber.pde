class Blobber {
  PVector position;
  ArrayList<PVector> pos;
  float thickness;
  PVector center;
  int corners;
  float size;
  ArrayList<PVector> morepos;
  float rot;
  int sign;
  float rscale;
  float factor;
  float minwidth ;
  float maxwidth ;
  float minheight;
  float maxheight;



  Blobber() {
    this.pos = new ArrayList<PVector>();
    this.thickness = 1;
    this.center = new PVector(width/2, height/2);
    this.corners = 0;
    this.size = 0;
    this.morepos  = new ArrayList<PVector>();
    this.rot = random(TWO_PI);
    this.sign = 1;
    this.rscale = random(-4, 4);
    this.factor =1;
    this.minwidth =0;
    this.maxwidth =0;
    this.minheight =0;
    this.maxheight =0;
  }

  void init(PVector pos, int corners, float minwidth, float maxwidth, float minheight, float maxheight) {
    //the flexibility of the blopper is dependend of the difference in minwidth and maxwidth and minheight and maxheight.
    this.pos = new ArrayList<PVector>();
    this.center = pos.copy();
    this.corners = corners;
    this.minwidth =minwidth ;
    this.maxwidth =maxwidth;
    this.minheight =minheight;
    this.maxheight =maxheight;
    if (maxheight >= minheight && maxheight >= maxwidth && maxheight >= minwidth) {
      this.size = maxheight;
    } else if (minheight >= maxheight && minheight >= maxwidth && minheight >= minwidth) {
      this.size = minheight;
    } else if (maxwidth >= maxheight && maxwidth >= minheight && maxwidth >= minwidth) {
      this.size = maxwidth;
    } else {
      this.size = minwidth;
    }

    this.factor = 1;

    float wminradius = minwidth/2;
    float wmaxradius = maxwidth/2;
    float hminradius = minheight/2;
    float hmaxradius = maxheight/2;


    PVector p;
    float r = 0;//random(TWO_PI/(corners+1));
    for (int i = 0; i < corners; i += 1) {
      float wradius = random(wminradius, wmaxradius);
      float hradius = random(hminradius, hmaxradius);
      p = posOnEllipse(this.center, wradius, hradius,  (i * (TWO_PI/(corners))) +  r);
      this.pos.add(p);
    }
    
  };
  PVector posOnEllipse(PVector center, float wradius, float hradius,  float angle) {
    PVector p = center.copy();
    p.x = wradius * sin(angle);
    p.y = hradius * cos(angle);

    return p;
  }
  void change(int corners, float radius){
    if(this.minwidth > radius && this.minwidth < width){this.minwidth -= 1;}
    if(this.maxwidth > radius && this.maxwidth < width){this.maxwidth += 1;}
    if(this.minheight > radius && this.minheight < width){this.minheight -= 1;}
    if(this.maxheight > radius && this.maxheight < width){this.maxheight += 1;}
    
    
    this.corners = corners;
    init(this.center, this.corners, radius, this.maxwidth, radius, this.maxheight);
    
  }

  void draw() {

    pushMatrix();
    translate(this.center.x, this.center.y);

    scale(this.factor);
    rotate(this.rot);

    int s = this.pos.size();
    
    beginShape();
      for (int i = 0; i < s+3; i += 1) {
        
        curveVertex(this.pos.get(i%s).x, this.pos.get(i%s).y);
      }
    endShape();
    popMatrix();
    this.rot += 0.1;
    
  };
  void showCenter() {
    PVector newposition = this.recalcPosition(this.position);
    ellipse(newposition.x, newposition.y, 10, 10);

    pushMatrix();
    translate(this.position.x, this.position.y);
    scale(this.factor);
    rotate(this.rot);
    ellipse(this.center.x, this.center.y, 10, 10);

    popMatrix();
  };
  void showPoints() {

    pushMatrix();
    translate(this.center.x, this.center.y);
    scale(this.factor);
    rotate(this.rot);

    for (int i =0; i < this.pos.size(); i++) {
      ellipse(this.pos.get(i).x, this.pos.get(i).y, 10, 10);
    }
    popMatrix();
  };
  void showPoint(int id) {

    pushMatrix();
    translate(this.center.x, this.center.y);
    scale(this.factor);
    rotate(this.rot);
    ellipse(this.pos.get(id).x, this.pos.get(id).y, 10, 10);

    popMatrix();
  };
  void lineOnBlob(int id) {
    int zid = (this.pos.size()/2) - id;
    pushMatrix();
    translate(this.center.x, this.center.y);
    scale(this.factor);
    rotate(this.rot);
    line(this.pos.get(id).x, this.pos.get(id).y, this.pos.get(zid).x, this.pos.get(zid).y);

    popMatrix();
  };
  //void showEllipse(){
  //  int i;
  //  pushMatrix();
  //  translate(this.position.x, this.position.y);
  //  scale(this.factor);
  //  rotate(this.rot);
  //  ellipse(this.center.x, this.center.y, this.wmaxradius*2, this.hmaxradius*2);
  //  popMatrix();
  //};
  void createMorePoints(int count) {
    float t, x, y;
    int s;

    this.morepos  = new ArrayList<PVector>();
    s = this.pos.size();
    for (int i = 0; i < s; i++) {

      for (int j = 0; j < count; j++) {
        t = j / count;
        x = curvePoint(this.pos.get(i).x, this.pos.get((i+1)%s).x, this.pos.get((i+2)%s).x, this.pos.get((i+3)%s).x, t);
        y = curvePoint(this.pos.get(i).y, this.pos.get((i+1)%s).y, this.pos.get((i+2)%s).y, this.pos.get((i+3)%s).y, t);
        this.morepos.add(new PVector(x, y));
      }
    }
  };
  void showMorePoints() {

    pushMatrix();
    translate(this.position.x, this.position.y);
    scale(this.factor);
    rotate(this.rot);

    for (int i = 0; i < this.morepos.size(); i++) {
      ellipse(this.morepos.get(i).x, this.morepos.get(i).y, 5, 5);
    }
    popMatrix();
  };
  void grow(float grown) {

    this.factor += grown;
  };
  PVector recalcPosition( PVector position) {

    int i, totx =0, avx, toty = 0, avy;
    for (i= 0; i < this.pos.size(); i++) {
      totx += this.pos.get(i).x;
      toty += this.pos.get(i).y;
    }
    avx = totx / this.pos.size() / 2;
    avy = toty / this.pos.size() / 2;

    return new PVector(position.x +avx, position.y +avy);
  }
  /*
  JAVASCRIPT
   Blobber.prototype.multiply = function() {
   var i, o, newpos, oldpos, newblobber;
   newpos = [];
   oldpos = [];
   o=0;
   if (this.pos.length >=6) {
   
   for (i = 0; i < this.pos.length; i++) {
   if (i%2 == 0) {
   append(newpos, this.pos[i]);
   } else {
   append(oldpos, this.pos[i]);
   }
   }
   
   newblobber = new Blobber();
   newblobber.set(this.position, newpos, this.factor);
   
   this.set(this.position, oldpos, this.factor);
   }
   return newblobber;
   };
   Blobber.prototype.split = function(newblobbers) {
   var p, i, o, newpos, oldpos, newblobber, blobberpos;
   
   
   p = floor(this.pos.length/2);
   newpos = [];
   oldpos = [];
   o=0;
   if (p >3) {
   
   oldpos = subset(this.pos, 0, p);
   newpos = subset(this.pos, p, this.pos.length - p);
   
   //append(newpos, oldpos[0]);
   //append(oldpos, newpos[0]);
   blobberpos = this.position.copy();
   
   newblobber = new Blobber();
   newblobber.set(blobberpos, newpos, this.factor);
   
   append( newblobbers, newblobber);
   
   this.set(this.position, oldpos, this.factor);
   this.style(app.pal.randomImgColor(), app.pal.tint(app.pal.randomImgColor()), 1 );
   this.init(blobberpos, 30, this.wminradius*2, this.wmaxradius*2, this.hminradius*2, this.hmaxradius*2);
   }
   
   return newblobber;
   };
   Blobber.prototype.splitting = function() {
   //two dots will grow to each other, if they connect the cell will split
   //this function should be called until the blobber is spit.
   var p, f, first, half;
   f = app.randomInt(0, this.pos.length -1);
   p = floor((f + (this.pos.length / 2)) % (this.pos.length -1));
   
   first = this.pos[f];
   half = this.pos[p];
   
   if (dist(first.x, first.y, half.x, half.y) > 10) {
   
   first.mult(0.9);
   half.mult(0.9);
   } else {
   //split blobber
   return true;
   }
   return false;
   };
   
   Blobber.prototype.set = function(position, pos, factor) {
   this.pos = [];
   arrayCopy(pos, this.pos);
   this.position = position;
   var newposition = this.recalcPosition(position);
   var change = p5.Vector.sub(this.position, newposition);
   for (i = 0; i < this.pos.length; i++) {
   this.pos[i].add(change);
   }
   this.position = newposition;
   this.center = createVector(0, 0);
   this.corners = this.pos.length;
   this.factor = factor;
   };
   Blobber.prototype.crossLines = function() {
   var pos1, pos2;
   push();
   translate(this.position.x, this.position.y);
   scale(this.factor);
   if (app.is(this.rot)) {
   rotate(this.rot);
   }
   for (i = 0; i < half; i++) {
   pos1 = this.morepos[i];
   pos2 = this.morepos[i + half];
   
   line(pos1.x, pos1.y, pos2.x, pos2.y);
   }
   pop();
   };
   Blobber.prototype.linesToCenter = function() {
   var pos;
   push();
   translate(this.position.x, this.position.y);
   scale(this.factor);
   if (app.is(this.rot)) {
   rotate(this.rot);
   }
   for (i = 0; i < this.morepos.length; i++) {
   pos = this.morepos[i];
   line(pos.x, pos.y, this.center.x, this.center.y);
   }
   pop();
   };
   //differential inheritants.
   function RegBlobber() {
   this.blobber = new Blobber();
   this.blobber.init = this.init;
   return this.blobber;
   }
   RegBlobber.prototype.init = function(pos, corners, minwidth, maxwidth, minheight, maxheight) {
   //the flexibility of the blopper is dependend of the difference in minwidth and maxwidth and minheight and maxheight.
   this.pos = [];
   this.position = pos.copy();
   this.center = createVector(0, 0);
   this.corners = corners;
   this.size = maxheight;
   
   this.wminradius = minwidth/2;
   this.wmaxradius = maxwidth/2;
   this.hminradius = minheight/2;
   this.hmaxradius = maxheight/2;
   
   var p, wradius, hradius;
   var r = random(TWO_PI/corners);
   
   for (var i = 0; i < corners; i += 1) {
   if (i%2 == 0) {
   wradius = this.wminradius;
   hradius = this.hminradius;
   } else {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   }
   
   p = posOnEllipse(this.center, wradius, hradius, this.corners, i + r);
   append(this.pos, p);
   }
   };
   function TulipBlobber() {
   this.blobber = new Blobber();
   this.blobber.init = this.init;
   return this.blobber;
   }
   TulipBlobber.prototype.init = function(pos, corners, minwidth, maxwidth, minheight, maxheight) {
   //the flexibility of the blopper is dependend of the difference in minwidth and maxwidth and minheight and maxheight.
   this.pos = [];
   this.position = pos.copy();
   this.center = createVector(0, 0);
   this.corners = corners;
   this.size = maxheight;
   
   this.wminradius = minwidth/2;
   this.wmaxradius = maxwidth/2;
   this.hminradius = minheight/2;
   this.hmaxradius = maxheight/2;
   
   var p, wradius, hradius, r;
   
   
   for (var i = 0; i < corners; i += 1) {
   if (i%3 == 0) {
   wradius = this.wminradius;
   hradius = this.hminradius;
   r = 0;
   }
   if (i%3 == 1) {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   r = (PI/corners)/4;
   }
   if (i%3 == 2) {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   r = (PI/corners)*7;
   }
   
   p = posOnEllipse(this.center, wradius, hradius, this.corners, i + r);
   append(this.pos, p);
   }
   };
   function Tulip2Blobber() {
   this.blobber = new Blobber();
   this.blobber.init = this.init;
   return this.blobber;
   }
   Tulip2Blobber.prototype.init = function(pos, corners, minwidth, maxwidth, minheight, maxheight) {
   //the flexibility of the blopper is dependend of the difference in minwidth and maxwidth and minheight and maxheight.
   
   this.pos = [];
   this.position = pos.copy();
   this.center = createVector(0, 0);
   this.corners = corners;
   this.size = maxheight;
   
   this.wminradius = minwidth/2;
   this.wmaxradius = maxwidth/2;
   this.hminradius = minheight/2;
   this.hmaxradius = maxheight/2;
   
   var p, wradius, hradius, r, n;
   this.center2 = this.center.copy();
   this.center2.y -= 50;
   
   
   
   for (var i = 0; i < corners/2; i += 1) {
   if (i%3 == 0) {
   wradius = this.wminradius;
   hradius = this.hminradius;
   r = 0;
   }
   if (i%3 == 1) {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   r = (PI/(corners/2))/4;
   }
   if (i%3 == 2) {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   r = (PI/(corners/2))*7;
   }
   
   p = posOnEllipse(this.center, wradius, hradius, this.corners, i);
   append(this.pos, p);
   }
   for (var i = corners/2; i < corners; i += 1) {
   if (i%3 == 0) {
   wradius = this.wminradius;
   hradius = this.hminradius;
   r = 0;
   }
   if (i%3 == 1) {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   r = (PI/(corners/2))/4;
   }
   if (i%3 == 2) {
   wradius = this.wmaxradius;
   hradius = this.hmaxradius;
   r = (PI/(corners/2))*7;
   }
   
   
   p = posOnEllipse(this.center2, wradius, hradius, this.corners, i + r);
   append(this.pos, p);
   }
   };
   */
}