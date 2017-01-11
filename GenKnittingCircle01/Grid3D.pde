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
  PVector last;
  
  
  
   Grid(PVector pos, float maxwidth, float maxheight, int wmax, int hmax){
    this.wmax = wmax;
    this.hmax = hmax;
    this.cellwidth = maxwidth / this.wmax;
    this.cellheight = maxheight / this.hmax;
    this.position = pos;
    this.center = pos.copy();
    this.center.add(new PVector(maxwidth/2, maxheight/2,0));
    
    
    this.pos = new PVector[this.hmax * this.wmax];
    float x, y, z;
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        x = ( w * this.cellwidth);// + (this.cellwidth/2);
        y = ( h * this.cellheight);// + (this.cellheight/2);
        z = 0;
        this.pos[(h* this.wmax)+ w] = new PVector(x,y,z);
        this.pos[(h* this.wmax)+ w].add(this.position);
      }
    }
    this.last = this.pos[0].copy();
    
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
    PVector up = new PVector(0,-force,0);
    PVector down = new PVector(0,force,0);
    
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
  void disorderCols(int begincol, int endcol, float grow){
      float g;
      for(int h = 0; h < this.hmax; h++){
        g = 1;
        for(int w = begincol; w < endcol; w++){
          g += grow;
           this.pos[(h* this.wmax)+ w].mult(g);
           println("grown");
        }
    }
}
  void projectOnCircle(PVector center, float radius){
    for(int h =0; h< this.hmax; h++){
      for(int w =0; w< this.wmax; w++){
      this.pos[(h* this.wmax)+ w].x = center.x +((radius - (radius/this.hmax) * h) *sin((TWO_PI/this.wmax)*w));
      this.pos[(h* this.wmax)+ w].y = center.y +((radius - (radius/this.hmax) * h) * cos((TWO_PI/this.wmax)*w));
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
  
  int pos(float x, float y){
    int xx = floor((x-(this.position.x)) /( this.cellwidth));
    int yy = floor((y-(this.position.y)) / (this.cellheight));
    return (yy * this.wmax) + xx;
  }
  
  PVector get(int x, int y, int z){
    int i = (y * this.wmax) + x;
    this.pos[i].z = z;
    return this.pos[i];
  }
  PVector get(int x, int y){
    int i = (y * this.wmax) + x;
    this.pos[i].z = 0;
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
  void showPoint(int x, int y){
    
    stroke(255,0,0);
    noFill();
    //rect(this.position.x, this.position.y, this.cellwidth, this.cellheight);
    strokeWeight(3);
    
    point(this.pos[(y * this.wmax) + x].x, this.pos[(y * this.wmax) + x].y);
  }
  
}