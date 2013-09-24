int D = 40;
int R = D/2;
float x = 30.0;
float y = 80.0;
float dx = 1.0;
float dy = 1.0;
float g = 2.0;
float damp = 0.9;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  if (x + R > width) {
    dx = -abs(dx);
    dx = damp * dx;    
  } else if (x - R < 0) {
    dx = abs(dx);
    dx = damp * dx;
  }
  if (y + R > height) {
    dy = -abs(dy);
    dy = damp * dy;      
  } else if (y - R < 0) {
    dy = abs(dy);
    dy = damp * dy;
  }
  if (y + R < height) {
    dy = dy + g;
  }
  
  x = x + dx;
  y = y + dy;
  ellipse(x, y, D, D);
}
