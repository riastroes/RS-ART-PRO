/* Ria Stroes */
/* @updated: 5 november 2016 */


class Grid{
  PVector position;
  int wmax;
  int hmax;
  float cellwidth;
  float cellheight;
  
  PVector[] pos;
  PVector center; //center cylinder
  float cylinderwidth;
  float cylinderheight;
  
  
  
   Grid(PVector pos, float maxwidth, float maxheight, int wmax, int hmax){
    this.wmax = wmax;
    this.hmax = hmax;
    this.cellwidth = maxwidth / this.wmax;
    this.cellheight = maxheight / this.hmax;
    this.position = pos;
    
   
    
    this.pos = new PVector[this.hmax * this.wmax];
    float x, y;
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        x = ( w * this.cellwidth);
        y = ( h * this.cellheight);
        this.pos[(h* this.wmax)+ w] = new PVector(x,y);
        this.pos[(h* this.wmax)+ w].add(this.position);
      }
    }
  }
  void disorderRow(int row, float factor){
        
    
    PVector[] p = new PVector[this.wmax];
    float anglestep = TWO_PI/this.wmax;
    for(int i = 0; i < p.length; i++){
      p[i] = new PVector(0,0);
      p[i].x = this.center.x + (((this.cylinderwidth/2)+factor) * sin(anglestep * i));
      p[i].y = this.center.y + (((this.cylinderheight/2)+factor) * cos(anglestep * i));
    }
    
    
    for( int w = 0 ; w < this.wmax; w++){
      this.pos[(row* this.wmax)+ w].x =  p[w].x;
      this.pos[(row* this.wmax)+ w].y = p[w].y + (row*this.cellheight);
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
    this.center = center;
    this.cylinderwidth = cylinderwidth;
    this.cylinderheight = cylinderheight;
    
    PVector[] p = new PVector[this.wmax];
    float anglestep = TWO_PI/(this.wmax-1);
    for(int i = 0; i < this.wmax; i++){
      p[i] = new PVector(0,0);
      p[i].x = this.center.x + ((this.cylinderwidth/2) * sin(PI - (anglestep * i)));
      p[i].y = this.center.y + ((this.cylinderheight/2) * cos(PI - (anglestep * i)));
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