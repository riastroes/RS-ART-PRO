class Engine{
  PVector position = new PVector(0,0);
  PVector direction = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  float maxspeed  =5;
  float maxforce = 0.1; // Maximum steering force
  
  
  PVector seek(PVector target){
    //A vector pointing from the location to the target
    PVector desired = PVector.sub(target, position);
    // Normalize desired and scale to maximum speed
    desired.normalize();
    desired.mult(maxspeed);
    // Steering = Desired minus Velocity
    PVector steer = PVector.sub(target, position);
    steer.limit(maxforce); // Limit to maximum steering force
    return steer;
    
  }
 void applyForce(PVector force) {
    acceleration.add(force);
  }
 PVector update() {
  velocity.add(acceleration);
  velocity.limit(maxspeed);
  position.add(velocity);
  acceleration.mult(0);
  
  return position;
  }
  
}