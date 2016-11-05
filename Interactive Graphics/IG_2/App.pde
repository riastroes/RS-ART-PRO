class App{
  
  String name;
  Palette pal;
  Grid grid;
  
  App(String name){
    
    this.name = name;
    this.pal = new Palette("beautifull");
   this.pal.addHSBColors(333,25,50, 25, 45,10,100);
   this.pal.addHSBColors(265,52,54, 0,100, 2,50);
   this.pal.addHSBColors(40,25,49, 44,75, 2,100);
    //this.pal.addColors("gray.png", 10, 30);
    //this.pal.addColors("colors3.png", 1, 30);
    this.grid = new Grid(50,50,30);
    this.grid.disorderRadius(new PVector(800,300),  100);
  }
  
  void draw(){
    //this.grid.show();
    stroke(255);
    fill(r,g,b,size);
    
    strokeWeight(1);
    int i = int(random(this.grid.pos.length));
    PVector pos = new PVector(this.grid.pos[i].x, this.grid.pos[i].y);
    pushMatrix();
      translate(pos.x, pos.y);
      rotate(rot);
      rect(0, 0,size,size, 5);
    popMatrix();
  }
  
}