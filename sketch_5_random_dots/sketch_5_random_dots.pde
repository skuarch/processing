float r;
float g;
float b;
float a;
float diam;
float x;
float y;
void setup() {
 size(800,600);
 background(0);
 smooth();
}
void draw() {
    // Fill all variables with random values
     r=random(255);
   g=random(255);
   b=random(255);
   a=random(255);
   diam=random(60);
   x=random(width);
   y=random(height);
   // Use values to draw an ellipse
   noStroke();
   fill(r,g,b,a);
   ellipse(x,y,diam,diam);
}
