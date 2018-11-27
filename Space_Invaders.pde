import processing.sound.*;
import java.util.*;
Scanner scan = new Scanner(System.in);
PFont type;
board b;
openBoard list = new openBoard();
sorts s = new sorts();
setBoard board;
credit c = new credit();
play g = new play();
hero h = new hero();

private int score;
private String name;
private ArrayList<leaderboards> lead = new ArrayList<leaderboards>();

boolean home = true;

boolean play = true;
boolean end = false;
boolean end1 = false;



void setup() {
  size(1000, 1500);
  //background(0);
  type = createFont("spaceInvaders.ttf", 32);
  lead = list.pullList();
  lead = s.sortArr(lead);
}
void draw() {
  fill(255);
  if (home==true) {
    background(0);
    textFont(type, 75);
    text("Space Invaders", 145, 300);

    textFont(type, 50);
    text("Play", 425, 700);
    text("leaderboards", 275, 850);
    text("credits", 374, 1000);
  }





  //leaderboards button
  if (home==true&&mouseX>=255&&mouseX<=740&&mouseY>=800&&mouseY<=855) {
    cursor(HAND);
    if (mousePressed) {
      home = false;
      b = new board(lead);
      b.display();
    }
  } else if (mouseX>=20&&mouseX<=175&&mouseY>=1415&&mouseY<=1455) {
    cursor(HAND);
    if (mousePressed) {
      home = true;
    }
  } else {
    cursor(ARROW);
  }


  //play button
  if (home==true&&mouseX>=400&&mouseX<=570&&mouseY>=650&&mouseY<=720) {
    cursor(HAND);
    if (mousePressed) {
      game = true;
      background(0);
      g.setShips();

      h.display();
    }
  } else {
    cursor(ARROW);
  }




  //credits button
  if (home==true&&mouseX>=349&&mouseX<=609&&mouseY>=950&&mouseY<=1200) {
    cursor(HAND);
    if (mousePressed) {
      home = false;
      c.display();
    }
  } else if (mouseX>=20&&mouseX<=175&&mouseY>=1415&&mouseY<=1455) {
    cursor(HAND);
    if (mousePressed) {
      home = true;
    }
  } else {
    cursor(ARROW);
  }

  if (game==true) {
    home = false;
    //background(0);

    background(0);
    g.display();
    g.update();
    h.display();

    if (game == false) {
      end1 = true;
    }
  }


  if (end1 == true) {
    background(0);
    text("You Won", 200, 600);
    score = h.finalScore();
    name = "Holder";//change later
    board = new setBoard(lead, name, score);
    end1 = false;
    if (mousePressed) {
      home = true;
    }
  }
}
