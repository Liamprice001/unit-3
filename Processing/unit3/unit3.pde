color red = #FF0808;
color green = #45A034;
color purple = #82499B;
color yellow = #E3F214;
color blue = #4F8FCE;
color white = #FFFFFF;  
   color selectedcolor;
   
  void setup() {
    size(800,600);
    strokeWeight(5);
    stroke(blue);
  selectedcolor = blue;
}
  void draw() {
    background(yellow);
     //buttons
 
  if ( dist(100,100, mouseX, mouseY) < 50) { 
  stroke(white);
  }else{
   stroke(blue);
  }
     fill(red);
     circle(100,100,100);
    
     if ( dist(300,100, mouseX, mouseY) < 50) { 
  stroke(white);
  }else{
   stroke(blue);
  }
     fill(purple);
     circle(300, 100, 100);
    stroke(blue); 
      if ( dist(500,100, mouseX, mouseY) < 50) { 
  stroke(white);
  }else{
   stroke(blue);
  }
     fill(green);
     circle(500,100, 100);
     stroke(blue);
     
     fill(red);
     square(50,200,50);
     
     fill(purple);
     square(200,200,50);
     
     fill(green);
     square(400,200,50);
     //indicator
fill(selectedcolor);
  square(50,300,500);
  }
  
  
  void mouseReleased() {
    if ( dist(100,100, mouseX, mouseY) < 50) {
    selectedcolor = red;
    }
 if ( dist(300,100, mouseX, mouseY) < 50) {
 selectedcolor = purple;
 }
  if ( dist(500,100, mouseX, mouseY) < 50) {
 selectedcolor = green;
 }
  }
  
