class Walker{
  ArrayList<PVector> pos;
  int i;
  color fillcolor;
  int mistakes;
  
  Walker(Grid grid, int i, color acolor){
    this.pos = new ArrayList<PVector>();
    this.pos.add(grid.pos[i]);
    this.i = i;
    this.fillcolor = acolor;
    this.mistakes = 0;
  }
  void next(Grid grid){
    PVector step;
    int old = this.i;
    int r = int(random(4));
    if(r == 0 && this.i < grid.pos.length-1){
      this.i +=1;
    }
    else if(r == 1 && this.i >0 ){
      this.i -= 1;
    }
    else if(r == 2 && this.i + grid.wmax < (grid.wmax * grid.hmax)){
      this.i += grid.wmax;
    }
    else if(r == 3 && this.i - grid.wmax > 0){
      this.i -= grid.wmax;
    }
    step = grid.pos[this.i]; 
    
    if(!isStepInList(step)){
      this.pos.add(step);
    }
    else{
      this.i = old;
      this.mistakes++;
    }
    if(this.mistakes > 20){
      this.restart();
    }
  }
  void restart(){
    this.mistakes = 0;
    PVector first = this.pos.get(0);
    this.pos = new ArrayList<PVector>();
    this.pos.add(first);
    
  }
  boolean isStepInList(PVector p){
    boolean in = false;
    for(int i = 0; i < this.pos.size(); i++){
      if(this.pos.get(i).x == p.x && this.pos.get(i).y == p.y){
        in = true;
        break;
      }
    }
    return in;
  }
  void show1(){
    int s;
    for(int i = 0; i < this.pos.size(); i++){
      s =this.pos.size() -i;
      fill(this.fillcolor);
      stroke(0);
      ellipse(this.pos.get(i).x, this.pos.get(i).y,s,s);
      
      noFill();
      stroke(255);
      strokeWeight(1);
      ellipse(this.pos.get(i).x, this.pos.get(i).y,s-2,s-2);
    }
  }
  void show2(){
    int s;
    for(int i = 0; i < this.pos.size(); i++){
      s =this.pos.size() -i;
      fill(this.fillcolor);
      stroke(0);
      rect(this.pos.get(i).x, this.pos.get(i).y,s/2,s ,10);
      
      noFill();
      stroke(this.fillcolor);
      strokeWeight(1);
      rect(this.pos.get(i).x, this.pos.get(i).y,s/2+2,s+2);
    }
  }
    
}
  