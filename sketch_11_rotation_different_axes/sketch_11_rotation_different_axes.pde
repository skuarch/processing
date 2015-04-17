void setup() {
size(800,600,P3D);
}
void draw() {
  background(255);
  stroke(0);
  fill(255,0,0);
  translate(width/2,height/2);
  rotateX(PI*mouseY/height);
  rotateY(PI*mouseX/width);
  rectMode(CENTER);
  rect(0,0,400,400);
}
