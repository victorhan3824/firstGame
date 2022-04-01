void stat() {
  background(black);
  home();
  
  fill(blue);
  stroke(white);
  rect(350,625,600,300);
  statChart();
}

void statClick() {
  if (mouseX > width/8-50 && mouseX < width/8+50 && mouseY > height/8-30 && mouseY < height/8+30) mode = INTRO;
}

void statChart() {
  
  //stat calculations ========================
  float avg = float(scoreSum)/float(gameSum);
  if (gameSum == 0) avg = 0;
  int min = timeSum/60;
  int sec = timeSum%60;
  float avgPlay = float(timeSum)/gameSum; 
  if (gameSum == 0) avgPlay = 0;
  
  //chart display ============================
  fill(blue);
  stroke(white);
  rect(350,300,600,300);
  //seperation bars
  line(50,200,650,200);
  line(50,250,650,250);
  line(50,300,650,300);
  line(50,350,650,350);
  line(50,400,650,400);
  //stat display =============================
  fill(white);
  textSize(25);
  text("All time best: " + topScore, 350, 175);
  text("Total games played: " + gameSum, 350, 225);
  text("Cumulative score: " + scoreSum, 350, 275);
  text("Average score: " + nf(avg,1,2), 350, 325);
  text("Total Playtime: " + min + "min" + sec + "sec", 350, 375);
  text("Pergame playtime: " + avgPlay + "sec", 350, 425);
}
