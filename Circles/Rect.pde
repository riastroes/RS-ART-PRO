class Rect{
  PVector pos;
  float radius;
  PVector dir;
  float speed;
  Rect(PVector pos, float radius, float speed){
    this.pos = pos;
    this.radius = radius;
    this.dir = PVector.random2D();
    this.speed = speed;
  }
  void move(){
    this.pos.add(this.dir);
  }
  void changeDir(PVector force){
    this.dir.add(force);
    this.dir.normalize();
  }
  void draw(){
    rectMode(CENTER);
    acolor = color(0,0,255);
    fill(acolor);
    noStroke();
    pushMatrix();
    translate(this.pos.x, this.pos.y);
    rect(0,0,this.radius*2, this.radius*2);
    popMatrix();
  }
}