/*
* by Ria Stroes
 * 2015
 * +","+
 */
Resource resource;
Creature[] creatures;

int w;
float a;

boolean isRunning;
void setup() {

  //Fullscreen: to make fullscreen run this sketch with presentation mode ( sketch menu > Present )
  size(600, 600);
  isRunning = true;
  resource = new Resource();
  creatures = new Creature[100];
  for(int i = 0; i < 100; i++){
  
     creatures[i] = new Creature(int(random(width)), int(random(height)));
     creatures[i].display();
     creatures[i].showInfo();
     
 }
 w = 0;
 a = 0;
 background(0);
 //image(resource.img,0,0);
}
void draw() {
  
  a = a+0.1;
  
  for(Creature creature : creatures){
    creature.live();
    creature.display();
    //creature.agent.display();
   // println(no + ": " + creature.agent.myresources.size()+ ", "  + creature.agent.found.size()  + ", " + creature.body.size() + ", " + creature.ring);
   // println(creature.body);
    
  }
  if(frameCount % 1000 == 0){
     //saveFrame("images/paulklee"+ frameCount + ".jpg");
  }
}

void keyPressed() {

  //pause
  if (key == 'p') {
    isRunning = !isRunning;

    if (!isRunning) {
      noLoop();
    } else {
      loop();
    }
  }
  if (key == 's') {
    saveFrame("paulklee"+ frameCount + ".jpg");
  }
  if (key == 'f') {
    println("frameCount: " + frameCount);
    println("frameRate: " + frameRate);
  }
  if (key == 'i') {
   
    }
  
}