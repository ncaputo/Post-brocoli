/* Vamoh a calmarnoh*/

Satelite s1;

void setup()
{
        size (500,500);
        //size(round(screen.width*0.95), round(screen.heigth));
        s1 = new Satelite();
	background();
}

void draw()
{
	fill(0, 12);
	noStroke();
	rect(0, 0, width, height);

        s1.actualiza();
        s1.pinta();
}

/* Clases adicionales */

class Satelite
{
        float modu, arg;		//Cordenadas posición en formato polar
	float velgiro, velgiro2;	//Velocidad de giro en radianes
	float cenx, ceny;	//Posiciones para el centro de rotación
        int radio;			//Radio del circulo a dibujar
	int colr, colg, colb;	//Colores

        Satelite ()
        {
                modu = 200;
                arg = -PI/2;
		arg2 = PI;
		cenx = width/2;
		ceny = height/2;
                velgiro = PI/140;
		velgiro2 = PI/round(random(180));
                radio = 15;
		colr = int(random(255));
		colg = int(random(255));
		colb = int(random(255));
        }

        void actualiza()
        {
		arg = arg + velgiro;
		arg2 = arg2 + velgiro2;
		modu = 200*sin(arg2);
        }

        void pinta()
        {
                fill(colr, colg, colb);
                noStroke();
                ellipse(cenx+(modu*cos(arg)), ceny+(modu*sin(arg)), radio, radio);
        }
}
