class App{
  
  String name;
  Palette pal;
  
  ArrayList<Rect> Arect;
  Rect r,r1;
  int a;
  PImage img;
  
  
  App(String name){
   
   this.img = loadImage("koeiekop.jpg");
   
   this.img.resize(width,height);
   
   
   this.pal = new Palette("nice");
   this.pal.addColor(color(0,90,0), 60);
   this.pal.addColor(color(90,0,0), 60);
   this.pal.addColor(color(200,200,0), 100);
   Arect = new ArrayList<Rect>();
   Arect.add(new Rect(new PVector(0,0),width, height, 100, 50));
   Arect.add(new Rect(new PVector(0,0),width, height, 17, 13));
   
   
    
    r = Arect.get(0);
    r1 = Arect.get(1);
    r.grid.mask(this.img, 30);
    
    //r.grid.disorderHeight(2, 20);
    //r.grid.disorderHeight(3, 10);
    //r.grid.disorderRow(10, 10);
    //r.grid.disorderRow(12, -10);
    //r.grid.disorderRow(14, 10);
    // r.grid.disorderHeight(15, 20);
     
   //r.grid.disorderSin(30);
     
    // r.grid.disorderHeight(25, 50);
    //// r.grid.disorderRow(26, 50);
    // r.grid.disorderRadius(r.grid.pos[2450], 500, 30);
    //r.grid.disorderRadius(r.grid.pos[2450], 400, 60);
    //r.grid.disorderRadius(r.grid.pos[2450], 300, -90);
    //r.grid.disorderRadius(r.grid.pos[2450], 200, 60);
    //r.grid.disorderRadius(r.grid.pos[2450], 100, 30);
    r.addGraphics();
    r1.addGraphics(); //<>//
  }
  
  void draw(){
    
    r.draw();
    r1.draw();
  }
  
}