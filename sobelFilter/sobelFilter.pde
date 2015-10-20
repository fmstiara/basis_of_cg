float [][]fx = {
  {-1, 0, 1},
  {-2, 0, 2},
  {-1, 0, 1},
};

float [][]fy = {
  {1, 2, 1},
  {0, 0, 0},
  {-1, -2, -1},
};
PImage img;

void setup(){
  img = loadImage("result.jpg");
  size(img.width, img.height);
  PImage out = sobelFilter(img);
  image(out,0,0);
}

void draw(){
}

PImage sobelFilter(PImage _img){
  PImage _outImg = createImage(_img.width, _img.height, RGB);
  for(int y = 1; y < _img.height-1; y++){
    for(int x = 1; x < _img.width-1; x++){     
      int redx = 0;
      int greenx = 0;
      int bluex = 0;
      int redy = 0;
      int greeny = 0;
      int bluey = 0;
      for(int m = 0; m <= 2; m++){
        for(int n = 0; n <= 2; n++){
          redx += red(_img.get( x+m-1, y+n-1))*fx[m][n];
          greenx += green(_img.get( x+m-1, y+n-1))*fx[m][n];
          bluex += blue(_img.get( x+m-1, y+n-1))*fx[m][n];
          redy += red(_img.get( x+m-1, y+n-1))*fy[m][n];
          greeny += green(_img.get( x+m-1, y+n-1))*fy[m][n];
          bluey += blue(_img.get( x+m-1, y+n-1))*fy[m][n];
        }
      }
      _outImg.set(x,y,color(sqrt(redx*redy),sqrt(greenx*greeny),sqrt(bluex*bluey)));
    }
  }
  return _outImg;
}
  
