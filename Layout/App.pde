class App {
  Grid grid;
  Rect[] rectangles;
  App() {
    this.grid = new Grid(30, 8);
    this.rectangles = new Rect[(this.grid.wmax-1) * (this.grid.hmax-1)];
    for(int w = 0; w < this.grid.wmax-1; w++){
      for(int h = 0; h < this.grid.hmax-1; h++){     
        int i = (h * (this.grid.wmax-1)) + w;
        this.rectangles[i]= new Rect(this.grid, w, h,5);
      }
    }
  }
  
  
  void draw(){
    for(Rect r : this.rectangles){
      r.draw();
    }
    
  }
    
}