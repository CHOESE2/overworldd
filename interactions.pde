//if basil is not moving and sunny is, CHECK IF UR CAP IS LOCKED


void keyPressed() {



  if (key == 'a' || key == 'A') aKey = true;
  if (key == 'd' || key == 'D') dKey = true;
  if (key == 'w' || key == 'W') wKey = true;
  if (key == 's' || key == 'S') sKey = true;

  //stats
  if (key == 'c' || key == 'C') cKey = true;
  if (cKey) mode = SHOP;
 // if (cKey) mode = STATS;

  //shop
  if (key == 't' || key == 'T') tKey = true;
  if(tKey) mode = OUTSIDE;
  //if (tKey) mode = FIGHT1;

  //mode
  if (key == 'x' ||key == 'X') xKey = true;
  if (xKey) mode = MEWO;

  //KNIFE
  if (key == 'e' || key == 'E') eKey = true;


  // AMMOB
  if (key == 'm' || key == 'M') mKey = true;


  //pause

  if (key == 'z' || key == 'Z') zKey = true;




  if (keyCode == LEFT) leftKey = true;

  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
}


void keyReleased() {
  if (key == 'a' || key == 'A') aKey = false;
  if (key == 'd' || key == 'D') dKey = false;
  if (key == 'w' || key == 'W') wKey = false;
  if (key == 's' || key == 'S') sKey = false;

  //stats
  if (key == 'c' || key == 'C') cKey = false;

  //KNIFE
  if (key == 'e' || key == 'E') eKey = false;



  //AMMOB
  if (key == 'm' || key == 'M') mKey = false;

  //pause
  if (key == 't' || key == 'T') tKey = false;


  //mode
  if (key == 'x' || key == 'X') xKey = false;
  if (key == 'z' || key == 'Z') zKey = false;


  if (keyCode == LEFT) leftKey =false;
  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
}








void mouseReleased() {

  if (mode == INTRO) {
    introClicks();
  } else if (mode == DEFEAT) {
    defeatClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  } else if (mode == SHOP) {
    shopClicks();
  } else if (mode == BUNNYFIGHT) {
    bunnyClicks();
  } else if (mode == STATS) {
    statsClicks();
  } else if (mode == MEWO) {
    mewoClicks();
  } else if (mode == FIGHT1) {
    fight1Clicks();
  } else if (mode == WINNER) {
    winnerClicks();
  } else if (mode == SLEEP){
    sleepClicks();
  } else if (mode == OUTSIDE){
    outsideClicks();
  } else {
    println("ERROR! Mode is " + mode);
  }
}
