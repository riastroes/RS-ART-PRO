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
    for(int i = 0; i < ((this.wmax-1) * (this.hmax -1))-1; i++){  
       this.graphics.add(new Graphics(this.grid.pos[i],this.grid.pos[i+1],
                             this.grid.pos[i+this.wmax],this.grid.pos[i+this.wmax+1],20));
     }
    
  }
 
  void createCollection(){
   
     
    this.collection.add("0 5 12 17 18 15 6");
    this.collection.add("0 1 6 13 18");
    this.collection.add("16 13 4 1 2 7 14");
    this.collection.add("16 17 14 5 2");
    
    
    
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
     
     if((c % this.wmax)== this.wmax-1){
       //laatste steek
     }
     else{
       if((c % 4) == 0){
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
     }
     c++;
     
   }
   endShape();
  }
}
    