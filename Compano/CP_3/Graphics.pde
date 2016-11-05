class Graphics{
  float gwidth;
  float gheight;
  PVector pos;
  PVector[] p;
  
  
  Graphics(PVector pos, float gwidth, float gheight){
    this.gwidth = gwidth;
    this.gheight = gheight;
    this.pos = pos;
    this.p = new PVector[4];
    
    for (int i = 0; i < this.p.length; i++) {
      this.p[i] = new PVector();
    }
    
    this.p[0].x = pos.x;
    this.p[0].y = pos.y - (this.gheight/2);
    this.p[1].x = pos.x + (this.gwidth/2);;
    this.p[1].y = pos.y;
    this.p[2].x = pos.x;
    this.p[2].y = pos.y + (this.gheight/2);
    this.p[3].x = pos.x - (this.gwidth/2);
    this.p[3].y = pos.y;
    
  }
  
  Graphics(PVector pos, PVector pos1, PVector pos2, PVector pos3){
    this.gwidth = gwidth;
    this.gheight = gheight;
    this.pos = pos;
    this.p = new PVector[4];
    
    for (int i = 0; i < this.p.length; i++) {
      this.p[i] = new PVector();
    }
    
    this.p[0].x = pos.x;
    this.p[0].y = pos.y;
    this.p[1].x = pos1.x;
    this.p[1].y = pos1.y;
    this.p[2].x = pos2.x;
    this.p[2].y = pos2.y;
    this.p[3].x = pos3.x;
    this.p[3].y = pos3.y;
    
  }
  
  
  public void draw(){
    beginShape();
      curveVertex(this.p[0].x, this.p[0].y);
      curveVertex(this.p[1].x, this.p[1].y);
      curveVertex(this.p[2].x, this.p[2].y);
      curveVertex(this.p[3].x, this.p[3].y);
      curveVertex(this.p[0].x, this.p[0].y);
      curveVertex(this.p[1].x, this.p[1].y);
      curveVertex(this.p[2].x, this.p[2].y);
    endShape();
  }
  
}