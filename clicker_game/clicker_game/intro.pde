void intro() {
background(240,143,104);
  theme.play();
  fill(255);
  rect(440, 540, 230, 100);
  fill(10, 10, 10);
  textSize(50);
  text("start", 400, 550);
}
void introclicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
   theme.pause();
    mode = game;
  }
}
