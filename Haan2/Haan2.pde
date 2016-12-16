import processing.dxf.*; //<>//



/* Stone decorations
/*
/* Ria stroes
/* 1 december 2016
/*
*/

boolean record = true;

ArrayList<Stone> stones;
ArrayList<PVector> pos;
color[] pal;
IntList ipos;
IntList iswitch;
float stonewidth;
float stoneheight;
 
 
   

void setup(){
  //size(1680,1000);
  size(800,800);
  
 
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
  stoneheight = (this.height-20)/15;
  stonewidth = (this.width-20)/6;
  
  PVector apos;
   for(int y = 10; y < (this.height-20); y += stoneheight ){
     
     for(int x = 10; x < (this.width-20) ; x+= stonewidth){
      apos =new PVector(x, y);
      if(count % 2 == 1){
        apos.x -= stonewidth/2;
      }
      
      pos.add(apos);
      stones.add(new Stone(stonewidth-10, stoneheight-10, 0, apos ));
      
    }
    count++;
  }
   if (record == true) {
    beginRecord(DXF, "haantje.dxf");  // Start recording to the file
  }
  ipos.append(2);
   iswitch.append(int(random(1,5)));
   
   ipos.append(8);
   iswitch.append(int(random(1,5)));
   //ipos.append(12);
   //iswitch.append(int(random(1,5)));
   ipos.append(13);
   iswitch.append(int(random(1,5)));
   ipos.append(14);
   iswitch.append(int(random(1,5)));
   
   ipos.append(19);
   iswitch.append(int(random(1,5)));
   ipos.append(20);
   iswitch.append(int(random(1,5)));
   ipos.append(21);
   
   iswitch.append(int(random(1,5)));
   ipos.append(25);
   iswitch.append(int(random(1,5)));
   ipos.append(26);
   
   iswitch.append(int(random(1,5)));
   ipos.append(28);
   iswitch.append(int(random(1,5)));
   ipos.append(29);
   iswitch.append(int(random(1,5)));
   ipos.append(32);
   iswitch.append(int(random(1,5)));
    ipos.append(34);
   iswitch.append(int(random(1,5)));
   //ipos.append(36);
   //iswitch.append(int(random(1,5)));
    ipos.append(37);
   iswitch.append(int(random(1,5)));
   ipos.append(39);
iswitch.append(int(random(1,5)));
    ipos.append(40);
   iswitch.append(int(random(1,5)));
    ipos.append(41);
   iswitch.append(int(random(1,5)));
   ipos.append(43);
   iswitch.append(int(random(1,5)));
    ipos.append(44);
   iswitch.append(int(random(1,5)));
   ipos.append(46);
   iswitch.append(int(random(1,5)));
    //ipos.append(47);
   //iswitch.append(int(random(1,5)));
    //ipos.append(48);
   //iswitch.append(int(random(1,5)));
    ipos.append(49);
   iswitch.append(int(random(1,5)));
    ipos.append(50);
   iswitch.append(int(random(1,5)));
   ipos.append(52);
   iswitch.append(int(random(1,5)));
    ipos.append(53);
   iswitch.append(int(random(1,5)));
   ipos.append(55);
   iswitch.append(int(random(1,5)));
    ipos.append(56);
    iswitch.append(int(random(1,5)));
    ipos.append(57);
   iswitch.append(int(random(1,5)));
     ipos.append(58);
   iswitch.append(int(random(1,5)));
     ipos.append(59);
   iswitch.append(int(random(1,5)));
   //ipos.append(60);
   //iswitch.append(int(random(1,5)));
   ipos.append(61);
   iswitch.append(int(random(1,5)));
    ipos.append(62);
   iswitch.append(int(random(1,5)));
   ipos.append(63);
   iswitch.append(int(random(1,5)));
    ipos.append(64);
   iswitch.append(int(random(1,5)));
   ipos.append(68);
   iswitch.append(int(random(1,5)));
   ipos.append(69);
   iswitch.append(int(random(1,5)));
    ipos.append(70);
   iswitch.append(int(random(1,5)));
   ipos.append(74);
   iswitch.append(int(random(1,5)));
   ipos.append(75);
   iswitch.append(int(random(1,5)));
   ipos.append(81);
   iswitch.append(int(random(1,5)));
   
    ipos.append(86);
   iswitch.append(int(random(1,5)));
   
   
  
  
}
void draw(){
 
  //noFill();
  //stroke(0);
  //rect(0,0,width-1,height-1);
  //ellipse( 50, 40, 10,10);
  //ellipse(width - 50, 40,10,10);
  //ellipse( width - 50, height- 40, 10,10);
  //ellipse( 50, height- 40, 10,10);
  for(int i = 0 ; i < this.pos.size(); i++){
    if(stones.get(i).pos.x >0){
      
    stones.get(i).draw(0);
     
    }
   
  }
  for(int i = 0; i < ipos.size(); i++){
    stones.get(ipos.get(i)).draw(iswitch.get(i));
  }
if (record == true) {
    endRecord();
    noLoop();
    record = false; // Stop recording to the file
  }
}

void keyPressed() {
  if (key == 'R' || key == 'r') { // Press R to save the file
    record = true;
  }
}
void mousePressed() {
   int mousex = (width/mouseX) % 6;
   int mousey = (height/mouseY) % 15;
   
   
   int i =(mousey * 6 ) + mousex;
  
   ipos.append(i);
   iswitch.append(int(random(this.pos.size())));
}