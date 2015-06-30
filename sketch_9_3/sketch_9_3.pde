// Robots 7: Objects

/*
  A software object combines methods (functions) and fields (variables)
  into one unit. The Robot class in this example defines all of the robot
  objects that will be created from it. Each Robot object has its own set of
  fields to store a position and the illustration that will draw to the screen.
  Each has methods to update the position and display the illustration.

  The parameters for bot1 and bot2 in setup() define the x- and y-coordinates
  and the .svg file that will be used to depict the robot. The tempX and tempY
  parameters are passed into the constructor and assigned to the xpos and
  ypos fields. The svgName parameter is used to load the related illustration.
  The objects (bot1 and bot2) draw at their own location and with a different
  illustration because they each have unique values passed into the objects
  through their constructors:
*/


Robot bot1; 
Robot bot2;

void setup(){
   size(1920,1080);
   bot1 = new Robot("circle.svg", width*0.33, height/2);
   bot2 = new Robot("triangle.svg", width*0.66, height/2);
   smooth();
}

void draw(){
    background(204);
    
    bot1.update();
    bot1.display();
    
    bot2.update();
    bot2.display();
}

class Robot {
  
   float xpos;
   float ypos;
   float angle;
   PShape botShape;
   float yoffset = 0.0;
   
   Robot (String svgName, float tempX, float tempY){
      botShape = loadShape(svgName);
      xpos = tempX;
      ypos = tempY;
      angle = random(0, TWO_PI);
   }

  void update(){
    angle += 0.05;
    yoffset = sin(angle) * height * .25;
  }
  
  void display(){
    shape(botShape, xpos, ypos + yoffset);    
  }

}

