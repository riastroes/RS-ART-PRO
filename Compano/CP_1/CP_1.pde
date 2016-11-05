

/* Ria Stroes */
/* @updated: 1 november 2016 */
/* Big Graphics */

import processing.pdf.*;
App app;

void setup() 
{
  size(8000, 8000, PDF, "CP Graphics I7.pdf");
  app = new App("CP Graphics I");
  background(255);
}

void draw() 
{
  
  app.draw();  
  exit();  // Quit the program
}
//void mousePressed(){
//  exit();
//}