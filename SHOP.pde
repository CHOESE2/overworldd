void shopClicks() {
  mode = GAME;
}


void shop() {


  background(brown);
  fill(255);
  rect(25, 220, 550, 200);

  fill(255);
  stroke(brown);
  fill(255);


  fill(255);
  rect(25, 120, 550, 100); //first floor
  rect(25, 368, 550, 150);
  rect(120, 220, 100, 180); //stairs
   int x, y;
  y = 220;
  while (y < 420) {
    fill(brown);
    rect(120, y, 100, 10);
    y = y + 30;  //25 looks good too - a bit smaller
  }
  
 

  //-----------------------------------------


  //portal- GAME ----
  if ( dist(BOY.robinx, BOY.robiny, 80, 30) < BOY.robinw / 2 + 38) {
    robinDoor = true;
  }

  if (roiDoor && robinDoor) {
    mode = GAME;
  }


  if (mode == GAME) {
    BOY.robinx = 120;
    BOY.robiny = 550;
    robinDoor = false;
    roiDoor = false;
  }



  if ( dist(GIRL.roix, GIRL.roiy, 80, 30) < GIRL.roiw / 2 + 38) {
    roiDoor = true;
  }

  if (mode == GAME) {
    GIRL.roix = 120;
    GIRL.roiy = 550;
    robinDoor = false;
    roiDoor = false;
  }

  //PORTALON------------------------------

  //&& knifeCO && MEWOCAT





  image(door1, 125, 75, 80, 100); //made other door boolean  // door you can't go back ://
  stroke(brown);
  fill(255);
  door(430, 320);
  //
  fill(255, 0, 0);
  noStroke();
  portal(280, 517);

if (dist(BOY.robinx, BOY.robiny, 300, 517) < BOY.robinw / 2 && mode == SHOP) {
  robinOUT = true;
}
 if (robinOUT && roiOUT){
   mode = OUTSIDE;
 }

 ///
 if (dist(GIRL.roix, GIRL.roiy, 280, 517) < GIRL.roiw / 2  && mode == SHOP) {
  roiOUT = true;
}
 if (mode == OUTSIDE){
   GIRL.roix = 130;
   GIRL.roiy = 500;
   roiOUT = false;
   roiOUT = false;
 }
 
  
 if (mode == OUTSIDE){
   BOY.robinx = 130;
   BOY.robiny = 500;
   robinOUT = false;
   roiOUT = false;
 }
 ////
 
 
 
 




  //to do:
  //add doors, frames, home decor, changes modes when dist of player is certain distance from the door





  //MUSIC-------------------------------------
  if (!BgMusic.isPlaying()) {
    BgMusic.loop();
  }

  if (Rain.isPlaying()) {
    Rain.stop();
  }

  if (MEWO2.isPlaying()) {
    MEWO2.stop();
  }

  if (Defeat.isPlaying()) {
    Defeat.stop();
  }
  if (Home.isPlaying()) {
    Home.stop();
  }


  //BOUNDERIES ROBIN

  //upper stairs
  if (BOY.robinx < 50 && BOY.robiny < 220) BOY.robinx = 50; //left
  if (BOY.robinx > 550 && BOY.robiny < 225) BOY.robinx = 550; //right
  if (BOY.robiny < 100 && BOY.robiny < 175) BOY.robiny = 100;



  if (BOY.robiny > 175 && BOY.robinx > 40 & BOY.robinx < 120 && BOY.robiny < 200) BOY.robiny = 175;
  if (BOY.robiny > 175 && BOY.robinx > 220 && BOY.robinx < 550 && BOY.robiny < 200)BOY.robiny = 175;

  //------------------------stairs
  if (BOY.robiny > 175 && BOY.robinx < 140 && BOY.robinx < 220 && BOY.robiny < 352) BOY.robinx = 140; // BOUNDERIES secured finally ye
  if (BOY.robiny > 175 && BOY.robinx > 200  && BOY.robinx > 120 && BOY.robiny < 352) BOY.robinx = 200;
  //--sides
  if (BOY.robinx > 100 && BOY.robinx < 110 && BOY.robinx < 518 && BOY.robiny > 220 && BOY.robiny < 380) BOY.robinx = 100;
  if (BOY.robinx < 240 && BOY.robinx > 230 && BOY.robinx > 25 &&  BOY.robiny > 220 && BOY.robiny < 380) BOY.robinx = 240;

  //----bottom floor
  if (BOY.robinx < 50  && BOY.robiny > 355) BOY.robinx = 50;  //left
  if (BOY.robinx > 550 && BOY.robiny > 355) BOY.robinx = 550;

  // upper floor wall with hole;
  if (BOY.robiny > 352 && BOY.robinx > 20 && BOY.robinx < 120 && BOY.robiny < 360) BOY.robiny = 360;
  if (BOY.robiny > 352 && BOY.robinx > 220 && BOY.robinx < 580 && BOY.robiny < 360) BOY.robiny = 360;

  //-bottom wall with portal hole
  if (BOY.robiny > 480 && BOY.robinx < 280 && BOY.robinx > 20 && BOY.robiny < 518) BOY.robiny = 480;
  if (BOY.robiny > 480  && BOY.robinx < 580 && BOY.robinx > 355 && BOY.robiny < 518) BOY.robiny = 480;

  //portal bounderies
  if (BOY.robinx < 280 && BOY.robiny > 517 && BOY.robiny < 592) BOY.robinx = 280;
  if (BOY.robinx > 355  && BOY.robiny > 517 && BOY.robiny < 592) BOY.robinx = 355;
  if (BOY.robiny > 535) BOY.robiny = 535;



  //ROI


  //upper stairs
  if (GIRL.roix < 50 && GIRL.roiy < 220) GIRL.roix = 50; //left
  if (GIRL.roix > 550 && GIRL.roiy < 225) GIRL.roix = 550; //right
  if (GIRL.roiy < 100 && GIRL.roiy < 220) GIRL.roiy = 100;



  if (GIRL.roiy > 175 && GIRL.roix > 40 & GIRL.roix < 120 && GIRL.roiy < 200) GIRL.roiy = 175;
  if (GIRL.roiy > 175 && GIRL.roix > 220 && GIRL.roix < 550 && GIRL.roiy < 200)GIRL.roiy = 175;

  //------------------------stairs
  if (GIRL.roiy > 175 && GIRL.roix < 140 && GIRL.roix < 220 && GIRL.roiy < 352) GIRL.roix = 140; // BOUNDERIES secured finally ye
  if (GIRL.roiy > 175 && GIRL.roix > 200  && GIRL.roix > 120 && GIRL.roiy < 352) GIRL.roix = 200;
  //sides-----
  if (GIRL.roix > 100 && GIRL.roix < 110 && GIRL.roix < 518 && GIRL.roiy > 220 && GIRL.roiy < 380) GIRL.roix = 100;
  if (GIRL.roix < 240 && GIRL.roix > 230 && GIRL.roix > 25 &&  GIRL.roiy > 220 && GIRL.roiy < 380) GIRL.roix = 240;
  
  
  //----bottom floor
  if (GIRL.roix < 50  && GIRL.roiy > 355) GIRL.roix = 50;  //left
  if (GIRL.roix > 550 && GIRL.roiy > 355) GIRL.roix = 550;

  // upper floor wall with hole;
  if (GIRL.roiy > 352 && GIRL.roix > 20 && GIRL.roix < 120 && GIRL.roiy < 360) GIRL.roiy = 360;
  if (GIRL.roiy > 352 && GIRL.roix > 220 && GIRL.roix < 580 && GIRL.roiy < 360) GIRL.roiy = 360;

  //-bottom wall with portal hole
  if (GIRL.roiy > 480 && GIRL.roix < 280 && GIRL.roix > 20 && GIRL.roiy < 518) GIRL.roiy = 480;
  if (GIRL.roiy > 480  && GIRL.roix < 580 && GIRL.roix > 355 && GIRL.roiy < 518) GIRL.roiy = 480;

  //portal bounderies
  if (GIRL.roix < 280 && GIRL.roiy > 517 && GIRL.roiy < 592) GIRL.roix = 280;
  if (GIRL.roix > 355  && GIRL.roiy > 517 && GIRL.roiy < 592) GIRL.roix = 355;
  if (GIRL.roiy > 535) GIRL.roiy = 535;



  //--UNDER STAIRES DOOR----------------------------------------------------------------------


  BOY.display();
  GIRL.display();

  //RAILING----------

fill(255);
stroke(brown);
  int q;
  q = 30;
  while (q < 125) {
    fill(255);
    rect(q, 180, 5, 35);
    q = q + 25;
  }

  int qq;
  qq = 230;
  while (qq < 580) {
    fill(255);
    rect(qq, 180, 5, 35);
    qq = qq + 25;
  }
  rect(20, 180, 100, 6); //left
  rect(220, 180, 360, 6); //right
  
  //stair railing
   fill(255);
rect(119, 180, 5, 190);
rect(218, 180, 5, 190);



  //--------



  //fill(0);
  //text("shop", 200, 300);
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(0, 0, 255);
  } else stroke(255);
}
