color red = #F50C0C;
color grey = #B4B4B4;
float sliderX;
float thickness;
color blue = #110BE0;
color selectedcolor;
void setup() {
size(1000,1000);
fill(118,113,113);
sliderX = 500; //<>//
thickness = 0; //<>//
}
void draw() {
// tool bar
  strokeWeight(0);
  fill(grey);
  rect(0,0, 1000,100);
//slider 
strokeWeight(5);
line(400,50, 600,50);
fill(0);
circle(sliderX, 50 , 50);
//squiggly line
thickness = map(sliderX, 1000, 0, -60,105); 
//buttons
fill(red);
rect(50,50,50,50);
fill(blue);
rect(10,50,50,50);
} //<>//

   

//squiggly lines
void mouseDragged() {
  stroke(selectedcolor);
  line(pmouseX, pmouseY, mouseX, mouseY);
strokeWeight(thickness);
//slider //<>//
 if(mouseX > 400 && mouseX < 600 && mouseY > 50 && mouseY < 90) {
     sliderX = mouseX;
}
}
void mouseReleased() {
if (mouseX > 50 && mouseX < 100 && mouseY > 50 && mouseY < 100) {
 selectedcolor = red;
if ( dist( 20,100, mouseX, mouseY) < 50){
selectedcolor = blue;
}
}
}
