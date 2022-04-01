//.....
//......
//.......
void intro(){
  theme.play();
  
  background(yellow);
  gameStartButton();
  selectButton();
  statButton();
  
  fill(black);
  textSize(72);
  text("CLICKER GAME",width/2,0.375*height);
}

void introClick() {
  if (mouseX > width/2-50 && mouseX < width/2+50 && mouseY > 470 && mouseY < 520) {
    mode = GAME;
    gameSum = gameSum + 1;
  }
  if (mouseX > width/4-50 && mouseX < width/4+50 && mouseY > 470 && mouseY < 520) mode = SELECT;
  if (mouseX > width*0.75-50 && mouseX < width*0.75+50 && mouseY > 470 && mouseY < 520) mode = STAT;
}

//other functions ================================================================

void gameStartButton() {
  if (mouseX > width/2-50 && mouseX < width/2+50 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(width/2,500,100,60);  

  fill(black);
  textSize(24);
  text("START",400,500);
}

void selectButton() {
  if (mouseX > width/4-50 && mouseX < width/4+50 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(width/4,500,100,60);  

  fill(black);
  textSize(22);
  text("OPTIONS",width/4,500);
}

void statButton() {
  if (mouseX > width*0.75-50 && mouseX < width*0.75+50 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(width*0.75,500,100,60);  

  fill(black);
  textSize(24);
  text("STATS",width*0.75,500);
}
