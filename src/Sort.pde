void bubbleSort(MyRectangle[] rectangles) {
  for (int i = 0; i < rectangles.length; i++) {
    for (int j = 0; j < rectangles.length - i - 1; j++) {
      if (rectangles[j].getHeight() < rectangles[j+1].getHeight()) {
        float temp = rectangles[j].getHeight();
        rectangles[j].setHeight(rectangles[j+1].getHeight());
        rectangles[j+1].setHeight(temp);
      }
    }
  }
}

void quickSort() {
}

void mergeSort() {
}
