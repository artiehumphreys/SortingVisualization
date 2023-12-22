class MyRectangle {
  float x, y;
  float w, h;
  boolean isSelected;

  MyRectangle(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    rect(x, y, w, h);
  }

  float getHeight() {
    return this.h;
  }

  void setHeight(float h) {
    this.h = h;
  }
}
