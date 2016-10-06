Particle [] lightWave; 
void setup()
{
	size(600,600);
	lightWave = new Particle[400];
	for (int i = 0; i < lightWave.length; i++)
	{
		lightWave[i] = new NormalParticle();
	}
	lightWave[0] = new OddballParticle();
	lightWave[1] = new JumboParticle();	
}
void draw()
{
	background(0);
	for (int i = 0; i < lightWave.length; i++)
	{
		lightWave[i].move();
		lightWave[i].show();
	}
}
class NormalParticle implements Particle
{
	double dSpeed, myColor, myX, myY;
	int dTheta;
	NormalParticle()
	{
		myX = 300;
		myY = 300;
		myColor = (int)(Math.random()*255);
		dSpeed = 0;
		dTheta = (int)(Math.PI*2*Math.random());
	} 
	public void move()
	{
		myX = 300 + 150*Math.cos(dSpeed);
		myY = 300 + 150*Math.sin(dSpeed);
		dSpeed = dSpeed + 0.5;
	}
	public void show()
	{
		noStroke();
		fill((float)(Math.random()*125),(float)(Math.random()*150),(float)(Math.random()*175));
		ellipse((float)myX,(float)myY,10,10);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle //uses an interface
{
	  double dSpeed, myX, myY, dTheta;
	  OddballParticle()
	  {
	  	myX = 300;
	  	myY = 300;
	  	dSpeed = dSpeed + 5;
	  	dTheta = (int)(Math.PI*2*Math.random());
	  }
	  public void move()
	  {
	  	myX = 300 + 125*Math.sin(dSpeed);
	  	myY = 300 + 175*Math.cos(dSpeed);
	  	dSpeed = dSpeed + 15;
	  }
	  public void show()
	  {
	  	noStroke();
	  	fill((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
	  	ellipse((float)myX,(float)myY,10,10);
	  }
}
class JumboParticle implements Particle
{
	double dTheta, myX, myY;
	int  dSpeed;
	JumboParticle()
	{
		myX = 300;
		myY = 300;
		dSpeed = dSpeed + 5;
		dTheta = 150;
	}
	public void move()
	{
		myX = 300 + 100*Math.cos(dSpeed);
		myY = 300 + 150*Math.sin(dSpeed);
		dSpeed = dSpeed + 25;
	}
	public void show()
	{
		noStroke();
		fill((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
		ellipse((float)myX,(float)myY,25,25);
	}
}

