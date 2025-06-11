class roi {
  float roix, roiy, roih, roiw, speed;
  int spriteNum;
  int THRESHOLD;
  int count;


  roi() {
    spriteNum = 0;
    THRESHOLD = 8;
    count = 0;
 
    roix = random(145, 455);
    roiy = random(145, 455);
    roiw = 130;
    roih = 130;
    speed = 4; 
  }
  
  void show() {
    count ++;
    if (count == THRESHOLD) {
      count = 0;
      spriteNum++;
    }
    
    if (spriteNum >= current_ACT.size()) {
      spriteNum = 0;
    }
    
    imageMode(CENTER);
    image(current_ACT.get(spriteNum), roix, roiy, roiw, roih);
  }
  
  
  void display() {
    imageMode(CENTER);
    show();
    act();
    
    //health 
     stroke(0);
  strokeWeight(2);
  fill(255);
  rect(roix - 46, roiy - 72, 90, 10);
  fill(0, 255, 0);
  rect(roix - 46, roiy - 72, wb, 10);

  if (wb < 60) {
    fill(255, 172, 70);
    rect(roix - 46, roiy - 72, wb, 10);
  }
  if (wb < 30) {
    fill(255, 0, 0);
    rect(roix - 46, roiy - 72, wb, 10);
    
     if (healthb == 0) {
    mode = DEFEAT;
    healths = 500;
    healthb = 500;
  }
   
  } 
 }
  
  
  
  void act() {
    if (wKey) {
      roiy -= speed;
      current_ACT = WGUp;
      vROIy = -10;
    }
    
    if (sKey) {
      roiy += speed;
      current_ACT = WGDown;
    }
    
    if (aKey) {
      roix -= speed;
      current_ACT = WGLeft;
    }
    
    if (dKey) {
      roix += speed;
      current_ACT = WGRight;
    }
    
    if (!wKey && !sKey && !aKey && !dKey) {
      current_ACT = idlee;
    }
  }
}
    
    
    
