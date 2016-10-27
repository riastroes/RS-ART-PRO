class Circle extends Element {
  
  
  
  Circle(PGraphics ppg, float px, float py, float psize, int pnr){
    super(ppg, px,py, pnr);
    size = psize;
  }
  void update(){
    super.update();
    live();
  }
  
  void draw(){
    style(stylenr);
    pg.ellipse(pos.x,pos.y, size,size);
    
  }
}