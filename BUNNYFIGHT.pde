
void bunnyClicks(){
  if (mouseX > 45 && mouseX < 245 && mouseY > 400 && mouseY < 500) {
    mode = FIGHT1;
  } else if (mouseX > 350 && mouseX < 550 && mouseY > 400 && mouseY < 500){
    mode = GAME;
    
    //only works if characters are out of bunny 
  }

    
    
  
}


void bunny(){
  background(brown);

  
 
   BOY.display();
   GIRL.display();
   
  
 

  textSize(18);

  fill(255);
  strokeWeight(2);
  stroke(0);
  rect(40, 40, 510, 120);
  fill(0);
  text("you know, i didn't wanna fight you", 65, 85);
  
  text("but u stomped on my face..", 100, 130);
  
 
 image(BGIF[f], 300, 300, 125, 125);
 println(frameCount);
 if (frameCount % 10 == 0) f = f + 1; 
 if (f == frames) f = 0;
  
  
  
  
  fill(0);

  tact(45, 400, 200, 100);
  rect(45, 400, 200, 100);
  fill(255);
  textSize(25);
  text("fight", 93, 460);
  
  fill(0);
  tact(350, 400, 200, 100);
  rect(350, 400, 200, 100);
  fill(255);
  
  text("run away", 368, 460); 
  
}
  
  
  
  
  
  
  void tact (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h){
    stroke(0, 0, 255);
  } else stroke(255);
  }
