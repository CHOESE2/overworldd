

void gameClicks() {
}




void game() {



  background(brown);
  fill(255);
  stroke(brown);
  rect(80, 80, 440, 440);
  
  
  noStroke();
  portal(150, 519);



  //MUSIC-------------------------------------



  if (Defeat.isPlaying()) {
    Defeat.stop();
  }

  if (MEWO2.isPlaying()) {
    MEWO2.stop();
  }
  if (Rain.isPlaying()) {
    Rain.stop();
  }
  if (Home.isPlaying()) {
    Home.stop();
  }




  if (!BgMusic.isPlaying() && mode == GAME || mode == BUNNYFIGHT) {
    BgMusic.loop();
  }







  //BOUNDERIES ROBIN
  if (BOY.robinx < 110) BOY.robinx = 110;
  if (BOY.robinx > 495) BOY.robinx = 495;
  if (BOY.robiny < 75) BOY.robiny = 75;

  //BOUNDERIES ROI
  if (GIRL.roix < 100) GIRL.roix = 100;
  if (GIRL.roix > 490) GIRL.roix = 490;
  if (GIRL.roiy < 75) GIRL.roiy = 75;

  //PORTAL ROBIN----------------------------------------
  //bottom wall with portal hole
  if (BOY.robiny > 470 && BOY.robinx < 150 && BOY.robinx > 100 && BOY.robiny < 520) BOY.robiny = 470;
  if (BOY.robiny > 470 && BOY.robinx < 520 && BOY.robinx > 225 && BOY.robiny < 520) BOY.robiny = 470;

  //portal bounderies
  if (BOY.robinx < 170 && BOY.robiny < 579 && BOY.robiny > 520) BOY.robinx = 170;
  if (BOY.robinx > 210 && BOY.robiny < 579 && BOY.robiny > 520) BOY.robinx = 210;
  if (BOY.robiny > 532) BOY.robiny = 532;


  // PORTAL ROI
  //bottom wall with portal hole
  if (GIRL.roiy > 470 && GIRL.roix < 150 && GIRL.roix > 95 && GIRL.roiy < 520) GIRL.roiy = 470;
  if (GIRL.roiy > 470 && GIRL.roix < 520 && GIRL.roix > 225 && GIRL.roiy < 520) GIRL.roiy = 470;

  //portal bounderies
  if (GIRL.roix < 170 && GIRL.roiy < 579 && GIRL.roiy > 520) GIRL.roix = 170;
  if (GIRL.roix > 210 && GIRL.roiy < 579 && GIRL.roiy > 520) GIRL.roix = 210;
  if (GIRL.roiy > 532) GIRL.roiy = 532;
  
  
  //----------------------------------------------
  


//portal-----


if ( dist(BOY.robinx, BOY.robiny, 160, 580) < BOY.robinw / 2){
  robinDoor = true;
}

if(roiDoor && robinDoor){
  mode = SHOP;
}


if (mode == SHOP){
  BOY.robinx = 130;
  BOY.robiny = 150;
  robinDoor = false;
  roiDoor = false;
  PORTALON = true;
}



if ( dist(GIRL.roix, GIRL.roiy, 160, 580) < GIRL.roiw / 2){
  roiDoor = true;
}

if (mode == SHOP){
  GIRL.roix = 130;
  GIRL.roiy = 150;
  robinDoor = false;
  roiDoor = false;
}









//can't leave white room untill bunny and mewo is defeated OR encounter them somewhere outside the "house?"
//white room can maybe look like bedroom or smth wackier 

//-----------------------------------------------------------------------------------------------------------------------------------














  //images

  image(bunni, bunnix, bunniy, 50, 50);


 
 
    image(apple, applex, appley, applew, appleh);
  


  //mewo
  interact(100, 100, 150, 150);
  image(mewo, 150, 200, 20, 20);


  //image(knife, knifex, knifey, 100, 100);

  BOY.display();
  GIRL.display();


  ///----------------------------------------------------------




  if (winnerOn == true) {
    knifeOn = true;
    // image(knife, knifex, knifey, knifew, knifeh);
  }





  //apple
  // collision
  if (dist(BOY.robinx, BOY.robiny, applex, appley) <= 65 + 50) {
    CollectAPP.play();

    applex = random(105, 495);
    appley = random(105, 495);
    point = point + 1;
    w += 2;
  }

  if (dist(GIRL.roix, GIRL.roiy, applex, appley) <= 65 + 50 ) {
    CollectAPP.play();
    applex = random(105, 495);
    appley = random(105, 495);
    point2 = point2 + 1;
    wb += 2;
  }





  //bunni collision
  if (!bunniOn && random(2000) < 1) {
    bunnix = random(105, 495);
    bunniy = random(105, 495);
    bunniOn = true;
  }

  if (bunniOn) {
    image(bunni, bunnix, bunniy, 50, 50);
  }

  if (dist(BOY.robinx, BOY.robiny, bunnix, bunniy) <= 65 && knifeCO == false) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }


  if (dist(GIRL.roix, GIRL.roiy, bunnix, bunniy) <= 65  && knifeCO == false) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }





  //---------------------------------------
  if (knifeCO == true) {
    textSize(15);
    fill(255);
    text("ROI, press ' e ' to stab", 50, 48);
    fill(173, 41, 17);
    text("be weary of MEWO..", 200, 150);
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(bunnix - 46, bunniy - 72, 93, 10);
    fill(0, 255, 0);
    rect(bunnix - 46, bunniy - 72, BH, 10);

    if (BH < 62) {
      fill(255, 172, 70);
      rect(bunnix - 46, bunniy - 72, BH, 10);
    }
    if (BH < 31) {
      fill(255, 0, 0);
      rect(bunnix - 46, bunniy - 72, BH, 10);
    }

    if (dist(GIRL.roix, GIRL.roiy, bunnix, bunniy) <= 65 + 25 && eKey) {
      BH -= 5;
    }

    if (BH <= 0) {
      BH = 0;
      stroke(0);
      fill(255, 0, 0);
      textSize(15);
      strokeWeight(5);
      text("you are ready to face", 275, 550);
      text("on_____ROI", 275, 580);
    }


    if (dist(GIRL.roix, GIRL.roiy, mewox, mewoy) <= 65 + 10 && knifeCO == true) {
      mode = MEWO;


      if (dist(BOY.robinx, BOY.robiny, mewox, mewoy) <= 65 + 10 && knifeCO == true) {
        mode = MEWO;
      }
    }



    if (eKey && !knifeOn) {
      knifeOn = true;
    }
    if (knifeOn && eKey && current_ACT == WGRight) {
      image(knife, GIRL.roix + 16, GIRL.roiy + 14, knifew, knifeh);
    }

    if (knifeOn && eKey && current_ACT == WGLeft) {
      image(knifeL, GIRL.roix - 16, GIRL.roiy + 10, knifew, knifeh);
    }
  }
}



void interact (int x, int y, int w, int h) {
  if (BOY.robinx > x && BOY.robinx < x + w && BOY.robiny > y  && BOY.robiny < y + h) {
    strokeWeight(5);
    fill(0);
    textSize(15);
    text("hmm", 150, 150);
  }

  if (GIRL.roix > x &&  GIRL.roix < x + w && GIRL.roiy > y  && GIRL.roiy < y + h) {
    strokeWeight(5);
    fill(0);
    textSize(15);
    text("hmm", 150, 150);
  }
}
