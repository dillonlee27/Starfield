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
}
void draw()
{
	for (int i = 0; i < lightWave.length; i++)
	{
		lightWave[i].move();
		lightWave[i].show();
	}
}
class NormalParticle implements Particle
{
	double myX, myY, dSpeed, myColor;
	int dTheta;
	NormalParticle()
	{
		myX = 300;
		myY = 300;
		myColor = (int)(Math.random()*256);
		dSpeed = 10;
		dTheta = (int)(Math.PI*2*Math.random());
	} 
	public void move()
	{
		myX = myX + Math.cos(dTheta)*dSpeed;
		myY = myY + Math.sin(dTheta)*dSpeed;
	}
	public void show()
	{
		noStroke();
		fill((float)(Math.random()*125),(float)(Math.random()*150),(float)(Math.random()*175));
		ellipse((float)myX,(float)myY,20,20);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle //uses an interface
{
	  double myX, myY, dSpeed;
	  int dTheta; 
	  OddballParticle()
	  {
	  	myX = 300;
	  	myY = 300;
	  	dSpeed = (Math.random()*20)+5;
	  	dTheta = (int)(Math.PI*2*Math.random());
	  }
	  public void move()
	  {
	  	myX = myX + Math.cos(dTheta)*dSpeed;
	  	myY = myY + Math.sin(dTheta)*dSpeed;
	  }
	  public void show()
	  {
	  	noStroke();
	  	fill((float)(Math.random()*125),(float)(Math.random()*150),(float)(Math.random()*175));
	  	ellipse((float)myX,(float)myY,20,20);
	  }
}
class JumboParticle //uses inheritance
{
	//your code here
}

