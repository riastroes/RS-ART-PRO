class Graphics{
  float gwidth;
  float gheight;
  PVector pos;
  PVector[] p;
  int points;
  
  
  Graphics(PVector pos, float gwidth, float gheight, int points){
    this.pos = pos;
    this.gwidth = gwidth;
    this.gheight = gheight;
    this.points = points;
    this.p = new PVector[points];
    construct();
  }
  
  void construct(){
    for (int i = 0; i < this.points; i++) {
        this.p[i] = new PVector();
    }
    if(this.points == 4){
      this.p[0].x = this.pos.x;
      this.p[0].y = this.pos.y;
      this.p[1].x = this.pos.x + this.gwidth;
      this.p[1].y = this.pos.y;
      this.p[2].x = this.pos.x;
      this.p[2].y = this.pos.y + this.gheight;
      this.p[3].x = this.pos.x + this.gwidth;
      this.p[3].y = this.pos.y + this.gheight;
    }
    if(this.points == 9){
      this.p[0].x = this.pos.x;
      this.p[0].y = this.pos.y;
      this.p[1].x = this.pos.x + (this.gwidth/2);
      this.p[1].y = this.pos.y;
      this.p[2].x = this.pos.x + this.gwidth;
      this.p[2].y = this.pos.y;
      
      this.p[3].x = this.pos.x;
      this.p[3].y = this.pos.y + (this.gheight/2);
      this.p[4].x = this.pos.x + (this.gwidth/2);
      this.p[4].y = this.pos.y + (this.gheight/2);
      this.p[5].x = this.pos.x + this.gwidth;
      this.p[5].y = this.pos.y + (this.gheight/2);
      
      this.p[6].x = this.pos.x;
      this.p[6].y = this.pos.y + this.gheight;
      this.p[7].x = this.pos.x + (this.gwidth/2);
      this.p[7].y = this.pos.y + this.gheight;
      this.p[8].x = this.pos.x + this.gwidth;
      this.p[8].y = this.pos.y + this.gheight;
    }
  }
  
  Graphics(PVector pos, PVector pos1, PVector pos2, PVector pos3){
    
    this.pos = pos;
    this.p = new PVector[9];
    
    for (int i = 0; i < this.p.length; i++) {
      this.p[i] = new PVector();
    }
    
    this.p[0].x = pos.x;
    this.p[0].y = pos.y;
    this.p[1].x = (pos.x + pos1.x)/2;
    this.p[1].y = (pos.y + pos1.y)/2;
    this.p[2].x = pos1.x;
    this.p[2].y = pos1.y;
    this.p[3].x = (pos.x + pos2.x)/2;
    this.p[3].y = (pos.y + pos2.y)/2;
    this.p[4].x = (pos1.x + pos2.x)/2;
    this.p[4].y = (pos1.y + pos2.y)/2;
    this.p[5].x = (pos1.x + pos3.x)/2;
    this.p[5].y = (pos1.y + pos3.y)/2;
    this.p[6].x = pos2.x;
    this.p[6].y = pos2.y;
    this.p[7].x = (pos2.x + pos3.x)/2;
    this.p[7].y = (pos2.y + pos3.y)/2;
    this.p[8].x = pos3.x;
    this.p[8].y = pos3.y;
    
  }
  
  
  public void texture9(String code){
     int[] icode = int(split(code," "));    
     beginShape();
       for(int i = 0; i < icode.length; i++)
       {
           vertex(this.p[icode[i]].x, this.p[icode[i]].y);
       }
      
     endShape(CLOSE);
  }   
  
  
  
}