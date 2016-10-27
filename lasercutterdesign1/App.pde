class App{
  ArrayList<Chain> chain;
  Force force;
  
  App(){
    this.chain = new ArrayList<Chain>();
    this.force = new Force(new PVector(random(width), random(height)), 150, 25);
    float maxy = (ceil(height/40)-1);
    for(int i =0; i < maxy ; i++){
      PVector pos = new PVector(100, 40 + (40 * i));
      this.chain.add(new Chain(pos,9,1, 110));
    }   
  }
  void applyForce(){
    for(int i =0; i < (ceil(height/40)-1); i++){
      this.chain.get(i).addForce(this.force);
    } 
  }
  void draw(){
   
   this.force.change(5);
   this.applyForce();
    for(int i = 0; i < this.chain.size(); i++){
     this.chain.get(i).draw2();
    }
  }
  
      
}
  