 //<>//

/* Stone decorations
/*
/* Ria stroes
/* 1 december 2016
/*
*/
import processing.pdf.*;
boolean record = false;

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
  
   ipos.append(2);
   iswitch.append(int(random(1,5)));
   ipos.append(5);
   iswitch.append(int(random(1,5)));
   
   ipos.append(10);
   iswitch.append(int(random(1,5)));
   ipos.append(13);
   iswitch.append(int(random(1,5)));
   ipos.append(15);
   iswitch.append(int(random(1,5)));
    ipos.append(17);
   iswitch.append(int(random(1,5)));
   ipos.append(18);
   iswitch.append(int(random(1,5)));
    ipos.append(20);
   iswitch.append(int(random(1,5)));
   ipos.append(22);
   iswitch.append(int(random(1,5)));
    ipos.append(25);
   iswitch.append(int(random(1,5)));
    ipos.append(26);
   iswitch.append(int(random(1,5)));
    ipos.append(27);
   iswitch.append(int(random(1,5)));
    ipos.append(29);
   iswitch.append(int(random(1,5)));
   ipos.append(30);
   iswitch.append(int(random(1,5)));
    ipos.append(33);
   iswitch.append(int(random(1,5)));
    ipos.append(34);
   iswitch.append(int(random(1,5)));
   ipos.append(37);
   iswitch.append(int(random(1,5)));
    ipos.append(42);
   iswitch.append(int(random(1,5)));
   ipos.append(45);
   iswitch.append(int(random(1,5)));
   ipos.append(46);
   iswitch.append(int(random(1,5)));
    ipos.append(49);
   iswitch.append(int(random(1,5)));
   ipos.append(52);
   iswitch.append(int(random(1,5)));
   ipos.append(53);
   iswitch.append(int(random(1,5)));
   ipos.append(54);
   iswitch.append(int(random(1,5)));
   
    ipos.append(57);
   iswitch.append(int(random(1,5)));
   
    ipos.append(61);
   iswitch.append(int(random(1,5)));
   ipos.append(63);
   iswitch.append(int(random(1,5)));
  ipos.append(65);
   iswitch.append(int(random(1,5)));
    ipos.append(68);
   iswitch.append(int(random(1,5)));
    ipos.append(69);
   iswitch.append(int(random(1,5)));
    ipos.append(73);
   iswitch.append(int(random(1,5)));
    ipos.append(74);
   iswitch.append(int(random(1,5)));
   ipos.append(77);
   iswitch.append(int(random(1,5)));
    ipos.append(81);
   iswitch.append(int(random(1,5)));
    ipos.append(82);
   iswitch.append(int(random(1,5)));
    ipos.append(83);
   iswitch.append(int(random(1,5)));
    ipos.append(84);
   iswitch.append(int(random(1,5)));
   ipos.append(85);
   iswitch.append(int(random(1,5)));
     ipos.append(90);
   iswitch.append(int(random(1,5)));
    ipos.append(91);
   iswitch.append(int(random(1,5)));
    ipos.append(92);
   iswitch.append(int(random(1,5)));
   ipos.append(93);
   iswitch.append(int(random(1,5)));
    ipos.append(97);
   iswitch.append(int(random(1,5)));
   ipos.append(98);
   iswitch.append(int(random(1,5)));
    ipos.append(99);
   iswitch.append(int(random(1,5)));
   ipos.append(100);
   iswitch.append(int(random(1,5)));
    ipos.append(106);
   iswitch.append(int(random(1,5)));
    ipos.append(107);
   iswitch.append(int(random(1,5)));
    ipos.append(108);
   iswitch.append(int(random(1,5)));
    ipos.append(114);
   iswitch.append(int(random(1,5)));
    ipos.append(115);
   iswitch.append(int(random(1,5)));
    ipos.append(123);
   iswitch.append(int(random(1,5)));
    ipos.append(131);
   iswitch.append(int(random(1,5)));
   ipos.append(139);
   iswitch.append(int(random(1,5)));
  
  
}
void draw(){
  if (record == true) {
    beginRecord(PDF, "stone2.pdf"); ; // Start recording to the file
  }
  noFill();
  stroke(0);
  rect(0,0,width-1,height-1);
  ellipse( 50, 40, 10,10);
  ellipse(width - 50, 40,10,10);
  ellipse( width - 50, height- 40, 10,10);
  ellipse( 50, height- 40, 10,10);
  for(int i = 0 ; i < this.pos.size(); i++){
    if(stones.get(i).pos.x >0){
      if(i !=0 && i != 7){
    stones.get(i).draw(0);
      }
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
   int i =int( ((mouseY /55) * 8) + (mouseX /210));
  
   ipos.append(i);
   iswitch.append(int(random(this.pos.size())));
}