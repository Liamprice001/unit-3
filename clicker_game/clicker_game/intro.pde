void intro() {

  fill(255);
  rect(440, 540, 230, 100);
  fill(10, 10, 10);
  textSize(50);
  text("start", 400, 550);
}
void introclicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
    mode = game;
  }
}
