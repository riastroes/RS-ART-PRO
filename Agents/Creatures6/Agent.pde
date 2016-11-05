//these agents are collecting resource data //<>// //<>// //<>//
//when they find an area with food, they are turning and turning.
//when they don't find food they are running in a streight line but bounce to the borders.

class Agent {
  IntList myresources;
  PVector pos;
  IntList found;
  float speed;
  color coloragent;
  Dir dir;

  Agent(PVector p, color c) {
    pos = p.copy();
    dir = new Dir();
    turn(1);
    speed = 1;
    myresources = resource.collect(c);
    found = new IntList();
    coloragent = c;
  }
  void find() {
    eat();
    move();
  }
  void eat() {

    int i = (int)((pos.y * resource.img.width) + pos.x) ;

    if (myresources.hasValue(i) == true) {
      this.found.append(i);
      turn(1);
      removeResource(i);
    }
  }

  void turn(int step) {

    if (sin(10 + sin(a))< 0 && frameCount % 50 == 0) {
      dir.next('l', step);
    } else if (sin(10 + sin(a))> 0 && frameCount % 25 == 2)  {
      dir.next('r', step);
    }
  }
  void move() {
    if (this.found.size() < 100  ) {
      int count = 0;
      while (!checkPos() && count < 8 ) {
       turn(1);
       pos.add(dir.current);
       count++;
      }
      turn(1);
      pos.add(dir.current);
      pos.x = constrain(pos.x, 0, width);
      pos.y = constrain(pos.y, 0, height);
      
     
    }
  }
  void removeResource(int resource_i){
    for(int i = 0; i < myresources.size(); i++){
      if(myresources.get(i) == resource_i){
        myresources.remove(i);
        break;
      }
    }
  }
  boolean checkPos() {
    boolean ok = true;
    if (pos.x <= 0 || pos.x >= width || pos.y <= 0 || pos.y >= height) {
      ok = false;
    }
    return ok;
  }  
  void display() {
    fill(coloragent);
    noStroke();
    rect(pos.x, pos.y, 10,10);
    // textSize(10);
    //fill(255);
    //text(this.food.size(), pos.x + 5, pos.y);
  }
}