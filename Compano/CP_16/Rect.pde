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
                             this.grid.pos[i+this.wmax],this.grid.pos[i+this.wmax+1]));
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
  void createCollection(){
    //one
     this.collection.add("0 1 4 3"); 
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
     this.collection.add("0 2 8 6"); 
     this.collection.add("1 5 7 3"); 
   //three -scheef
     this.collection.add("0 2 8 7 4"); 
     this.collection.add("1 2 8 6 4"); 
     this.collection.add("0 1 4 8 6"); 
     this.collection.add("0 2 4 7 6"); 
  }
  void show(){
    rect(this.pos.x, this.pos.y, this.rectwidth, this.rectheight);
    for(int i = 0; i < this.grid.pos.length; i++){
      point(this.grid.pos[i].x, this.grid.pos[i].y);
    }
  }
  void draw(){
   int c = 0;
   for(Graphics g : this.graphics){
     g.texture9(this.collection.get(c));
     
   }
  }
}
    