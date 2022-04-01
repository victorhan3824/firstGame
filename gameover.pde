void gameover() {
  background(255, 0, 0);
  theme.pause();
  gameEnd.play();
  
  topScore = max(score,topScore); //re-calculating topScore

  fill(black);
  textSize(28);
  text("Your Score: " + score, width/2, 0.375*height);
  text("Top Score: " + topScore, width/2, 0.75*height);  

  textSize(72);
  text("GAMEOVER", width/2, height/2);
}

void gameReset() {
  //position reset ============
  x = width/2;
  y = height/2;
  //velocity reset ============
  vx = random(-5, 5);
  vy = random(-5, 5);
  //stat reset ================
  lives = 3;
  score = 0;
}

void gameoverClick() {
  mode = INTRO;
  scoreSum = scoreSum + score; //adding the score to total score
  gameEnd.pause();
  theme.rewind();
  gameReset();
}
