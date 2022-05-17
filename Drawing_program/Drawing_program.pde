//Global Variables
int appWidth, appHeight;
Boolean draw=false;
float drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight, drawDiameter;
color white=255, resetColour=white, red=#FF0000, button11Color, black=0;
String quitButtonString="Exit";
int numberofButtons = 12;
float[] ButtonX= new float[numberofButtons];
float[] ButtonY= new float[numberofButtons];
float[] ButtonWidth= new float[numberofButtons];
float[] ButtonHeight= new float[numberofButtons];
int reset=1;
PFont font;
int initialFontSize = 55;
int size;
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
font = createFont ("Harrington", initialFontSize);
//
rect(drawingSurfaceX, drawingSurfacey, drawingSurfaceWidth, drawingSurfaceHeight);
}//End Setup
//
void draw() {
  fill(white);
  rect(ButtonX[1], ButtonY[1], ButtonWidth[1], ButtonHeight[1]);
  fill(white);
  //
  rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
  fill(white);
  //
  rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
  fill(white);
  //
  rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
  fill(white);
  //
  fill(white);
  //
  
  //
  rect(ButtonX[11], ButtonY[11], ButtonWidth[11], ButtonHeight[11]);
  //
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//

if(mouseX>=ButtonX[11] && mouseX<=ButtonX[11]+ButtonWidth[11]  && mouseY>=ButtonY[11] && mouseY<=ButtonY[11]+ButtonHeight[11]){
button11Color=red;
}else{
button11Color=black;
}//End Quit Hoverover effect
fill(button11Color);
noStroke();
rect(ButtonX[11], ButtonY[11], ButtonWidth[11], ButtonHeight[11]);
stroke(reset);
fill(resetColour);
//
fill(black);
textAlign (CENTER, CENTER);
size = 20;
textFont(font, size);
text(quitButtonString, ButtonX[11], ButtonY[11], ButtonWidth[11], ButtonHeight[11]);
//Button[11] is the quit button
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
if (mouseX>=ButtonX[11] && mouseX<=ButtonX[11]+ButtonWidth[11]  && mouseY>=ButtonY[11] && mouseY<=ButtonY[11]+ButtonHeight[11]) exit();
}//End mousePressed

//
//End MAIN
