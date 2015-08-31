int startX = 150;
int startY = 0;
int endX = 150;
int endY = 300;

void setup()
{
  size(300,300);
  background(0);
  strokeWeight(1);
}
void draw()
{
	stroke(255,255, (int)(Math.random()*130) + 60, (int)(Math.random()*100) + 150);
	while(endX < 300) {
		endX = startX - ((int)(Math.random()*20) - 10);
		endY = startY + ((int)(Math.random()*10));
		line(startX, startY, endX, endY);
		startX = endX + 1;
		startY = endY + 1;
	}
}
void mousePressed()
{
	startX = (int)(Math.random()*301);
	startY = startY;
	endX = endX;
	endY = endY;
}