public int nOscillators = 125;
public double lambda = 150; // pixels
public double velocity = 0.05; // pixels/ms
public double waveNumber;

void setup() {
  size(875, 300);
  frameRate(30);
  waveNumber = 2.0*Math.PI/lambda;
}

void draw(){  

  background(250);
		
  int mouseOscIndex = int(mouseX/(width/nOscillators));

  for(int k = 0; k < nOscillators; k++) {
    fill(250);
    if(k == mouseOscIndex-2) fill(20, 150, 150);
    if(k == mouseOscIndex-1) fill(20, 85, 150);
    if(k == mouseOscIndex) fill(20, 53, 223);
    if(k == mouseOscIndex+1) fill(88, 30, 147);
    if(k == mouseOscIndex+2) fill(126, 20, 126);
    double x = k*(width/nOscillators);
    double y = 80.0*Math.sin(waveNumber*(x - velocity*millis()));
    if(k > 75) fill(((int) (2.5*(80 + (int) y))));
    ellipse((int) x, (int) y + 150, 9, 9);
  }

}

