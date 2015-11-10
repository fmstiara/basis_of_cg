void setup(){
  size(400,400, P3D);
}

void draw(){
  background(-1);
  fill(0);
  stroke(-1);
  
  drawOctahedron(width/2, height/2,0);
}

void drawOctahedron(int posX, int posY, int posZ){
  translate(posX, posY, posZ);
  camera(mouseX-200,mouseY-200,400,0,0,0,0,1,0);
  rotateY(radians(mouseX>200?frameCount:-frameCount));
  beginShape();
  vertex(100,0,0);
  vertex(0,0,100);
  vertex(0,100,0);
  endShape(CLOSE);
  beginShape();
  vertex(-100,0,0);
  vertex(0,0,100);
  vertex(0,100,0);
  endShape(CLOSE);
  beginShape();
  vertex(100,0,0);
  vertex(0,0,-100);
  vertex(0,100,0);
  endShape(CLOSE);
  beginShape();
  vertex(100,0,0);
  vertex(0,0,100);
  vertex(0,-100,0);
  endShape(CLOSE);
  beginShape();
  vertex(100,0,0);
  vertex(0,0,-100);
  vertex(0,-100,0);
  endShape(CLOSE);
  beginShape();
  vertex(-100,0,0);
  vertex(0,0,100);
  vertex(0,-100,0);
  endShape(CLOSE);
  beginShape();
  vertex(-100,0,0);
  vertex(0,0,-100);
  vertex(0,100,0);
  endShape(CLOSE);
  beginShape();
  vertex(-100,0,0);
  vertex(0,0,-100);
  vertex(0,-100,0);
  endShape(CLOSE);
}
