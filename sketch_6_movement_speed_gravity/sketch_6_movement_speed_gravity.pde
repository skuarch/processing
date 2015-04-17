float x=400; // x location of ball
float y=0; // y location of ball
float speed=0; // speed of ball
float gravity=0.1;

void setup() {
 size(800,600);
}

void draw() {
  background(255);
  // Display the ball
  fill(0);
  noStroke();
  rectMode(CENTER);
  fill(#F5642F);
  ellipse(x,y,50, 50);
  y=y+speed;
  speed=speed+gravity;
  // If ball reaches the bottom
  // Reverse speed
  if (y>height) {
    speed=speed * -0.95;
  }
}
