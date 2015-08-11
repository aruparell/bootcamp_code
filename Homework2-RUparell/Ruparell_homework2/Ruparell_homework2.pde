void setup () {
  smooth ();
  size(500,500);
  
  //frameRate (1);
}

void draw() {
  //making background color change with mouse position
  
  background(mouseX/2 + mouseY/2, 400, 400);
  
  
  //making fill color of the ellipse change with mouse position as opposite color
  fill(500-(mouseX/2 + mouseY/2), 400,400);
  
  println(mouseX+ ", " + mouseY);
  
  //strokeWeight(2);
  //drawing a line from current pointer location to the last recorded pointer location
  line(mouseX,mouseY,pmouseX,pmouseY);
  
  //if mouse is pressed and the button being pressed is the left one
  if (mousePressed & mouseButton == LEFT) {
    //make yellow/orange if moving to the right
    if ((mouseX-pmouseX) > 0) {
      background(#ffaa00);
    }
    
    // make background white if not moving
    
    else if (mouseX-pmouseX==0) {
      background (#ffffff);
    }
    
    //make background blue if moving to the left
    else {
      background (#009999);
    }
  }
  
  // print an ellipse at the mouse position of mouseX width and mouseY height
  
  ellipse (mouseX,mouseY, width-mouseX, height-mouseY);
  
  }

