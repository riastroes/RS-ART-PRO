

/*
project: Compano
date: 22-11-2017
created by: Ria Stroes
*/
import processing.pdf.*;

Wisp[] wisp;
Wisp2[] wisp2;

void setup(){
  size(1000,1000);
  //beginRecord(PDF, "result/Wisp.pdf"); 
  //wisp = new Wisp[20];
  //for(int i = 0; i < 10; i++){
  //wisp[i] = new Wisp(new PVector(-50,random(height)), random(5), random(-2,0), random(0,2));
  //wisp[19-i] = new Wisp(new PVector(width+50,random(height)), random(5), 3 - random(-2,0),3 - random(0,2) );
  //}

 wisp2 = new Wisp2[1];
 wisp2[0] = new Wisp2(new PVector(-50,random(height)),50, 0);
 wisp2[0].grow(40);
}

void draw(){
    strokeWeight(1);
    
    noFill();
    //for(int i = 0; i < 20; i++){
    //  color acolor =color(0,0,map(wisp[i].whimsicality,0,0.1,255,0));
    //  stroke(acolor,map(wisp[i].whimsicality,0,0.1,255,0));
    //  wisp[i].grow();
    //  wisp[i].draw();
    //}
    //wisp2[0].grow(20);
    wisp2[0].change(new PVector(0,5));
    wisp2[0].draw();
    
    if(frameCount == 400){
      //endRecord();
    }
  }
  