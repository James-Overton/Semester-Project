void setup(){
  size(500,500);
}
void draw(){
  background(255); //resets the image
  if(mouseX>200 && mouseX<300 && mouseY>200 && mouseY<300){ //makes sure that my mouse is inside the rectangle
    fill(128); //darkens the rectangle
  }else{
    fill(192); //default regtangle color 
  }
  if(mousePressed && mouseX>200 && mouseX<300 && mouseY>200 && mouseY<300){ //makes sure that I'm clicking INSIDE the line
    fill(64);
    rect(205,205,90,90); //shrinks the rectangle
  }else{
    rect(200,200,100,100); //default rectangle size
  }
}