import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//vic

//variables =========================================================================
int mode; 
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
final int SELECT   = 4;
final int STAT     = 5;

int hit;

float x,y,d;
float vx, vy; //target velocity
int score, lives;
int topScore; 

Minim minim;
AudioPlayer theme, coin, bump, gameEnd; 

//color pallette
color white      = #FFFFFF; 
color red        = #FF0000;
color pink       = #FF6ABC;
color purple     = #660490;
color brown      = #9F642C;
color blue       = #324BE3;
color gray       = #818183;
color lightGreen = #00FF00;
color medGreen   = #006C27;
color yellow     = #F6FF05;
color orange     = #FF7E05;
color darkBrown  = #341F18; 
color black      = #000000;

//functions starts hyer =============================================================

void setup() {  
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5,5);
  vy = random(-5,5);
  //stat
  score    = 0;
  lives    = 3;
  topScore = 0; 
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameEnd = minim.loadFile("gameover.wav");
  
}

void draw() {
  strokeWeight(2);
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();    
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == SELECT) {
    select();
  } else if (mode == STAT)  {
    stat();        
  }
}
