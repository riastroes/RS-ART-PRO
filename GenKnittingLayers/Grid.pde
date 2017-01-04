/* Ria Stroes */
/* @updated: 5 november 2016 */


class Grid{
  PVector position;
  int wmax;
  int hmax;
  float cellwidth;
  float cellheight;
  PVector center;
  
  PVector[] pos;
  
  
  
   Grid(PVector pos, float maxwidth, float maxheight, int wmax, int hmax){
    this.wmax = wmax;
    this.hmax = hmax;
    this.cellwidth = maxwidth / this.wmax;
    this.cellheight = maxheight / this.hmax;
    this.position = pos;
    this.center = pos.copy();
    this.center.add(new PVector(maxwidth/2, maxheight/2));
    
   
    
    this.pos = new PVector[this.hmax * this.wmax];
    float x, y;
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        x = ( w * this.cellwidth) + (this.cellwidth/2);
        y = ( h * this.cellheight) + (this.cellheight/2);
        this.pos[(h* this.wmax)+ w] = new PVector(x,y);
        this.pos[(h* this.wmax)+ w].add(this.position);
      }
    }
  }
  void disorderRow(int row, PVector factor){
        
    
   for(int x = 0 ; x < this.wmax; x++){
     this.pos[(row*this.wmax) + x].add(factor);
   }
     
  }
   void disorderCol(int col, PVector factor){
        
    
   for(int y = 0 ; y < this.hmax; y++){
     this.pos[(y*this.wmax) + col].add(factor);
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
  
  int mouse(float x, float y){
    int xx = floor((x-(this.position.x)) /( this.cellwidth));
    int yy = floor((y-(this.position.y)) / (this.cellheight));
    return (yy * this.wmax) + xx;
  }
  PVector get(int x, int y){
    int i = (y * this.wmax) + x;
    return this.pos[i];
  }
  void show(){
    strokeWeight(1);
    stroke(0);
    noFill();
    //rect(this.position.x, this.position.y, this.cellwidth, this.cellheight);
    strokeWeight(1);
    for(PVector p : pos){
      point(p.x, p.y);
     }
  }
  
}