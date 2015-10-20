PImage img,outImg;

void setup(){
  img = loadImage("img1.jpg");
  size(img.width,img.height);
  outImg = posterization(img); 
  
}

void draw(){
  image(outImg, 0, 0);
}

PImage posterization(PImage _img){
  PImage _outImg = createImage(_img.width, _img.height, RGB);
  
  for(int y = 0; y < _outImg.height; y++){
    for(int x = 0; x < _outImg.width; x++){
      color _rgb = _img.get(x,y);
      float gray = 0.299*red(_rgb)+0.587*green(_rgb)+0.114*blue(_rgb);
      gray = (int(gray)/50)*50;
      println(gray);
      color rgb = color(gray,gray,gray);
      _outImg.set(x,y,rgb);
    }
  }
  return _outImg;
}
