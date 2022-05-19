//Global Variables
float drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight, drawDiameter;
Boolean paper=false;
//
void paperOpen() {
  fill(white);
rect(drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight);
paper=false;
}//End paperOpen
