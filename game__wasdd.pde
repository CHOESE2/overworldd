//<>// //<>//
import processing.sound.*;


//-sound-------------------------------------------------------------------------------------------------------------

SoundFile BgMusic;
SoundFile PlayerHit;
SoundFile HitEnemy;
SoundFile Home;
SoundFile CollectAPP;
SoundFile CollectKNI;
SoundFile Victory;
SoundFile Defeat;
SoundFile Rain;
SoundFile mySound;
SoundFile BattleStart;
SoundFile MEWO2;
//---SHOP (transition room, living room) portal to the outside 

PImage door1;
PImage door2;
float door, dx, dy;
float portal, px, py;


//ROOM VARIABLES--------------------------------------------
PImage ROBBED;
float robx, roby, robw, robh;
PImage ROIBED;
float ribx, riby, ribw, ribh;

PImage egg;
float eggx, eggy, eggw, eggh;

PImage clock; 
float clockx, clocky, clockw, clockh;

PImage carpet;
float carpetx, carpety, carpetw, carpeth;

PImage phone;
float phonex, phoney, phonew, phoneh;

PImage plant;
float plantx, planty, plantw, planth;


PImage Obook;
float Obx, Oby, Obw, Obh;


boolean RON = false;
boolean RION = false;
boolean MEWOCAT = false;
PImage MEWOCAT1;
float MCX, MCY, MCW, MCH;

//PImage Obook;



PImage TABLE1;
float tabx, taby, tabw, tabh;

PImage FBOWL;
int fbx, fby, fbw, fbh;


// colour variables:
color brown = #1A120B;
//color dream = #2F2522;

color offWHITE = #F5EFE7;


//----FONT---------------------------------
PFont dog;

//ROBIN VARIABLES: object ------------------------------------------------------------------------------
PImage robinIdle;
robin BOY = new robin();
ArrayList<PImage> idle;
ArrayList<PImage> WBLeft;
ArrayList<PImage> WBRight;
ArrayList<PImage> WBUp;
ArrayList<PImage> WBDown;
ArrayList<PImage> currentAction;

float robinx, robiny, robinw, robinh;
int ammoB;
int shotB;
boolean SHOOTB = false;
float [] ABX;
float [] ABY;
float [] ABdx;
float [] ABdy;

boolean [] ABfired;
float dnx, dny; //distance

boolean mKey;



//GRAVITY
float vROBx, vROBy;     //ROBIN's velocity
float aROBx, aROBy; // acceleration// ROBIN's gravity

//ROI----------------------------------------------------------------------------------------------------------------------------------

PImage roiIdle;
roi GIRL = new roi();
ArrayList<PImage> idlee;
ArrayList<PImage> WGLeft;
ArrayList<PImage> WGRight;
ArrayList<PImage> WGUp;
ArrayList<PImage> WGDown;
ArrayList<PImage> current_ACT;

//spider---------------------
ArrayList<PImage> SPL;
ArrayList<PImage> SPR;
ArrayList<PImage> current_SACT;
ArrayList<PImage> idleS;
spider BUG = new spider();
float spx, spy, spw, sph;
boolean SPdead = false;
PImage spiderID;
boolean movingR = true;
float LB;
float RB;
int SH;
boolean eKey;

float roix, roiy, roiw, roih;


//GRAVITY
float vROIx, vROIy;     //ROI's velocity
float aROIx, aROIy; // acceleration// ROI's gravity

//---------------------------------------

//wacky lines
lines[] line;
int lineNum;
int lc = 0;
boolean linesOn = false;

//





//portal
boolean robinDoor = false;
boolean roiDoor = false;
boolean PORTALON = false;
boolean robinOUT = false;
boolean roiOUT = false;


PImage knife;
PImage knifeL;

boolean knifeOn;
boolean knifeSpawned = false;
boolean knifeCO = false;
float knifex, knifey, knifew, knifeh;

boolean winnerOn = false;





boolean KOFF = false;




//mode framework
int mode; //scene, what screen we're on

//health
int healths;
int healthb;
//health bar
int w = 90;
int wb = 90;

//gif
PImage [] BGIF;
int frames;
int f;





//angry bunny

PImage [] GGIF;
int frame;
int fr;

//dead bunny
PImage [] DGIF;
int fram;
int dead;

//fish
PImage fish;
float fishx, fishy, fishh, fishw;




final int INTRO = 0;
final int GAME = 1;
final int DEFEAT = 2;
final int GAMEOVER = 3;
final int SHOP = 4;
final int BUNNYFIGHT = 5;
final int STATS = 6;
final int MEWO = 7;
final int FIGHT1 = 8;
final int WINNER = 9;
final int SLEEP = 10;
final int OUTSIDE = 11;


//images
PImage apple;
boolean appleOn = false;




//bunny variables
float bunnix, bunniy, bunniw, bunnih;
PImage bunni;
boolean bunniOn;
int BH;



//acid rain
float acidRainx, acidRainy, acidRainw, acidRainh;
float avx, avy;     //acid's velocity
float aax, aay; // acceleration// mewo's gravity

// acid rain ARRAYS
float [] x;
float [] y;
int n;

//stop rain
int stopTime;
boolean raining = true;
int previousMode = -1;




//apple variables
float applex, appley, applew, appleh;

//purple color variables------------------------------
color whitep = #F2F4F2;
color p1 = #DDE2FC;
color p2 = #B9B5FC;
color p3 = #0E0E2F;





//key Variables-------------------
boolean aKey, dKey, wKey, sKey, upKey, downKey, leftKey, rightKey; //false by default
// pause
boolean tKey;


//mode
boolean xKey;
boolean zKey;
boolean cKey;

//mewo variables ENEMY!!
PImage mewo;
boolean mewoDEAD = false;
float mewox, mewoy, mewow, mewoh;
int mewoHEALTH;

//health bar
int MH;
boolean mewoOn;
float vx, vy;     //mewo's velocity
float ax, ay; // acceleration// mewo's gravity


//score variables
int point;
int point2;
int i = 0;






void setup() {

  imageMode(CENTER);

  size(600, 600);

  //--FONT
  dog = createFont("dogicapixel.otf", 15);

  //--------- LOAD SOUND---------------------


  // mySound.amps(0.7);
  BgMusic = new SoundFile(this, "intro.mp3");
  //PlayerHit = new SoundFile(this, "");
  //HitEnemy = new SoundFile(this, "");
  Home = new SoundFile(this, "home.wav");
  CollectAPP = new SoundFile(this, "pluck.wav");
  Rain = new SoundFile(this, "rain.wav");
  CollectKNI = new SoundFile(this, "bebop.wav");
  //Victory = new SoundFile(this, "");
  Defeat = new SoundFile(this, "emotional.wav");
  // mySound.amp(0.7);
  BattleStart = new SoundFile(this, "battleStart.wav");
  MEWO2 = new SoundFile( this, "mewoSONG.wav");
  
  
  //fail = new SoundFile(this, "FAILURE.wav"); //"this" refers to this sketch

  //---portal--------------------
  dx = 0;
  dy = 0;
  
  door2 = loadImage("door2.png");
  door1 = loadImage("door1.png");
  
  //health;
  healths = 500;
  healthb = 500;


  //knife

  knifeOn = false;
  knifex = 200;
  knifey = 200;
  knifew = 100;
  knifeh = 100;

  winnerOn = false;

  knife = loadImage("knife.png");
  knifeL = loadImage("knifeLEFT.png");


//wacky lines

//lines[] line;
//lineNum;
//int lc;

lc = 0;
lineNum = 40;
line = new lines[lineNum];

while(lc < lineNum){
  line[lc] = new lines();
  lc++;
}














//room variables//-----------------------------

ROBBED = loadImage("ROBBED.png");
robx = 125;
roby = 220;
robw = 200;
robh = 200;
ROBBED.resize((int)robw, (int)robh);


ROIBED = loadImage("ROIBED.png");
ribx = 498;
riby = 220;
ribw = 200;
ribh = 200;
ROIBED.resize((int)ribw, (int)ribh);

TABLE1 = loadImage("table1.png");
tabx = 208;
taby = 180;
tabw = 80;
tabh = 80;
TABLE1.resize((int)tabw, (int)tabh);


egg = loadImage("egg.png");
eggx = 450;
eggy = 395;
eggw = 80;
eggh = 80;
egg.resize((int)eggw, (int)eggh);


clock = loadImage("clock.png");
clockx = 300;
clocky = 80;
clockw = 70;
clockh = 70;
clock.resize((int)clockw, (int)clockh);


carpet = loadImage("carpet.png");
carpetx = 300;
carpety = 350;
carpetw = 200;
carpeth = 100;
carpet.resize((int)carpetw, (int)carpeth);


phone = loadImage("phone.png");
phonex = 206;
phoney = 140;
phonew = 60;
phoneh = 60;
phone.resize((int)phonew, (int)phoneh);



plant = loadImage("plant.png");
plantx = 397;
planty = 137;
plantw = 80;
planth = 80;
plant.resize((int)plantw, (int)planth);


FBOWL = loadImage("fishB.png");
fbx = 110;
fby = 310;
fbw = 80;
fbh = 80;


Obook = loadImage("Obook.png");
Obx = 240;
Oby = 380;
Obw = 80;
Obh = 80;



MEWOCAT1 = loadImage("mewoo.png");
MCX = 125;
MCY = 230;
MCW = 100;
MCH = 100;
MEWOCAT1.resize((int)MCW, (int) MCH);













//-----------------------------------








  //bunny
  frames = 4;

  BGIF = new PImage[ frames ];
  int index = 0;
  while (index < frames) {
    BGIF[index] = loadImage("frame_" + index + "_delay-0.2s.png");
    index = index + 1;
  }

  // angry bunny
  frame = 4;
  int i = 0;

  GGIF = new PImage[ frame ];
  while (i < frame) {
    GGIF[i] = loadImage("frame_" + i + "_delay-0.2s.gif");
    i = i + 1;
  }

  // dead bunny
  fram = 4;
  int in = 0;

  DGIF = new PImage[ fram ];
  while (in < fram) {
    DGIF[in] = loadImage("frameD_" + in + "_delay-0.2s copy.png");
    in = in + 1;
  }



  //bullets
  ammoB  = 5;
  SHOOTB = false;


  //distance
  ABdx = new float[ammoB];
  ABdy = new float[ammoB];
  dny = mewoy - BOY.robiny;
  dnx = mewox - BOY.robinx;

  shotB = 0;

  ABfired = new boolean[ammoB];


  ABX = new float [ammoB];
  ABY = new float [ammoB];

  for ( i = 0; i < ammoB; i++ ) {
    ABX[i] = BOY.robinx;
    ABY[i] = BOY.robiny;
    ABdx[i] = 0;
    ABdy[i] = 0;
  }





  if (mode == MEWO) {
    raining = true;
  }








  //set up array of rain drops
  n = 15;
  x = new float [n];
  y = new float [n];

  for (i = 0; i < n; i++) {
    x[i] = random(0, 600);
    y[i] = random(-500, 0);
  }


  if (mode == FIGHT1) {
    raining = true;
    stopTime = millis() + 30000;
  }






  //image fish
  fish= loadImage("fish.png");

  fishx = 150;
  fishy = 180;
  fishw = 100;
  fishh = 100;



  //image bunni
  bunni = loadImage("bunny.png");

  bunnix = 400;
  bunniy = 300;
  bunniw = 130;
  bunnih = 130;
  BH = 93;







  //ROBIN ------------------------------------------------------------------------------------------------------------------
  robinIdle = loadImage("forward_robin-0.png");
  BOY = new robin();
  robinx = random(145, 455);
  robiny = random(145, 300);
  robinw = 130;
  robinh = 130;

  idle = new   ArrayList<PImage>();
  WBLeft = new   ArrayList<PImage>();
  WBRight = new   ArrayList<PImage>();
  WBUp = new   ArrayList<PImage>();
  WBDown = new   ArrayList<PImage>();
  currentAction = new   ArrayList<PImage>();


  idle.add(loadImage("forward_robin-0.png"));

  WBLeft.add(loadImage("left_robin-0.png"));
  WBLeft.add(loadImage("left_robin-1.png"));
  WBLeft.add(loadImage("left_robin-2.png"));
  WBLeft.add(loadImage("left_robin-3.png"));
  WBLeft.add(loadImage("left_robin-4.png"));
  WBLeft.add(loadImage("left_robin-5.png"));

  WBRight.add(loadImage("boyjny-0.png"));
  WBRight.add(loadImage("boyjny-1.png"));
  WBRight.add(loadImage("boyjny-2.png"));
  WBRight.add(loadImage("boyjny-3.png"));
  WBRight.add(loadImage("boyjny-4.png"));
  WBRight.add(loadImage("boyjny-5.png"));


  WBUp.add(loadImage("back_robin-0.png"));
  WBUp.add(loadImage("back_robin-1.png"));
  WBUp.add(loadImage("back_robin-2.png"));
  WBUp.add(loadImage("back_robin-3.png"));


  WBDown.add(loadImage("forward_robin-0.png"));
  WBDown.add(loadImage("forward_robin-1.png"));
  WBDown.add(loadImage("forward_robin-2.png"));
  WBDown.add(loadImage("forward_robin-3.png"));

  currentAction = idle;

  //mewo's stuff
  vROBx = 0;
  vROBy = 0.5;

  aROBx = 0;
  aROBy = 1;





  // ROI -------------------------- ------------------------------------------------------------------------------------------------------------------

  roiIdle = loadImage("forward_roi-0.png");
  GIRL = new roi();
  roix = random(145, 455);
  roiy = random(145, 455);
  roiw = 130;
  roih = 130;

  idlee = new   ArrayList<PImage>();
  WGLeft = new   ArrayList<PImage>();
  WGRight = new   ArrayList<PImage>();
  WGUp = new   ArrayList<PImage>();
  WGDown = new   ArrayList<PImage>();
  current_ACT = new   ArrayList<PImage>();




  idlee.add(loadImage("forward_roi-0.png"));

  WGLeft.add(loadImage("left_roi-0.png"));
  WGLeft.add(loadImage("left_roi-1.png"));
  WGLeft.add(loadImage("left_roi-2.png"));
  WGLeft.add(loadImage("left_roi-3.png"));
  WGLeft.add(loadImage("left_roi-4.png"));
  WGLeft.add(loadImage("left_roi-5.png"));

  WGRight.add(loadImage("right_roi-0.png"));
  WGRight.add(loadImage("right_roi-1.png"));
  WGRight.add(loadImage("right_roi-2.png"));
  WGRight.add(loadImage("right_roi-3.png"));
  WGRight.add(loadImage("right_roi-4.png"));
  WGRight.add(loadImage("right_roi-5.png"));


  WGUp.add(loadImage("back_roi-0.png"));
  WGUp.add(loadImage("back_roi-1.png"));
  WGUp.add(loadImage("back_roi-2.png"));
  WGUp.add(loadImage("back_roi-3.png"));


  WGDown.add(loadImage("forward_roi-0.png"));
  WGDown.add(loadImage("forward_roi-1.png"));
  WGDown.add(loadImage("forward_roi-2.png"));
  WGDown.add(loadImage("forward_roi-3.png"));

  current_ACT = idlee;


  vROIx = 0;
  vROIy = 0.5;

  aROIx = 0;
  aROIy = 1;

  //-----------------------------------------------------------------------------------------------------------------
  //--SPIDER---------------------------

  spiderID = loadImage("left.spider-0.png");
  SPL = new   ArrayList<PImage>();
  SPR = new   ArrayList<PImage>();
  current_SACT = new ArrayList<PImage>();
  idleS = new ArrayList<PImage>();
  BUG = new spider();
  spx = random(200, 500);
  spy = 340;
  spw = 200;
  sph = 200;
  SH = 300;
  LB = 230;
  RB = 500;

  idleS.add(loadImage("left.spider-0.png"));

  SPL.add(loadImage("left.spider-0.png"));
  SPL.add(loadImage("left.spider-1.png"));
  SPL.add(loadImage("left.spider-2.png"));
  SPL.add(loadImage("left.spider-3.png"));
  SPL.add(loadImage("left.spider-4.png"));
  SPL.add(loadImage("left.spider-5.png"));

  SPR.add(loadImage("rightSpider-0.png"));
  SPR.add(loadImage("rightSpider-1.png"));
  SPR.add(loadImage("rightSpider-2.png"));
  SPR.add(loadImage("rightSpider-3.png"));
  SPR.add(loadImage("rightSpider-4.png"));
  SPR.add(loadImage("rightSpider-5.png"));

  current_SACT = idleS;
  //--------------------------------------






  //mewo
  mewo = loadImage("mewo.png");
  mewox = 100;
  mewoy = 100;
  mewow = 150;
  mewoh = 150;
  MH = 585;



  //apple
  apple = loadImage("cheese.png");
  applex = 300;
  appley = 500;
  applew = 100;
  appleh = 100;

 

  //acid rain
  acidRainx = 0;
  acidRainy = 0;
  acidRainw = 2;
  acidRainh = 0;

  //acids velocity
  avx = 0;
  avy = 5;

  //acids acceleration
  aax = 0;
  aay = 0;


  //mewo's velocity [ the speed at which the ball is moving is a certain direction ]
  vx = 0;
  vy = 6;
  //mewo's acceleration [ the change in the velocity of the ball ]
  ax = 4;
  ay = 4;




  //music.loop(); // plays sound for
  //music.amp(0.1); //loudness
  //fail.pan(); //0 is default, -1, or 1 makes sounds depending on which side headphone u have

  mode = INTRO;




  point = 0;
  point2 = 0;
}



void draw() {


  if (mode == INTRO) {
    intro();
  } else if (mode == DEFEAT) {
    defeat();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == SHOP) {
    shop();
  } else if (mode == BUNNYFIGHT) {
    bunny();
  } else if (mode == STATS) {
    stats();
  } else if (mode == MEWO) {
    mewo();
  } else if (mode == FIGHT1) {
    fight1();
  } else if (mode == WINNER) {
    winner();
  } else if (mode == SLEEP){
    sleep();
  } else if (mode == OUTSIDE){
    outside();
  } else {
    println("ERROR! Mode is " + mode);
  }
}





void door (int x, int y) {
  pushMatrix();
  translate(x, y);
  image(door2, dx, dy, 80, 100); // door
  popMatrix();   
}

void portal (int x, int y) {
  pushMatrix();
  translate(x, y);
  rect(px, py, 75, 60); // door
  popMatrix();   
}



//void mouseReleased(){
//fail.play();  // likes overlapping use this
////fail.stop() // stops the previous one so no echo

void mewoOn (float x, float y) {
  pushMatrix();
  translate(x, y);
  image(mewo, mewox, mewoy, mewow, mewoh);
  popMatrix();
}


void apple(float x, float y) {
  pushMatrix();
  translate(x, y);
  //scale(s);
  image(apple, applex, appley, applew, appleh);
  popMatrix();
}
