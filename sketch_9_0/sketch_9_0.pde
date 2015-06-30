

// 1. Create the Block
// 2. Add the Fields
// 3. Write a Constructor
// 4. Add Methods



class JitterBug {
  
  float x;
  float y;
  int diameter;
  float speed = 10;
  
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



JitterBug red,green,blue;

void setup(){
    size(1920, 1080);
    smooth();
    red = new JitterBug(width/2, height/2, 20);  
    green = new JitterBug(width/2, height/2, 20);  
    blue = new JitterBug(width/2, height/2, 20);  
}

void draw(){
  
  fill(255,0,0);
  red.move();
  red.display();

  fill(0,255,0);
  green.move();
  green.display();
  
  fill(0,0,255);
  blue.move();
  blue.display();
  
}

