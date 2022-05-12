//Global Variables
Boolean draw=false;
float drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight;
//
void setup() {
//
//
fullScreen();
//
//Pop
drawingSurfaceX= displayWidth*0/4; 
drawingSurfacey= displayHeight*2/5;
drawingSurfaceWidth= displayWidth*3/4;
drawingSurfaceHeight=displayHeight*3/5;
rect(drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight);
}//End Setup
//
void draw() {
if(draw==true) line(mouseX, mouseY, pmouseX, pmouseY);
}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed () {
if(mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight)

  if (draw == false){
  draw = true;
} else{
  draw = false;
}
}//End mousePressed
//
//End MAIN
