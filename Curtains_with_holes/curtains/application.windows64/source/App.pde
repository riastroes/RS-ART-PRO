class App{
  ArrayList<Chain> chain;
  Force force;
  
  App(){
    this.chain = new ArrayList<Chain>();
    this.force = new Force(new PVector(random(width), random(height)), 150, 5);
    
    for(int i =0; i < ceil(width/10); i++){
      PVector pos = new PVector(10 * this.chain.size(), 0);
      this.chain.add(new Chain(pos, 1,10, ceil(height/10)));
    }   
  }
  void applyForce(){
    for(int i =0; i < ceil(width/10); i++){
      this.chain.get(i).addForce(this.force);
    } 
  }
  void draw(){
    this.force.change(5);
    this.applyForce();
    for(int i = 0; i < this.chain.size(); i++){
     this.chain.get(i).draw();
    }
  }
      
}
  