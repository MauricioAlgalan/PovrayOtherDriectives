/*Se generará un campo de altoras, es decir una 
 *superficie cambiará de altura dependiendo
 *de su color generalmente en gris*/

/*Declaramos la versión de povray a utilizar*/

#version 3.7;

//Liberias o blibliotecas
#include "colors.inc"
#include "textures.inc"
#include "metals.inc"


/*Para que todas las imágenes tengan la
 *misma tonalidad utilizamos:
 *assumed_gamma*/

//Esena normal 
global_settings{ assumed_gamma 2.0}

//Campo de alturas
/*
global_settings{
       	assumed_gamma 2.2
	/*hf_gray_16 nos permite dar 16 tonos
	 *de gris*/
	hf_gray_16
}
*/

//Camara
camera{
	//Dónde se encuentra la cámara con coordenadas <x,y,z>
	location <0,2,-10>
	//A donde apunta con coordenadas <x,y,z>
	look_at <0,2,0>
}


//Luz
light_source{ 
	//Localización <posicion en x, posicion en y, posicion en z>
	<0,3,-10>
	//color
	color White
}

//Realizar un sólido de revolución
lathe{
	/*tipo de solido
	 *en este se realiza con lineas*/
	linear_spline
	// Se indica que es de 6 puntos
	6,
	//Puntos
	<0,0>, <1,1>, <3,2>, <2,3>, <2,4>, <0,4>
	texture{Sandalwood}
	
}




//Fondo en x

plane {
	z, 5
	texture {
		pigment{
			color rgb<1,1,1>
		}
		finish {
			diffuse 0.4
			ambient 0.2
			phong 1
			phong_size 100
			reflection 0.25
		}
	}		
}


//Plano en Y
plane {
	x, -5
	texture {
		pigment{
			color rgb<1,1,1>
		}
		finish {
			diffuse 0.4
			ambient 0.2
			phong 1
			phong_size 100
			reflection 0.25
		}
	}		
}

//Plano en z
plane {
	y, -1
	texture {
		pigment{
			color rgb<1,1,1>
		}
		finish {
			diffuse 0.4
			ambient 0.2
			phong 1
			phong_size 100
			reflection 0.25
		}
	}		
}
