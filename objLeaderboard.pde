public class leaderboards {
  private int score;
  private String name;

  public leaderboards(String n, int s) {
    name = n;
    score = s;
  }

  public int getScore() {
    return score;
  }

  public String getName() {
    return name;
  }
}
