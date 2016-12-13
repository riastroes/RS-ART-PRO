int max;
World world;
Worm[] worms;
int maxworms;


void setup() {
  size(500, 500);
  max = 250000;
  maxworms = 10;
  background(255);
  world = new World(max);
 
  initWorms();
  
  stroke(0);
}
void draw() {
  boolean alive = false;
  world.load();
  for (int i = 0; i < maxworms; i++) {
    if (worms[i].alive) {
      alive = worms[i].live();
    }
    else{
      worms[i] = new Worm(worms[i].strokecolor,worms[i].strokeweight);
      worms[i].set(int(random(max)));
    }
    worms[i].draw();
  }
 
}
void initWorms(){
  worms = new Worm[maxworms];
  for (int i = 0; i < maxworms; i++) {
    worms[i] = new Worm(color(random(255), random(255), random(255)),floor(random(10)));
    worms[i].set(int(random(max)));
  }
}