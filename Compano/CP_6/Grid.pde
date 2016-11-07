/* Ria Stroes */
/* @updated: 5 november 2016 */


class Grid{
  int wmax;
  int hmax;
  float cellwidth;
  float cellheight;
  float lmargin, rmargin, tmargin, bmargin;
  PVector[] pos;
  
  Grid(float maxwidth, float maxheight, float cellwidth, float cellheight){
    this.cellwidth = cellwidth;
    this.cellheight = cellheight;
   
    this.wmax = int(maxwidth/this.cellwidth);
    this.lmargin = (width - (this.wmax * this.cellwidth)) / 2;
    this.rmargin = this.lmargin;
    
    this.hmax = int(maxheight/this.cellheight);
    this.tmargin = (height -(this.hmax * this.cellheight))/2;
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
  
  //Grid(float maxwidth, float maxheight, float cellwidth, float cellheight, float wmargin, float hmargin){
  //  this.cellwidth = cellwidth;
  //  this.cellheight = cellheight;
  //  this.widthmargin = wmargin;
  //  this.heightmargin = hmargin;
   
  //  this.wmax = int((maxwidth- (2*wmargin))/this.cellwidth);
  //  this.lmargin = (maxwidth - (this.wmax * this.cellwidth)) / 2;
  //  this.rmargin = this.lmargin;
    
  //  this.hmax = int((maxheight- (2*hmargin))/this.cellheight);
  //  this.tmargin = (maxheight - (this.hmax * this.cellheight))/2;
  //  this.bmargin = this.tmargin;
    
  //  this.pos = new PVector[this.hmax * this.wmax];
  //  float x, y;
  //  for(int h = 0; h < this.hmax; h++){
  //    for( int w = 0 ; w < this.wmax; w++){
  //      x = this.lmargin + ( w * this.cellwidth) + (this.cellwidth/2);
  //      y = this.tmargin + ( h * this.cellheight) + (this.cellheight/2);
  //      this.pos[(h* this.wmax)+ w] = new PVector(x,y);
  //    }
  //  }  
  //}
  
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
  void disorderRadius(PVector center, float radius,  float force){
    PVector dis;
    float distance = 0;
    
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        distance = dist(center.x, center.y, this.pos[(h* this.wmax)+ w].x, this.pos[(h* this.wmax)+ w].y);
        
        if(distance < radius){
          dis = center.copy();
          dis.sub(this.pos[(h* this.wmax)+ w]);
          dis.normalize();
          dis.mult(force);
          this.pos[(h* this.wmax)+ w].add(dis);
        }
      }
    }  
  }
  void disorderByVector(PVector center, float force){
    PVector dis;
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        
        
          dis = center.copy();
          dis.sub(this.pos[(h* this.wmax)+ w]);
          dis.normalize();
          dis.mult(force);
          this.pos[(h* this.wmax)+ w].add(dis);
        
      }
    }  
  }
  void move(PVector to){
    PVector move = to.sub(this.pos[0]);
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
          this.pos[(h* this.wmax)+ w].add(move);       
      }
    }  
  }
  void scale(float factor){
    
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        this.pos[(h* this.wmax)+ w].x *= factor;
        this.pos[(h* this.wmax)+ w].y *= factor;
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
  void projectOnCylinder(PVector center, float cylinderwidth, float cylinderheight){
    
    
    PVector[] p = new PVector[this.wmax];
    float anglestep = TWO_PI/this.wmax;
    for(int i = 0; i < p.length; i++){
      p[i] = new PVector(0,0);
      p[i].x = center.x + ((cylinderwidth/2) * sin(anglestep * i));
      p[i].y = center.y + ((cylinderheight/2) * cos(anglestep * i));
    }
    
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        this.pos[(h* this.wmax)+ w].x =  p[w].x;
        this.pos[(h* this.wmax)+ w].y = p[w].y + (h*this.cellheight);
      }
    } 
  }
  
  void show(){
    
    for(PVector p : pos){
      
      point(p.x, p.y);
      
    }
  }
  
}