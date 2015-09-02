Ball[] bs = new Ball[10];
final float gravity = 40;

void setup() {
  size(400,400);
  
  int i = 0;
  while(i<10) {
    bs[i] = new Ball(new V2(10,200), 10, new V2(160, 120));
    i++;
  }
}

void draw() {
  background(255);
  
  for (Ball b : bs) {   
    b.render();
  }
  
  int i = 8;
  while(i >= 0) {
    bs[i+1] = bs[i];
    i--;
  }
  
  bs[0] = (Ball) bs[0].clone();
  bs[0].update();
}
