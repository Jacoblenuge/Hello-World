//Global Variables
int appWidth, appHeight;
//
//Declaring Display Geometry: landscape, square, portrait
size( 600,700);//Able to deploy with fullScreen();
appWidth=width; appHeight=height;
//
//Concatenation: , or + (i.e space)
println("\t\t\tWidth="+width, "\tHeight="+height);
println("Display Monitor:","\twidth:"+displayWidth,"\theight:"+displayHeight);
//
//Fitting CANVAS into Monitor Display
if ( appWidth > displayWidth )appWidth=0;//CANVAS-width will not fit
if ( appHeight > displayHeight )appHeight=0;//CANVAS-width will not fit

//Outputting instructions to user when errors with above
if ( appWidth==0 || appHeight==0) println("Stop, is broken");//OR
if ( appWidth!=0 && appHeight!=0) println("Display: Good to Go");//AND
//Bru, turn your phun
String ls="Landscape or Square",p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
String  orientation = (appWidth >= appHeight ) ? ls : p ;
println(DO, orientation);
if ( orientation == p) print(instruct);//Latter , output to CANVAS
//
