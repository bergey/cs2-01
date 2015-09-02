class Ball {
  V2 pos;
  V2 v;
  final float r;
  int last_millis;
  
  Ball(V2 pos_, float r_, V2 v_, int last_millis_) {
    pos = pos_;
    r = r_;
    v = v_;
    last_millis = last_millis_;
  }
  
  Ball(V2 pos_, float r_, V2 v_) {
    this(pos_, r_, v_, millis());
  }
  
  void render() {
   fill(0,64,128);
   ellipse(pos.x,pos.y,2*r,2*r);
  }
  
  private String toString(V2 pos, float r, V2 v) {
    return "{pos = " + pos.toString() + ", r = " + r + ", v = " 
      + v.toString() + "}";
  }
  
  public String toString() {
    return toString(pos, r, v);
  }
  
  Object clone() {
    Ball ret = new Ball(pos, r, v, last_millis);
    return ret;
  }
      
  void update() {
    int ms = millis();
    float dt = 0.001 * (ms - last_millis);
    pos = new V2(pos.x + v.x * dt, pos.y + v.y * dt);
    
    if (pos.x + r > width || pos.x - r < 0) {
      v = new V2(-1 * v.x, v.y);
    }
    if (pos.y + r > height || pos.y - r < 0) {
      v = new V2(v.x, -1 * v.y);
    }
    
    v = new V2(v.x, v.y + gravity * dt);
    last_millis = ms;
  }
}
