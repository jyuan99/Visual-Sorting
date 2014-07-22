//Bubble sort

int [] cheesesticks = new int [20];
int x, y;
int iter = 0;
int max = cheesesticks.length - 1;
boolean pause = false;

void setup() {
  size(cheesesticks.length * 30, cheesesticks.length * 30);
  background(0);
  for (int i = 0; i < cheesesticks.length; i++) {
    cheesesticks[i] = int(random(5, 100));
  }
}

void draw() {
  drawNums();
//  if (mouseX > cheesesticks.length * 30 - 100 && mouseX < cheesesticks.length * 30 - 25 && mouseY > 100 && mouseY < 135){
//    fill(0, 0, 200);
//    rect(cheesesticks.length * 30 - 100, 100, 75, 35, 5);
//    fill(255);
//    text("Reset", cheesesticks.length * 30 - 77, 122);
//    if (mousePressed){
//    }
//  }
//  if (mouseX > cheesesticks.length * 30 - 100 && mouseX < cheesesticks.length * 30 - 25 && mouseY > 150 && mouseY < 185){
//    fill(0, 0, 200);
//    rect(cheesesticks.length * 30 - 100, 150, 75, 35, 5);
//    fill(255);
//    text("Pause", cheesesticks.length * 30 - 78, 173);
//    if (mousePressed){
//      pause = true;
//      fill(255, 0, 0);
//      rect(cheesesticks.length * 30 - 100, 200, 75, 35, 5);
//      fill(0);
//      text("Resume", cheesesticks.length * 30 - 82, 223);
//      if (mouseX > cheesesticks.length * 30 - 100 && mouseX < cheesesticks.length * 30 - 25 && mouseY > 200 && mouseY < 235){
//        fill(0, 0, 200);
//        rect(cheesesticks.length * 30 - 100, 200, 75, 35, 5);
//        fill(255);
//        text("Resume", cheesesticks.length * 30 - 82, 173);
//        if (mousePressed) {
//          pause = false;
//        }
//      }
//    }
//  }
  
  if (!pause){
    if (iter == (max)){
      iter = 0;
      max--;
    }
    if (max == 1){
      return;
    }
    if (cheesesticks[iter] > cheesesticks[iter + 1]){
      x = cheesesticks[iter];
      y = cheesesticks[iter + 1];
      cheesesticks[iter] = y;
      cheesesticks[iter+1] = x;
    }
    iter++;
  }
}

void drawNums() {
  background(0);
  for (int i = 0; i < cheesesticks.length; i++){
    fill(255, 255, 0);
    rect(0, i * 30, cheesesticks[i] * 3, 25, 8);
  }
  
//  fill(0, 255, 0);
//  rect(cheesesticks.length * 30 - 100, 100, 75, 35, 5);
//  fill(0);
//  text("Reset", cheesesticks.length * 30 - 77, 122);
//  
//  fill(255, 0, 0);
//  rect(cheesesticks.length * 30 - 100, 150, 75, 35, 5);
//  fill(0);
//  text("Pause", cheesesticks.length * 30 - 78, 173);
}
