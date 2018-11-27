public class createShips {
  PImage ship1;
  PImage ship2;
  PImage ship3;
  public createShips() {
  }
  public PImage ship1() {
    ship1 = loadImage("ship1.png");
    ship1.resize(50, 50);
    return ship1;
  }
  public PImage ship2() {
    ship2 = loadImage("ship2.png");
    ship2.resize(50, 50);
    return ship2;
  }
  public PImage ship3() {
    ship3 = loadImage("ship3.png");
    ship3.resize(45, 45);
    return ship3;
  }
}
