PImage img1,img2;
PImage outImg;
void setup(){
  img1 = loadImage("cat.jpg");
  img2 = loadImage("cat2.jpg");
  size(400,400);
}

void draw(){
  outImg = alphaBlending(img1, img2);
  image(outImg,0,0);
}

PImage alphaBlending(PImage _img1, PImage _img2){
  PImage _outImg = createImage(400,400,RGB); 
  
  for(int y = 0; y < _outImg.height; y++){
    for(int x = 0; x < _outImg.width; x++){
      color _rgb1 = _img1.get(x,y);
      color _rgb2 = _img2.get(x,y);
      float alpha = abs(200-(x-(_outImg.width/2)))/(_outImg.width*1.0);
      color rgb = color(red(_rgb1)*alpha+(1-alpha)*red(_rgb2), green(_rgb1)*alpha+(1-alpha)*green(_rgb2), blue(_rgb1)*alpha+(1-alpha)*blue(_rgb2));
      
      _outImg.set(x,y,rgb);
    }
  }
  return _outImg;
}
