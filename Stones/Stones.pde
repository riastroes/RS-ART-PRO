/* Stone decorations
/*
/* Ria stroes
/* 1 december 2016
/*
*/
ArrayList<Stone> stones;
ArrayList<PVector> pos;
color[] pal;
IntList ipos;
IntList iswitch;


void setup(){
  size(1680,1000);
  
 
  pal = new color[5];
  pal[0] = color(0);
  pal[1] = color(255);
  pal[2] = color(128);
  pal[3] = color(128,0,0);
  pal[4] = color(200);
  
  ipos = new IntList();
  iswitch = new IntList();
  
  background( pal[2]);
  int count;
  pos = new ArrayList<PVector>();
  stones = new ArrayList<Stone>();
  count = 0;
  PVector apos;
   for(int y = 10; y < this.height; y += 55 ){
     
     for(int x = 5; x < this.width - 120; x+= 210){
      apos =new PVector(x, y);
      if(count % 2 == 1){
        apos.x -= 106;
      }
      pos.add(apos);
      stones.add(new Stone(200, 45, 0, apos ));
      
    }
    count++;
  }
 
 
 
  
  
}
void draw(){
  for(int i = 0 ; i < this.pos.size(); i++){
    //if(stones.get(i).pos.x >= 0  && stones.get(i).pos.x < this.width -200){
    //stones.get(i).draw(int(random(this.pos.size())));
    //}
    //else{
       stones.get(i).draw(0);
    //}
  }
  for(int i = 0; i < ipos.size(); i++){
    stones.get(ipos.get(i)).draw(iswitch.get(i));
  }
}
void mousePressed() {
   int i =int( ((mouseY /55) * 8) + (mouseX /210));
   //<>//
   ipos.append(i);
   iswitch.append(int(random(this.pos.size())));
}