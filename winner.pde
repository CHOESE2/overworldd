
void winnerClicks() {
}





void winner() {

 
  background(brown);
  fill(255);
  stroke(brown);
  fill(0);
  fill(offWHITE);
  rect(50, 150, 500, 330);

  fill(brown);
  rect(50, 35, 500, 140);


  //-----------INTERIOR
  image(ROBBED, robx, roby); //BED
  image(ROIBED, ribx, riby); //BED

  image(TABLE1, tabx, taby);
  image(TABLE1, 388, taby);
  image(clock, clockx, clocky);
  image(carpet, carpetx, carpety);


  object(plantx, planty);
  image(plant, plantx, planty);
  object(eggx, eggy);
  image(egg, eggx, eggy);
  object(phonex, phoney);
  image(phone, phonex, phoney);
  object(fbx, fby);
  image(FBOWL, fbx, fby, fbw, fbh);
  object(Obx, Oby);
  image(Obook, Obx, Oby, Obw, Obh);









  //MUSIC-------------------------------------

 if (BgMusic.isPlaying()) {
    BgMusic.stop();
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





  if (!Home.isPlaying()) {
    Home.loop();
  }



  //---------------



  //BOUNDERIES ROBIN
  if (BOY.robinx < 60) BOY.robinx = 60;
  if (BOY.robinx > 540) BOY.robinx = 540;
  if (BOY.robiny < 150) BOY.robiny = 150;
  if (BOY.robiny > 435) BOY.robiny = 435;
  //BOUNDERIES ROI
  if (GIRL.roix < 60) GIRL.roix = 60;
  if (GIRL.roix > 540) GIRL.roix = 540;
  if (GIRL.roiy < 150) GIRL.roiy = 150;
  if (GIRL.roiy > 435) GIRL.roiy = 435;


  //ROOM BOUNDERIES

 if (BOY.robiny < 280 && BOY.robiny > 270 && BOY.robinx < 170)BOY.robiny = 280; //ROBBED
  if (GIRL.roiy < 280 && GIRL.roiy > 270 && GIRL.roix < 170)GIRL.roiy = 280;

  if (GIRL.roiy < 280 && GIRL.roiy > 270 && GIRL.roix > 430)GIRL.roiy = 280; //ROIBED
  if (BOY.robiny < 280 && BOY.robiny > 270 && BOY.robinx > 430)BOY.robiny = 280;
  
 if (BOY.robiny < 200 && BOY.robinx < 260 && BOY.robinx > 190 && BOY.robinx < 250)BOY.robiny = 200; //shelf1
  if (GIRL.roiy < 200 && GIRL.roiy < 260 && GIRL.roix > 190 && GIRL.roix < 250) GIRL.roiy = 200;

  if (BOY.robiny < 200 && BOY.robinx < 440 && BOY.robinx > 355)BOY.robiny = 200; //shelf2
  if (GIRL.roiy < 200 && GIRL.roiy < 440 && GIRL.roix > 355 && GIRL.roix < 420)GIRL.roiy = 200;
  
  
  

  if (BOY.robiny < 315 && BOY.robiny > 300 && BOY.robinx < 150 && BOY.robinx > 85)BOY.robiny = 315; //fish bowl
  if (GIRL.roiy < 315 && GIRL.roiy > 300 && GIRL.roix < 150 && GIRL.roix > 85)GIRL.roiy = 315;
  
  
  
  




  //------------------------------------------------------------------------------------


  BOY.display();
  GIRL.display();

  if (MEWOCAT) {
    object(125, 230);
    image(MEWOCAT1, 125, 230);
  }







  if (dist(BOY.robinx, BOY.robiny, robx, roby) < BOY.robinw/2 - 10 && !mewoDEAD) {
    RON = true;
  }

  if (dist(GIRL.roix, GIRL.roiy, ribx, riby) < GIRL.roiw/2 - 10 && !mewoDEAD) {
    RION = true;
  }

  if (RION && RON) {
    mode = SLEEP;
  }
}





void object (float x, float y) {
  if (BOY.robinx > 95 && BOY.robinx < 150 && BOY.robiny > 180  && BOY.robiny < 270 && MEWOCAT) {

    fill(0);
    textSize(15);
    rect(100, 420, 300, 45);
    fill(255, 0, 0);
    text("you killed me.", 125, 450);
  }

  if (GIRL.roix > 95 &&  GIRL.roix < 150 && GIRL.roiy > 180  && GIRL.roiy < 270 && MEWOCAT) {

    fill(0);
    textSize(15);
    rect(100, 420, 300, 45);
    fill(255);
    text("MEWO:        * mew *", 125, 450);
  }

  if (BOY.robinx > 80 && BOY.robinx < 150 && BOY.robiny > 300  && BOY.robiny < 320 && !MEWOCAT) {
    fill(0);
    textSize(15);
    rect(100, 420, 320, 45);
    fill(255);
    text("ROBIN: smth smells fishy", 120, 450);
  }

  if (GIRL.roix > 80 &&  GIRL.roix < 150 && GIRL.roiy > 300  && GIRL.roiy < 320 && !MEWOCAT) {
    fill(0);
    textSize(15);
    rect(90, 420, 410, 45);
    fill(255);
    text("ROI: *the fish swims exicitedly* ", 115, 450);
  }
  if (GIRL.roix > 80 &&  GIRL.roix < 150 && GIRL.roiy > 300  && GIRL.roiy < 320 && MEWOCAT) {
    fill(0);
    textSize(15);
    rect(70, 430, 200, 45);
    rect(70, 400, 450, 45);
    fill(255);
    text("ROI: *the fish feels a dark presence ", 90, 430);
    text("amongst us* ", 90, 460);
  }

  if (BOY.robinx > 80 && BOY.robinx < 150 && BOY.robiny > 300  && BOY.robiny < 320 && MEWOCAT) {
    fill(0);
    textSize(15);
    rect(60, 430, 500, 45);
    rect(50, 400, 470, 45);
    fill(255);
    text("ROBIN: *the fish swims away from you*  ", 68, 430);
    text("the stench of blood is stronger than fish* ", 68, 460);
  }


  if (BOY.robinx > 210 && BOY.robinx < 290 && BOY.robiny > 325  && BOY.robiny < 395 && !MEWOCAT) {
    fill(0);
    textSize(15);
    rect(100, 420, 400, 45);
    fill(255);
    text("ROBIN: hmm..a book..with words..", 120, 450);
  }
  
   if (BOY.robinx > 210 && BOY.robinx < 290 && BOY.robiny > 325  && BOY.robiny < 395 && MEWOCAT) {
    fill(0);
    textSize(15);
    rect(100, 420, 400, 45);
    fill(255, 0, 0);
    text("ROBIN:   'MEWO's watching' ", 120, 450);
  }


  if (GIRL.roix > 210 &&  GIRL.roix < 290 && GIRL.roiy > 325  && GIRL.roiy < 395 && !MEWOCAT) {
    fill(0);
    textSize(15);
    rect(100, 420, 430, 45);
    fill(255);
    text("ROI: ' how to read for dummies ' ", 120, 450);
  }
  
  if (GIRL.roix > 210 &&  GIRL.roix < 290 && GIRL.roiy > 325  && GIRL.roiy < 395 && MEWOCAT) {
    fill(0);
    textSize(15);
    rect(70, 420, 470, 45);
    fill(255);
    text("ROI:  ' how to set up a spider funeral ' ", 85, 450);
  }
  
  
  
  
  
  
  
  
  
  
  
  if (GIRL.roix > 420 &&  GIRL.roix < 510 && GIRL.roiy > 355  && GIRL.roiy < 400 && !MEWOCAT){
     fill(0);
    textSize(15);
    rect(60, 450, 430, 45);
    rect(60, 420, 430, 40);
    fill(255);
    text("ROI: a warm seasoned egg sizzles", 70, 450);
    text("by your feet", 80, 480);
  }
  
   if (GIRL.roix > 420 &&  GIRL.roix < 510 && GIRL.roiy > 355  && GIRL.roiy < 400 && MEWOCAT){
     fill(0);
    textSize(15);
    rect(60, 450, 430, 45);
    rect(60, 420, 430, 40);
    fill(255);
    text("ROI:    the cold egg stares ", 70, 450);
    text("    blankly up at you", 80, 482);
  }
  
  if (BOY.robinx > 420 && BOY.robinx < 510 && BOY.robiny > 355  && BOY.robiny < 400 && MEWOCAT){
    fill(0);
    textSize(15);
    rect(60, 450, 430, 45);
    rect(60, 420, 430, 40);
    fill(255);
    text("ROBIN: you see your reflection", 70, 450);
    text(" on the egg   'the air gets colder' ", 80, 480);
  }
  
  
  
  if (BOY.robinx > 420 && BOY.robinx < 510 && BOY.robiny > 355  && BOY.robiny < 400 && !MEWOCAT){
    fill(0);
    textSize(15);
    rect(60, 450, 430, 45);
    rect(60, 420, 430, 40);
    fill(255);
    text("ROBIN: the warm egg makes you", 70, 450);
    text("feel sleepy  ' time for bed ? '", 80, 480);
  }
}


//to return back into the bedroom not rREALLt sure, but probably gotta change a few focal points of the room not just MEWO and words
//polish up SHOP bounderies
