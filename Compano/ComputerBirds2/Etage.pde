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
      this.width = 40;
      this.height = 100;
      
    }
    else if(this.type == 2){  //monitor
      this.width = 100;
      this.height = 80;
    }
    else if(this.type == 3){ //keyboard
      this.width = 100;
      this.height = 30;
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
   
    rect(this.pos.x,this.pos.y, this.width, this.height,5);
    rect(this.pos.x +5,this.pos.y +20, this.width-10, 10,3);
    rect(this.pos.x +30,this.pos.y +10, 5, 5,3);
  }
  void drawMonitor(){
   
    rect(this.pos.x,this.pos.y, this.width, this.height,10);
    rect(this.pos.x +5,this.pos.y + 5, this.width -10, this.height -10,5);
  }
  void drawKeyboard(){
    
    rect(this.pos.x,this.pos.y, this.width, this.height,5);
    for(int i = 1; i < 16; i++){
      rect(this.pos.x + (i *6), this.pos.y+(5), 4,4);
      rect(this.pos.x + (i *6), this.pos.y+(12),4,4);
      rect(this.pos.x + (i *6), this.pos.y+(18),4,4);
   }
 }
}