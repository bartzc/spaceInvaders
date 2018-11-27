ArrayList<ships> shipList = new ArrayList<ships>();
public class play {


  createShips s = new createShips();
  ships ship = new ships();
  boolean right = true;
  boolean left = false;
  boolean down = false;
  int far = 10;
  int near = 0;

  public play() {
  }

  //ship shape width/height is 30x30 with 24 pixels between each shape
  public ArrayList<ships> setShips() {
    int x = 200;
    int y = 240;
    int j=0;
    for (int i =0; i<55; i++) {
      if (i<11) {
        shipList.add(new ships(s.ship3(), x, y));
        x+=64;
        j++;
      } else if (i<22) {
        shipList.add(new ships(s.ship2(), x, y));
        x+=64;
        j++;
      } else {
        shipList.add(new ships(s.ship1(), x, y));
        x+=64;
        j++;
      }
      if (j==11) {
        y+=44;
        j=0;
        x = 200;
      }
    }
    return shipList;
  }
  public void update() {
    indexUpdate();
    for (int i = 0; i<shipList.size(); i++) {

      if (right==true) {
        shipList.get(i).decX(0);
        shipList.get(i).incrY(0);
        shipList.get(i).incrX(.75);

        if (shipList.get(far).getX()>=900) {
          right = false;
          left = true;
          down = true;
        }
      }
      if (left==true) {
        shipList.get(i).incrX(0);
        shipList.get(i).incrY(0);
        shipList.get(i).decX(.75);

        if (shipList.get(near).getX()<=40) {
          right = true;
          left = false;
          down = true;
        }
      }
    }
    if (down == true) {
      for (int j = 0; j<shipList.size(); j++) {
        shipList.get(j).incrY(10);
      }
      down = false;
    }
  }
  public void indexUpdate() {

    for (int i = 0; i<shipList.size(); i++) {
      if (far<shipList.size()&&shipList.get(far).getX()<shipList.get(i).getX()) {
        far = i;
      } else {
        far=shipList.size()-1;
      }
    }
    for (int i = 0; i <shipList.size(); i++) {
      if (near>shipList.size()&&shipList.get(near).getX()>shipList.get(i).getX()) {
        near = i;
      } else {
        near = 0;
      }
    }
  }



  public void display() {

    //background(0);
    for (int i = 0; i<shipList.size(); i++) {
      image(shipList.get(i).getShip(), shipList.get(i).getX(), shipList.get(i).getY());
    }
    //update();
  }
}
