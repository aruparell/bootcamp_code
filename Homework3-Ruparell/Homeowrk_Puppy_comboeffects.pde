PImage myImage;
PFont myFont;
int winSize = 1280;
int imgSize = 500;


void setup () {

  size (winSize, winSize);
  myImage = loadImage("puppy.jpg");
  myFont = loadFont("BDBrick-48.vlw");
}

void draw() {
  background(200);
  textFont(myFont, 60);
  //imageMode(CENTER);
  pushMatrix ();
  translate (winSize/2, winSize/2);
  float freq = map(mouseX, 0, width, 0.001, 1);
  float scale = map(sin(frameCount * freq), -4, 3, 100, 500);
  rotate (radians(frameCount * freq));

  image(myImage, 0, 0, scale, scale);
  fill(200,105,200);
  text("Just a cute puppy",scale, scale);
  
  popMatrix();
  int r = mouseX/3;
  int g = mouseX + mouseY;
  int b = mouseY/3;
  tint(r,g,b);
  image(myImage, mouseX,mouseY);
}




