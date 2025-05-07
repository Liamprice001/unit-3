 //<>//

import processing.pdf.*;

color red = #F50C0C; //<>// //<>// //<>//
color grey = #B4B4B4;
float sliderX;
float thickness;
color blue = #110BE0;
color black = #272424;
color selectedcolor;
color green = #23501A;
color orange = #FF5F03;
color cyan = #03FFDB;
int  toggle;
PImage emoji;
boolean emojiOn;


void setup() {
  size(1000, 1000);
  fill(118, 113, 113);
  sliderX = 500;
  thickness = 0;
  toggle = 1;
  //emoji
  emoji = loadImage("poop.png");
emojiOn = false;
}


void draw() {
  // tool bar
  strokeWeight(0);
  fill(grey);
  rect(0, 0, 1000, 100);
  //slider
  strokeWeight(5);
  line(400, 50, 600, 50);
  fill(0);
  circle(sliderX, 50, 50);
  //squiggly line
  thickness = map(sliderX, 1000, 0, -60, 105);
  //buttons
  fill(red);
  square(50, 50, 50);
  fill(blue);
  rect(0, 50, 50, 50);
  fill(black);
  square(0, 0, 50);
  fill(green);
  square(50, 0, 50);
  fill(orange);
  square(100, 50, 50);
  fill(cyan);
  square(100, 0, 50);
  if (toggle > 0) {
    guidelines();
    //stamp
    //tactile(700, 0, 750, 100);
    strokeWeight(1);
    fill(255);
    square(700, 0, 100);
    image(emoji, 700, 0, 100, 100);
  }
}


//squiggly lines
void mouseDragged() {

  if (emojiOn == false) {
  //squiggly line
  stroke(selectedcolor);
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
  }else{
    //stamp 
    image(emoji,mouseX,mouseY,100,100);
  }
  //slider
  if (mouseX > 400 && mouseX < 600 && mouseY > 20 && mouseY < 120) {
    sliderX = mouseX;
  }
}
void mouseReleased() {
  if (mouseX < 100 && mouseX > 50 && mouseY < 100 && mouseY > 50) {
    selectedcolor = red;
  }
  if (mouseX < 50 && mouseX > 0 && mouseY < 100 && mouseY > 50) {
    selectedcolor = blue;
  }
  if (mouseX < 50 && mouseX > 0 && mouseY < 50 && mouseY > 0) {
    selectedcolor = black;
  }
  if (mouseX < 100 && mouseX > 50 && mouseY < 50 && mouseY > 0) {
    selectedcolor = green;
  }
  if (mouseX < 200 && mouseX > 100 && mouseY < 100 && mouseY > 50) {
    selectedcolor = orange;
  }
  if (mouseX < 200 && mouseX > 100 && mouseY < 50 && mouseY > 0) {
    selectedcolor = cyan;
  }
//stamp button
if(mouseX < 800 && mouseX > 700 && mouseY > 0 && mouseY < 100){
emojiOn = !emojiOn;
}
}
void guidelines() {
  fill (red);
}
