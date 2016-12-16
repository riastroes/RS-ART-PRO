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

IntList ipos;
IntList iswitch;
float stonewidth;
float stoneheight;
 
 
   

void setup(){
  //size(1680,1000);
  size(1220,760);
  
  ipos = new IntList();
  iswitch = new IntList();
    
  int count;
  pos = new ArrayList<PVector>();
  stones = new ArrayList<Stone>();
  count = 0;
  stoneheight = (this.height)/13;
  stonewidth = (this.width)/5.5;
  
  PVector apos;
   for(int y = 0; y < 13; y++ ){
     
     for(int x = 0; x < 5 ; x++){
        if(x == 6 && y % 2 == 2){
         
      }
       else{
          apos =new PVector(x * stonewidth, y  * stoneheight);
          if(count % 2 == 1){
            apos.x += stonewidth/2;
          }
        
          
          pos.add(apos);
          stones.add(new Stone(stonewidth-10, stoneheight-10, 0, apos ));}
      
    }
    count++;
  }
  
   ipos.append(1);
   iswitch.append(int(random(1,5)));
   ipos.append(5);
   iswitch.append(int(random(1,5)));
   ipos.append(6);
   iswitch.append(int(random(1,5)));
   ipos.append(9);
   iswitch.append(int(random(1,5)));
   
   ipos.append(11);
   iswitch.append(int(random(1,5)));
   ipos.append(14);
   iswitch.append(int(random(1,5)));
   
   ipos.append(16);
   iswitch.append(int(random(1,5)));
    ipos.append(18);
   iswitch.append(int(random(1,5)));
   ipos.append(19);
   iswitch.append(int(random(1,5)));
  
   ipos.append(21);
   iswitch.append(int(random(1,5)));
    ipos.append(23);
   iswitch.append(int(random(1,5)));
   ipos.append(24);
   iswitch.append(int(random(1,5)));
   
   ipos.append(25);
   iswitch.append(int(random(1,5)));
   ipos.append(26);
   iswitch.append(int(random(1,5)));
   ipos.append(28);
   iswitch.append(int(random(1,5)));
   
    iswitch.append(int(random(1,5)));
    ipos.append(30);
   iswitch.append(int(random(1,5)));
    ipos.append(31);
   iswitch.append(int(random(1,5)));
    ipos.append(32);
   iswitch.append(int(random(1,5)));
   ipos.append(34);
   iswitch.append(int(random(1,5)));
  
   
   iswitch.append(int(random(1,5)));
    ipos.append(35);
   iswitch.append(int(random(1,5)));
    ipos.append(36);
   iswitch.append(int(random(1,5)));
   ipos.append(37);
   iswitch.append(int(random(1,5)));
    ipos.append(38);
   iswitch.append(int(random(1,5)));
   
   iswitch.append(int(random(1,5)));
    ipos.append(41);
   iswitch.append(int(random(1,5)));
    ipos.append(42);
   iswitch.append(int(random(1,5)));
   ipos.append(43);
   iswitch.append(int(random(1,5)));
    ipos.append(44);
   iswitch.append(int(random(1,5)));
 
    ipos.append(46);
   iswitch.append(int(random(1,5)));
     ipos.append(47);
   iswitch.append(int(random(1,5)));
     ipos.append(48);
   iswitch.append(int(random(1,5)));
   //ipos.append(60);
   //iswitch.append(int(random(1,5)));
   ipos.append(52);
   iswitch.append(int(random(1,5)));
    ipos.append(53);
   iswitch.append(int(random(1,5)));
   ipos.append(57);
   iswitch.append(int(random(1,5)));
    ipos.append(62);
   iswitch.append(int(random(1,5)));
   //ipos.append(68);
   //iswitch.append(int(random(1,5)));
   //ipos.append(69);
   //iswitch.append(int(random(1,5)));
    //ipos.append(70);
   //iswitch.append(int(random(1,5)));
   //ipos.append(74);
   //iswitch.append(int(random(1,5)));
   //ipos.append(75);
   //iswitch.append(int(random(1,5)));
   //ipos.append(81);
   //iswitch.append(int(random(1,5)));
   
  //switch.append(int(random(1,5)));
   
    record = false;
    if (record == true) {
    beginRecord(DXF, "haantje3.dxf");  // Start recording to the file
  }
  
  
}
void draw(){
  strokeWeight(1);
  stroke(255,0,0);
  noFill();
  for(int i = 0 ; i < this.pos.size(); i++){
    if(stones.get(i).pos.x >=0){
 //     stones.get(i).drawbg();
    }
  }
  stroke(0);
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