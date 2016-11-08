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
    Arect.add( new Rect(new PVector((width/2)-400,0), 400, height-100, 5,50));
    Arect.add( new Rect(new PVector((width/2)-400,0), 800, height-100, 21,30));
   
   
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    noFill();
    
    
    Rect r  =Arect.get(0);
    Rect s = Arect.get(1);
    
    stroke(this.pal1.colors[1]);
    s.grid.projectOnCylinder(new PVector(width/2,40), 400, 80);
    //s.grid.disorderByVector(new PVector(width/2,height/2),-90);
    //s.grid.disorderByVector(new PVector(width/2,height/3),140);
    //s.grid.disorderByVector(new PVector(width/2,height-50),-180);
    //for(int h = 10; h < 15; h++){
    //    s.grid.disorderRow(h, -90);
    //  }
   // s.grid.move(new PVector(width/2,30));
    s.addGraphics();
    s.draw(); 
    
    
    
     
      //r.grid.projectOnCylinder(new PVector(width/2, 80), width/2, 80);
      //r.grid.disorderSin(2);
      //for(int h = 20; h < 30; h++){
      //  r.grid.disorderRow(h, -90);
      //}
      //for(int h = 50; h < 60; h++){
      //  r.grid.disorderRow(h, 60);
      //}
      //for(int h = 80; h < 91; h++){
      //  r.grid.disorderRow(h, -60);
      //}
      //r.grid.disorderByVector(new PVector(width/2,45),70);
      
      //  r.grid.move(new PVector((width/2),120));
      
      //stroke(this.pal1.colors[0]);
      //r.addGraphics();
     // r.draw();
      
    
    
    
     //<>// //<>//
    
  }
  
}