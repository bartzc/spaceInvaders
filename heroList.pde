public class heroList {
  private int xPos;
  private int yPos;
  public heroList(int x, int y) {
    xPos = x;
    yPos = y;
  }
  int getX() {
    return xPos;
  }
  int getY() {
    return yPos;
  }
  void incrY() {
    yPos-=5;
  }
}
