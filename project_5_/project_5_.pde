color red = #ED2222;
color green = #07ED14;
color black = #121713;
void setup(){
  size(1000,1000);
}
void draw(){
  fill(red);
  circle(100,50,100);

fill(green);
circle(500,80,100);
fill(black);
 textSize(20);
  text("player1",80,50);
text("player2",480,80);
}
