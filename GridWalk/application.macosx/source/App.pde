class App{
  
  String name;
  Palette pal;
  Grid grid;
  ArrayList<Walker> walkers;
  
  App(String name){
    this.name = name;
    this.pal = new Palette("beautifull","blauw.png", 9, 30);
    this.pal.addColors("gray.png", 10, 30);
    this.pal.addColors("colors3.png", 1, 30);
    this.grid = new Grid(50,50,30);
    
    this.walkers = new ArrayList<Walker>();
    for(int i = 0; i < 20; i++){
      this.walkers.add (new Walker(this.grid, this.grid.getRandomIndex(), this.pal.acolors[i]));
    }
  }
  
}