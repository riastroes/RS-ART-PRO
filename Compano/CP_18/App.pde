class App{
  
  String name;
  Palette pal1, pal2;
  ArrayList<Rect> Arect;
  int a;
  
  
  App(String name){
    
    this.name = name;
    this.pal1 = new Palette("gray");
    this.pal1.addColor(color(#000033));
    this.pal1.addColor(color(#800000));
    this.pal1.addColor(color(#009933),50);
    this.pal1.addRGBColors("grijsblauw.png", 1, 255);
    this.pal1.addRGBColors("zw.png", 12,255);
  
    
    Arect = new ArrayList<Rect>();
    Arect.add( new Rect(new PVector((width/2)-400,0), 800, height, 120,180));
    
   
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    
    noFill();
    
    
    
    Rect s = Arect.get(0);
    
    stroke(this.pal1.colors[1]);
    s.grid.projectOnCylinder(new PVector(width/2,80), 1800, 1560);
  
    s.grid.disorderByVector(new PVector(width/2,(height/3)*1.6),-180);
    s.grid.disorderByVector(new PVector(width/2,height/6),680);
   
   s.grid.disorderByVector(new PVector((width/2),height+200),-380);
      
    s.grid.scale(0.8); 
    s.grid.move(new PVector(width/2,100));   
    
    s.addGraphics();
    s.draw(); 
    //<>// //<>//
  }
  
}