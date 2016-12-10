class BezierCircle{
  PVector center;
  PVector begin;
  PVector end;
  PVector control1, control2;
  float radius;
  float a;

  BezierCircle(float radius){
   this.center = new PVector(width/2, height/2);
   this.radius = radius;
   this.begin = new PVector(0, -this.radius);
   this.end = new PVector(0, +this.radius);
   this.control1 = this.begin.copy();
   this.control2 = this.begin.copy();
   this.a = 0;
  }

void create(){
  this.begin = posOnCircle(new PVector(0,0), this.radius, this.a);
  
  this.control1.x = map(sin(this.a),-1,1,this.radius,0);
  this.control2.x = map(sin(this.a),-1,1, 0, this.radius);
  this.a += 0.2;
}
void showBegin(){
 pushMatrix();
    translate(this.center.x, this.center.y);
    ellipse(this.begin.x, this.begin.y,5,5);
  popMatrix();
}



void draw(){
  pushMatrix();
    translate(this.center.x,this.center.y);
    beginShape();

      vertex(this.begin.x, this.begin.y);
      bezierVertex(this.control1.x, this.control1.y, this.control2.x, this.control2.y, this.end.x, this.end.y);

    endShape();

  popMatrix();


}
}

//Project.prototype.construct = function(){
//  //construct vertical line

//  this.begin = createVector(this.rect.width/2,0);
//  this.end = createVector(this.rect.width/2,this.rect.height);
//  this.begin = createVector(this.center.x,0);
//  this.end = createVector(this.center.x,this.rect.height);
//  this.by = this.begin.y;
//  this.ey = this.end.y;
//  this.control1 = this.begin.copy();
//  this.control2 = this.end.copy();
//}
//Project.prototype.change = function(nr){
//  switch(nr){
//      case 1:{
//      //
//      this.style(1);
//      var p = createVector(this.rect.width/2, this.rect.height/2);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin = app.posOnCircle(p, this.rect.width/2, 6, this.a);
//      this.control1.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      this.control2.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      break
//    }

//    case 2:{
//      //
//      this.style(1);
//      var p = createVector(this.rect.width/2, this.rect.height/2);
//      var p = createVector(this.center.x, this.center.y);
//      this.control1 =app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.control2.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      this.control2.x = map(sin(this.a),-1,1, 0,  this.rect.width);
//      this.a += 0.2
//      break;
//    }
//    case 3:{
//      //
//      this.style(1);

//      var p = createVector(this.center.x, this.center.y);
//      this.begin = app.posOnCircle(p, this.rect.width/2,60, -this.a);
//      this.control1.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      this.control2.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      this.a += 0.1
//      break;
//    }
//    case 4:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin = app.posOnCircle(p, this.rect.width/2,60, -this.a);
//      this.end = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.control1.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      this.control2.x = map(sin(this.a),-1,1, this.rect.width, 0);
//      this.a += 0.2
//      break;
//    }
//    case 5:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin = app.posOnCircle(p, this.rect.width/2, 60, this.a);
//      this.end = app.posOnCircle(p, this.rect.width/2,60, PI + this.a);
//      this.control1 = app.posOnCircle(p, this.rect.width/2,60, PI-this.a);
//      this.control2 = app.posOnCircle(p, this.rect.width/2,60, PI+this.a);
//      this.a += 0.1
//      break;
//    }
//    case 6:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin = app.posOnCircle(p, this.rect.width/2, 60, this.a);
//      this.end = app.posOnCircle(p, this.rect.width/2,60, PI + this.a);
//      this.control1 = app.posOnCircle(p, this.rect.width/2,120, PI-this.a);
//      this.control2 = app.posOnCircle(p, this.rect.width/2,60, PI+this.a);
//      this.a += 0.2
//      break;
//    }
//    case 7:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin = app.posOnCircle(p, this.rect.width/2, 60, this.a);
//      this.end = app.posOnCircle(p, this.rect.width/2,60, PI + this.a);
//      this.control1 = app.posOnCircle(p, this.rect.width/2,360, PI+this.a);
//      this.control2 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.a += 1
//      break;
//    }
//    case 8:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      var radius1 = map(sin(this.a/100),-1,1, 0, -this.rect.width/2);
//      var radius2 = map(sin(this.a/100),-1,1, 0, this.rect.width/2);
//      this.begin = app.posOnCircle(p, radius1, 60, -this.a);
//      //this.end = app.posOnCircle(p, radius2,360, this.a);
//      //this.control1 = app.posOnCircle(p, this.rect.width/2,60, -this.a);
//      //this.control2 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.a += 1
//      break;
//    }
//    case 9:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      var radius1 = map(sin(degrees(this.a)),-1,1, 0, this.rect.width/2);
//      var radius2 = map(sin(degrees(this.a)),-1,1, 0, this.rect.width/4);
//      this.begin = app.posOnEllipse(p, radius1,radius2, 60, -this.a);
//      //this.end = app.posOnCircle(p, radius2,360, this.a);
//      //this.control1 = app.posOnCircle(p, this.rect.width/2,60, -this.a);
//      //this.control2 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.a += 1
//      break;
//    }
//    case 10:{
//      //
//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      var radius1 = map(sin(radians(this.a)),-1,1, 0, this.rect.width/2);
//      var radius2 = map(sin(radians(this.a)),-1,1, 0, this.rect.width/4);
//      this.begin = app.posOnEllipse(p, radius1,radius2, 60, -this.a);
//      this.end = app.posOnEllipse(p, radius1,radius2, 60, this.a);
//      this.control1 = this.control2.copy();
//      //this.end = app.posOnCircle(p, radius2,360, this.a);
//      //this.control1 = app.posOnCircle(p, this.rect.width/2,60, -this.a);
//      //this.control2 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.a += 1
//      break;
//    }
//    case 11:{


//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin.y = map(sin(this.a), -1,1, 0, this.rect.height/2)
//      this.end.y = map(sin(this.a), -1,1,this.rect.height/2, this.rect.height)
//      this.control1 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.control2 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.a += 0.2

//      break;
//    }
//    case 12:{


//      this.style(1);
//      var p = createVector(this.center.x, this.center.y);
//      this.begin.y = map(sin(this.a), -1,1, 0, this.rect.height/2)
//      this.end.y = map(sin(this.a), -1,1,this.rect.height/2, this.rect.height)
//      this.control1 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.control2 = app.posOnCircle(p, this.rect.width/2,60, this.a);
//      this.a += 0.2

//      break;
//    }
//    case 13:{
//      //
//      this.begin = posOnCircle(this.center, this.radius, this.a);
//      this.control1.x = map(sin(this.a),-1,1,this.rect.width,0);
//      this.control2.x = map(sin(this.a),-1,1, 0, this.rect.width);
//      this.a += 0.2
//      break;
//    }
    
//  }
//}