class Chain{
  PVector pos;
  float difx;
  float dify;
  int length;
  ArrayList<PVector> p;
  
  
  Chain(PVector pos, float difx, float dify, int plength){
    this.difx = difx;
    this.dify = dify;
    this.length = plength;
    this.p = new ArrayList<PVector>();
    this.p.add(pos);
    for(int i = 1; i < this.length; i++){
      this.p.add(new PVector(this.p.get(i-1).x + random(-difx, difx), this.p.get(i-1).y + dify));
    }
  }
  void addForce(Force force){
    if(force.force > 0 && force.radius > 0){
      for(PVector pos : this.p){
        if(PVector.dist(pos, force.pos) < force.radius){
          PVector psub = PVector.sub(pos, force.pos);
          psub.normalize();
          psub.mult(force.force);
          pos.add(psub);
        }
      }     
    }
  }
  void draw(){
    fill(100,0,0,30);
    stroke(0);
    strokeWeight(1);
    rectMode(CORNERS);
   for(int i = 0; i < this.p.size() -1; i++){
      rect(this.p.get(i).x, this.p.get(i).y, 
           this.p.get(i+1).x, this.p.get(i+1).y);
    }
      
  }
}