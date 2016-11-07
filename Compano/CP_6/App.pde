class App{
  
  String name;
  Palette pal1, pal2;
  Grid grid;
  ArrayList<Graphics> graphics;
  Etage etage1, etage2, etage3;
  
  App(String name){
    
    this.name = name;
    this.pal1 = new Palette("gray");
    this.pal1.addRGBColors("zw.png", 10, 20);
    this.pal1.addRGBColors("colors3.png", 2, 50);
    this.pal2 = new Palette("paars");
    this.pal2.addRGBColors("paars.png", 4, 30);
    
    this.grid = new Grid(width*3, height*3, 10,10);
    this.graphics = new ArrayList<Graphics>();
   
   //this.etage1 = new Etage(1,480, 480, 30,30);
   //this.etage1.construct(new PVector(width/2, height-480));
   //this.etage1.create(1);
   //this.etage2 = new Etage(2,480, 480, 10,10);
   //this.etage2.construct(new PVector(width/2, height-(2 *480)));
   
      
   //this.etage2.create(2);
   //this.etage3 = new Etage(3,480, 480, 30,30);
   //this.etage3.construct(new PVector(width/2, height-(3 *480)));
   //this.etage3.create(3);
   
   this.create3();
    
  }
  
  void create3(){
    this.grid.projectOnCylinder(new PVector((width/2),this.grid.tmargin), this.grid.wmax * this.grid.cellwidth, (this.grid.wmax * this.grid.cellwidth)/4);
    
    this.grid.disorderSin(10);
    int max = this.grid.pos.length;
    println(this.grid.wmax);
    for(int i = 10; i < max-58; i+=this.grid.wmax){
      //this.grid.disorderByVector(this.grid.pos[i],0.5);
      this.grid.disorderByVector(this.grid.pos[i+58],1.8);
      this.grid.disorderByVector(this.grid.pos[i],6.5);
      this.grid.disorderByVector(this.grid.pos[i+14],-3);
    }
    this.grid.disorderByVector(this.grid.pos[(max/2)+100],-30);
     for(int i = 0; i < this.grid.pos.length -1 -this.grid.wmax; i++){      
       this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],
                             this.grid.pos[i+this.grid.wmax+1],this.grid.pos[i+this.grid.wmax]));
     }
  }
  
  void create2(){
    this.grid.projectOnCylinder(new PVector((width/2),this.grid.tmargin), this.grid.wmax * this.grid.cellwidth, (this.grid.wmax * this.grid.cellwidth)/4);
     
  }
  void create1(){
    this.grid.projectOnCylinder(new PVector((width/2),this.grid.tmargin), this.grid.wmax * this.grid.cellwidth, (this.grid.wmax * this.grid.cellwidth)/4);
     
  }
  
  void draw(){
    background(255);
    stroke(this.pal2.colors[0]);
    //fill(this.pal2.colors[0]);
    noFill();
    
    
    //this.grid.show();
    int max = this.graphics.size();
    
    for(int i = 0; i < max; i++){
      stroke(this.pal1.colors[i%(this.pal1.colors.length-1)]);
       this.graphics.get(i).draw();
     }
    //this.etage1.draw(); //<>//
    //this.etage2.draw();
    //this.etage3.draw();
    
  }
  
}