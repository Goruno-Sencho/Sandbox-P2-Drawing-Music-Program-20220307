//Global Variables
int appWidth, appHeight;
Boolean draw=false;
float drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight, drawDiameter;
int numberofButtons = 12;
float[] ButtonX= new float[numberofButtons];
float[] ButtonY= new float[numberofButtons];
float[] ButtonWidth= new float[numberofButtons];
float[] ButtonHeight= new float[numberofButtons];
//
void setup() {
//
appWidth=displayWidth;
appHeight=displayHeight;
//
fullScreen();
println(displayWidth, displayHeight);
//
//Pop
population();
//
rect(drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight);
}//End Setup
//
void draw() {
  rect(ButtonX[1], ButtonY[1], ButtonWidth[1], ButtonHeight[1]);
  //
  rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
  //
  rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
  //
  rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
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
