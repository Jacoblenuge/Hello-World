//Global Variables
Boolean nightMode=false, ahhh=false;
//
void setup() {
}//end setup
//
void draw() {
  if (nightMode==true) println("I am nocturnal");
  if (nightMode==false) println("");
  if (ahhh == true) println("Where is that mouse-wheel button");
}//end draw
//
void keyPressed() {
}//end KeyPressed
//
void mousePressed() {
  if (mouseButton == LEFT) nightMode=true;
  if (mouseButton == RIGHT) nightMode=false;
  if ( mouseButton == CENTER) {
  ahhh = true;
  }else{
  ahhh = false;
}
}//end mousePressed
//
//End Main Program
