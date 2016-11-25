/* 
Curtains 

5 banen * 90 (140cm)  = 4.50 meter
hoogte van elke baan: 3.50 meter

datum: 17 november
*/

Palette pal;

void setup(){
  //baan: 140 * 360
  size(1400, 3600);
  pal = new Palette("Curtains");
  pal.addColor(#000011);
  pal.addColor(#cc9900);
  pal.addColor(#ffbf00);
}

void draw(){
  background(pal.colors[0]);
  
}