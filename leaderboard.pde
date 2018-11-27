public class board {
  private ArrayList<leaderboards> list = new ArrayList<leaderboards>(5);
  public board(ArrayList<leaderboards> l) {
    list = l;
  }
  public void display() {
    background(0);
    type = createFont("spaceInvaders.ttf", 32);
    textFont(type, 75);
    text("Name: ", 50, 150);
    text("Score: ", 650, 150);
    textFont(type, 45);
    text("<---", 50, 1460);

    int y = 460;

    for (int i = 0; i<list.size(); i++) {

      if (list.get(i)!=null) {
        fill(255);
        text(i+1+".  "+list.get(i).getName(), 50, y);
        text(list.get(i).getScore(), 740, y);
        y+=200;
      }
    }
  }
}
