void setup(){}
void draw(){
  for(int x=0;x<100;x++){
    for(int y=0;y<100;y++){
      stroke(int(random(256)),int(random(256)),int(random(256)));
      point(x,y);
    }
  }
}