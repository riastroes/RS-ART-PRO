class Worm {

  IntList body;
  Direction dir;
  int r;
  boolean alive = false;
  color strokecolor;
  int strokeweight;

  Worm(color acolor, int astrokeweight) {
    this.body = new IntList();
    this.dir = new Direction();
    this.r = int(random(9));
    this.alive = true;
    this.strokecolor = acolor;
    this.strokeweight = astrokeweight;
  }
  void set(int i) {
    this.body.append(i);
    
  }
  
  boolean live() {

    int pos = this.body.get(this.body.size()-1);
    int x = pos % width;
    int y = int( pos / width);
    r = (r +  floor(random(-1,2)))% 8 ;
    if(r == -1){r = 8;}
    x += this.dir.get(r).x * 10 ;
    y += this.dir.get(r).y * 10;
    if (x >0 && x< width) {
      if (y > 0 && y < height) {
        int i = (y * width) + x;
        if ( world.eat(i)) {
          this.set(i);
        } else {
          alive = false;
        }
      } else {
        alive = false;
      }
    } else {
      alive = false;
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