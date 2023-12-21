class Sort {
  MyRectangle[] rectangles;

  Sort(MyRectangle[] rectangles) {
    this.rectangles = rectangles;
  }

  void swap(int a, int b) {
    float temp = rectangles[a].getHeight();
    rectangles[a].setHeight(rectangles[b].getHeight());
    rectangles[b].setHeight(temp);
  }

  void bubbleSort() {
    for (int i = 0; i < rectangles.length; i++) {
      for (int j = 0; j < rectangles.length - i - 1; j++) {
        if (rectangles[j].getHeight() < rectangles[j+1].getHeight()) {
          swap(j, j+1);
        }
      }
    }
  }

  //void selectionSort(MyRectangle[] rectangles) {
  //  for (int i = 0; i < rectangles.length; i++) {
  //    float min = rectangles[i].getHeight();
  //    for (int j = 1; j < rectangles.length; j++) {

  //    }
  //  }
  //}
}
