class spider {
  float spx, spy, sph, spw, speed;
  int spriteNum;
  int THRESHOLD;
  int count;



boolean movingR = true;
float LB = 230;
float RB = 500;



  
  
  

  spider() {
    spriteNum = 0;
    THRESHOLD = 8;
    count = 0;

    spx = random(200, 500);
    spy = 340;
    spw = 200;
    sph = 200;
    speed = 3;
  }



  void show() {
    count++;
    if (count == THRESHOLD) {
      count = 0;
      spriteNum++;
    }

    if (spriteNum >= current_SACT.size()) {
      spriteNum = 0;
    }

    imageMode(CENTER);
    image(current_SACT.get(spriteNum), spx, spy, spw, sph);
    
    }
  
    


    void display() {
      imageMode(CENTER);
      show();
      act();

      //health
      stroke(0);
      strokeWeight(2);
      fill(255);
      rect(spx - 110, spy - 72, 300, 10);
      fill(0, 255, 0);
      rect(spx - 110, spy - 72, SH, 10);

      if (SH < 140) {
        fill(255, 172, 70);
        rect(spx - 110, spy - 72, SH, 10);
      }
      if (SH < 70) {
        fill(255, 0, 0);
        rect(spx - 110, spy - 72, SH, 10);

        if (SH == 0) {
          SH = 0;
          current_SACT = idleS;
          speed = 0;
        }
        
        
        
      }
    }

    


    void act() {
      spx += speed;

      if (speed > 0) {
        movingR = true;
        current_SACT = SPR;
      } else {
        movingR = false;
        current_SACT = SPL;
      }
      


      if (spx >= RB) {
        speed = -3;
          spriteNum = 0;
      } else {
        if (spx <= LB) {
          speed = 3;
          spriteNum = 0;
        }
      }
    }
}
    
  
