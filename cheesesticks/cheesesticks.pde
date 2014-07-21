//Bubble sort

int [] cheesesticks = new int [20];
int x, y;
int iter = 0;
int max = cheesesticks.length - 1;

void setup() {
  size(cheesesticks.length * 30, cheesesticks.length * 30);
  background(0);
  for (int i = 0; i < cheesesticks.length; i++) {
    cheesesticks[i] = int(random(5, 100));
  }
}

void draw() {
  drawNums();
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

void drawNums() {
  background(0);
  for (int i = 0; i < cheesesticks.length; i++){
    fill(255, 255, 0);
    rect(0, i * 30, cheesesticks[i] * 3, 25, 8);
  }
}
