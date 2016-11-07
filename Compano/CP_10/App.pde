class App{
  
  String name;
  Palette pal1, pal2;
  ArrayList<Rect> Arect;
  int a;
  
  
  App(String name){
    
    this.name = name;
    this.pal1 = new Palette("gray");
    this.pal1.addRGBColors("colors3.png", 1, 255);
    this.pal1.addRGBColors("zw.png", 12, 255);
    //this.pal1.addRGBColors("colors3.png", 2, 255);
   ///this.pal1 = new Palette("paars");
    
    Arect = new ArrayList<Rect>();
    for(int w = 0; w< width; w+= 100){
       Arect.add( new Rect(new PVector(w,0), 100, height, 10,100));
    }
   
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    noStroke();
    //stroke(0);
    //strokeWeight(1);
    //noFill();
    int d = 0;
    for(Rect r : Arect){
      //fill(this.pal1.colors[d]);
      if((d % 2)== 0){
          r.grid.disorderByVector(r.grid.pos[100 + 5],-a);
          r.grid.disorderByVector(r.grid.pos[200 + 5],a);
          r.grid.disorderByVector(r.grid.pos[300 + 5],-a);
          r.grid.disorderByVector(r.grid.pos[400 + 5],a);
          
          r.grid.disorderByVector(r.grid.pos[800 + 5],-a/2);
          r.grid.disorderByVector(r.grid.pos[900 + 5],a/2);
         
      }
      else{
          r.grid.disorderByVector(r.grid.pos[100 + 5],+a);
          r.grid.disorderByVector(r.grid.pos[200 + 5],-a);
          r.grid.disorderByVector(r.grid.pos[300 + 5],+a);
          r.grid.disorderByVector(r.grid.pos[400 + 5],-a);
      }
      r.addGraphics();
      r.draw();
      d+= 1;
      
    }
    
    noLoop();
     //<>//
    
  }
  
}