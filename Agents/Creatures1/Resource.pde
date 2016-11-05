class Resource{
  PGraphics pg;
  PImage img;
  
  
  Resource(){
    pg = createGraphics(width,height);
    img = loadImage("paulklee.jpg");
    img.resize(width,height);
    
  }
  IntList collect(color a){
    IntList locations = new IntList();
    
    img.loadPixels();
    for(int i = 0; i < img.pixels.length; i=i+1){
      color c = img.pixels[i];
      if(red(c) > red(a) -10 && red(c) <  red(a) + 10){
        if(green(c) > green(a) -10 && green(c) <  green(a) + 10){
          if(blue(c) > blue(a) -10 && blue(c) <  blue(a) + 10){
            locations.append(i);
          }
        }
      }
    }
    
    return locations;
  }
  color getColor( PVector loc){
    this.img.loadPixels();
    int l = int((loc.y * width)+ loc.x);
    l = constrain(l,0, this.img.pixels.length-1);
    color c = this.img.pixels[l];
    return c;
  }
  
  PGraphics displayImg(){
    
    pg.beginDraw();
    pg.image(img,0,0);
    pg.endDraw();
    return pg;
  }
 
}