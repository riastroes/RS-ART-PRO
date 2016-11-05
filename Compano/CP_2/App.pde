class App{
  
  String name;
  Palette pal, pal1, pal2;
  Grid grid;
  Circle circle;
  ArrayList<Graphics> graphics;
  
  App(String name){
    
    this.name = name;
    this.pal = new Palette("gray");
    this.pal.addRGBColors("zw.png", 10, 255);
    this.pal1 = new Palette("paars");
    this.pal1.addRGBColors("paars.png", 4, 255);
    
    this.grid = new Grid(4000, 4000, 30,30,0,0);
    this.circle = new Circle(new PVector(2000, 2000),1500);
    this.graphics = new ArrayList<Graphics>();
   
    this.init();
  }
  
  void init(){
   
  }
  void draw(){
    this.grid.show();
    
  }
  
}