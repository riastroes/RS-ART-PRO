class Tower{
  
  PVector pos;
  PVector top;
  float colwidth;
  ArrayList<Etage> etages;
  float topy;
  float topwidth;
  int max;
  float minx; 
  float maxx;
   
  Tower(PVector pos, float colwidth, int max){
    this.pos = pos.copy();
    this.top = this.pos.copy();
    this.colwidth = colwidth;
   
    this.etages = new ArrayList<Etage>();
    this.max = max;
    this.minx = width-(this.colwidth/2);
    this.maxx = (this.colwidth/2);
    createEtages();
  }
  void createEtages(){
    this.top = new PVector(random(50,this.colwidth-50),height);
    for(int i = 0; i < this.max; i++){
      int type = floor(random(1,4));
      this.etages.add(new Etage(this.top,type));
      this.top = this.etages.get(i).pos.copy();
     
      this.top.x += random(this.etages.get(i).width);
      if(this.top.x < 50) this.top.x =50;
      if(this.top.x > width-300) this.top.x = width -300;
      
    }
  }
    
  void draw(){
    strokeWeight(1);
    stroke(0);
    pushMatrix();
      translate(this.pos.x, 0);
      for(int i = 0; i < this.max; i++){
        fill(random(50,255));
        this.etages.get(i).draw();
      }
    popMatrix();
  }
 
}