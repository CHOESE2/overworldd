void defeatClicks() {
  mode = mode - 1;
}


void defeat() {


  if (BgMusic.isPlaying()) {
    BgMusic.stop();
  }

  if (Rain.isPlaying()) {
    Rain.stop();
  }

  if (MEWO2.isPlaying()) {
    MEWO2.stop();
  }
  
  if (Home.isPlaying()) {
    Home.stop();
  }
  if (!Defeat.isPlaying()) {
    Defeat.play();
  }






  background(0);
  textFont(dog);
  textSize(40);
  fill(255);
  text("YOU WOKE UP..", 90, 310);
  textSize(20);
  text("it's ok, you'll be back", 200, 395);


  t(220, 100, 300, 100);
  rect(220, 100, 300, 100); //wake up button
  fill(0);
  textSize(20);
  text("go back to sleep?", 242, 158);
  fill(255);
}


void t(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(0, 0, 255);
  } else stroke(255);
}
