class Etage{
  PVector pos;
  int type;
  float unit;
  float width;
  float height;
  float maxx;
  float minx;
  
  
  Etage(PVector pos, int type){
    this.pos  = pos;
    this.type = type;
   
   
    if(this.type == 1){ //computer
      this.width = 80;
      this.height = 200;
      
    }
    else if(this.type == 2){  //monitor
      this.width = 200;
      this.height = 160;
    }
    else if(this.type == 3){ //keyboard
      this.width = 200;
      this.height = 60;
    }
    
    this.minx = this.pos.x - (this.width/2);
    this.maxx = this.pos.x + (this.width/2);
    this.pos.y -= this.height;
    this.pos.x -= this.width / 2;
  }
  void draw(){
    if(this.type == 1){
      drawComputer();
    }
    else if(this.type == 2){
      drawMonitor();
    }
    else if(this.type == 3){
      drawKeyboard();
    }
  }
  void drawComputer(){
   
    rect(this.pos.x,this.pos.y, this.width, this.height,10);
    rect(this.pos.x +10,this.pos.y +40, this.width-20, 20,6);
    rect(this.pos.x +60,this.pos.y +20, 10, 10,6);
  }
  void drawMonitor(){
   
    rect(this.pos.x,this.pos.y, this.width, this.height,10);
    rect(this.pos.x +10,this.pos.y + 10, this.width -20, this.height -20,10);
  }
  void drawKeyboard(){
    
    rect(this.pos.x,this.pos.y, this.width, this.height,10);
    for(int i = 1; i < 16; i++){
      rect(this.pos.x + (i *12), this.pos.y+(10), 8,8);
      rect(this.pos.x + (i *12), this.pos.y+(24), 8,8);
      rect(this.pos.x + (i *12), this.pos.y+(38), 8,8);
   }
 }
}