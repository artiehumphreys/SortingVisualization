import java.util.Stack;
class Sort {
  MyRectangle[] rectangles;
  boolean needSwap = false;
  int i = 0, j = 0;
  int count;
  Stack<Segment> segments = new Stack<Segment>();
  
  Sort(MyRectangle[] rectangles) {
    this.rectangles = rectangles;
    segments.push(new Segment(0, rectangles.length - 1));
  }

  void swap(int a, int b) {
    float temp = rectangles[a].getHeight();
    rectangles[a].setHeight(rectangles[b].getHeight());
    rectangles[b].setHeight(temp);
  }

  //For Reference

  void bubbleSort() {
    background(0);
    for (int i = 0; i < rectangles.length; i++) {
      for (int j = 0; j < rectangles.length - i - 1; j++) {
        if (rectangles[j].getHeight() < rectangles[j+1].getHeight()) {
          swap(j, j+1);
        }
      }
    }
  }

  void selectionSort() {
    for (int i = 0; i < rectangles.length; i++) {
      int maxIndex = i;
      for (int j = i + 1; j < rectangles.length; j++) {
        if (rectangles[j].getHeight() > rectangles[maxIndex].getHeight()) {
          maxIndex = j;
        }
      }
      swap(i, maxIndex);
    }
  }

  void quickSort() {
    quickSort(0, rectangles.length-1);
  }

  void quickSort(int low, int high) {
    if (low < high) {
      int partitionIndex = partition(low, high);
      quickSort(low, partitionIndex-1);
      quickSort(partitionIndex+1, high);
    }
  }

  int partition(int low, int high) {
    int pivotIndex = int((high+low)/2);
    int pivot = int(rectangles[pivotIndex].getHeight());
    swap(pivotIndex, high);

    int i = low - 1;

    for (int j = low; j < high; j++) {
      if (rectangles[j].getHeight() > pivot) {
        i ++;
        swap(i, j);
      }
    }
    swap(i+1, high);
    return i+1;
  }


  boolean bubbleSortStep() {
    if (i < rectangles.length) {
      if (j < rectangles.length - i - 1) {
        rectangles[j].isSelected = true;
        rectangles[j+1].isSelected = true;
        if (rectangles[j].getHeight() < rectangles[j + 1].getHeight()) {
          needSwap = true;
        }
        if (needSwap) {
          swap(j, j + 1);
          needSwap = false;
        }
        j++;
      } else {
        j = 0;
        i++;
      }
      return true;
    } else if (count < rectangles.length) {
      rectangles[count].isDone = true;
      count ++;
      return true;
    }
    return false;
  }

  int minIndex = 0;

  boolean selectionSortStep() {
    if (i < rectangles.length) {
      if (i == j) {
        minIndex = i;
      }
      if (j < rectangles.length) {
        rectangles[j].isSelected = true;
        rectangles[minIndex].isSelected = true;
        if (rectangles[j].getHeight() > rectangles[minIndex].getHeight()) {
          minIndex = j;
          //rectangles[maxIndex].isSelected = true;
        }
        j++;
      } else {
        if (minIndex != i) {
          swap(i, minIndex);
        }
        i++;
        j = i;
      }
      return true;
    } else if (count < rectangles.length) {
      rectangles[count].isDone = true;
      count ++;
      return true;
    }
    return false;
  }

  boolean quickSortStep() {
    return false;
  }

  boolean partitionStep(int lowIndex, int highIndex) {
    if (lowIndex == highIndex) {
      return false;
    }
    rectangles[highIndex].isSelected = true;
    int pivot = int(rectangles[highIndex].getHeight());
    int low = int(rectangles[lowIndex].getHeight());
    int high = int(rectangles[highIndex - 1].getHeight());
    if (low < pivot) {
      rectangles[lowIndex].isSelected = true;
      lowIndex++;
    }
    if (high > pivot) {
      rectangles[highIndex].isSelected = true;
      highIndex--;
    }
    return false;
  }
}
