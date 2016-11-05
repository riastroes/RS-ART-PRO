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
    //this.circle = new Circle(new PVector(2000, 2000),1500);
    //this.graphics = new ArrayList<Graphics>();
   
    this.init();
  }
  
  void init(){
   
  }
  void draw(){
    background(255);
    stroke(this.pal1.colors[0]);
    strokeWeight(10);
    this.grid.show();
    
  }
  
}