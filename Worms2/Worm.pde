class Worm {

  IntList body;
  Direction direction;
  int dir;
  boolean alive = false;
  color strokecolor;
  int strokeweight;

  Worm(color acolor, int astrokeweight) {
    this.body = new IntList();
    this.direction = new Direction();
    this.dir = int(random(9));
    this.alive = true;
    this.strokecolor = acolor;
    this.strokeweight = astrokeweight;
  }
  void set(int i) {
    this.body.append(i);
  }
  int nextStep(int last, float step) {
    int next = last;
    int x = last % width;
    int y = int( last / width);
    this.dir = (this.dir +  floor(random(-1, 2)))% 8 ;
    if (this.dir == -1) {
      this.dir = 8;
    }
    x += this.direction.get(dir).x * step ;
    y += this.direction.get(dir).y * step;
    next = (y * width) + x;
    return next;
  }
  boolean live() {
    int step = 10;
    int last = this.body.get(this.body.size()-1);
    int next = this.nextStep(last, step);
    int x = next % width;
    int y = int( next / width);
    if (x >step && x < width-step) {
      if (y > step && y < height-step) {
        if ( world.eat(next)) {
          this.set(next);
        } else {
          this.alive = false;
        }
      } else {
        this.alive = false;
      }
    } else {
      this.alive = false;
    }
    return this.alive;
  }
  void draw() {
    int x, y;
    noFill();
    stroke(this.strokecolor);
    strokeWeight(this.strokeweight);
    beginShape();
    for (int b =0; b < this.body.size(); b++) {
      x = this.body.get(b) % width;
      y = int(this.body.get(b) / width);
      curveVertex(x, y);
    }
    endShape();
  }
}