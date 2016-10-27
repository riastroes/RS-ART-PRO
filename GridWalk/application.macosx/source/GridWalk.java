import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GridWalk extends PApplet {

/* GridWalk */
/* Created by Ria Stroes */
/* Date: 24-10-2016 */

App app;

public void setup(){
  
  app = new App("GridWalk");
  background(255);
  
  rectMode(CENTER);
  
  
}
public void draw(){
  //fill(255,1);
  //noStroke();
  //rect(width/2, height/2, width,height);
  app.grid.show();
  for(int i = 0; i < app.walkers.size(); i++){
    app.walkers.get(i).next(app.grid);
    if(i %2 == 0){
      app.walkers.get(i).show2();
    }
    else{
       app.walkers.get(i).show1();
    }
  }
  if((frameCount % 100) ==0){
    app.grid.disorderSin(10);
  }
  if(mousePressed){
    saveFrame("gridWalk-######.png");
  }
  println(frameCount);
}
class App{
  
  String name;
  Palette pal;
  Grid grid;
  ArrayList<Walker> walkers;
  
  App(String name){
    this.name = name;
    this.pal = new Palette("beautifull","blauw.png", 9, 30);
    this.pal.addColors("gray.png", 10, 30);
    this.pal.addColors("colors3.png", 1, 30);
    this.grid = new Grid(50,50,30);
    
    this.walkers = new ArrayList<Walker>();
    for(int i = 0; i < 20; i++){
      this.walkers.add (new Walker(this.grid, this.grid.getRandomIndex(), this.pal.acolors[i]));
    }
  }
  
}
class Grid{
  int wmax;
  int hmax;
  float cellwidth;
  float cellheight;
  float margin;
  float lmargin, rmargin, tmargin, bmargin;
  PVector[] pos;
  
  Grid(float cellwidth, float cellheight, float margin){
    this.cellwidth = cellwidth;
    this.cellheight = cellheight;
    this.margin = margin;
   
    this.wmax = PApplet.parseInt((width- (2*margin))/this.cellwidth);
    this.lmargin = (width - (this.wmax * this.cellwidth)) / 2;
    this.rmargin = this.lmargin;
    
    this.hmax = PApplet.parseInt((height- (2*margin))/this.cellheight);
    this.tmargin = (height - (this.hmax * this.cellheight)) / 2;
    this.bmargin = this.tmargin;
    
    this.pos = new PVector[this.hmax * this.wmax];
    float x, y;
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        x = this.lmargin + ( w * this.cellwidth) + (this.cellwidth/2);
        y = this.tmargin + ( h * this.cellheight) + (this.cellheight/2);
        this.pos[(h* this.wmax)+ w] = new PVector(x,y);
      }
    }  
  }
  public void show(){
    noStroke();
    fill(0);
    for(PVector p : pos){
      ellipse(p.x, p.y, 1,1);
    }
  }
  public void disorderSin(float force){
    PVector up = new PVector(0,-force);
    PVector down = new PVector(0,force);
    
    for(int h = 0; h < this.hmax; h++){
      for( int w = 0 ; w < this.wmax; w++){
        if((w + h) % 4 == 1){
          this.pos[(h* this.wmax)+ w].add(up);
        }
        else if((w + h) % 4 == 3){
          this.pos[(h* this.wmax)+ w].add(down);
        }
      }
    }  
  }
  public PVector getRandomPos(){
    int a = PApplet.parseInt(random(this.pos.length));
    return this.pos[a];
  }
  public int getRandomIndex(){
    int a = PApplet.parseInt(random(this.pos.length));
    return a;
  }
  
}
class Palette{
  
  String name;
  String imgName;
  PImage img;
  int[] colors;
  int[] acolors;
  
  Palette(String name, String imgName, int maxColors, int alpha){
    this.name = name;
    
    PImage img = loadImage(imgName);
    img.loadPixels();
    this.colors = new int[maxColors];
    this.acolors = new int[maxColors];
    
    int atry;
    int newcolor = color(0,0,0);
    for (int c = 0; c < this.colors.length; c++) {
       
       atry = 0;
       while(atry < 100){
         newcolor = img.get(PApplet.parseInt(random(img.width)), PApplet.parseInt(random(img.height)));
         if(!this.checkColors(0,c, newcolor)){
           //there is no such color
           this.colors[c] = newcolor;
           this.acolors[c] = color(newcolor, alpha);
         }
         atry++;
      }     
    } 
    
  }
  public void addColors(String imgName, int maxColors, int alpha){
    PImage img = loadImage(imgName);
    img.loadPixels();
    int max = this.colors.length;
    this.colors = expand(this.colors, max + maxColors);
    this.acolors = expand(this.acolors, max + maxColors);
    println(this.colors.length);
    
    int atry;
    int newcolor = color(0,0,0);
    for (int c = (this.colors.length - maxColors); c < this.colors.length; c++) {
       
       atry = 0;
       while(atry < 100){
         newcolor = img.get(PApplet.parseInt(random(img.width)), PApplet.parseInt(random(img.height)));
         if(!this.checkColors(0,c, newcolor)){
           //there is no such color
           this.colors[c] = newcolor;
           this.acolors[c] = color(newcolor, alpha);
         }
         atry++;
      }     
    } 
  }
  public boolean checkColors(int min, int max, int acolor){
    boolean found = false;
    for(int i = min; i < max; i++){
      if(this.colors[i] == acolor){
        found = true;
        break;
      }
    }
    return found;
  }
  
  
}
class Walker{
  ArrayList<PVector> pos;
  int i;
  int fillcolor;
  int mistakes;
  
  Walker(Grid grid, int i, int acolor){
    this.pos = new ArrayList<PVector>();
    this.pos.add(grid.pos[i]);
    this.i = i;
    this.fillcolor = acolor;
    this.mistakes = 0;
  }
  public void next(Grid grid){
    PVector step;
    int old = this.i;
    int r = PApplet.parseInt(random(4));
    if(r == 0 && this.i < grid.pos.length-1){
      this.i +=1;
    }
    else if(r == 1 && this.i >0 ){
      this.i -= 1;
    }
    else if(r == 2 && this.i + grid.wmax < (grid.wmax * grid.hmax)){
      this.i += grid.wmax;
    }
    else if(r == 3 && this.i - grid.wmax > 0){
      this.i -= grid.wmax;
    }
    step = grid.pos[this.i]; 
    
    if(!isStepInList(step)){
      this.pos.add(step);
    }
    else{
      this.i = old;
      this.mistakes++;
    }
    if(this.mistakes > 20){
      this.restart();
    }
  }
  public void restart(){
    this.mistakes = 0;
    PVector first = this.pos.get(0);
    this.pos = new ArrayList<PVector>();
    this.pos.add(first);
    
  }
  public boolean isStepInList(PVector p){
    boolean in = false;
    for(int i = 0; i < this.pos.size(); i++){
      if(this.pos.get(i).x == p.x && this.pos.get(i).y == p.y){
        in = true;
        break;
      }
    }
    return in;
  }
  public void show1(){
    int s;
    for(int i = 0; i < this.pos.size(); i++){
      s =this.pos.size() -i;
      fill(this.fillcolor);
      stroke(0);
      ellipse(this.pos.get(i).x, this.pos.get(i).y,s,s);
      
      noFill();
      stroke(255);
      strokeWeight(1);
      ellipse(this.pos.get(i).x, this.pos.get(i).y,s-2,s-2);
    }
  }
  public void show2(){
    int s;
    for(int i = 0; i < this.pos.size(); i++){
      s =this.pos.size() -i;
      fill(this.fillcolor);
      stroke(0);
      rect(this.pos.get(i).x, this.pos.get(i).y,s,s ,10);
      
      noFill();
      stroke(this.fillcolor);
      strokeWeight(1);
      rect(this.pos.get(i).x, this.pos.get(i).y,s+2,s+2);
    }
  }
    
}
  
  public void settings() {  size(2000, 2000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "GridWalk" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
