class Connector{
  
  float x, y;
  float sz;
  boolean isConnected;
  boolean active;
  
  Connector(float px, float py, float psz){
    x = px;
    y = py;
    sz = psz;
    isConnected = false;
    
  }
  void draw(PGraphics pg, boolean active){
    //println(pg.width + ","+ pg.height  + ","+ x + ","+ y  + ","+ isConnected);
   
    
    if(isConnected){
      pg.beginDraw();
      
      if(active){
        pg.stroke(color(255,0,0));
      }
      else{
        pg.stroke(color(50));
      }
      pg.strokeWeight(1);
      pg.fill(color(175));
      pg.ellipse(x,y,sz,sz);
      pg.strokeWeight(sz/10);
      pg.line(x -(sz/2) + (sz/10), y, x+(sz/2) - (sz/10), y);
      
      
      //highlight
      pg.fill(color(255));
      pg.noStroke();
      pg.ellipse( x-(sz/5), y-(sz/5), (sz/5),(sz/5));
      pg.stroke(color(255));
      pg.strokeWeight(sz/10);
      pg.line( x -(sz/2) + (sz/10), y -(sz/10), x+(sz/2) - (sz/10), y-(sz/10));
      
      pg.endDraw();
      
      
    }
  }
  
};

class Pos{
  float x,y;
  
  Pos(float px, float py){
    x = px;
    y =py;
  }
  Pos(){
    x = 0;
    y = 0;
  }
};