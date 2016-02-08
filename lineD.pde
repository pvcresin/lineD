void setup() {
  size(200, 200);
  noLoop();
}

void draw() {
  background(255);

  lineD(10, 10, 105, 105);
}

void lineD(float x0, float y0, float x1, float y1) {
  //ellipse(x0, y0, 3, 3);
  //ellipse(x1, y1, 3, 3);

  if (x0 > x1) {
    float tmp = x0;
    x0 = x1;
    x1 = tmp;
  }

  float rad = atan2(y1 - y0, x1 - x0);

  float d = 5, dx = d * cos(rad), dy = d * sin(rad);

  while (x0 < x1 && y0 < y1) {
    line(x0, y0, x0 + dx, y0 + dy);
    x0 += 2 * dx;
    y0 += 2 * dy;
  }
}