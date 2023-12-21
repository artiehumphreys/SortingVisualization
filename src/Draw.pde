ArrayList<Bar> bars;
MyRectangle[] rectangles;
Sort sort;
void setup() {
  background(0, 0, 0);
  size(1280, 720);
  bars = new ArrayList<Bar>();
  rectangles = new MyRectangle[100];
  createArray();
  drawArray();
  sort = new Sort(rectangles);
  sort.quickSort();
  display(rectangles);
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
  }
}
