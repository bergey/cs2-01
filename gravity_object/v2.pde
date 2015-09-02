class V2 {
  final float x, y;
  
  V2(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  V2 add(V2 b) {
    V2 ret = new V2(x + b.x, y + b.y);
    return ret;
  }
    
  public String toString() {
    return "(" + x + "," + y + ")";
  }
}
