Planet[] system= new Planet[5];
//Planet b;
//Planet c;
void setup(){
  size(500,500);
  colorMode(HSB,100);
  for(int i=0;i<system.length-1;i++){
    system[i] = new Planet();
  }
  //b=new Planet();
  //c=new Planet();
}
void draw(){
  background(0);
  noFill();
  stroke(0,0,100);
  for(int planet=0;planet<5;planet++){
    ellipse(250,250,system[planet].distance*2,system[planet].distance*2);
  }
  stroke(0);
  for(int planet=0;planet<5;planet++){
    pushMatrix();
    system[planet].orbit();
    system[planet].display();
    popMatrix();
  }
  /*pushMatrix();
  b.orbit();
  b.display();
  popMatrix();
  pushMatrix();
  c.orbit();
  c.display();
  popMatrix();*/
  fill(20,100,100);
  ellipse(250,250,50,50);
}
class Planet{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  float gravity;
  float distance;
  float rotation;
  color colour;
  void orbit(){
   rotation+=10*sqrt(1/distance)/distance;
   translate(250,250);
   rotate(rotation);
  }
  void display(){
    fill(colour);
    ellipse(distance,0,diameter,diameter);
    translate(-250,-250);
  }
  Planet(){
    colour=color(random(0,100),random(50,100),random(75,100));
    diameter=random(5,10);
    rotation=random(TAU);
    distance=random(50,200);
  }
}