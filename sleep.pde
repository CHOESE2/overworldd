void sleepClicks(){
  mode = GAME;
  
  
}



void sleep(){
  background(0);
  
  //MUSIC-----------
   if(MEWO2.isPlaying()){
    MEWO2.stop();
  }
  
  if (Defeat.isPlaying()) {
    Defeat.stop();
  } 
  
  if(Home.isPlaying()){
    Home.stop();
  }
  
   if (Rain.isPlaying()) {
     Rain.stop();
 }
 
 if(BgMusic.isPlaying()){
   BgMusic.stop();
 }
  
 //-------------------------------------------------
  
  
  
}
