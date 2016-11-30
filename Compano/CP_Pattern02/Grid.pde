class Grid{
  int maxx;
  int maxy;
  float xwidth;
  float yheight;
  ArrayList<PVector> pos;
  int size;
  
  Grid(float maxwidth, float maxheight, int maxx, int maxy){
    this.maxx = maxx;
    this.maxy = maxy;  
    this.xwidth = maxwidth/ maxx;
    this.yheight = maxheight/ maxy;
    
    this.pos = new ArrayList<PVector>();
    for(int y = 0 ; y < this.maxy; y++){
      for(int x = 0 ; x < this.maxx; x++){
        this.pos.add(new PVector(x * this.xwidth, y * this.yheight));
      }
    }
    this.size = pos.size();
  }
  PVector get(int x, int y){
    int i = (y * this.maxx) + x;
    return this.pos.get(i);
  }
  PVector get(int i){
    return this.pos.get(i);
  }
  void show(){
    for(int i = 0; i < this.size; i++){
    
      point(this.pos.get(i).x, this.pos.get(i).y);
    }
  }
  
}