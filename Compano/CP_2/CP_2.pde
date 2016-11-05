/* Opdracht Compano */ //<>//

/* Ria Stroes */
/* @updated: 5 november 2016 */
/* Big Graphics */
import processing.pdf.*;
App app;

void setup() 
{
 //size(8000, 8000, PDF, "CP Graphics I7.pdf");
  size(800, 800);
  app = new App("CP Graphics II");
  background(255);
}

void draw() 
{
  
  app.draw();  
  exit();  // Quit the program
}