class App{
  
  String name;
  Palette pal1, pal2;
  Grid grid;
  ArrayList<Graphics> graphics;
  Etage etage1, etage2, etage3;
  
  App(String name){
    
    this.name = name;
    this.pal1 = new Palette("gray");
    this.pal1.addRGBColors("zw.png", 10, 10);
    this.pal2 = new Palette("paars");
    this.pal2.addRGBColors("paars.png", 4, 80);
    
    this.grid = new Grid(width, height, 20,20);
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
    for(int i = 10; i < max; i+=317){
      this.grid.disorderByVector(this.grid.pos[1],50);
      //this.grid.disorderByVector(this.grid.pos[1+50],50);
    }
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
    stroke(0);
    strokeWeight(1);
    fill(this.pal2.colors[0]);
    
    
    //this.grid.show();
    
    for(Graphics g : this.graphics){
       g.draw();
     }
    //this.etage1.draw(); //<>//
    //this.etage2.draw();
    //this.etage3.draw();
    
  }
  
}