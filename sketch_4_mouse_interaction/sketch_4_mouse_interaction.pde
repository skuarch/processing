void setup() {
  size(800,600);
  background(255);
}

void draw() {
  //rect(mouseX,mouseY,20,20);
}

void mousePressed() {
  stroke(0);
  fill(150);
  rectMode(CENTER);
  rect(mouseX,mouseY,20,20);
}

void keyPressed() {
  background(255);
}
