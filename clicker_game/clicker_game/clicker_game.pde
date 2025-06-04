

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;





int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
//target variables
float x, y, d;
float vx, vy;
int score, lives;
//soundvariables
Minim minim;
AudioPlayer theme, coin, bump, gg;

void setup() {
  size(800, 800);
  mode = intro;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = intro;
  //target initialization
  x= width/2;
  y=height/2;
  score = 0;
  lives = 3;
  d=100;
  vx=random(-5, 5);
  vy=random(-5, 5);
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
coin = minim.loadFile("retrocoin.mp3");
bump = minim.loadFile("bump.mp3");
gg = minim.loadFile("lose.mp3");
}
void draw() {
  if (mode == intro) {
    intro();
  } else if ( mode==game) {
    game();
  } else if (mode == pause) {
    pausescreen();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
