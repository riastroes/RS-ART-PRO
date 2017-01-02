class Circle{
  PVector pos;
  float size;
  
  Circle(PVector pos, float size){
    this.pos = pos;
    this.size = size;
  }
  
  void draw(){
    stroke(pal[0]);
    fill(pal[1]);
    strokeWeight(1);
    ellipse(this.pos.x, this.pos.y, this.size, this.size);
  }
}