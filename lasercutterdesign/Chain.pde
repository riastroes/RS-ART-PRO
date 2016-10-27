class Chain{
  PVector pos;
  float difx;
  float dify;
  float width;
  int length;
  ArrayList<PVector> p;
  color c;
  
  
  Chain(PVector pos, float difx, float dify, int plength){
    this.difx = difx;
    this.dify = dify;
    this.length = plength;
    this.p = new ArrayList<PVector>();
    this.p.add(pos);
    for(int i = 1; i < this.length; i++){
      this.p.add(new PVector(this.p.get(i-1).x + difx , this.p.get(i-1).y + random(-dify, dify)));
    }
    this.c = color(255);
  }
  void addForce(Force force){
    if(force.force > 0 && force.radius > 0){
      for(PVector pos : this.p){
        if(PVector.dist(pos, force.pos) < force.radius){
          PVector psub = PVector.sub(pos, force.pos);
          psub.normalize();
          psub.mult(force.force);
          if(this.checkBorders(pos,psub)){
            pos.add(psub);
          }
        }
      }     
    }
  }
  boolean checkBorders(PVector pos,PVector psub){
    boolean ok = false;
    PVector newpos = pos.copy();
    newpos.add(psub);
    if(newpos.x > 10 && newpos.x < width-10){
      if(newpos.y > 10 && newpos.y < height-10){
        ok = true;
      }
    }
    return ok;
  }
  void draw(){
    fill(this.c);
    stroke(0);
    strokeWeight(1);
    rectMode(CORNERS);
    for(int i = 0; i < this.p.size() -1; i++){
      rect(this.p.get(i).x, this.p.get(i).y, 
           this.p.get(i+1).x, this.p.get(i+1).y);
    }
      
  }
}