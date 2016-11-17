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
    this.grid = new Grid(pos, rectwidth, rectheight, wmax, hmax); //<>// //<>//
    this.graphics = new ArrayList<Graphics>();
    this.collection = new ArrayList<String>();
    
    this.createCollection();
    
    
  }
  void addGraphics(){
    int i;
    for(int h = 0; h <this.hmax - 1; h++){  
      for(int w = 0; w <this.wmax - 1; w++){  
       i = (h * this.wmax) + w;
       if(i+this.wmax + 1 < this.grid.pos.length ){
         if(this.grid.pos[i].x == 0 && this.grid.pos[i].y == 0){
             this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],
                             this.grid.pos[i+this.wmax],this.grid.pos[i+this.wmax + 1],20));
         }
       }
     }
    }
  }
 
  void createCollection(){
   
    //this.collection.add("2 7 10 17 12 9 5 2 7 10");
    //this.collection.add("1 11 17 12 8 9 4 1 11 17");
    //this.collection.add("0 2 10 13 15 19 16 8 0 2 10");
     this.collection.add("0 1 5 6 2 3 10 15 19 18 14 13 17 16 12 9 4 0 1 5");
    
    
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
     
        fill(app.pal.colors[c%3]);
       beginShape();
       if(c % 6 == 0){
         
       g.texture20(this.collection.get(0));
       }
       else if(c % 6 == 1){
       g.texture20(this.collection.get(0));
       }
       else if(c % 6 == 2){
       g.texture20(this.collection.get(0));
       }
       endShape();
     
     c++;
     
   }
   
  }
}
    