void setup(){
  size(400,400,P3D);
}

void draw(){
  background(-1);
  
  float tx = width/2;
  float ty = height/2;
  float tz = 0;
  
  applyMatrix(
    1,0,0,tx,
    0,1,0,ty,
    10,5,1,tz,
    0,0,0,1
  );
  
  fill(255,255,0);
  box(100);
}
