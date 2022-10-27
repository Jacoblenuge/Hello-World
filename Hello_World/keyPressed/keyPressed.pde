//Global Variables
Boolean nightMode=false;
//
void setup() {
  
}//end setup
//nnnnnnnnnnnnnn
void draw() {
 if (  nightMode==true) println("I am nocturnal!");
 if (  nightMode==false) println("");
}//end draw
//
void keyPressed() {
  if ( key == 'N' || key =='n') nightMode=true;
  if ( key == CODED && keyCode == LEFT ) nightMode=false;
}//end KeyPressed
//
void mousePressed() {
}//end mousePressed
//
//End Main Program
