class App{
  
  String name;
  Palette pal1, pal2;
  ArrayList<Rect> Arect;
  int a;
  float u;
  
  
  App(String name, float unit){
    
    this.name = name;
    this.u = unit;
    this.pal1 = new Palette("gray");
    this.pal1.addColor(color(#000033));
    this.pal1.addColor(color(#800000));
    this.pal1.addColor(color(#009933),50);
    this.pal1.addRGBColors("grijsblauw.png", 1, 255);
    this.pal1.addRGBColors("zw.png", 12,255);
  
    println(width);
    this.u = 1;
    Arect = new ArrayList<Rect>();
    Arect.add( new Rect(new PVector(width*0.12,height*0.25), width/3, height*0.65, int(20 * this.u),int(30 * this.u)));
    Arect.add( new Rect(new PVector(width*0.20,height*0.15), width/2, height*0.75, int(40 * this.u),int(80 * this.u)));
    Arect.add( new Rect(new PVector(width*0.40,height*0.35), width/2, height*0.45, int(20 * this.u),int(40 * this.u)));
    Arect.add( new Rect(new PVector(width*0.60,height*0.15), width/3, height*0.75, int(50 * this.u),int(30 * this.u)));
    Arect.add( new Rect(new PVector(width*0.55,height*0.55), width/4, height*0.40, int(30 * this.u),int(70 * this.u)));
    Arect.add( new Rect(new PVector(width*0.75,height*0.20), width/3, height*0.65, int(60 * this.u),int(100 * this.u)));
    Arect.add( new Rect(new PVector(width*0.85,height*0.45), width/4, height*0.50, int(40 * this.u),int(30 * this.u)));
    
    //this.u =3.5;
    this.u =1;
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    
    fill(this.pal1.colors[1]);
    
    
    
    for(Rect s : Arect){
    
    stroke(0);
    strokeWeight(3);
    s.grid.projectOnCylinder(s.grid.pos[0], random(140*this.u,300*this.u), 0);
    
    s.grid.disorderRow(1, width/random(8,5));
    //s.grid.disorderRow(3, width/random(10,20));
    s.grid.disorderRow(10,-35*this.u);
    s.grid.disorderRow(11,-35*this.u);
    s.grid.disorderRow(12,-35*this.u);
    s.grid.disorderRow(13,-35*this.u);
    s.grid.disorderRow(14,-35*this.u);
    s.grid.disorderRow(15,-35*this.u);
    if(s.grid.hmax > (30)){
      s.grid.disorderHeight(25,-12*this.u);
      s.grid.disorderHeight(29,49*this.u);
      s.grid.disorderHeight(35,49*this.u);
      s.grid.disorderHeight(39,49*this.u);
      
      if(s.grid.hmax > (50)){
       //s.grid.disorderRow(51,-20);
       s.grid.disorderRow(52,20*this.u);
       s.grid.disorderRow(54,-20*this.u);
        s.grid.disorderRow(56,20*this.u);
        s.grid.disorderRow(58,-20*this.u);
        s.grid.disorderRow(60,20*this.u);
        
        s.grid.disorderHeight(69,69*this.u);
        s.grid.disorderRow(69,-40*this.u);
        s.grid.disorderRow(69,-40*this.u);
      }
      if(s.grid.hmax > (80)){
       //s.grid.disorderRow(51,-20);
        s.grid.disorderHeight(81,40*this.u);
       // s.grid.disorderHeight(82,69);
        s.grid.disorderHeight(88,40*this.u);
        
        
      }
    }
    s.addGraphics();
    s.draw(); 
    }
    
    //<>//
  }
  
}