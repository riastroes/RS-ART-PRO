class Grid{
  int maxx;
  int maxy;
  float xwidth;
  float yheight;
  ArrayList<PVector> pos;
  
  Grid(int maxx, int maxy){
    this.maxx = maxx;
    this.maxy = maxy;  
    this.xwidth = pwidth/ maxx;
    this.yheight = pheight/ maxy;
    
    pos = new ArrayList<PVector>();
    for(int y = 0 ; y < this.maxy; y++){
      for(int x = 0 ; x < this.maxx; x++){
        pos.add(new PVector(x * this.xwidth, y * this.yheight));
      }
    }
  }
  PVector get(int x, int y){
    int i = (y * this.maxx) + x;
    return pos.get(i);
  }
  PVector get(int i){
    return pos.get(i);
  }
  
}