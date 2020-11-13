class Star {
  
  //instance variables
  PVector pos;
  PVector velocity;
  float size;
  color h, s, b;
  
  //constructor: special function that defines how an object
  //             of this class is born
  //             defines intial values for fields
  
  Star() {
    
    pos = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, random(1, 5));
    size = velocity.y;
    h = int(random(255));
    s = 255;
    b = int(map(pos.x, 0, width, 0, 255));
    
  }
  
  // behaviour functions: define what a star does
  void show() {
    fill(h, s, b);
    square(pos.x, pos.y, size);
    
  }
  
  void act() {
    
    pos.add(velocity);
    if (pos.y > height + size) {
      pos.y = -size;
      size = velocity.y;
    }
    size = size + 0.02;
  }
  
}
