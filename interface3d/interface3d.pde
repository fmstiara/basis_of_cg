boolean flag = true;

void setup(){
  size(400,400,P3D);
}

void draw(){
  background(-1);
  drawInterface(100,300);
  drawObject(flag);
}

void mousePressed(){
  if(dist(mouseX,mouseY,150,340)<25){
    if(!flag)flag=true;
  } else if(dist(mouseX,mouseY,250,340)<25) {
    if(flag)flag=false;
  }
    
}

void drawInterface(int posX, int posY){
  pushMatrix()
  translate(posX,posY,0);
  fill(-1);
  rect(0,0,200,80);
  if(flag)fill(255,0,0);
  else fill(30);
  ellipse(50,40,50,50);
  
  if(!flag)fill(255,0,0);
  else fill(30);
  ellipse(150,40,50,50);
  popMatrix();
}

void drawObject(boolean _flag){
  translate(width/2, height/2,-200);
  rotateX(radians(frameCount/2));
  rotateY(radians(frameCount/3));
  if(_flag){
    fill(255,255,0);
    box(200);
  } else {
    fill(100,255,0);
    sphere(200);
  }
}
