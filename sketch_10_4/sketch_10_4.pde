//Example 10-4: Declare and Assign an Array


/*
  First we’ll declare the array outside of setup() and then create and assign
  the values within. The syntax x[0] refers to the first element in the array
  and x[1] is the second:
*/


int[] x; 

void setup(){
  size(1920,1080);
  x = new int[2];
  x[0] = 12;
  x[1] = 2; 
}


