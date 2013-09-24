// Ball size:
int D = 40;
int R = D/2;

// Ball's starting position:
float x = 30.0;
float y = 80.0;

// Ball's velocity:
float dx = 1.0;
float dy = 1.0;

// Forces on the ball:
float g = 2.0;
float damp = 0.9;

// This happens once, at the beginnning:
void setup() {
  size(400, 400);
}

// This happens once per frame:
void draw() {
  // Cover up the old frames:
  background(0);
  
  if (x + R > width) {
    // Ball hits right wall:
    dx = -abs(dx);
    dx = damp * dx;
    
  } else if (x - R < 0) {
    // Ball hits left wall:
    dx = abs(dx);
    dx = damp * dx;
  }
  
  if (y + R > height) {
    // Ball hits bottom wall:
    dy = -abs(dy);
    dy = damp * dy;
    
  } else if (y - R < 0) {
    // Ball hits top wall:
    dy = abs(dy);
    dy = damp * dy;
  }
  
  // Slow due to gravity:
  if (y + R < height) {
    dy = dy + g;
  }
 
  // Change position w/ velocity: 
  x = x + dx;
  y = y + dy;
  
  // Draw ball in new position:
  ellipse(x, y, D, D);
}
