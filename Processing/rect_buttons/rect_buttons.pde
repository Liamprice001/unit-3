color green = #1CFF0D;
color white = #FFFFFF;
color red = #FF0D0D;
int toggle;

void setup(){
size(800, 600);
strokeWeight(5);
textSize(30);

toggle = 1;
}

void draw() {
background(white);


fill(green);
stroke(green);
rect(100, 100, 200, 100);

if (toggle > 0){
guidelines();
}

}

void mouseReleased(){
if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200){
 toggle = toggle * -1;
}
}

void guidelines(){
fill (red);
stroke(red);
line(0, mouseY, width, mouseY);
line(mouseX, 0, mouseX, height);
}
