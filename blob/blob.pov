/*
 * El siguiente código me permite dibujar una esfera.
 * No incluye fondo.
*/

#include "colors.inc" //Para incluir nombres de colores

//Radio de la esfera
#declare radio=.05;

//Valor de la altura, dada una función  segun el tiempo.
//#declare valor=sin(2*pi*clock);

//Avance del eje x
//#declare avance=pi*clock;

//Cámara
//Me permite colocar una cámara y aputarla a una localización específica.
camera{
    //Dónde se encuentra la cámara con coordenadas <x,y,z>
    location <pi,.5,-5>
    //A donde apunta con coordenadas <x,y,z>
    look_at <pi,.5,5>
    }

//Fuente de luz
  light_source {
    <2, 10, -3>
    color White
    area_light <5, 0, 0>, <0, 0, 5>, 5, 5
    adaptive 1
    jitter
  }




/*Objeto blob, permite crear objetos parecidos a la fusión de plastico
 *se debe agregar threshold para indicar cuando se vuelve visible el blob
 *y agregar un facctor de fuerza para indicar "el campo de fuerza" del objeto
 *debe tener al menos dos objetos*/
blob {
    
    sphere { <0,0,0>, 3*radio, /* Campo de fuerza del objeto, observe que tiene una coma*/ 1 
	   //Resto del objeto
	    texture{pigment {Red}} finish { phong 1 } }
    threshold .65
    #for(posicion,0,2*pi,.01)
    	sphere { <posicion,sin(posicion),0>, radio, 1 texture{pigment {Blue}} finish { phong 1 } }
    #end
    sphere { <2*pi,0,0>, 3*radio, 1 texture{pigment {Red}} finish { phong 1 } }

}


//Plano z 
  plane {
    y, -1.5
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

//Plano y
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
  
 //Plano x
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
