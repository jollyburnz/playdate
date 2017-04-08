/*
* Demonstrates the use of the GifAnimation library.
* the left animation is looping, the one in the middle 
* plays once on mouse click and the one in the right
* is a PImage array. 
* the first two pause if you hit the spacebar.
*/

import gifAnimation.*;
OPC opc;

PImage[] animation;
Gif loopingGif;
Gif nonLoopingGif;
boolean pause = false;

public void setup() {
  size(583, 800);
  frameRate(100);
  
  println("gifAnimation " + Gif.version());
  // create the GifAnimation object for playback
  loopingGif = new Gif(this, "rainbow.gif");
  loopingGif.loop();
  //nonLoopingGif = new Gif(this, "lavalamp.gif");
  //nonLoopingGif.play();
  //nonLoopingGif.ignoreRepeat();
  //// create the PImage array for the interactive display
  //animation = Gif.getPImages(this, "lavalamp.gif");
  opc = new OPC(this, "127.0.0.1", 7890);
  int spacing = 1;
  int offsetX = 0;
  int offsetY = 0;
  float rotation = PI*3/2;
  
  opc.ledGrid(480, 60, 8, width/2+offsetX-spacing*8*3, height/2+offsetY, spacing, spacing, rotation, false);
  opc.ledGrid(0, 60, 8, width/2+offsetX, height/2+offsetY, spacing, spacing, rotation, false);
  opc.ledGrid(960, 60, 8, width/2+offsetX+spacing*8*3, height/2+offsetY, spacing, spacing, rotation, false);
  opc.setStatusLed(false);
}

void draw() {
  //background(255 / (float)height * mouseY);
  image(loopingGif, 10, height / 2 - loopingGif.height / 2);
  //image(nonLoopingGif, width/2 - nonLoopingGif.width/2, height / 2 - nonLoopingGif.height / 2);
  //image(animation[(int) (animation.length / (float) (width) * mouseX)], width - 10 - animation[0].width, height / 2 - animation[0].height / 2);
  //int spacing = 2;
  //int offsetX = -190;
  //int offsetY = 0;
  //opc.ledGrid(480, 60, 8, width/2+spacing*8+offsetX+mouseX, height/2+offsetY+mouseY, spacing, spacing, PI*3/2, false);

  
  //opc.ledGrid(0, 64, 8, width/2+spacing*8+offsetX+mouseX, height/2+offsetY+mouseY, spacing, spacing, PI*3/2, false);

  //int spacing = 1;
  //int offsetX = 0;
  //int offsetY = 0;
  //float rotation = PI*3/2;
  
  //opc.ledGrid(480, 60, 8, width/2+offsetX+mouseX-spacing*8*3, height/2+offsetY+mouseY, spacing, spacing, rotation, false);
  //opc.ledGrid(0, 60, 8, width/2+offsetX+mouseX, height/2+offsetY+mouseY, spacing, spacing, rotation, false);
  //opc.ledGrid(960, 60, 8, width/2+offsetX+mouseX+spacing*8*3, height/2+offsetY+mouseY, spacing, spacing, rotation, false);

  opc.setColorCorrection(3.0, 0.7, 0.7, 0.7);
}
//
//void mousePressed() {
//  nonLoopingGif.play();
//}

//void keyPressed() {
//  if (key == ' ') {
//    if (pause) {
//      nonLoopingGif.play();
//      loopingGif.play();
//      pause = false;
//    } 
//    else {
//      nonLoopingGif.pause();
//      loopingGif.pause();
//      pause = true;
//    }
//  }
//}