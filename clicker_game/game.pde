void game() {
  background(0, 255, 0);
  fill(0);
  text("score:" +score, width/2, 50);
  text("lives:" + lives, width/2, 100);

  fill(255);
  strokeWeight(5);
  stroke(0);
  circle(x, y, d);
  //moving
  x = x + vx;
  y=y + vy;
  if (x<0 || x > width) {
    vx = vx * -1;
  }
  if (y < 0 || y > height) {
    vy = vy * -1;
  }
}
void gameclicks() {
  if (dist(mouseX, mouseY, x, y)<50) {
    score = score + 1;
  } else {
    lives = lives - 1;
    if (lives == 0) mode = gameover;
  }
  if (true) {
  }
}
