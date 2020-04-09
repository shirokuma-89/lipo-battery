float x;
float y;

float px;
float py;

float easing = 0.2;

void setup() {
  size(680, 320);
  stroke(#e74c3c, 102);
  background(0);
}

void draw() {
  float targetX = mouseX;
  x += (targetX - x) * easing;
  float targetY = mouseY;
  y += (targetY - y) * easing;
  float weight = dist(x, y, px, py);
  strokeWeight(weight);
  line(x, y, px, py);
  px = x;
  py = y;
}
