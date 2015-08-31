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

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 300;

public void setup()
{
  size(300,300);
  background(0);
  strokeWeight(1);
}
public void draw()
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
public void mousePressed()
{
	startX = (int)(Math.random()*301);
	startY = startY;
	endX = endX;
	endY = endY;
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
