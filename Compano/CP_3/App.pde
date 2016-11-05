class App{
  
  String name;
  Palette pal1;
  Grid grid;
  //Circle circle;
  //ArrayList<Graphics> graphics;
  
  App(String name){
    
    this.name = name;
    this.pal1 = new Palette("gray");
    this.pal1.addRGBColors("zw.png", 10, 10);
    //this.pal1 = new Palette("paars");
    //this.pal1.addRGBColors("paars.png", 4, 255);
    
    this.grid = new Grid(280, 280, 30,30);
    
   
    this.init();
  }
  
  void init(){
   
  }
  void draw(){
    background(255);
    stroke(0);
    strokeWeight(3);
    this.grid.projectOnCylinder(new PVector((width/2),this.grid.tmargin), this.grid.wmax * this.grid.cellwidth, (this.grid.wmax * this.grid.cellwidth)/4);
    this.grid.show();
    
  }
  
}