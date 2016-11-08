class Rect{
  PVector pos;
  float rectwidth;
  float rectheight;
  float cellwidth;
  float cellheight;
  int wmax;
  int hmax;
  Grid grid;
  ArrayList<Graphics> graphics;
  ArrayList<String> collection;
  
  Rect(PVector pos, float rectwidth, float rectheight, int wmax, int hmax){
    this.pos = pos;
    this.rectwidth = rectwidth;
    this.rectheight = rectheight;
    
    this.wmax = wmax;
    this.hmax = hmax;
    this.cellwidth = this.rectwidth / this.wmax;
    this.cellheight = this.rectheight / this.hmax;
    this.grid = new Grid(pos, rectwidth, rectheight, wmax, hmax); //<>//
    this.graphics = new ArrayList<Graphics>();
    this.collection = new ArrayList<String>();
    
    this.createCollection();
    
  }
  void addGraphics(){
    int i = 0;
    int w = 0;
    int h = 0;
    for(h = 0; h < this.hmax - 1; h += 1){  
      for(w = 0; w < this.wmax-1; w += 1){    
       i =(h * this.wmax) + w;
       this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],
                             this.grid.pos[i+this.wmax],this.grid.pos[i+this.wmax+1],20));
     }
     //i = (h * this.wmax) + w;
     //this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[0],
     //                        this.grid.pos[i+this.wmax],this.grid.pos[0]));
    }
    //i = (h * this.wmax) + w;
    // this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[0],
    //                         this.grid.pos[i],this.grid.pos[0]));
  }
  void addGraphics4(){
    for(PVector p : this.grid.pos){
      this.graphics.add(new Graphics(p,this.cellwidth, this.cellheight, 4));
     }
  }
  void addGraphics9(){
    for(PVector p : this.grid.pos){
      this.graphics.add(new Graphics(p,this.cellwidth, this.cellheight, 9));
     }
  }
  void addGraphics20(){
    for(PVector p : this.grid.pos){
      this.graphics.add(new Graphics(p,this.cellwidth, this.cellheight, 20));
     }
  }
  void createCollection(){
    //one
     //this.collection.add("0 1 4 3"); 
     //this.collection.add("1 2 5 4"); 
     //this.collection.add("3 4 7 6"); 
     //this.collection.add("4 5 8 7"); 
   //two
     //this.collection.add("0 2 5 3"); 
     //this.collection.add("3 5 8 6"); 
     //this.collection.add("0 1 7 6"); 
     //this.collection.add("1 2 8 7"); 
   //three
     //this.collection.add("0 2 8 7 4 3"); 
     //this.collection.add("1 2 8 6 3 4"); 
     //this.collection.add("0 1 4 5 8 6"); 
     //this.collection.add("0 2 5 4 7 6"); 
   //four
     //this.collection.add("0 2 8 6"); 
     //this.collection.add("1 5 7 3"); 
   //three -scheef
     //this.collection.add("0 2 8 7 4"); 
     //this.collection.add("1 2 8 6 4"); 
     //this.collection.add("0 1 4 8 6"); 
     //this.collection.add("0 2 4 7 6"); 
   //stitch 20
  // this.collection.add("1 10 17");
  // this.collection.add("17 8 ");
     //this.collection.add("2 6 13 17"); 
     //this.collection.add("17 0 2 17 19 2");
    // this.collection.add(" 1 16 18 1 3 18");
     
     this.collection.add(" 17 13 4 0 3 7 13 18");
     this.collection.add(" 18 14 5 1 ");
      this.collection.add(" 1 5 12 16 19 15 6 2 ");
      this.collection.add(" 2 6 13 17");
  }
  void show(){
    rect(this.pos.x, this.pos.y, this.rectwidth, this.rectheight);
    for(int i = 0; i < this.grid.pos.length; i++){
      point(this.grid.pos[i].x, this.grid.pos[i].y);
    }
  }
  void draw(){
   int c = 0;
   beginShape();
   for(Graphics g : this.graphics){
     if((c%4) == 0){
       g.texture20(this.collection.get(0));
     }
     else if((c%4) == 1){
      g.texture20(this.collection.get(1));
     }
      else if((c%4) == 2){
         g.texture20(this.collection.get(2));
      }
       else if((c%4) == 3){
          g.texture20(this.collection.get(3));
       }
     c++;
     
   }
   endShape();
  }
}
    