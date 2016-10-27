class App {
  Grid grid;
  Rect[] rectangles;
  Ellipse[] ellipses;
  App() {
    this.grid = new Grid(30, 8);
    int max = (this.grid.wmax-1) * (this.grid.hmax-1);
    this.rectangles = new Rect[max];
    this.ellipses = new Ellipse[max];
    for(int w = 0; w < this.grid.wmax-1; w++){
      for(int h = 0; h < this.grid.hmax-1; h++){     
        int i = (h * (this.grid.wmax-1)) + w;
        this.rectangles[i]= new Rect(this.grid, w, h, 15,15);
        this.ellipses[i] = new Ellipse(this.grid, w, h);
      }
    }
  }
  
  
  void draw(){
    
    for(Ellipse e : this.ellipses){
      e.draw(); //<>//
    }
    //for(Rect r : this.rectangles){
    //  r.draw();
    //}
    
  }
    
}