ArrayList<Bar> bars;
MyRectangle[] rectangles;
boolean isSorting;
Sort sort;

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
    isSorting = sort.partitionStep(new Segment(0, rectangles.length-1));
  }
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
    rect.isSelected = false;
  }
}
