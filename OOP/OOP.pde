Star[] myStars;
int numstars;



void setup() {
  
 size(800, 600, FX2D);
 rectMode(CENTER);
 noStroke();
 colorMode(HSB);
  
  numstars = 800;
  myStars = new Star[numstars]; // constructor
  
  int i = 0;
  while (i < numstars) {
    myStars[i] = new Star();
    i ++;
  }
  
  background(0);
  
}


void draw() {
    
  int i = 0;
  while (i < numstars) {
    myStars[i].show();
    myStars[i].act();
    i ++;
  }
  
  fill(0, 25);
  rect(width/2, height/2, width, height);
  
}
