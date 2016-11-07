class Etage{
  
  int nr;
  Grid grid;
  ArrayList<Graphics> graphics;
  
  Etage(int nr, float maxwidth, float maxheight, float cellwidth, float cellheight){
    this.nr = nr;
    this.grid = new Grid(maxwidth, maxheight, cellwidth, cellheight);
    this.graphics = new ArrayList<Graphics>();
  }
  
  void construct(PVector center){
    
    this.grid.projectOnCylinder(new PVector((width/2),this.grid.tmargin), this.grid.wmax * this.grid.cellwidth, (this.grid.wmax * this.grid.cellwidth)/4);
    this.grid.move(center);
  }
  void create(int nr){
    if(nr == 1){
    for(int i = 0; i < this.grid.pos.length -1 -this.grid.wmax; i++){      
       this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],
                             this.grid.pos[i+this.grid.wmax+1],this.grid.pos[i+this.grid.wmax]));
     }
    }
    else if(nr == 2){
      this.grid.disorderByVector(this.grid.pos[0],-50);
      for(int i = 0; i < this.grid.pos.length-1 -this.grid.wmax; i++){      
       this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],
       this.grid.pos[i+this.grid.wmax],this.grid.pos[i+this.grid.wmax+1]));
     }
     
    }
    else if(nr == 3){
      this.grid.disorderByVector(this.grid.pos[3],50);
      for(int i = 0; i < this.grid.pos.length -3; i++){      
       this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],this.grid.pos[i+2],this.grid.pos[i+3]));
     }
    }
  }
  void show(){
    this.grid.show();
  }
  void draw(){
     for(Graphics g : this.graphics){
       g.draw();
     }
  }
  
}   