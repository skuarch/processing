// Import the Sonia library
import pitaru.sonia_v2_9.*;
void setup(){
size(200,200);
Sonia.start(this);
// Start listening to the microphone
LiveInput.start();
smooth();
}
void draw() {
background(255,120,0);
// Get the overall volume (between 0 and 1.0)
float level = LiveInput.getLevel();
fill(200);
stroke(50);
// Draw an ellipse with size based on volume
ellipse(width/2,height/2,level*200,level*200);
}
// Close the sound engine
public void stop(){
Sonia.stop();
super.stop();
}
