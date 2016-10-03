NormalParticle [] lightWave; 
void setup()
{
	size(600,600);
	lightWave = new NormalParticle[200];
	for (int i = 0; i < lightWave.length; i++)
	{
		lightWave[i] = new NormalParticle();
	}
}
void draw()
{
	for (int i = 0; i < lightWave.length; i++)
	{
		lightWave[i].move();
		lightWave[i].show();
	}
}
class NormalParticle
{
	double myX, myY, dSpeed, myColor;
	int dTheta;
	NormalParticle()
	{
		myX = 300;
		myY = 300;
		myColor = (int)(Math.random()*256);
		dSpeed = Math.random()*25;
		dTheta = (int)(Math.PI*2*Math.random());
	} 
	void move()
	{
		myX = myX + Math.cos(3.6)*dSpeed;
		myY = myY + Math.sin(1.5)*dSpeed;
	}
	void show()
	{
		noStroke();
		fill((float)myColor,(float)myColor,(float)myColor);
		ellipse((float)myX,(float)myY,20,20);
	}
}
interface Particle
{
	//public void move();
	//public void show();
}
class OddballParticle //uses an interface
{
	
}
class JumboParticle //uses inheritance
{
	//your code here
}

