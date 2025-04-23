color darkGreen = #82B3AE;
color pink = #FF7C7C;

float sliderY;
float shade;
void setup()  {
size(800, 600);
strokeWeight(5);
stroke(pink);
fill(pink);
sliderY = 400;
}
 void draw() {
   background(shade);
   
   line(100, 500, 100, 100);
   circle(100, sliderY, 50);
 }
 
 void mouseDragged() {
  controlSlider();
 }
 void mouseReleased() {
 controlSlider();
 }
 void controlSlider(){
   if(mouseX > 100 && mouseX < 500 && mouseY > 100 && mouseY < 500) {
     sliderY = mouseY;
   }
shade = map(mouseY, 500,100, 0, 255);
 }
 
