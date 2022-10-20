//Global Variables
int appWidth, appHeight;
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
} //End setup
//
void draw() {
rect(120, 80, 220, 220);
  ellipse(200,200,100,120);
  triangle(560,400,437,800,434,700);
  triangle(783,340,349,344,357,576);
  triangle(176,348,703,277,877,108);
  triangle(878,191,995,777,767,553);
  triangle(585,757,700,462,184,918);
  triangle(676,992,495,119,539,782);
  triangle(907,810,238,692,490,788);
  triangle(898,209,936,311,206,862);
  triangle(629,309,346,357,368,755);
  triangle(528,689,131,470,870,942);
}   //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
