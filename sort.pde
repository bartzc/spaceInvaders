public class sorts {
  public sorts() {
  }
  public ArrayList<leaderboards> sortArr(ArrayList<leaderboards> arr) {
    leaderboards temp;
    for (int i = 1; i<arr.size(); i++) {
      int x = i;
      while ((arr.get(x).getScore()>arr.get(x-1).getScore())&&x>=1) {
        temp = arr.get(x);
        arr.set(x, arr.get(x-1));
        arr.set(x-1, temp);
        if (x>1) {
          x--;
        }
      }
    }
    return arr;
  }
}
