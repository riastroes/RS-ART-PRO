class Worm {

  IntList body;
  Direction dir;
  R r;
  boolean alive = false;
  color strokecolor;

  Worm() {
    this.body = new IntList();
    this.dir = new Direction();
    this.r = new R(3, 9);
    this.alive = true;
    this.strokecolor = color(random(255),random(255),random(255));
  }
  void set(int i) {
    this.body.append(i);
    voorraad[i] = 0;
    voorraad[i+1] = 0;
    if(i < max - width){
    voorraad[i+width] = 0;
    }
  }
  boolean live() {

    int pos = this.body.get(this.body.size()-1);
    int x = pos % width;
    int y = int( pos / width);
    int d = this.r.get();
    x += this.dir.get(d).x *10;
    y += this.dir.get(d).y *10;
    if (x >0 && x< width) {
      if (y > 0 && y < height) {
        int i = (y * width) + x;
        if ( voorraad[i] > 0) {
          this.set(i);
        } else {
          alive = false;
        }
      }
      else{
        alive = false;
      }
    }
    else{
      alive = false;
    }
    return this.alive;
  }
  void draw() {
    int x, y;
    noFill();
    stroke(this.strokecolor);
    beginShape();
    for (int b =0; b < this.body.size(); b++) {
      x = this.body.get(b) % width;
      y = int(this.body.get(b) / width);
      curveVertex(x, y);
    }
    endShape();
  }
}