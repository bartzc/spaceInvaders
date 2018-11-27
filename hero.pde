private boolean game;
public class hero {
  PImage hero;
  private int x = 600;
  private int y = 795;
  private int k;
  private int m = 795;
  private boolean shoot = false;

  private int shipCount = 55;
  private int finalScore = 0;
  color check = color(255);
  boolean del = false;
  ArrayList<heroList> shots = new ArrayList<heroList>(1);
  public hero() {
  }

  public void display() {
    hero = loadImage("hero.png");
    hero.resize(55, 55);
    image(hero, x, 800);
    text("Score: ", 60, 900);
    text(finalScore, 300, 900);
    if (mousePressed && shots.size()<10) {
      shoot = true;
      shots.add( new heroList(x+25, 795));
      delay(100);
    }
    if (keyCode == LEFT) {
      x-=5;
    }
    if (keyCode == RIGHT) {
      x+=5;
    }


    //if (shoot == true) {

    for (int i = shots.size()-1; i>=1; i--) {
      fill(0, 252, 0);
      rect(shots.get(i).getX(), shots.get(i).getY(), 5, 20);
      shots.get(i).incrY();
      color c = get(shots.get(i).getX()+10, shots.get(i).getY()-1);
      if (c == check) {


        for (int k = 0; k<shots.size()-1; k++) {
          for (int j = shipList.size()-1; j>=0; j--) {
            if ((shipList.get(j).getX()<shots.get(k).getX()+10&&shipList.get(j).getX()+50>shots.get(k).getX()+10)&&(shipList.get(j).getY()<=shots.get(k).getY()-1&&shipList.get(j).getY()+50>=shots.get(k).getY()-1)) {
              shipList.remove(j);
              shots.remove(k);
              finalScore +=20;
              shipCount--;
            }
          }
        }
      } else if (shots.get(i).getY()<=-10) {
        shots.remove(i);
      }
    }
    if (shipCount==0) {
      game = false;
    }
  }

  public int finalScore() {
    return finalScore;
  }
}
