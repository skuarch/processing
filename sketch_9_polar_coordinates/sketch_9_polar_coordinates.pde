// A Polar coordinate
float r=75;
float theta=0;
void setup() {
  size(200,200);
  background(255);
  smooth();
}

void draw() {
  // Polar to Cartesian conversion
  float x=r * cos(theta);
  float y=r * sin(theta);
  // Draw an ellipse at x,y
  noStroke();
  fill(0);
  ellipse(x + width/2, y+height/2, 16, 16); // Adjust for center of window
  // Increment the angle
  theta +=0.01;
}
