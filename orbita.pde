/* Vamoh a calmarnoh*/

Satelite s1 =new Satelite();

void setup()
{
        size (500,500);
        //size(round(screen.width*0.95), round(screen.heigth));
}

void draw()
{
        background(225);
		
	//s1.actualiza();
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
		posy = 250; 
		vely = 3;
		radio = 12;
	}
	
	void actualiza()
	{
		posy += vely;		
		if(posy >= height || posy <= 0)
		{
			vely *= -1;
		}
	}
	
	void pinta()
	{
		fill(int(random(255)),int(random(255)),int(random(255)));
		ellipse(posx, posy, radio, radio);
	}

}
