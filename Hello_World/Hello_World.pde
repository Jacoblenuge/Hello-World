//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color blackNightMode=#000000, blue=#0052FF, green=#00FF86, white=#FFFFFF,red=#FF0D00; 
color yellowNightMode=#FEFF00, purpleNightMode=#E31791;//Hexidecimal
float thin, normal, thick;
Boolean grayScale=false, backgroundColour=false, nightMode=false;
//

int x; 
int y;
int direction;
void setup() {
  size(600, 600); 
    x = 0;
    y = 50;
    direction = 1;
}
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
  xStart = centerX - ( appWidth * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect = appWidth * 1/2;
  heightRect = height * 1/2;
  thin = appWidth / appWidth; //1
  normal = appWidth * 1/70;
  thick = appWidth * 1/35;
} //End setup
//
void draw() {
  // New Background Function "covers" old gray scale background()
  // Night Mode means background cannot have blue // change randome for night mode, hard code "0"
  if ( grayScale == true ) background(100); //Gray Scale (0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  if ( backgroundColour == true ) background( color( random(0 , 255), random(0 , 255), random(0 , 255) ) ); // Colour without blue
  //
  strokeWeight( thick );
  if ( nightMode == true )
  {
    background( blackNightMode );
    stroke( yellowNightMode ); 
    fill( purpleNightMode ); 
  } else
  {
    stroke( blue ); 
    fill( green ); 
  }
  rect(xStart, yStart, widthRect, heightRect);
  fill( white ); //default reset
  stroke( blackNightMode ); //default reset
  strokeWeight(1); //default reset
  if (nightMode==true){fill(color( random(0 , 255), random(0 , 255), random(0 , 0)));
}else{fill( red);
}triangle(1000,700,1200,500,900,300);
    background(155); 
    ellipse(x, y, 50, 50);
    if (direction == 1) { 
        x=x+1; 
        if (x >= 550){
            direction = 2;
            x = 550;
        }
    } 
    if (direction == 2) { 
        y=y+1; 
        if (y >= 550){
            direction = 3;
            y = 550;
        }
    }
    if (direction == 3) { 
        x=x-1; 
        if (x <= 50){
            direction = 4;
            x = 50;
        }
    } 
    if (direction == 4) { 
        y=y-1; 
        if (y <= 50){
            direction = 1;
            y = 50;
        }
    } 
} //End draw
//
void keyPressed() {
  grayScale = false;
  backgroundColour = false;
  if ( key == 'G' || key == 'g' ) grayScale = true;
  if ( key == 'B' || key == 'b' ) backgroundColour = true;
} //End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed
//
// End Main Program
