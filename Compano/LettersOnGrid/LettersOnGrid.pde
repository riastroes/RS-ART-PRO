 //<>//
//COMPANO
//Code tree
//6 december 2016
//ria stroes
import processing.pdf.*;

Letter[][] letters;
PVector[] pos;
Grid2 grid;

String[] c;
Code code;

void setup(){
  size(1100,1300);
  beginRecord(PDF, "result/codetree.pdf");
  background(0,0,50);
  code = new Code(); //<>//
  c = new String[10];
  grid = new Grid2(new PVector(0,0), width-100,225,75,10); //<>//
  grid.disorderSin(2);
  grid.disorderByVector(new PVector(width-100,100),-200);
  //grid.disorderByVector(new PVector(width,150),-200);
  // grid.disorderByVector(new PVector(width,50),-200);
  letters = new Letter[10][100];
  
  for(int i = 0; i < 10; i++){
    //Grid2(PVector pos, float maxwidth, float maxheight, int wmax, int hmax)
    
    
    c[i]= code.code[i];
    letters[i] = new Letter[c[i].length()];
    for(int l = 0; l < c[i].length(); l++){
      letters[i][l] = new Letter(grid.pos[l+ (i * 75)],15,25, (int)c[i].charAt(l%c[i].length()));
    }
  }
  
  //for(int i = 0; i < 10; i++){
  //  grids[i] = new Grid2(new PVector(0,i*40), width, 40, 80,1);
  //  c[i]= code.code[i];
  //  letters[i] = new Letter[grids[i].pos.length];
  //  for(int l = 0; l < grids[i].pos.length; l++){
  //    letters[i][l] = new Letter(grids[i].pos[l],15,25, (int)c[i].charAt(l%c[i].length()));
  //  }
  //}
  
 
 // //fill(255,0,0);
 // noFill();
 // //noStroke();
 // stroke(255);
 // strokeWeight(1);
 // for(int i = 0; i < 10; i++){
 //   grids[i].show();
 // for(int l = 0; l < c[i].length(); l++){
 //   letters[i][l].draw();
 // }
 // }
  
  drawCode(new PVector(width/2,height-180), 0.8, -1.5);
  drawCode(new PVector((width/2)+100,height-300), 0.24, -1.6);
  drawCode(new PVector((width/2)-25,height-325), 0.2, -1);
  drawCode(new PVector(width/2,height-375), 0.4, -1.7);
  
  drawCode(new PVector((width/2)+30,height-600), 1, -1);
  drawCode(new PVector((width/2)+50,height-640), 0.3, -2);
  
  drawCode(new PVector((width/2)-200,height-870), 0.6, -1.6);
  drawCode(new PVector((width/2)+50,height-1030), 0.7, -0.9);
  
  drawCode(new PVector((width/2)+180,height-800), 0.4, 0);
  drawCode(new PVector((width/2)+0,height-1100), 0.3, -2.2);
  
  drawCode(new PVector((width/2)-340,height-860), 0.3, -1.5);
  drawCode(new PVector((width/2)-200,height-550), 0.8, -2.5);
  
  
  drawCode(new PVector((width/2)-100,height-50), 0.4, PI);
  drawCode(new PVector((width/2)+250,height-150), 0.3, 0);
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
 
  grid.show();
  noStroke();
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