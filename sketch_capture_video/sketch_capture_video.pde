import processing.video.*;
// Step 2. Declare a Capture object
Capture video;
void setup ( ) {
 size (640, 480);
 // Step 3. Initialize Capture object via Constructor
 // video is 320×240, @15 fps
 video = new Capture (this, 640, 480, 30);
 video.start();
}
void draw () {
 // Check to see if a new frame is available
 if (video.available ()) {
  // If so, read it.
  video.read ();
 }
 // Display the video image
 image (video, 0, 0);
}
