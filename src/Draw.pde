ArrayList<Bar> bars;
MyRectangle[] rectangles;
boolean isSorting;
Sort sort;
char keyPress;

void setup() {
  size(1280, 720);
  background(0);
  bars = new ArrayList<Bar>();
  rectangles = new MyRectangle[100];
  createArray();
  drawArray();
  sort = new Sort(rectangles);
  isSorting = true;
}

void draw() {
  background(0);
  if (isSorting) {
    switch(keyPress) {
    case 'q':
      isSorting = sort.quickSortStep();
      break;
    case 'b':
      isSorting = sort.bubbleSortStep();
      break;
    case 's':
      isSorting = sort.selectionSortStep();
      break;
    }
  }
  if(!isSorting){
    keyPress = ' ';
    delay(1500);
    setup();
  }
  display(rectangles);
  displayLabels();
}

void keyPressed() {
  switch(key) {
  case 'q':
    keyPress = 'q';
    break;
  case 'b':
    keyPress = 'b';
    break;
  case 's':
    keyPress = 's';
    break;
  }
}

void displayLabels() {
  String quick = "[q] Quick Sort";
  String selection = "[s] Selection Sort";
  String bubble = "[b] Bubble Sort";
  fill(160);
  text(quick, 50, 50);
  text(selection, 50, 75);
  text(bubble, 50, 100);
}

void createArray() {
  for (int i = 0; i < 100; i++) {
    bars.add(new Bar(int(random(1, 100))));
  }
}

void drawArray() {
  for (int i = 0; i < bars.size(); i++) {
    MyRectangle rect = new MyRectangle(i*width/bars.size(), height, width/bars.size(), -bars.get(i).getHeight());
    rectangles[i] = rect;
    rect.display();
  }
}

void display(MyRectangle[] rectangles) {
  background(0, 0, 0);
  for (MyRectangle rect : rectangles) {
    rect.display();
    rect.isSelected = false;
  }
}
