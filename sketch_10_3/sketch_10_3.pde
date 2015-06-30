
// Example 10-3: Arrays, Not Variables

/*
Imagine what would happen if you wanted to have 3,000 circles. This
would mean creating 3,000 individual variables, then updating each one
separately. Could you keep track of that many variables? Would you want
to? Instead, we use an array:
*/

float[] x = new float[100];

void setup(){
  size(1920,1080);
  smooth();
  noStroke(); 
  fill(255);
  for (int i=0; i<x.length; i++){
    x[i] = random(-20,width);    
  }
}


void draw(){
  background(0);
  for (int i=0; i<x.length; i++){
    x[i] += random(0.5,20);
    
    x[i] = (x[i] > width) ? -20 : x[i];
    
    float y = i * 20;
    arc(x[i], y, 40, 40, 0.52, 5.76);    
  }
  
}


