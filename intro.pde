//.....
//......
//.......
void intro(){
  theme.play();
  
  background(yellow);
  gameStartButton();
  
  fill(black);
  textSize(72);
  text("CLICKER GAME",width/2,0.375*height);
}

void introClick() {
  if (mouseX > 350 && mouseX < 450 && mouseY > 470 && mouseY < 520) mode = GAME;
}

//other functions ================================================================

void gameStartButton() {
  if (mouseX > 350 && mouseX < 450 && mouseY > 470 && mouseY < 520){
    stroke(red);
    fill(pink);
  } else {
    stroke(black);
    fill(white);
  }
  rect(400,500,100,60);  
  
  fill(black);
  textSize(24);
  text("START",400,500);
}
