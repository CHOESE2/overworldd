void mewoClicks() {
  mode = GAME;
}

void mewo() {

  background(255);
  
    if (BgMusic.isPlaying()) {
    BgMusic.stop();
  }
  
  if (Defeat.isPlaying()){
    Defeat.stop();
  }
  
     if (Rain.isPlaying()) {
     Rain.stop();
 }
 if(Home.isPlaying()){
    Home.stop();
  }
 
   if (!MEWO2.isPlaying()) {
    MEWO2.loop();
  }

  


  //BOUNDERIES ROBIN-----------------------------------------------------------
  if (BOY.robinx < 10) BOY.robinx = 10;
  if (BOY.robinx > 590) BOY.robinx = 590;
  if (BOY.robiny < 0) BOY.robiny = 0;
  if (BOY.robiny > 550) BOY.robiny = 550;

  //platform
  if (BOY.robiny < 370 && BOY.robiny > 320 && BOY.robinx > 380 && BOY.robinx < 530) {
    BOY.robiny = 320;
    vROBy = 0;
  }

  if (BOY.robiny < 240 && BOY.robiny > 190 && BOY.robinx > 80 && BOY.robinx < 230) {
    BOY.robiny = 190;
    vROBy = 0;
  }

  //BOUNDERIES ROI----------------------------------------------------------------
  if (GIRL.roix < 10) GIRL.roix = 10;
  if (GIRL.roix > 590) GIRL.roix = 590;
  if (GIRL.roiy < 0) GIRL.roiy = 0;
  if (GIRL.roiy > 550) GIRL.roiy = 550;

  //platform
  if (GIRL.roiy < 370 && GIRL.roiy > 320 && GIRL.roix > 200 && GIRL.roix < 500) { //right
    GIRL.roiy = 320;
    vROIy = 0;
  }
  if (GIRL.roiy < 240 && GIRL.roiy > 190 && GIRL.roix > 80 && GIRL.roix < 230) {
    GIRL.roiy = 190;
    vROIy = 0;
  }
  //--------------------------------------------------------------------





textSize(14);
text("ROBIN, press ' m ' to shoot", 155, 80);


  //floor
  fill(0);
  rect(0, 550, 600, 100);

  //platforms
  rect(200, 350, 300, 20); //right
  rect(80, 220, 150, 20);



  //velocity + acceleration = gravity
  //ROBIN
  BOY.robiny += vROBy;
  if (BOY.robiny < 550) {
    vROBy += aROBy;
  } else {
    vROBy = 0;
    BOY.robiny = 550;
  }
  //ROI
  GIRL.roiy += vROIy;
  if (GIRL.roiy < 550) {
    vROIy += aROIy;
  } else {
    vROIy = 0;
    GIRL.roiy = 550;
  }




  image(fish, fishx, fishy, fishw, fishh);


  BOY.display();
  GIRL.display();

  BUG.display();






  //// mewo----------------------------------------------------------------------------------------------------

  strokeWeight(5);
  stroke(0);
  fill(255);
  image(mewo, mewox, mewoy, mewow, mewoh);


  //  ////velocity + acceleration = gravity
  //  //vx += ax;
  //  //vy += ay;

  //movement
  mewox += vx;
  mewoy += vy;



  //mewo

  if (mewoy <= 0) { // top
    vy = vy * -1;
    mewox = 100;
    mewoy = 100;
  }

  if (mewoy >= height - 25) { //bottom
    vy = vy * -1;
    mewox = 500;
    mewoy = 500;
  }

  //  if (mewox >= width) {// right
  //  vx = vx * -1;

  //}



  //if (random(0, 100) < 1) {
  // if (mewox >= width && mewox <= 0) {
  //  vx = vx * -0.95;
  // }
  //}


  //health
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect(10, 15, 580, 20);
  fill(74, 215, 252);
  rect(10, 15, MH, 20);
  
  textSize(20);
  stroke(3);
  fill(0);
  textSize(15);
  text("MEWO ", 20, 65);

  
  
  //---------------------------

   if (MH < 390) {
    fill(255, 172, 70);
    rect(10, 15, MH, 20);
  }
  if (MH < 195) {
    fill(255, 0, 0);
    rect(10, 15, MH, 20);
  }
  if (MH <= 0) {
    mewoDEAD = true;
    strokeWeight(2);
    fill(0);
    stroke(0);
    ta(300, 100, 200, 50);
    rect(300, 100, 200, 50);
    textSize(30);
    fill(255);
    text("winner !",  320, 135);
    RON = false;
    RION = false;
    MEWOCAT = true;
  }
    






  ////-------------------------------------------------------------------------------------------------------------------------------



  //bullets

  //distance
  dny = mewoy - BOY.robiny;
  dnx = mewox - BOY.robinx;

  float speed = 4;
  int i = 0;
  SHOOTB = true;
  //shotB = 0;
  //-----------------------------

  //shoot the amount of bullets you have


  if (mode == MEWO) {
    raining = true;
  }

  if (mode != previousMode) {
    raining = true;
    previousMode = mode;
  }

  //ROBIN-----------------------------------------------------------------------------------------------------

  //fish
  // collision

  if (dist(BOY.robinx, BOY.robiny, fishx, fishy) <= BOY.robinw/2 + 50) {

    fishx = random(130, 550);
    fishy = random(130, 550);
    w += 10;
    ammoB += 1;
  
    // shotB = 0;


    ABX = new float[ammoB];
    ABY = new float[ammoB];
    ABdx = new float[ammoB];
    ABdy = new float[ammoB];
    ABfired = new boolean[ammoB];



    for (i = 0; i < ammoB; i++) {
      ABX[i] = BOY.robinx;
      ABY[i] = BOY.robiny;
      ABdx[i] = 0;
      ABdy[i] = 0;

      ABfired[i] = false;
    }
  }



  for (i = 0; i < ammoB; i++) {
    if (ABfired[i]) {
      ABX[i] += ABdx[i];
      ABY[i] += ABdy[i];

      acidRain(ABX[i], ABY[i]);

      if (ABY[i] > height || ABY[i] < 0 || ABX[i] < 0 || ABX[i] > width) {
        ABX[i] = BOY.robinx;
        ABY[i] = BOY.robiny;
        ABdx[i] = 0;
        ABdy[i] = 0;
        ABfired[i] = false;
      }

      if (dist(mewox, mewoy, ABX[i], ABY[i]) <= 75 + acidRainw + acidRainh) {
        MH -= 0.1;
      }
        
        if ( SPdead == false && MH <= 200) {
          MH = 200;
        }
        if (SPdead == true && dist(mewox, mewoy, ABX[i], ABY[i]) <= 75 + acidRainw + acidRainh){
          fill(255, 0, 0);
          MH -= 0.1;
        
      }
    }
  }



  //SHOOTING BULLETS


  if (mKey && ammoB > 0) {
  
    SHOOTB = true;
    dnx = mewox - BOY.robinx;
    dny = mewoy - BOY.robiny;

    float mag = sqrt(dnx * dnx + dny * dny);
    if (mag != 0) {
      dnx /= mag;
      dny /= mag;
      //new position

      ABX[shotB] = BOY.robinx;
      ABY[shotB] = BOY.robiny;
      ABdx[shotB] = dnx * 10;
      ABdy[shotB] = dny * 10;

      ABfired[shotB] = true;
      shotB = (shotB + 1) % ammoB;
    }
  }
  //---- mewo collisions----------------------------------------------------------------------------------


  // collision
  if (dist(BOY.robinx, BOY.robiny, mewox, mewoy) <= 65 + 75 && !mewoDEAD) {
    healths = healths - 1;
    w = w - 1;
  }
  if (w <= 0) {
    w = 90;
    wb = 90;
    mode = DEFEAT;
  }

  if (dist(GIRL.roix, GIRL.roiy, mewox, mewoy) <= 65 + 75 && !mewoDEAD) {
    healthb = healthb - 1;
    wb = wb - 1;
  }
  if (wb <= 0) {
    w = 90;
    wb = 90;
    mode = DEFEAT;
  }
  
  //----spider-------------------------------------

if (dist(GIRL.roix, GIRL.roiy, spx- 5, spy) <= 65 + 5 && SH > 0) {
  wb -= 1;
 if (wb <= 0) {
  w = 90;
  wb = 90;
 mode = DEFEAT;
 }
}


if (dist(GIRL.roix, GIRL.roiy, fishx, fishy) <= GIRL.roiw/2 + 50) {
    fishx = random(130, 550);
    fishy = random(130, 550);
    wb += 10;
 }
  

if (dist(GIRL.roix, GIRL.roiy, spx, spy) <= 65 + 100 && eKey) {
 SH -= 5;
if (SH <= 0){
  SPdead = true;
  current_SACT = idleS;
  SH = 0;
  
 

}
}
if (SH == 0){
   stroke(0);
  fill(255, 0, 0);
  textSize(15);
  
    text("you killed your pet spider", 200, 400);
    text("socks..", 200, 420);
}





 if (eKey && !knifeOn){
    knifeOn = true;
 }
  if (knifeOn && eKey && current_ACT == WGRight){
    image(knife, GIRL.roix + 15, GIRL.roiy + 10, knifew, knifeh);
    
  }
    
   if (knifeOn && eKey && current_ACT == WGLeft){
    image(knifeL, GIRL.roix - 15, GIRL.roiy + 10, knifew, knifeh);
  } 
}

void ta (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255, 0, 0);
  } else stroke(255);
}
