int startX = 200;
int startY = 0;
int endX = ((int)(Math.random()*10));
int endY = 400;
int clicks = 0;
float transparency = ((int)(Math.random()*100) + 150);

void setup()
{
  size(400,400);
  background(0);
}
void draw()
{
	strokeWeight(((int)(Math.random()*2 + 1)));
	stroke(255,255, (int)(Math.random()*130) + 60, transparency);
	while(endX < 400) {
		endX = startX - ((int)(Math.random()*20) - 10);
		endY = startY + ((int)(Math.random()*10));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		transparency -= 2000;
	}
}
void mousePressed()
{
	startX = mouseX;
	startY = 0;
	endX = 200;
	endY = 400;
	transparency = ((int)(Math.random()*100) + 150);
	clicks++;
	if (clicks == 10)
	{
		background(255, 255, 255, 100);
		clicks = 0;
		if (clicks == 0)
		{
			background(100, 100, 100, 80);
		}
	}

}