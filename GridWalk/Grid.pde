class Grid{
  int wmax;
  int hmax;
  float cellwidth;
  float cellheight;
  float margin;
  float lmargin, rmargin, tmargin, bmargin;
  PVector[] pos;
  
  Grid(float cellwidth, float cellheight, float margin){
    this.cellwidth = cellwidth;
    this.cellheight = cellheight;
    this.margin = margin;
   
    this.wmax = int((width- (2*margin))/this.cellwidth);
    this.lmargin = (width - (this.wmax * this.cellwidth)) / 2;
    this.rmargin = this.lmargin;
    
    this.hmax = int((height- (2*margin))/this.cellheight);
    this.tmargin = (height - (this.hmax * this.cellheight)) / 2;
    this.bmargin = this.tmargin;
    
    this.pos = new PVector[this.hmax * this.wmax];
    float x, y;
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        x = this.lmargin + ( w * this.cellwidth) + (this.cellwidth/2);
        y = this.tmargin + ( h * this.cellheight) + (this.cellheight/2);
        this.pos[(h* this.wmax)+ w] = new PVector(x,y);
      }
    }  
  }
  void show(){
    noStroke();
    fill(0);
    for(PVector p : pos){
      ellipse(p.x, p.y, 1,1);
    }
  }
  void disorderSin(float force){
    PVector up = new PVector(0,-force);
    PVector down = new PVector(0,force);
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        if((w + h) % 4 == 1){
          this.pos[(h* this.wmax)+ w].add(up);
        }
        else if((w + h) % 4 == 3){
          this.pos[(h* this.wmax)+ w].add(down);
        }
      }
    }  
  }
  void disorderRadius(PVector center, float radius, float force){
    PVector dis;
    
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        
          dis = center.copy();
          dis.sub(this.pos[(h* this.wmax)+ w]);
          dis.normalize();
          this.pos[(h* this.wmax)+ w].add(dis);
        
      }
    }  
  }
  PVector getRandomPos(){
    int a = int(random(this.pos.length));
    return this.pos[a];
  }
  int getRandomIndex(){
    int a = int(random(this.pos.length));
    return a;
  }
  
}