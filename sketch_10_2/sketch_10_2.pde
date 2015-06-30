// Example 10-2: Too Many Variables

/*
The code for the previous example is still manageable, but what if we want
to have five circles? We need to add three more variables to the two we
already have:
*/


float x1 = 10;
float x2 = 10;
float x3 = 10;
float x4 = 10;
float x5 = 10;
float x6 = 10;
float x7 = 10;
float x8 = 10;


void setup(){
  size(1920,1080);
  smooth();
  noStroke(); 
}

void draw(){
  background(0);
  x1 += random(0.5,5);
  x2 += random(0.5,5);
  x3 += random(0.5,5);
  x4 += random(0.5,5);
  x5 += random(0.5,5);
  x6 += random(0.5,5);
  x7 += random(0.5,5);
  x8 += random(0.5,5);
  arc(x1, 100, 40, 40, 0.52, 5.76);
  arc(x2, 200, 40, 40, 0.52, 5.76);  
  arc(x3, 300, 40, 40, 0.52, 5.76);
  arc(x4, 400, 40, 40, 0.52, 5.76);  
  arc(x5, 500, 40, 40, 0.52, 5.76);
  arc(x6, 600, 40, 40, 0.52, 5.76);
  arc(x7, 700, 40, 40, 0.52, 5.76);  
  arc(x8, 800, 40, 40, 0.52, 5.76);

}

