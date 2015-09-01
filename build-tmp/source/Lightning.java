import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 200;
int startY = 0;
int endX = ((int)(Math.random()*10));
int endY = 400;
int clicks = 0;
float transparency = ((int)(Math.random()*100) + 150);

public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
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
public void mousePressed()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
