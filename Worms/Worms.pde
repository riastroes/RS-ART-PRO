int max;
World world;
Worm[] worms;
int maxworms;


void setup() {
  size(500, 500);
  max = 250000;
  maxworms = 10;

  world = new World(max);
 
  initWorms();
  
  stroke(0);
}
void draw() {
  boolean alive = false;
  for (int i = 0; i < maxworms; i++) {
    if (worms[i].alive) {
      alive = worms[i].live();
    }
    worms[i].draw();
  }
  if (!alive) {
    initWorms();
    
  }
}
void initWorms(){
  worms = new Worm[maxworms];
  for (int i = 0; i < maxworms; i++) {
    worms[i] = new Worm();
    worms[i].set(int(random(max)));
  }
}