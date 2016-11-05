class App{
  
  String name;
  Palette pal, pal1, pal2;
  Grid grid;
  Circle circle;
  ArrayList<Graphics> graphics;
  
  App(String name){
    
    this.name = name;
    this.pal = new Palette("gray");
    this.pal.addRGBColors("gray.png", 10, 255);
    this.pal1 = new Palette("paars");
    this.pal1.addRGBColors("paars.png", 4, 255);
    this.pal2 = new Palette("cool");
    this.pal2.addRGBColors("coolcolors.jpg", 20, 60);
    this.grid = new Grid(4000, 4000, 30,30,0,0);
    this.circle = new Circle(new PVector(2000, 2000),1500);
    this.graphics = new ArrayList<Graphics>();
    println(this.pal.colors.length);
    this.init();
  }
  
  void init(){
    //linker hol
    this.grid.scale(4);
    for(int t = 0 ; t < 15; t++){
      //PVector p1 = new PVector(1200,700+ (t*100));
      PVector p1 = new PVector(6000,6000);
      this.grid.disorderByVector(p1, -t*70);
      
      PVector p2 = new PVector(1400,1400);
      this.grid.disorderByVector(p2, t*50);
      
      
    }
    
    this.circle = new Circle(new PVector(2000, 2000),2000);
    float a;
    for(int k = 0; k < 12; k++){
      a = PI/2;
      for(int y = 0 ; y < 1500; y += 100){
        this.grid.disorderByVector(this.circle.pos(a), 35);
        a += PI/8;
      }
    }
    
    this.circle = new Circle(new PVector(4000, 4000),1500);
    
    for(int k = 0; k < 12; k++){
      a = PI/2;
      for(int y = 0 ; y < 1500; y += 100){
        this.grid.disorderByVector(this.circle.pos(a), 35);
        a += PI/8;
      }
    }
    
    this.grid.disorderMove(new PVector(-2000, -2000));
    
    
    
    
    
    for(int i = 0; i < this.grid.pos.length; i++){
      this.graphics.add(new Graphics(this.grid.pos[i],50,60));
    }
  }
  void draw(){
    //this.grid.show();
    stroke(0);
    //strokeWeight(2);
    //noFill();
    
    int s = this.graphics.size();
    
    for(int i = 0; i < s; i++){
      fill(this.pal2.colors[0]);
      this.graphics.get(i).draw();
    }
    
    //this.circle.show();
  }
  
}