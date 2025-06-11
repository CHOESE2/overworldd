void outsideClicks() {
}


void outside() {


  if (BgMusic.isPlaying()) {
    BgMusic.stop();
  }

  if (Defeat.isPlaying()) {
    Defeat.stop();
  }

  if (Rain.isPlaying()) {
    Rain.stop();
  }
  if (Home.isPlaying()) {
    Home.stop();
  }

  if (MEWO2.isPlaying()) {
    MEWO2.stop();
  }
  //new music




  fill(0, 0, 255);
  stroke(0);
  strokeWeight(5);
  rect(300, 50, 300, 300);
  fill(245, 115, 35);
  rect(20, 350, 220, 220);

  fill(255, 0, 0);
  noStroke();


  rect(0, 100, 180, 80);
  rect(100, 100, 80, 440);
  rect(100, 480, 420, 80);
  rect(460, 300, 80, 260);
  
  
 
  int linex;
  linex = 350;
  int li;
  li = 50;
  int si;
  si = 80;
  
  while(linex < 600){
    fill(0);
    rect(linex, 420, 5, 400);
    linex += 20;
  }
  
  while(li < 250){
    fill(0);
    rect(li, 200, 5, 80);
    li += 20;
  }
  
  while(si < 200){
    fill(0);
    rect(200, si, 400, 5);
    si += 80;
  }





  //ROBIN bounderies

  //if (BOY.robiny > 100 && BOY.robinx < 180) BOY.robiny = 100;

  robinw = 5;
  robinh = 5;
  roiw = 5;
  roih = 5;
  BOY.display();
  GIRL.display();


  lc = 0;

  if (linesOn == false) {
    background(255);
  }


  if (BOY.robinx < 580 && GIRL.roix < 580) {
    linesOn = true;
  }


  while (lc < lineNum && linesOn) {
    line[lc].show();
    line[lc].act();
    lc ++;
  }

  if (BOY.robinx > 580 && GIRL.roix > 580 && linesOn) {
    linesOn = false;
  }
}












// create another mode, with door and idk rain not falling on the dppr?? idk
