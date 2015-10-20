PImage img1,img2;
PImage outImg;
int flag;
void setup(){
  img1 = loadImage("cat.jpg");
  img2 = loadImage("cat2.jpg");
  outImg = loadImage("cat.jpg");
  size(400,400);
}

void draw(){
  if(flag==1)alphaBlending(img1, img2);
  image(outImg,0,0);
}

void alphaBlending(PImage _img1, PImage _img2){
  outImg = loadImage("cat.jpg");
  for(int y = 0; y < outImg.height; y++){
    for(int x = 0; x < outImg.width; x++){
      float d = dist(x,y,mouseX,mouseY);
      if(d < 100){
        float alpha = d/100.0;
        color _rgb1 = _img1.get(x,y);
        color _rgb2 = _img2.get(x,y);
        color rgb = color(red(_rgb1)*alpha+(1-alpha)*red(_rgb2), green(_rgb1)*alpha+(1-alpha)*green(_rgb2), blue(_rgb1)*alpha+(1-alpha)*blue(_rgb2));
        
        outImg.set(x,y,rgb);
       }
    }
  }
}

void mousePressed(){
  flag = 1-flag;
}

void keyPressed(){
  outImg.save("result.jpg");
}

