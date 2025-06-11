class lines {
  float x, y, vy, vx, size;

  
  
  lines(){
    x = random(-400, width);
    y = random(-200, height);
    vy = random(-10, 10);
    vx = 10;
    size = vy; //you should declare size not vy = size;
  }
  
  void show() {
    
    fill(0);
    square(x, y, size);
  }
  
  
  
  void act(){
    y += vy;
   // x += vx;
    if (y > 600 + size){
      y = -size;
      x += vx; //fills the whole thing
    } else if (dist(BOY.robinx, BOY.robiny, x, y) < size + 78) {
    y -= vy; //goes diagonal 
      x -= vx;
    } 
    
    else if (dist(GIRL.roix, GIRL.roiy, x, y) < size + 78) {
      y += vy; //goes diagonal 
      x += vx;
     
      
    }      
    }
  
}











//remember to add void before show and act
//remember to put [i] in draw function after array
    

    
    
  
  
  
