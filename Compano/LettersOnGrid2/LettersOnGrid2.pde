 //<>//
//COMPANO
//Code tree
//6 december 2016
//ria stroes
import processing.pdf.*;

Letter[][] letters;
PVector[] pos;
Grid2 grid, bggrid;

String[] c;
Code code;

void setup(){
  size(2500,810);
  beginRecord(PDF, "result/codetree2.pdf");
  background(0,0,50);
  code = new Code(); //<>//
  c = new String[10];
  bggrid = new Grid2(new PVector(0,(height/2)-200), width/4*3,400,68,10);
  grid = new Grid2(new PVector(0,(height/2)-150), width/4*3,300,68,10); //<>//
  bggrid.disorderByVector(new PVector(0,(height/2)),-200);
  grid.disorderByVector(new PVector(0,(height/2)),-200);
  grid.disorderSin(2);
  letters = new Letter[10][100];
  
  for(int i = 0; i < 10; i++){
    c[i]= code.code[i];
    letters[i] = new Letter[c[i].length()];
    for(int l = 0; l < c[i].length(); l++){
      letters[i][l] = new Letter(grid.pos[l+ (i * 68)],50,50, (int)c[i].charAt(l%c[i].length()));
    }
  }
  
  drawCode(new PVector(150,0),1, 0);
  
  noLoop();
  endRecord();
}

void drawCode(PVector pos, float scale, float rot){
  fill(255);
 
  //stroke(255);
  //strokeWeight(1);
  pushMatrix();
  translate(pos.x, pos.y);
  rotate( rot);
  scale( scale);
 
  bggrid.show();
  stroke(0,0,50);
  strokeWeight(1);
  for(int i = 0; i < 10; i++){
  
  for(int l = 0; l < c[i].length(); l++){
    
    if(letters[i][l].nr == 73){
      fill(255,191,0);
    }
    letters[i][l].draw();
    if(letters[i][l].nr == 120){
      fill(255);
    }
  }
  }
  popMatrix();
}