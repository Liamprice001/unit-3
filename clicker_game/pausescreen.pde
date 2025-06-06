void pause(){
textSize(200);
  text("pause",400,300);
}
void pauseclicks(){
if(dist(mouseX,mouseY,50,50)<50){
mode = game;
}
}
