class App{
  
  String name;
  Palette pal;
  Grid grid;
  
  App(String name){
    
    this.name = name;
    this.pal = new Palette("beautifull");
    this.pal.addHSBColors(200,25,50, 25, 45,10,100);
    this.pal.addHSBColors(41,52,54, 0,100, 2,50);
   // this.pal.addHSBColors(40,25,49, 44,75, 2,100);
    //this.pal.addColors("gray.png", 10, 30);
    //this.pal.addColors("colors3.png", 1, 30);
    this.grid = new Grid(50,50,30);
  }
  
  void draw(){
    this.grid.show();
    stroke(this.pal.colors[int(random(this.pal.colors.length))]);
    strokeWeight(30);
    point(random(width), random(height));
  }
  
}