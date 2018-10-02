/* Vamoh a calmarnoh*/

Satelite s1;

void setup()
{
        size (500,500);
        //size(round(screen.width*0.95), round(screen.heigth));
	s1 = new Satelite();
}

void draw()
{
        background(225);
		
	s1.actualiza();
	s1.pinta();
}

/* Clases adicionales */

class Satelite
{
	float posx, posy, vely;
	int radio;
	
	Satelite ()
	{
		posx = width*0.5;
		posy = height/8;
		vely = 3;
		radio = 12;
	}
	
	void actualiza()
	{
		translate(width/2, height/2);
		rotate(radians(vely));
		vely += 1;
	}
	
	void pinta()
	{
		fill(int(random(255)),int(random(255)),int(random(255)));
		noStroke();
		ellipse(posx, posy, radio, radio);
	}

}
