color grey = #B4B4B4;
float sliderX;
float thickness;
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
thickness = map(sliderX, 1000, 0, 0,15); 
strokeWeight(thickness);
} //<>//

   

//squiggly lines
void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
//slider //<>//
 if(mouseX > 400 && mouseX < 600 && mouseY > 50 && mouseY < 90) {
     sliderX = mouseX;
}
}
