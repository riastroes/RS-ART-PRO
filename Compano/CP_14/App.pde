class App{
  
  String name;
  Palette pal1, pal2;
  ArrayList<Rect> Arect;
  int a;
  
  
  App(String name){
    
    this.name = name;
    this.pal1 = new Palette("gray");
    this.pal1.addColor(color(#000033));
    this.pal1.addColor(color(#aa0000));
    this.pal1.addRGBColors("grijsblauw.png", 1, 255);
    this.pal1.addRGBColors("zw.png", 12,255);
    //this.pal1.addRGBColors("colors3.png", 2, 255);
   ///this.pal1 = new Palette("paars");
    
    Arect = new ArrayList<Rect>();
    Arect.add( new Rect(new PVector((width/2)-400,0), 800, height-100, 79,100));
   
   
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    noStroke();
    //stroke(0);
    //strokeWeight(1);
    //noFill();
    
    for(Rect r : Arect){
     
      r.grid.projectOnCylinder(new PVector(width/2, 80), width/2, 80);
      r.grid.disorderSin(2);
      for(int h = 20; h < 30; h++){
        r.grid.disorderRow(h, -90);
      }
      for(int h = 50; h < 60; h++){
        r.grid.disorderRow(h, 60);
      }
      for(int h = 80; h < 91; h++){
        r.grid.disorderRow(h, -60);
      }
      r.grid.disorderByVector(new PVector(width/2,45),70);
      
      //r.grid.disorderByVector(new PVector(width/2, (height/2)),-83);
      //r.grid.disorderByVector(new PVector(width/2, (height/3)),83);
      //r.grid.disorderByVector(new PVector(width/2, ((height/3)*2) + 200),153);
      //r.grid.disorderByVector(new PVector((width/2)-685, (height/3)*2 + 200),183);
      //r.grid.disorderByVector(new PVector((width/2)+500, (height/3)*2 + 200),183);
      
      //r.grid.disorderByVector(new PVector(width/2, 150),300);
      //r.grid.disorderByVector(new PVector(width/2,920),100);
      r.grid.move(new PVector((width/2),120));
      
      r.addGraphics();
      r.draw();
      
      
    }
    
    noLoop();
     //<>//
    
  }
  
}