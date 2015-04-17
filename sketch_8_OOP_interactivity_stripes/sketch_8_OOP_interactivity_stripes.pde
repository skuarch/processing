// An array of stripes
Stripe[] stripes=new Stripe[10];
void setup() {
 size(600,400);
 // Initialize all “stripes”
 for (int i=0; i < stripes.length; i++) {
  stripes[i]=new Stripe();
 }
}
void draw() {
 background(100);
 // Move and display all “stripes”
 for (int i = 0; i < stripes.length; i++) {
  // Check if mouse is over the Stripe
  stripes[i].rollover(mouseX,mouseY);
  stripes[i].move();
  stripes[i].display();
 }
}
class Stripe {
 float x; // horizontal location of stripe
 float speed; // speed of stripe
 float w; // width of stripe
 boolean mouse; // state of stripe (mouse is over or not?)image
 Stripe() {
  x=0;   // All stripes start at 0
  speed=random(1); // All stripes have a random positive speed
  w=random(10,30);
  mouse=false;
 }
 // Draw stripe
 void display() {
  if (mouse) {
   fill(255);
  } else {
   fill(255,100);
  }
  noStroke();
  rect(x,0,w,height);
 }
 // Move stripe
 void move() {
  x += speed;
  if (x > width+20) x=-20;
 }
 // Check if point is inside of Stripe
 void rollover(int mx, int my) {
  // Left edge is x, Right edge is x+w
  if (mx > x && mx<x+w) {
   mouse=true;
  } else {
   mouse=false;
  }
 }
}
