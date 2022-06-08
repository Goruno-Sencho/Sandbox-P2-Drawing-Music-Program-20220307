//Global Variables
int appWidth, appHeight;
Boolean draw=false;
Boolean turnONredPen=false;
Boolean turnONbluePen=false;
Boolean turnONyellowPen=false;
Boolean turnONgreenPen=false;
Boolean turnONpeachPen=false;
Boolean turnONbrownPen=false;
Boolean turnONTipText=false;
Boolean turnONPenStroke=false;
Boolean turnONLineStroke=false;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float ButtonDiameter, ButtonDiameter13, ButtonDiameter14;
color white=255, resetColour=white, red=#FF0000, button11Color, button10Color, black=0;
color Yellow=#F0FF00, Green=#00FF00, Blue=#45A8FC, Peach=#FFC78B, Brown=#5A3B1A;
color DKRed=#6F0A0A, DKBlue=#00589D, DKGreen=#037C01, DKYellow=#7A8101, DKPeach=#FFA850, DKBrown=#211100,DKGray=#B7B7B7 ;
String secondTextString = "Reset";
String quitButtonString="Exit";
String BGTXT="Change BG";
String TipTXT=" Tip: Make sure to Deactivate the Color when you're done using it. You know a color is activated when the color box pressed is darker. The app won't function as intended if multiple colors are selected at once";
int numberofButtons = 17;
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
PImage PencilThicknessImage;
PImage PencilTypeImage;
PImage LightbulbImage;
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
PencilThicknessImage= loadImage("Pencil2.png");
PencilTypeImage= loadImage("spray-can-png-21.png");
LightbulbImage= loadImage("tipimg.png");
//
}//End Setup
//
void draw() {
  fill(white);
  rect(ButtonX[1], ButtonY[1], ButtonWidth[1], ButtonHeight[1]);
  fill(white);
  image(EraserImage, ButtonX[1]*3/4, ButtonY[1]*1/8, ButtonWidth[1]*4/5, ButtonHeight[1]*4/5);
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
  fill(white);
  rect(ButtonX[8], ButtonY[8], ButtonWidth[8], ButtonHeight[8]);
  fill(white);
  image(PencilThicknessImage, ButtonX[8], ButtonY[8], ButtonWidth[8]*3/8, ButtonHeight[8]*9/10);
  //
  
  fill(white);
   rect(ButtonX[9], ButtonY[9], ButtonWidth[9], ButtonHeight[9]);
  image(PencilTypeImage, ButtonX[9], ButtonY[9], ButtonWidth[9]*1/2, ButtonHeight[9]);
  fill(white);
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
  fill(white);
  rect(ButtonX[15], ButtonY[15], ButtonWidth[15], ButtonHeight[15]);
   image(LightbulbImage, ButtonX[15], ButtonY[15], ButtonWidth[15], ButtonHeight[15]);
   fill(white);
   //
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
  if (mouseX>=ButtonX[15] && mouseX<=ButtonX[15]+ButtonWidth[15] && mouseY>=ButtonY[15] && mouseY<=ButtonY[15]+ButtonHeight[15]) {
  fill(DKGray);
  rect(ButtonX[15], ButtonY[15], ButtonWidth[15], ButtonHeight[15]);
  } else {
    fill(white);
    rect(ButtonX[15], ButtonY[15], ButtonWidth[15], ButtonHeight[15]);
  } 
  fill(white);
   image(LightbulbImage, ButtonX[15], ButtonY[15], ButtonWidth[15], ButtonHeight[15]);
   fill(white);
  //
if(turnONredPen==true){
  fill(DKRed);
rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
}else{
  fill(red);
  rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
}//
if(turnONyellowPen==true){
  fill(DKYellow);
rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
}else{
  fill(Yellow);
  rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
}//
if(turnONgreenPen==true){
  
  fill(DKGreen);
rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
}else{
  fill(Green);
  rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
}//
if(turnONbluePen==true){
  fill(DKBlue);
rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
}else{
  fill(Blue);
  rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
}//
if(turnONpeachPen==true){
  fill(DKPeach);
rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
}else{
  fill(Peach);
  rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
}//
if(turnONbrownPen==true){
  fill(DKBrown);
rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
}else{
  fill(Brown);
  rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
}//
//
if(turnONPenStroke==true){
  noStroke();
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
  noStroke();
  if(turnONredPen==true){
  fill(DKRed);
rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
}else{
  fill(red);
  rect(ButtonX[2], ButtonY[2], ButtonWidth[2], ButtonHeight[2]);
}//
if(turnONyellowPen==true){
  fill(DKYellow);
rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
}else{
  fill(Yellow);
  rect(ButtonX[3], ButtonY[3], ButtonWidth[3], ButtonHeight[3]);
}//
if(turnONgreenPen==true){
  fill(DKGreen);
rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
}else{
  fill(Green);
  rect(ButtonX[4], ButtonY[4], ButtonWidth[4], ButtonHeight[4]);
}//
if(turnONbluePen==true){
  fill(DKBlue);
rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
}else{
  fill(Blue);
  rect(ButtonX[5], ButtonY[5], ButtonWidth[5], ButtonHeight[5]);
}//
if(turnONpeachPen==true){
  fill(DKPeach);
rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
}else{
  fill(Peach);
  rect(ButtonX[6], ButtonY[6], ButtonWidth[6], ButtonHeight[6]);
}//
if(turnONbrownPen==true){
  fill(DKBrown);
rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
}else{
  fill(Brown);
  rect(ButtonX[7], ButtonY[7], ButtonWidth[7], ButtonHeight[7]);
}//
}
//
  fill(resetColour);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);

//
if(turnONredPen==true)
 fill(red);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if (turnONbluePen==true) 
fill(Blue);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if (turnONyellowPen==true) 
fill(Yellow);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if (turnONgreenPen==true) 
fill(Green);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if (turnONpeachPen==true) 
fill(Peach);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if (turnONbrownPen==true) 
fill(Brown);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) ellipse (mouseX, mouseY, drawDiameter, drawDiameter );
//
if(turnONLineStroke==true){
  fill(resetColour);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);
//
if(turnONredPen==true)
 fill(red);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);

//
if (turnONbluePen==true) 
fill(Blue);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);

//
if (turnONyellowPen==true) 
fill(Yellow);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);

//
if (turnONgreenPen==true) 
fill(Green);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);

//
if (turnONpeachPen==true) 
fill(Peach);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight) line(mouseX, mouseY, pmouseX, pmouseY);

//
if (turnONbrownPen==true) 
fill(Brown);
if(draw==true &&mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfacey && mouseY<= drawingSurfacey+drawingSurfaceHeight)  line(mouseX, mouseY, pmouseX, pmouseY);

//
}
//
if(paper==true) paperOpen();
//
if(mouseX>=ButtonX[11] && mouseX<=ButtonX[11]+ButtonWidth[11]  && mouseY>=ButtonY[11] && mouseY<=ButtonY[11]+ButtonHeight[11]){
button11Color=red;
}else{
button11Color=black;
}//End Quit Hoverover effect
if(turnONTipText==true){
  fill(white);
rect(ButtonX[16], ButtonY[16], ButtonWidth[16], ButtonHeight[16]);
  fill(white);
rect(ButtonX[16], ButtonY[16], ButtonWidth[16], ButtonHeight[16]);
fill(Blue);
textAlign (CENTER, CENTER);
size =20;
textFont(font, size);
text(TipTXT, ButtonX[16], ButtonY[16], ButtonWidth[16], ButtonHeight[16]);
//
}
//
//
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
fill(button10Color);
rect(ButtonX[10], ButtonY[10], ButtonWidth[10], ButtonHeight[10]);
fill(black);
textAlign (CENTER, CENTER);
size =20;
textFont(font, size);
text(BGTXT, ButtonX[10], ButtonY[10], ButtonWidth[10], ButtonHeight[10]);
//Button[10] is the BG changer
//
if(mouseX>=ButtonX[10] && mouseX<=ButtonX[10]+ButtonWidth[10]  && mouseY>=ButtonY[10] && mouseY<=ButtonY[10]+ButtonHeight[10]){
button10Color=DKGray;
}else{
button10Color=white;
}//End BG Hoverover effect
}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed () {

  if (mouseX>=ButtonX[10] && mouseX<=ButtonX[10]+ButtonWidth[10]  && mouseY>=ButtonY[10] && mouseY<=ButtonY[10]+ButtonHeight[10]) println("BackGround was Changed");
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

//Button Colour Change
  //
if (mouseX>=ButtonX[2] && mouseX<=ButtonX[2]+ButtonWidth[2] && mouseY>=ButtonY[2] && mouseY<=ButtonY[2]+ButtonHeight[2]){
  println("Red Button Activated");
if(turnONredPen==false){
turnONredPen=true;
}else{
  turnONredPen=false;
}
}
//
if (mouseX>=ButtonX[3] && mouseX<=ButtonX[3]+ButtonWidth[3] && mouseY>=ButtonY[3] && mouseY<=ButtonY[3]+ButtonHeight[3]){
println("Yellow Button Activated");
if(turnONyellowPen==false){
turnONyellowPen=true;
}else{
  turnONyellowPen=false;
}
}
//
if (mouseX>=ButtonX[4] && mouseX<=ButtonX[4]+ButtonWidth[4] && mouseY>=ButtonY[4] && mouseY<=ButtonY[4]+ButtonHeight[4]){
println("Green Button Activated");
if(turnONgreenPen==false){
turnONgreenPen=true;
}else{
  turnONgreenPen=false;
}
}
//
if (mouseX>=ButtonX[5] && mouseX<=ButtonX[5]+ButtonWidth[5] && mouseY>=ButtonY[5] && mouseY<=ButtonY[5]+ButtonHeight[5]){
println("Blue Button Pressed");
if(turnONbluePen==false){
turnONbluePen=true;
}else{
  turnONbluePen=false;
}
}
//
if (mouseX>=ButtonX[6] && mouseX<=ButtonX[6]+ButtonWidth[6] && mouseY>=ButtonY[6] && mouseY<=ButtonY[6]+ButtonHeight[6]){
println("Peach Button Pressed");
if(turnONpeachPen==false){
turnONpeachPen=true;
}else{
  turnONpeachPen=false;
}
}
//
if (mouseX>=ButtonX[7] && mouseX<=ButtonX[7]+ButtonWidth[7] && mouseY>=ButtonY[7] && mouseY<=ButtonY[7]+ButtonHeight[7]){
println("Brown Button Pressed");
if(turnONbrownPen==false){
turnONbrownPen=true;
}else{
  turnONbrownPen=false;
}
}
//
if (mouseX>=ButtonX[15] && mouseX<=ButtonX[15]+ButtonWidth[15] && mouseY>=ButtonY[15] && mouseY<=ButtonY[15]+ButtonHeight[15]){
println("Tip Button Pressed");
if(turnONTipText==false){
turnONTipText=true;
}else{
  turnONTipText=false;
}
}
//
if (mouseX>=ButtonX[9] && mouseX<=ButtonX[9]+ButtonWidth[9] && mouseY>=ButtonY[9] && mouseY<=ButtonY[9]+ButtonHeight[9]){
println("Stroke Button Pressed");
if(turnONPenStroke==false){
turnONPenStroke=true;
}else{
  turnONPenStroke=false;
}
}
//
if (mouseX>=ButtonX[8] && mouseX<=ButtonX[8]+ButtonWidth[8] && mouseY>=ButtonY[8] && mouseY<=ButtonY[8]+ButtonHeight[8]){
println("Line Button Pressed");
if(turnONLineStroke==false){
turnONLineStroke=true;
}else{
  turnONLineStroke=false;
}
}
if (mouseX>=ButtonX[12]*26/27 & mouseX<=ButtonX[12]*26/27+ButtonDiameter*9/10 & mouseY>=ButtonY[12]*14/15 & mouseY<=ButtonY[12]*14/15+ButtonDiameter*3/4){
println("music is playing");
}
}//End mousePressed
//
//End MAIN
