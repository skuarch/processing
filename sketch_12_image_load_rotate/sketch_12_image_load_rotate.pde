PImage duke;
float x,y; // Variables for image location
float rot; // A variable for image rotation
void setup() {
 size(600,400);
 // load image, initialize variables
 duke=loadImage("MexicanDuke_small.png");
 x=0.0f;
 y=width/2.0f;
 rot=0.0f;
}
void draw() {
 background(255);
 // Translate and rotate
 translate(x,y);
 rotate(rot);
 // tint(100,50);  Try this!!
 image(duke,0,0); // Draw image
 // Adjust variables to create animation
 x += 1.0;
 rot +=0.01;
 if (x>width) {
 x=0;
 }
}
