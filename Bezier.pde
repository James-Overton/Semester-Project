float x1=random(500);
float y1=random(500);
float x2=random(500);
float y2=random(500);
float x3=random(500);
float y3=random(500);
float x4=random(500);
float y4=random(500);
float t=0; //Typical variable name for parameters
void setup(){
  size(500,500);
  noFill();
  strokeCap(ROUND);
}
void draw(){
  background(128);
  strokeWeight(1);
  stroke(0);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  stroke(255,0,0); 
  line(x1,y1,x2,y2); //Black Primary lines
  line(x2,y2,x3,y3);
  line(x3,y3,x4,y4);
  stroke(0,255,0);
  line(x1+(x2-x1)*t,y1+(y2-y1)*t,x2+(x3-x2)*t,y2+(y3-y2)*t); //Green, secondary lines
  line(x2+(x3-x2)*t,y2+(y3-y2)*t,x3+(x4-x3)*t,y3+(y4-y3)*t); //The ends of the green lines move along the red lines at a steady rate.
  stroke(0,0,255);
  
  //Tertiary line
  line((x1+(x2-x1)*t)+((x2+(x3-x2)*t)-(x1+(x2-x1)*t))*t,(y1+(y2-y1)*t)+((y2+(y3-y2)*t)-(y1+(y2-y1)*t))*t,(x2+(x3-x2)*t)+((x3+(x4-x3)*t)-(x2+(x3-x2)*t))*t,(y2+(y3-y2)*t)+((y3+(y4-y3)*t)-(y2+(y3-y2)*t))*t);
  stroke(0);
  strokeWeight(3); //Dots
  point(x1,y1);
  point(x2,y2);
  point(x3,y3);
  point(x4,y4);
  point((x1+(x2-x1)*t)+((x2+(x3-x2)*t)-(x1+(x2-x1)*t))*t+(((x2+(x3-x2)*t)+((x3+(x4-x3)*t)-(x2+(x3-x2)*t))*t)-((x1+(x2-x1)*t)+((x2+(x3-x2)*t)-(x1+(x2-x1)*t))*t))*t,(y1+(y2-y1)*t)+((y2+(y3-y2)*t)-(y1+(y2-y1)*t))*t+(((y2+(y3-y2)*t)+((y3+(y4-y3)*t)-(y2+(y3-y2)*t))*t)-((y1+(y2-y1)*t)+((y2+(y3-y2)*t)-(y1+(y2-y1)*t))*t))*t);
  stroke(255,255,0); //Yellow points
  point(x1+(x2-x1)*t,y1+(y2-y1)*t);
  point(x2+(x3-x2)*t,y2+(y3-y2)*t);
  point(x3+(x4-x3)*t,y3+(y4-y3)*t);
  stroke(0,0,255);
  point((x1+(x2-x1)*t)+((x2+(x3-x2)*t)-(x1+(x2-x1)*t))*t,(y1+(y2-y1)*t)+((y2+(y3-y2)*t)-(y1+(y2-y1)*t))*t);
  point((x2+(x3-x2)*t)+((x3+(x4-x3)*t)-(x2+(x3-x2)*t))*t,(y2+(y3-y2)*t)+((y3+(y4-y3)*t)-(y2+(y3-y2)*t))*t);
  if(t>=0.99){
    t=0;
  }else{
    t+=0.01;
  }
}
void mousePressed(){
  x1=random(500);
  x2=random(500);
  x3=random(500);
  x4=random(500);
  y1=random(500);
  y2=random(500);
  y3=random(500);
  y4=random(500);
}