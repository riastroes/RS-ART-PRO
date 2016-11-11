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
    Arect.add( new Rect(new PVector(width*0.12,height*0.25), width/3, height*0.65, 20,30));
    Arect.add( new Rect(new PVector(width*0.20,height*0.15), width/2, height*0.75, 40,80));
    Arect.add( new Rect(new PVector(width*0.40,height*0.35), width/2, height*0.45, 20,40));
    Arect.add( new Rect(new PVector(width*0.60,height*0.15), width/3, height*0.75, 50,30));
    Arect.add( new Rect(new PVector(width*0.55,height*0.10), width/4, height*0.85, 30,70));
    Arect.add( new Rect(new PVector(width*0.75,height*0.20), width/3, height*0.65, 60,100));
    Arect.add( new Rect(new PVector(width*0.85,height*0.45), width/4, height*0.50, 40,30));
    
   
    a = 60;
   frameRate(1);
    
  }
  
   
  void draw(){
    background(255);
    
    fill(this.pal1.colors[1]);
    
    
    
    for(Rect s : Arect){
    
    stroke(0);
    s.grid.projectOnCylinder(s.grid.pos[0], random(140,300), 0);
    
    s.grid.disorderRow(1, width/10);
    s.grid.disorderRow(3, width/10);
    s.grid.disorderRow(10,-35);
    s.grid.disorderRow(11,-35);
    s.grid.disorderRow(12,-35);
    s.grid.disorderRow(13,-35);
    s.grid.disorderRow(14,-35);
    s.grid.disorderRow(15,-35);
    if(s.grid.hmax > 30){
      s.grid.disorderHeight(25,-12);
      s.grid.disorderHeight(29,49);
      s.grid.disorderHeight(35,49);
      s.grid.disorderHeight(39,49);
      
      if(s.grid.hmax > 50){
       //s.grid.disorderRow(51,-20);
       s.grid.disorderRow(52,20);
       s.grid.disorderRow(54,-20);
        s.grid.disorderRow(56,20);
        s.grid.disorderRow(58,-20);
        s.grid.disorderRow(60,20);
        
        s.grid.disorderHeight(69,69);
        s.grid.disorderRow(69,-40);
        s.grid.disorderRow(69,-40);
      }
      if(s.grid.hmax > 80){
       //s.grid.disorderRow(51,-20);
        s.grid.disorderHeight(81,40);
       // s.grid.disorderHeight(82,69);
        s.grid.disorderHeight(88,40);
        
        
      }
    }
    s.addGraphics();
    s.draw(); 
    }
    
    //<>//
  }
  
}