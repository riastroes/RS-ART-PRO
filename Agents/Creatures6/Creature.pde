class Creature{
  
  
  Agent agent;
  PVector head;
  ArrayList<PVector> body;
  int ring;
  Dir dir;
  
  
  Creature(int x, int y){
    dir = new Dir();
    
    head = new PVector(x,y);
    body = new ArrayList<PVector>();
    body.add(new PVector(x,y));
    color r = resource.getColor(head);
    resource.collect(r);
    agent = new Agent(head, r);
    
  }
  void live(){
    if(agent.myresources.size() > 0){
      agent.find();
      grow();
    }
  }
  void grow(){
    if(agent.found.size() > 0){
        ring = int(agent.found.size()  / 8);
        if(ring > body.size()){
          PVector b = body.get(body.size()-1); //last
          b.add(dir.randomdir().mult(5));
          body.add(new PVector(b.x, b.y));
        }
    }
  }
 
  void showInfo(){
    String t0 = "color: " + red(agent.coloragent) + "," + green(agent.coloragent) + "," +   blue(agent.coloragent);
    String t1 = "resources: " + agent.myresources.size();
    
    println(t0);
    println(t1);
  }
  void display(){
    stroke(agent.coloragent);
    line(head.x, head.y, agent.pos.x, agent.pos.y);
  }
}