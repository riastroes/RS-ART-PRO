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
  
    println(width);
    Arect = new ArrayList<Rect>();
    Arect.add( new Rect(new PVector(width*0.12,height*0.25), 800, height*0.65, 20,30));
    Arect.add( new Rect(new PVector(width*0.20,height*0.15), 1000, height*0.75, 40,80));
    Arect.add( new Rect(new PVector(width*0.40,height*0.35), 1100, height*0.45, 40,40));
    Arect.add( new Rect(new PVector(width*0.55,height*0.10), 700, height*0.85, 30,70));
    Arect.add( new Rect(new PVector(width*0.60,height*0.15), 800, height*0.75, 50,30));
    Arect.add( new Rect(new PVector(width*0.80,height*0.20), 1000, height*0.65, 60,100));
    Arect.add( new Rect(new PVector(width*0.90,height*0.45), 700, height*0.50, 40,30));
    
   
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    
    fill(this.pal1.colors[1]);
    
    
    
    for(Rect s : Arect){
    
    stroke(0);
    s.grid.projectOnCylinder(s.grid.pos[0], random(140,200), 20);
    
    s.grid.disorderRow(1, 386);
    s.grid.disorderRow(3, 336);
    s.grid.disorderRow(10,-15);
    s.grid.disorderRow(15,-15);
    if(s.grid.hmax > 30){
      s.grid.disorderHeight(25,-12);
      s.grid.disorderHeight(29,49);
      s.grid.disorderRow(33,-19);
      s.grid.disorderHeight(34,15);
      s.grid.disorderRow(34,15);
      s.grid.disorderHeight(38,20);
      s.grid.disorderRow(38,15);
     ;
     
      if(s.grid.hmax > 50){
        s.grid.disorderRow(51,120);
       s.grid.disorderHeight(69,69);
       s.grid.disorderRow(69,40);
      }
    }
    s.addGraphics();
    s.draw(); 
    }
    
    //<>//
  }
  
}