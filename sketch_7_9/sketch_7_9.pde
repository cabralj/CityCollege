

// Move Shapes Randomly

float speed = 2.5;
int diameter = 20;
float x;
float y;

void setup(){
   size(1920, 1080);
   smooth();
   x = width/2;
   y = height/2;
}

void draw(){
  x += random(-speed, speed);
  y += random(-speed, speed);
  ellipse(x, y, diameter, diameter);
}
