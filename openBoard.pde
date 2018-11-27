public class openBoard {

  private ArrayList<leaderboards> hold = new ArrayList<leaderboards>(5);

  public ArrayList<leaderboards> pullList() {
    BufferedReader read = createReader("leaderboards.txt");
    String line;

    try {
      while ((line=read.readLine())!=null) {

        String [] pieces = split(line, "  ");
        String x = pieces[0];
        int y = int(pieces[1]);
        hold.add(new leaderboards(x, y));
      }
      read.close();
    } 
    catch(IOException e) {
      e.printStackTrace();
    }
    return hold;
  }
}
