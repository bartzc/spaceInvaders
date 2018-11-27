public class ships {
  private PImage ship;
  private float xPos;
  private float yPos;

  public ships(PImage s, float x, float y) {
    xPos = x;
    yPos = y;
    ship = s;
  }
  public ships() {
  }
  public PImage getShip() {
    return ship;
  }
  public float getX() {
    return xPos;
  }
  public float getY() {
    return yPos;
  }
  public void incrX(float n) {
    xPos+=n;
  }
  public void incrY(int n ) {
    yPos+=n;
  }
  public void decX(float n) {
    xPos=xPos-n;
  }
}
