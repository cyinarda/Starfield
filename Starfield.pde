Particle[] arr = new Particle[2500];
void setup()
{
	size(500, 500);
	background(0);
	for(int i = 0; i < arr.length; i++)
	{
		arr[0] = new OddballParticle();
		arr[i] = new Particle();
	}
}
void draw()
{
	background(0);
	for(int i = 0; i < arr.length; i++)
	{
		arr[i].move();
		arr[i].show();
	}
}
class Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;

	Particle()
	{
		myAngle = Math.random() * 2 * PI;
		mySpeed = Math.random() * 10;
		myX = myY = 250;
		myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	}

	void move()
	{
		myX = myX + (Math.cos(myAngle) * mySpeed);
		myY = myY + (Math.sin(myAngle) * mySpeed);
	}

	void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}

}

class OddballParticle extends Particle//inherits from Particle
{
	OddballParticle()
	{
		myX = myY = 250;
		myColor = 255;
	}

	void move()
	{
		myX = myX + (int)(Math.random() * 4) - 2;
		myY = myY + (int)(Math.random() * 3) - 1;
	}

	void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 100, 100);
	}
}


