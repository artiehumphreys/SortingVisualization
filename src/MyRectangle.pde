class MyRectangle {
  float x, y;
  float w, h;
  boolean isSelected;
  boolean isDone;
  boolean isPivot;

  MyRectangle(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    if (isPivot){
      fill(255, 50, 50);
      rect(x, y, w, h);
    } else if (isSelected){
      fill(50, 50, 255);
      rect(x, y, w, h);
    } else if (isDone){
      fill(50, 255, 50);
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
