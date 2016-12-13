class World{
 int max;
 int[] stock;
 
 World(int max){
   this.max = max;
   stock = new int[this.max];
   this.init();
   
 }
 void init(){
   for(int i =0; i< this.max; i++){
     this.stock[i] = 2;
   }
 }
 void load(){
    updatePixels();
   loadPixels();
 }
 void update(){
  
   
 }
 boolean eat(int i){
    boolean ok = false;
    if(pixels[i] == color(255)){ //<>//
      ok = true;
      
    }
    return ok;
 }
 void draw(){
   for(int i = 0; i < max; i++){
     
     if(this.stock[i] < 2){
       int x = i % width;
        int y = int(i /width);
       stroke(0);
       point(x,y);
     }
   }
 }
   
}