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
    if (isSelected){
      fill(50, 50, 255);
      rect(x, y, w, h);
    } else {
      fill(255, 255, 255);
      rect(x, y, w, h);
    }
  }

  float getHeight() {
    return this.h;
  }

  void setHeight(float h) {
    this.h = h;
  }
}
