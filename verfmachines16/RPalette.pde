/* @pjs preload = "sample.jpg"; */

class RPalette{
  PImage sample;
  color[] colors;
  color[] tints;
  
  RPalette(int count){
    sample = loadImage("sample11.jpg");
    colors = createImgPalette(count);
    tints = createTintPalette(colors[0], colors[1], count);

  }
    // random palette op basis van een afbeelding
  color[] createImgPalette(int count){
        
        colors = new color[count];
        sample.loadPixels();
        int c = 0;
        while(c < count){

            int p = floor(random(sample.pixels.length));
            colors[c] = sample.pixels[p];
            
            c++;
        }
        
        return colors;
    }
    
    //maak een palet op basis van twee kleuren.
    color[] createTintPalette(color color1, color color2, int count){
      tints = new color[count];
      
        for (int i = 0; i < count; i = i+1){
          color co = lerpColor(color1, color2, i * (1.0 / count));
          tints[i] = co;
        }
        return tints;
    }

    void show(float width, float height){
      float w = width/colors.length;
      noStroke();
      for (int i = 0; i < colors.length; i = i+1){
        fill(colors[i]);
        rect(i * w,0, w, height/2 );
        fill(tints[i]);
        rect(i * w,height/2 , w, height/2 );
        
      }
    }
    color randomColor(){
      color rcolor = colors[floor(random(10))];
      return rcolor;
    }
};