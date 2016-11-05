class Palette{
  
  String name;
  String imgName;
  PImage img;
  color[] colors;
  color[] acolors;
  
  Palette(String name){
    this.name = name;
    this.colors = new color[0];
    this.acolors = new color[0];
  } //<>//
  
  void addRGBColors(String imgName, int maxColors, int alpha){
    PImage img = loadImage(imgName);
    img.loadPixels();
    int max = this.colors.length;
    this.colors = expand(this.colors, max + maxColors);
    this.acolors = expand(this.acolors, max + maxColors);
   
    
    int atry;
    color newcolor = color(0,0,0);
   
    for (int c = (this.colors.length - maxColors); c < this.colors.length; c++) {
       
       atry = 0;
       while(atry < 100){
         newcolor = img.get(int(random(img.width)), int(random(img.height)));
         if(!this.checkColors(0,c, newcolor)){
           //there is no such color
           this.colors[c] = newcolor;
           this.acolors[c] = color(newcolor, alpha);
         }
         atry++;
      }     
    } 
  }
  void addHSBColors(float hue, int minSat, int maxSat, int minBright, int maxBright, int maxColors, float alpha){
    int max = this.colors.length;
    this.colors = expand(this.colors, max + maxColors);
    
    
    int atry;
    color newcolor = color(0,0,0,0);
    for( int c = (this.colors.length - maxColors) ; c < this.colors.length; c++) {
      atry = 0;
       while(atry < 100){
        newcolor = color(hue, ceil(random(minSat, maxSat)), ceil(random(minBright, maxBright)),100);
        if(!this.checkColors(0,c, newcolor)){
        //there is no such color
         this.colors[c] = color(hue(newcolor),saturation(newcolor), brightness(newcolor),alpha);
       }
       atry++;
       }
    }  
    
  } 
   void addHSBColors(float hue, int maxColors, float alpha){
    int max = this.colors.length;
    this.colors = expand(this.colors, max + maxColors);
    
    
    int atry;
    color newcolor = color(0,0,0,0);
    for( int c = (this.colors.length - maxColors) ; c < this.colors.length; c++) {
      atry = 0;
       while(atry < 100){
        newcolor = color(hue, ceil(random(100)), ceil(random(100)),100);
        if(!this.checkColors(0,c, newcolor)){
        //there is no such color
         this.colors[c] = color(hue(newcolor),saturation(newcolor), brightness(newcolor),alpha);
       }
       atry++;
       }
    }  
    
  } 
  
  boolean checkColors(int min, int max, color acolor){
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