//Global Variables
int appWidth, appHeight;
Boolean draw=false;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float ButtonDiameter, ButtonDiameter13, ButtonDiameter14;
color white=255, resetColour=white, red=#FF0000, button11Color, black=0;
color Yellow=#F0FF00, Green=#00FF00, Blue=#45A8FC, Peach=#FFC78B, Brown=#5A3B1A;
color DKRed=#6F0A0A, DKBlue=#00589D, DKGreen=#037C01, DKYellow=#7A8101, DKPeach=#FFA850, DKBrown=#211100,DKGray=#B7B7B7 ;
String secondTextString = "Reset";
String quitButtonString="Exit";
int numberofButtons = 15;
float[] ButtonX= new float[numberofButtons];
float[] ButtonY= new float[numberofButtons];
float[] ButtonWidth= new float[numberofButtons];
float[] ButtonHeight= new float[numberofButtons];
int reset=1;
PFont font;
int initialFontSize = 55;
int size;
PImage EraserImage;
PImage playbuttonImage;
//
void setup() {
//

appWidth=displayWidth;
appHeight=displayHeight;
//
fullScreen();
println(displayWidth, displayHeight);
//
population();
//
paperOpen();
//
font = createFont ("Harrington", initialFontSize);
EraserImage = loadImage("Eraser.png");
playbuttonImage = loadImage("Play Button.png");
//
}//End Setup
//
void draw() {
  
  fill(white);
  rect(ButtonX[1], ButtonY[1], ButtonWidth[1], ButtonHeight[1]);
  fill(white);
  image(EraserImage, ButtonX[1], ButtonY[1], ButtonWidth[1]*3/4, ButtonHeight[1]*3/4);
  //
  fill(red);
  rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
  fill(white);
  //
  fill(Yellow);
  rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
  fill(white);
  //
  fill(Green);
  rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
  fill(white);
  //
  fill(Blue);
  rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
  fill(white);
  //
  fill(Peach);
  rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
  fill(white);
  //
  fill(Brown);
  rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
  fill(white);
  //
  rect(ButtonX[8], ButtonY[8], ButtonWidth[8], ButtonHeight[8]);
  fill(white);
  //
  rect(ButtonX[9], ButtonY[9], ButtonWidth[9], ButtonHeight[9]);
  //
  rect(ButtonX[10], ButtonY[10], ButtonWidth[10], ButtonHeight[10]);
  //
  rect(ButtonX[11], ButtonY[11], ButtonWidth[11], ButtonHeight[11]);
  //
  fill(white);
  ellipse(ButtonX[12], ButtonY[12], ButtonDiameter, ButtonDiameter);
  fill(white);
  image(playbuttonImage, ButtonX[12]*25/26, ButtonY[12]*11/12, ButtonDiameter, ButtonDiameter);
  //
  fill(white);
  ellipse(ButtonX[13], ButtonY[13], ButtonDiameter13, ButtonDiameter13);
  fill(white);
  //
  fill(white);
  ellipse(ButtonX[14], ButtonY[14], ButtonDiameter14, ButtonDiameter14);
  fill(white);
  //
if (mouseX>=ButtonX[2] && mouseX<=ButtonX[2]+ButtonWidth[2] && mouseY>=ButtonY[2] && mouseY<=ButtonY[2]+ButtonHeight[2]) {
  fill(DKRed);
  rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
  } else {
    fill(red);
    rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
  } //RedButton
//
if (mouseX>=ButtonX[3] && mouseX<=ButtonX[3]+ButtonWidth[3] && mouseY>=ButtonY[3] && mouseY<=ButtonY[3]+ButtonHeight[3]) {
  fill(DKYellow);
  rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
  } else {
    fill(Yellow);
    rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
  } //Yellow Button
//
if (mouseX>=ButtonX[4] && mouseX<=ButtonX[4]+ButtonWidth[4] && mouseY>=ButtonY[4] && mouseY<=ButtonY[4]+ButtonHeight[4]) {
  fill(DKGreen);
  rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
  } else {
    fill(Green);
    rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
  } //Green Button
//
if (mouseX>=ButtonX[5] && mouseX<=ButtonX[5]+ButtonWidth[5] && mouseY>=ButtonY[5] && mouseY<=ButtonY[5]+ButtonHeight[5]) {
  fill(DKBlue);
  rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
  } else {
    fill(Blue);
    rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
  } //Blue Button
  //
  if (mouseX>=ButtonX[6] && mouseX<=ButtonX[6]+ButtonWidth[6] && mouseY>=ButtonY[6] && mouseY<=ButtonY[6]+ButtonHeight[6]) {
  fill(DKPeach);
  rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
  } else {
    fill(Peach);
    rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
  } //Peach Button
  //
  if (mouseX>=ButtonX[7] && mouseX<=ButtonX[7]+ButtonWidth[7] && mouseY>=ButtonY[7] && mouseY<=ButtonY[7]+ButtonHeight[7]) {
  fill(DKBrown);
  rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
  } else {
    fill(Brown);
    rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
  } //Peach Button
  //
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if(paper==true) paperOpen();
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
fill(button11Color);
rect(ButtonX[11], ButtonY[11], ButtonWidth[11], ButtonHeight[11]);
fill(resetColour);
textAlign (CENTER, CENTER);
size =20;
textFont(font, size);
text(quitButtonString, ButtonX[11], ButtonY[11], ButtonWidth[11], ButtonHeight[11]);
//
fill(white);
rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
fill(black);
textAlign (CENTER, CENTER);
size =20;
textFont(font, size);
text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
//
//Button[11] is the quit button
}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed () {
  if (mouseX>=ButtonX[1] && mouseX<=ButtonX[1]+ButtonWidth[1] && mouseY>=ButtonY[1] && mouseY<=ButtonY[1]+ButtonHeight[1]) println("EraserButton was Pressed");
  //
if(mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight){
  if (draw == false){
  draw = true;
} else{
  draw = false;
}
}
if (mouseX>=ButtonX[11] && mouseX<=ButtonX[11]+ButtonWidth[11]  && mouseY>=ButtonY[11] && mouseY<=ButtonY[11]+ButtonHeight[11]) exit();
//
if( mouseX>=secondTextX&&mouseX<=secondTextX+secondTextWidth&&mouseY>=secondTextY&&mouseY<=secondTextY+secondTextHeight) paper=true;
//
}//End mousePressed
//
//End MAIN
