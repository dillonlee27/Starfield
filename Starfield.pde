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
	lightWave[0] = new JumboParticle();
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
		myColor = (int)(Math.random()*256);
		dSpeed = (int)dSpeed + 2;
		dTheta = (int)(Math.PI*2*Math.random());
	} 
	public void move()
	{
		myX = 300 + 150*Math.cos(dSpeed);
		myY = 300 + 150*Math.sin(dSpeed);
		dSpeed = dSpeed + 10;
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
	  	myX = myX + Math.cos(dTheta)*dSpeed;
	  	myY = myY + Math.sin(dTheta)*dSpeed;
	  	dSpeed = dSpeed + (int)(Math.random()*255);
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
	double dTheta;
	int myX, myY, dSpeed;
	JumboParticle()
	{
		myX = 300;
		myY = 300;
		dSpeed = dSpeed + 5;
		dTheta = 150;
	}
	public void move()
	{
		myX = (float)300 + 150*Math.cos(dSpeed);
		myY = (float)300 + 150*Math.sin(dSpeed);
		dSpeed = dSpeed + 25;
	}
	public void show()
	{
		noStroke();
		fill((float)(Math.random()*256),(float)(Math.random()*256),(float)(Math.random()*256));
		ellipse(myX,myY,25,25);
	}
}

