Circle[] circles;
Rect rect;
color acolor;

void setup() {
  size(800, 800);
  circles = new Circle[100];
  for (int i = 0; i < 100; i++) {
    PVector pos = new PVector(random(width), random(height));
    circles[i] = new Circle(pos, random(50, 100), 0.1);
  }
  rect = new Rect(new PVector(random(width), random(height)), 50, 0.2);
}
void draw() {
  background(255, 10);
  for (int i = 0; i < 100; i++) {
    PVector force = new PVector(0, 0);
    force.x = ((width/2)-circles[i].pos.x);
    force.y = ((height/2) - circles[i].pos.y);
    force.normalize();
    force = intersectRect(i, force);
    circles[i].changeDir(force);
    circles[i].move();
    circles[i].draw();
  }
  PVector force = new PVector(0, 0);
    force.x = ((width/2)-rect.pos.x);
    force.y = ((height/2) - rect.pos.y);
    force.normalize();

  rect.changeDir(force);
  rect.move();
  rect.draw();
}
PVector intersectRect(int index, PVector force) {
  PVector newforce = force;


  if (distance(this.rect.pos, this.circles[index].pos) < this.circles[index].radius) {
    PVector dir = PVector.sub( this.rect.pos, this.circles[index].pos);
    dir.normalize();
    newforce.add(dir).mult(100);
  }

  return newforce;
}
PVector intersect(int index, PVector force) {
  PVector newforce = force;
  for (int i = 0; i < 100; i++) {
    if (i != index) {
      if (distance(this.circles[i].pos, this.circles[index].pos) < this.circles[index].radius) {
        PVector dir = PVector.sub(this.circles[index].pos, this.circles[i].pos);
        dir.normalize();
        newforce.add(dir).mult(5);
        //newforce.normalize();
        break;
      }
    }
  }
  return newforce;
}
float distance(PVector a, PVector b) {
  return dist(a.x, a.y, b.x, b.y);
}