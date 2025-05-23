void game(){
background(0,255,0);
fill(255);
strokeWeight(5);
stroke(0);
circle(x,y,d);
//moving
x = x + vx;
y=y + vy;
if(x<0 || x > width) {
  vx = vx * -1;
}
if (y < 0 || y > height) {
  vy = vy * -1;
}
}
void gameclicks(){
if (true){
}
}
