color blue, green, darkGreen, white, brown;
int middleX, middleY;

void setup() {
  size(500, 500);
  middleX = width/2;
  middleY= height/2;
  white = color (255, 255, 255);
  green = color(26, 123, 22);
  darkGreen = color(5, 85, 1);
  brown = color(53, 34, 34);
  blue = color(149, 212, 213);
}

void draw() {

  background(blue);
  noStroke();
  fill (white);
  ellipse (middleX-200, middleY-200, 100, 100); //center of cloud;
  ellipse (middleX-250, middleY-180, 100, 100); //center of cloud;
  ellipse (middleX+250, middleY-200, 100, 100); //center of cloud;
  ellipse (middleX+300, middleY-200, 50, 50); //center of cloud;
  
    noStroke();
  fill (white);
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
}

