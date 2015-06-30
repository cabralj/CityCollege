// Example 9-2: Making Multiple Objects

/*
In Example 9-1, we see something else new: the period (dot) that’s used to
access the object’s methods inside of draw(). The dot operator is used to
join the name of the object with its fields and methods. This becomes
clearer in this example, where two objects are made from the same class.
The jit.move() command refers to the move() method that belongs to the
object named jit, and bug.move() refers to the move() method that
belongs to the object named bug:
*/


class JitterBug {
  
  float x;
  float y;
  int diameter;
  float speed = 20;
  
  JitterBug(float tempX, float tempY, int tempDiameter) {
     x = tempX;
     y = tempY;
     diameter = tempDiameter;  
  }
  
  void move(){
    x += random(-speed,speed);
    y += random(-speed,speed);  
  }
  
  void display(){
    ellipse(x, y, diameter, diameter);
  }
  
}



JitterBug jit;
JitterBug bug;

void setup(){
    size(1920, 1080);
    smooth();
    jit = new JitterBug(width * 0.33, height/2, 50);  
    bug = new JitterBug(width * 0.66, height/2, 10);  
}

void draw(){
  
  jit.move();
  jit.display();

  bug.move();
  bug.display();
  
}

