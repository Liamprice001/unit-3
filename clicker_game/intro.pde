void intro() {


  background(240,143,104);
  fill(255);
rect(100,540, 150,100);

  theme.play();
  fill(255);
  rect(440, 540, 230, 100);
  fill(10, 10, 10);
 textSize(100);
 text("CLICKER GAME", 400,300);
  textSize(50);
  text("start", 400, 550);
text ("options", 100, 540);
}

void introclicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
   theme.pause();
    mode = game;
 if(mouseX > 
}
}
