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
        float modu, arg;		//Cordenadas posición en formato polar
	float velgiro;		//Velocidad de giro en radianes
	float cenx, ceny;	//Posiciones para el centro de rotación
        int radio;			//Radio del circulo a dibujar
	int colr, colg, colb;	//Colores

        Satelite ()
        {
                modu = 200;
                arg = -PI/2;
		cenx = width/2;
		ceny = height/2;
                velgiro = PI/140;
                radio = 15;
		colr = int(random(255));
		colg = int(random(255));
		colb = int(random(255));
        }

        void actualiza()
        {
		arg = arg + velgiro;
        }

        void pinta()
        {
                fill(colr, colg, colb);
                noStroke();
                ellipse(cenx+(modu*cos(arg)), ceny+(modu*sin(arg)), radio, radio);
        }
}
