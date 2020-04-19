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
//global_settings{ assumed_gamma 1.0}

//Campo de alturas

global_settings{
       	assumed_gamma 2.2
	/*hf_gray_16 nos permite dar 16 tonos
	 *de gris*/
	hf_gray_16
}


//Camara
camera{
	//Dónde se encuentra la cámara con coordenadas <x,y,z>
	location <0,1,-3>
	//A donde apunta con coordenadas <x,y,z>
	look_at <0,0,0>
}


//Luz
light_source{ 
	//Localización <posicion en x, posicion en y, posicion en z>
	<0,2,-3>
	//color
	color White
}

//Campo de alturas
height_field{
	//Tipo de archivo "nombre"
	jpeg "campo.jpg"
	//suavizado
	smooth
	//textura a asignar
	texture{PinkAlabaster}
	//mover a <posicion x, posicion y, posicion z>
	translate <0,0,-.5>
	//rota <rota en x, rota en y, rota en z>
	//rotate <90,180,0>
	//rota en x 90 grados
	rotate x*-90
}

//Fondo en x

plane {
	z, 1
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
	x, -1
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
