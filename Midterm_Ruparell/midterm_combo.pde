color blue, green, darkGreen, white, yellow, brown, rainbow;
int middleX, middleY;
PImage bg;
float speed;
float starSize = 5;
float size;
int hue;
float a = 0.0;
float s = 0.0;
//Rain r1;

//int numDrops = 40;
//Rain[] drops = new Rain[numDrops]; // Declare and create the array


void setup() {
  int i;
  size(500, 500);
  middleX = width/2;
  middleY= height/2;
  white = color (255, 255, 255);
  green = color(26, 123, 22);
  darkGreen = color(5, 85, 1);
  brown = color(53, 34, 34);
  blue = color(149, 212, 213);
  yellow = color (249,213,55);
  speed = 0.05;
  size = width/4;
  
   // create bg gradient
  bg = createImage(500, 500, RGB);
  for (i = 0; i < bg.pixels.length; i++) {
    bg.pixels[i] = color(0, 0, map(i / bg.width, 0, 500, 0, 100));
  }


//for (int i = 0; i < drops.length; i++) {
//
//    drops[i] = new Rain(); // Create each object
//    r1 = new Rain();
//  }
}

void draw() {

  background(0,0,mouseX/2);
  noStroke();
   fill (mouseX,mouseX,mouseX);
  ellipse (middleX-200, middleY-200, 100, 100); //center of cloud;
  ellipse (middleX-250, middleY-180, 100, 100); //center of cloud;
  ellipse (middleX+250, middleY-200, 100, 100); //center of cloud;
  ellipse (middleX+300, middleY-200, 50, 50); //center of cloud;
  
    noStroke();
  fill (mouseX,mouseX,mouseX);
  ellipse (middleX, middleY-200, 100, 100); //center of cloud;
  ellipse (middleX-50, middleY-180, 100, 100); //center of cloud;
  ellipse (middleX+50, middleY-200, 100, 100); //center of cloud;
  ellipse (middleX+100, middleY-200, 50, 50); //center of cloud;
  
 noStroke();
 fill (darkGreen); //middle hill
 ellipse (middleX, middleY+280, 600,400);
 
 fill (green); //side hills
 ellipse (middleX-400, middleY+280, 600,400);
 ellipse (middleX+400, middleY+280, 600,400);
 
 fill (brown);//trunk
 rect (middleX, middleY, 10, 200);
 fill (green);//tree top
 ellipse (middleX, middleY, 150,150);
 
  fill (brown);//trunk
 rect (middleX-200, middleY+10, 10, 150);
 fill (green);//tree top
 ellipse (middleX-200, middleY, 100,100);
 
fill (brown);//trunk
 rect (middleX+200, middleY+10, 10, 150);
 fill (green);//tree top
 ellipse (middleX+200, middleY, 100,100);
 
 //stars
    a = a + 0.03;
    s = cos(a);
    
    pushMatrix();//left star
  if (mouseX < width/2) {
  fill(yellow);
  }
  else fill(white);
  translate(width*0.1, height*0.15);
  rotate(frameCount / -250.0);
  star(0, 0, 10, 20, 5); 
  

  popMatrix();
  pushMatrix();//right star
   if (mouseX < width/2) {
  fill(yellow);
  }
  else if (mouseX < width/3){
    fill (240,100,59);
  }
  else fill(0,0,255);
  translate(width*0.8, height*0.2);
  rotate(frameCount / -250.0);
  star(0, 0, 10, 20, 5); 
  

  popMatrix();

 pushMatrix(); //middle star

  if (mouseX < width/2) {
  fill(yellow);
  }
  else fill(white);
  translate(width*0.5, height*0.1);
  rotate(frameCount / -200.0);
  star(0, 0, 10, 20, 5); 
  popMatrix();
  
   
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
    scale(s);

  }
  endShape(CLOSE);
  
  //rain
}
//  void keyPressed(){
//    if (key=='r'){
//  fill(255,80);
//  rect(0,0,600,600);
//  //Loop through array to use objects.
//  for (int i = 0; i < drops.length; i++) {
//    drops[i].fall();
//  }
//    }


//class Rain {
//  float r = random(600);
//  float y = random(-height);
//
//  void fall() {
//    y = y + 7;
//    fill(0,10,200,180);
//    ellipse(r, y, 10, 10);
//
//   if(y>height){
//   r = random(600);
//   y = random(-200);
//   }
//
//  }
//}

