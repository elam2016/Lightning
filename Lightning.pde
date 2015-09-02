int startX = 200;
int startY = 0;
int endX = ((int)(Math.random()*10));
int endY = 400;
int numClicks = 0;
float transparency = ((int)(Math.random()*50) + 150);
int cloudX = 0;
int screenSize = 400;

void setup()
{
  size(screenSize, screenSize);
  background(0);

}
void draw()
{
	
}

void drawLightning()
{
	strokeWeight(((int)(Math.random()*2 + 1)));
	stroke(255,255, (int)(Math.random()*130) + 60, transparency);
	while(endX < screenSize) {
		endX = startX - ((int)(Math.random()*20) - 10);
		endY = startY + ((int)(Math.random()*20));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		transparency -= 2000;
	}
	drawClouds();
}

void drawClouds()
{
	fill(220, 220, 220);
	noStroke();
	while (cloudX < screenSize + 100)
	{
		ellipse(cloudX, 0, 50, 50);
		cloudX += 40;
	}
	cloudX = 0;
}
void mousePressed()
{
	drawLightning();
	drawClouds();
	//flash();
	startX = mouseX;
	startY = 0;
	endX = 200;
	endY = 400;
	transparency = ((int)(Math.random()*100) + 150);
}

void flash()
{
	while (numClicks < 10)
	{
		drawLightning();
		drawClouds();
		numClicks++;
		if (numClicks == 10)
		{
			background(255);
			numClicks = -1;
		}
		if (numClicks == 0)
		{
			background(0);
			numClicks = -1;
		}
	}
}
