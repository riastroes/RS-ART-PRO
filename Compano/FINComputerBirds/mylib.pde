PVector posOnCircle(PVector center, float radius, float angle){
  PVector pos = center.copy();
  pos.x += radius * sin(angle);
  pos.y += radius * cos(angle);
  return pos;
}

PVector posOnEllipse(PVector center, float wradius, float hradius, float angle){
  PVector pos = center.copy();
  pos.x += (wradius * sin(angle));
  pos.y += (hradius * cos(angle));
        
  return pos;
}

PVector posOnArc(PVector center, float radius, float from, float to, int steps, int step){
  PVector pos = center.copy();
  float len = to - from;
  float lenstep = len / steps;
  
  pos.x += radius * sin(from + (step * lenstep));
  pos.y += radius * cos(from + (step * lenstep));
  return pos;
}