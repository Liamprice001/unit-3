void game() {
  gamemusic.play();
 //pause button 
background(0, 255, 0);
stroke(0);
 fill(255);
 circle(50,50,50);
 
 //
  
  fill(0);
  textSize(60);
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
 coin.rewind();
 coin.play();
  }else if(dist(mouseX,mouseY,50,50)<50){
    mode = pause;
} else {
    lives = lives - 1;
   bump.rewind();
    bump.play();
    if (lives == 0) mode = gameover;
  gamemusic.pause();
}
  if (true) {
  }
}
