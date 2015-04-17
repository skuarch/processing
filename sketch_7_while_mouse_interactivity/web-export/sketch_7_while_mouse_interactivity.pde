void setup() {
  size(800,600);
  background(0);
}

void draw() {
  background(0);
  // start with i as 0
  int i = 0;
  // while i is less than the width of the window
  while (i < width) {
    noStroke();
    float distance = abs(mouseX - i);
    fill(distance);
    rect(i,0,30,height);
    // increase i by 30
    i += 30;
  }
}

