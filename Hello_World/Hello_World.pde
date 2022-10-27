//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color blackNightMode=#000000, red=#FA0D0D, green=#50FC08, white=#FFFFFF; //Hexidecimal
color greenNightMode=#00FF00 ,redNightMode=#FF0800;
float thin, normal , thick;
Boolean nightMode=false, randomBackgroubd=false;
//
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(1200, 1000); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  //Population
  centerX = appWidth * 1/2;
  centerY = height * 1/2;
  xStart = centerX - (appWidth * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect =appWidth * 2/4;
  heightRect = height * 1/4;
   thin=appWidth / appWidth; //1
   normal= appWidth * 1/70; 
   thick= appWidth * 1/35;
} //End setup
//
void draw() {
  //New backround Function "covers" old Gray Scale background()
  //Night Mode means background cannot have blue//change randome for night mode, hard code "0"
  background (100);//Gray Scale(0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  background( color(random(0,255),random(0,255),random(0,255) )); // Colour without blue
  //
  //background( blackNightMode );
  strokeWeight(thick);
  stroke( red);//redNightMode
  fill(green);//greenNightMode
  rect(xStart, yStart, widthRect, heightRect);
  fill(white); //default reset
  stroke(blackNightMode); // default reset
  strokeWeight(1); // default reset
}//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
