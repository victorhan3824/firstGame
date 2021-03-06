// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
void game() {
  theme.play();
  background(lightGreen);
  timeSum = 0;
  
  //display board
  fill(black);
  textSize(28);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);  

  //pause button
  if (mouseX > 70 && mouseX < 130 && mouseY > 70 && mouseY < 130) stroke(red);
  else stroke(black);
  fill(255);
  rect(100, 100, 60, 60);

  //pause indicator
  noStroke();
  fill(gray);
  square(100, 100, 20);

  //display target
  hit = hit - 1;
  if (hit > 0) {
    fill(red);
  } else {
    fill(255);
  }
  stroke(0);
  circle(x, y, d); 

  //moving
  x = x + (1+float(score)*0.15)*vx;
  y = y + (1+float(score)*0.15)*vy;

  //bouncing back
  if (x < d/2 || x > width-d/2 ) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2 ) {
    vy = vy * -1;
  }
}

void gameClick() {
  if (dist(mouseX, mouseY, x, y) < d*0.75) {
    score = score + 1;
    hit = 3;
    //sound effect ======================
    coin.rewind();
    coin.play();
  } else if (mouseX > 70 && mouseX < 130 && mouseY > 70 && mouseY < 130) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    if (lives == 0) {
      mode = GAMEOVER;
      gameEnd.rewind();
    }
    //sound effect ======================
    bump.rewind();
    bump.play();
  }
}
