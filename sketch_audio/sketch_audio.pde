// Import the Sonia library
import pitaru.sonia_v2_9.*;
// A Sample object (for a sound)
Sample tone;
void setup(){
size(200,200);
Sonia.start(this); // Start Sonia engine.
println("status: "+ Sonia.getStatus());
// Create a new sample object.
tone = new Sample("kikiriki.wav");
// Loop the sound forever
// (well, at least until stop() is called)
tone.repeat();
smooth();
}
void draw() {
if (tone.isPlaying()) {
background(255);
} else {
background(100);
}
// Set the volume to a range between 0 and 1.0
float ratio = (float) mouseX / width;
tone.setVolume(ratio);
// Set the rate to a range between 0 and 88,200
// Changing the rate alters the pitch
ratio = (float) mouseY / height;
tone.setRate(ratio*88200);
// Draw some rectangles to show what is going on
stroke(0);
fill(175);
rect(0,160,mouseX,20);
stroke(0);
fill(175);
rect(160,0,20,mouseY);
}
// Pressing the mouse stops and starts the sound
void mousePressed() {
if (tone.isPlaying()) {
tone.stop();
} else {
tone.repeat();
}
}
// Close the sound engine
public void stop(){
Sonia.stop();
super.stop();
}
