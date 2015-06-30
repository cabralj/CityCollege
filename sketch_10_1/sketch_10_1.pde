// Example 10-1: Many Variables

/*
To see what we mean, refer to Example 7-3. This code works fine if we’re
moving around only one shape, but what if we want to have two? We need
to make a new x variable and update it within draw():
*/


float x1 = -20;
float x2 = 20;


void setup(){
  size(1920,1080);
  smooth();
  noStroke(); 
}


void draw(){
  background(0);
  x1 += 0.5;
  x2 += 0.5;
  arc(x1, 30, 40, 40, 0.52, 5.76);
  arc(x2, 90, 40, 40, 0.52, 5.76);  
}

