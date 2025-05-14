color red = #ED2222;
color green = #07ED14;
color black = #121713;
float p1x, p1y, p1d;
float p2x, p2y, p2d;
boolean wkey, akey, skey, dkey, upkey, leftkey, downkey, rightkey;
float ballx,bally,balld;
float vx,vy;
void setup() {
  size(1000, 1000, P2D);
background(255);
  p1x = 50;
  p1y = height/2;
  p1d = 100;

  p2x = width-50;
  p2y = height/2;
  p2d= 100;

ballx = width-50;
bally=height/2;
balld = 50;

vx = 2;
vy = -3;
}
void draw() {
  fill(red);
  circle(p1x, p1y, p1d);
  fill(green);
  circle(p2x, p2y, p2d);
  fill(black);
  textSize(15);
  text("player1", p1x, p1y);
  text("player2", p2x, p2y);
//power up 
fill(255,0,0);
circle(ballx,bally,balld);
//player 1 movement
if (wkey) p1y = p1y -5;
if (akey) p1x = p1x -5;
if (skey) p1y = p1y + 5;
if (dkey) p1x = p1x + 5;
//player 2 movement 
if (upkey) p2y = p2y - 5;
if (leftkey) p2x = p2x - 5;
if (downkey) p2y = p2y + 5;
if (rightkey) p2x = p2x + 5;
}
void keyPressed(){
  if (key == 'w') wkey = true;
  if (key == 'a') akey = true;
if (key == 's') skey = true;
if (key == 'd') dkey = true;

if(keyCode == UP) upkey = true;
if(keyCode == LEFT) leftkey = true;
if(keyCode == DOWN) downkey = true;
if(keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (key == 'w') wkey = false;
 if (key == 'a') akey = false;
 if (key == 's') skey = false;
 if (key == 'd') dkey = false;

if(keyCode == UP) upkey = false;
if(keyCode == LEFT) leftkey = false;
if(keyCode == DOWN) downkey = false;
if(keyCode == RIGHT) rightkey = false;
}
