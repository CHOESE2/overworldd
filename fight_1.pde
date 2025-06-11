




// carrot blaster
void fight1Clicks() {
   
  if (mouseX > 220 && mouseX < 400 + w && mouseY > 350 && mouseY < 400)
    mode = GAME;
    
}
//void appleSetup(){
//  applex = random(150, 450);
//   appley = random(430, 550);
//}

void fight1() {
  background(0);
  fill(255);
  rect(100, 380, 400, 220);
  
  //---music

 //if (!BattleStart.isPlaying()) {
 //   BattleStart.play();
 //}
 
   if(MEWO2.isPlaying()){
    MEWO2.stop();
  }
  
  if (Defeat.isPlaying()) {
    Defeat.stop();
  } 
  
  if(Home.isPlaying()){
    Home.stop();
  }
  
   if (!Rain.isPlaying()) {
     Rain.play();
 }
 
 if(!BgMusic.isPlaying()){
   BgMusic.play();
 }
  
 



    
  
  
  
  


  //images/ angry gifs
  image(GGIF[fr], 300, 250, 125, 125);
  println(frameCount);
  if (frameCount % 10 == 0) fr = fr + 1;
  if (fr == frame) fr = 0;



  BOY.display();
  GIRL.display();
  
   //BOUNDERIES ROBIN
  if (BOY.robinx < 100) BOY.robinx = 100;
  if (BOY.robinx > 500) BOY.robinx = 500;
  if (BOY.robiny < 380) BOY.robiny = 380;
  if (BOY.robiny > 550) BOY.robiny = 550;
  //BOUNDERIES ROI
  if (GIRL.roix < 100) GIRL.roix = 100;
  if (GIRL.roix > 500) GIRL.roix = 500;
  if (GIRL.roiy < 380) GIRL.roiy = 380;
  if (GIRL.roiy > 550) GIRL.roiy = 550;
  
 
  
  
  //apple
   
   if (mode == FIGHT1 && random(0, 400) < 1 && !appleOn){
   appleOn = true;
   }
   if(appleOn == true){
    image(apple, applex, appley, applew, appleh);
   }
  // collision
  if (dist(BOY.robinx, BOY.robiny, applex, appley) <= 65 + 25) {
   
    applex = random(100, 400);
    appley = random(380, 600);
    appleOn = false;
    healths += 2;
    w  =  w + 2;
  }

  if (dist(GIRL.roix, GIRL.roiy, applex, appley) <= 65 + 50) {
 
  
    applex = random(100, 400);
    appley = random(380, 600);
    appleOn = false;
    healthb += 2;
    wb = wb + 2;
  }
   

  
  
  
  
 //array

  if (mode != previousMode) {
    raining = true;
    stopTime = millis() + 30000;  // 30 seconds of rain
    previousMode = mode;
  }

  if (millis() >= stopTime) {
    raining = false;
    
      if (Rain.isPlaying() && !raining) {
     Rain.stop();
 
    
    
    
    strokeWeight(2);
    fill(0);
    stroke(0);
    tac(220, 350, 200, 50);
    rect(220, 350, 200, 50);

    fill(255);
    text("winner !",  255, 384);
    winnerOn = true;
    appleOn = false;
    
    //dead bunny
     //images/ dead bunny gifs
  image(DGIF[dead], 300, 250, 125, 125);
  println(frameCount);
  if (frameCount % 10 == 0) dead = dead + 1;
  if (dead == frame) dead = 0;
 
    
    stroke(0);
    textSize(25);
    fill(0);
    text("The rain has stopped!", 100, 150);
  

  }
  }

  int i = 0;
  float speed = 4;


  if (raining) {
  
    
if (!knifeSpawned && !knifeOn && random(0, 5) < 1) {
    knifex = random(0, 600);
    knifey = random(-500, 0);
    knifeOn = true;
    
 }
 if (knifeOn == true){
   image(knife, knifex, knifey, knifew, knifeh);
   knifey += speed;
 }
 if (knifey > 600){
  
    knifex = random(0, 600);
    knifey = random(-500, 0);
     knifeSpawned = true;
 }
 
 
 
 if(dist(GIRL.roix, GIRL.roiy, knifex, knifey) < GIRL.roiw/2 + 50) {
  knifeOn = false;
 knifeSpawned = true;
 knifeCO = true;
 
  if (!CollectKNI.isPlaying() && mode == FIGHT1 && knifeCO) {
    CollectKNI.play();
    KOFF = true;
  //} else if (KOFF == true && CollectKNI.isPlaying()){
  //  CollectKNI.stop();
  
  
  }
 }
  
  if (knifeCO == true){
   stroke(0);
   fill(255);
   textSize(20);
   text("knife collected !! ", 298, 100) ;
 }
 
 
 
 
    
    


    while (i < n) {
      acidRain(x[i], y[i]);   // draw the rain
      y[i] += speed;
    


      //acid rain
      // collision
      if (dist(BOY.robinx, BOY.robiny, x[i], y[i]) <= 65 + acidRainw + acidRainh) {
        x[i] = random(0, 600);
        y[i] = random(-500, 0);
        healths = healths - 3;
        w = w - 3;
      }
      if (w <= 0) {
        w = 90;
        wb = 90;
        i = i + 1;
        mode = DEFEAT;
      }
      
      

      if (dist(GIRL.roix, GIRL.roiy, x[i], y[i]) <= 65 + acidRainw + acidRainh) {
        x[i] = random(0, 600);
        y[i] = random(-500, 0);
        healthb = healthb - 3;
        wb = wb -3;
      }
      if (wb <= 0) {
        w = 90;
        wb = 90;
        i = i + 1;
        mode = DEFEAT;
      }


      if (y[i] > height) {
        x[i] = random(0, 600);
        y[i] = random(-500, 0);
      }
      i = i + 1;
    }
  }
}







void acidRain(float x, float y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(5);
  stroke(188, 232, 255);
  rect(acidRainx, acidRainy, 2, acidRainh + 10);
  popMatrix();
}





void tac (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255, 0, 0);
  } else stroke(255);
}
