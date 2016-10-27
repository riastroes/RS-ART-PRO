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

public class curtains extends PApplet {

App app;
public void setup(){
  
  app = new App();
  
}
public void draw(){
  background(255);
  app.draw();
  println(frameCount);
}
class App{
  ArrayList<Chain> chain;
  Force force;
  
  App(){
    this.chain = new ArrayList<Chain>();
    this.force = new Force(new PVector(random(width), random(height)), 150, 5);
    
    for(int i =0; i < ceil(width/10); i++){
      PVector pos = new PVector(10 * this.chain.size(), 0);
      this.chain.add(new Chain(pos, 1,10, ceil(height/10)));
    }   
  }
  public void applyForce(){
    for(int i =0; i < ceil(width/10); i++){
      this.chain.get(i).addForce(this.force);
    } 
  }
  public void draw(){
    this.force.change(5);
    this.applyForce();
    for(int i = 0; i < this.chain.size(); i++){
     this.chain.get(i).draw();
    }
  }
      
}
  
class Chain{
  PVector pos;
  float difx;
  float dify;
  int length;
  ArrayList<PVector> p;
  
  
  Chain(PVector pos, float difx, float dify, int plength){
    this.difx = difx;
    this.dify = dify;
    this.length = plength;
    this.p = new ArrayList<PVector>();
    this.p.add(pos);
    for(int i = 1; i < this.length; i++){
      this.p.add(new PVector(this.p.get(i-1).x + random(-difx, difx), this.p.get(i-1).y + dify));
    }
  }
  public void addForce(Force force){
    if(force.force > 0 && force.radius > 0){
      for(PVector pos : this.p){
        if(PVector.dist(pos, force.pos) < force.radius){
          PVector psub = PVector.sub(pos, force.pos);
          psub.normalize();
          psub.mult(force.force);
          pos.add(psub);
        }
      }     
    }
  }
  public void draw(){
    fill(100,0,0,30);
    stroke(0);
    strokeWeight(1);
    rectMode(CORNERS);
   for(int i = 0; i < this.p.size() -1; i++){
      rect(this.p.get(i).x, this.p.get(i).y, 
           this.p.get(i+1).x, this.p.get(i+1).y);
    }
      
  }
}
class Force{
  
  PVector pos;
  float _radius;
  float radius;
  float _force;
  float force;
  
  Force(PVector ppos, float pradius, float pforce){
    
    this.pos = ppos;
    this._radius = pradius;
    this._force = pforce;
    this.radius = this._radius;
    this.force = this._force;
  
  }
  public void change(float diff){
    this.radius -= diff;
    this.force -=(this.force / this.radius) * diff;
    
    if(this.radius <= 0){
      this.pos = new PVector(random(width), random(height));
      this.radius = random(this._radius);
      this.force = random(this._force);      
    }
  }
  public void show(){
    noFill();
    stroke(0);
    strokeWeight(this.force);
    ellipse(this.pos.x, this.pos.y, this.radius, this.radius);
  }
}
  public void settings() {  size(800,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "curtains" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
