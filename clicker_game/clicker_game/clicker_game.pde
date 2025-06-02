



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
AudioPlayer theme,coin,bump,gameover;

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
theme = minim.loadFile("retrocoin.mp3");
}
void draw() {
  if (mode == intro) {
    intro();
  } else if ( mode==game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
