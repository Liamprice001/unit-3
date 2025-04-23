color darkGreen = #82B3AE;
color pink = #FF7C7C;

float sliderX;

void setup()  {
size(800, 600);
strokeWeight(5);
stroke(pink);
fill(pink);
sliderX = 400;
}
 void draw() {
   background(0);
   
   line(100, 300, 700, 300);
   circle(sliderX, 300, 50);
 }
 
 void mouseDragged() {
   if(mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
     sliderX = mouseX;
 }
 }
