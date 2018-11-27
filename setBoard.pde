public class setBoard {
  private ArrayList<leaderboards> lead = new ArrayList<leaderboards>();
  PrintWriter output;
  private int score;
  private String name;
  public setBoard(ArrayList<leaderboards> l, String n, int s) {
    lead = l;
    name = n;
    score = s;
  }

  public void setPos() {
    for (int i = 9; i >0; i++) {
      if (lead.get(i).getScore()>score) {
        lead.add(i, new leaderboards(name, score));
      }
    }
  }
  public void write() {
    output = createWriter("leaderboards.txt");
    for (int i = lead.size(); i>=0; i--) {
      output.println(lead.get(i).getName()+"  "+lead.get(i).getScore());
    }
  }
}
