class Palette{
  
  String name;
  String imgName;
  PImage img;
  color[] colors;
  color[] acolors;
  
  Palette(String name, String imgName, int maxColors, int alpha){
    this.name = name;
    
    PImage img = loadImage(imgName);
    img.loadPixels();
    this.colors = new color[maxColors];
    this.acolors = new color[maxColors];
    
    int atry;
    color newcolor = color(0,0,0); //<>//
    for (int c = 0; c < this.colors.length; c++) {
       
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
  void addColors(String imgName, int maxColors, int alpha){
    PImage img = loadImage(imgName);
    img.loadPixels();
    int max = this.colors.length;
    this.colors = expand(this.colors, max + maxColors);
    this.acolors = expand(this.acolors, max + maxColors);
    println(this.colors.length);
    
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