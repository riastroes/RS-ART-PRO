class Grid{
  PVector pos[][];
  float wmargin;
  float hmargin;
  float cellwidth;
  float cellheight;
  int wmax;
  int hmax;
  
  Grid(int wmax, int hmax){
    this.wmax = wmax;
    this.hmax = hmax;
    this.cellwidth = floor((width)/wmax);
    this.cellheight = floor((height)/hmax);
    
    this.wmargin = (width - (this.cellwidth * (wmax-1)))/2;
    this.hmargin = (height -(this.cellheight * (hmax-1)))/2;
    this.pos = new PVector[wmax][hmax];
    for(int h = 0; h < hmax; h++){
      for(int w = 0 ; w < wmax; w++){
        this.pos[w][h] = new PVector(this.wmargin +( w * this.cellwidth), this.hmargin + (h * this.cellheight));
      }
    }
  }
  void show(){
    stroke(255);
    strokeWeight(3);
    for(int h = 0; h < this.hmax; h++){
        for(int w = 0 ; w < this.wmax; w++){
          point(this.pos[w][h].x, this.pos[w][h].y);
        }
    }   
  }
}