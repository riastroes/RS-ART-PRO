class Palette{
  
  String name;
  String imgName;
  PImage img;
  color[] colors;
 
  Palette(String name){
    this.name = name;
    this.colors = new color[0];
   
  } 
  void addColor(color acolor){
    int max = this.colors.length;
    this.colors = expand(this.colors, max + 1);
    this.colors[max] = acolor;
  }
   void addColor(color acolor, int alpha){
    int max = this.colors.length;
    this.colors = expand(this.colors, max + 1);
    this.colors[max] = color(acolor, alpha);  
  }
  
  void addRGBColors(String imgName, int maxColors, int alpha){
    PImage img = loadImage(imgName);
    img.loadPixels();
    int max = this.colors.length;
    this.colors = expand(this.colors, max + maxColors);
    int atry;
    color newcolor = color(0,0,0);
   
    for (int c = (this.colors.length - maxColors); c < this.colors.length; c++) {
       
       atry = 0;
       while(atry < 100){
         newcolor = img.get(int(random(img.width)), int(random(img.height)));
         if(!this.checkColors(0,c, newcolor)){
           //there is no such color
           if(alpha >= 0 && alpha <256 ){
              this.colors[c] = color(newcolor, alpha);             
           }
           else{
             this.colors[c] = color(newcolor);
           }
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
  
  private boolean checkColors(int min, int max, color acolor){
    boolean found = false;
    for(int i = min; i < max; i++){
      if(this.colors[i] == acolor){
        found = true;
        break;
      }
    }
    return found;
  }
  color randomColor(){
    int i = int(random(this.colors.length));
    return this.colors[i];
  }
  
  void sortColors(){
     boolean found = true;
     int help;
     int count =0;
     float  sum1, sum2;
  while(found && count <100){
    found = false;
    for(int c = 0; c < this.colors.length-1; c+=1){
      sum1 = red(this.colors[c]) + green(this.colors[c]) + blue(this.colors[c]);
      sum2 = red(this.colors[c+1]) + green(this.colors[c+1]) + blue(this.colors[c+1]);
      if(sum1 > sum2){
        help = this.colors[c];
        this.colors[c] = this.colors[c+1];
        this.colors[c+1] = help;
        found = true;
      }
    }
    count++;
  }
  if(count ==100){
    println("error in color sort");
  }
  else{
    println("color sort in " + count);
  }
 
  }
  
}