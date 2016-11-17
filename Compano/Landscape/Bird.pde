class Bird{
  
  PVector[] pos;
  color acolor;
  float thickness; 
  Bird(PVector pos0, PVector pos1, PVector pos2 , color acolor, float thickness){
    this.pos = new PVector[3];
    this.pos[0] = pos0;
    this.pos[1] = pos1;
    this.pos[2] = pos2;
    this.acolor = acolor;
    this.thickness = thickness;
  }
  
  void draw(){
    stroke(this.acolor);
    noFill();
    strokeWeight(this.thickness);
    beginShape();
      curveVertex(this.pos[0].x, this.pos[0].y);
      curveVertex(this.pos[0].x, this.pos[0].y);
      curveVertex(this.pos[1].x, this.pos[1].y);
      curveVertex(this.pos[2].x, this.pos[2].y);
      curveVertex(this.pos[2].x, this.pos[2].y);
    endShape();
  }
}