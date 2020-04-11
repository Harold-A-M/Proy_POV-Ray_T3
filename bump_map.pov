/*
 Imagen creada por Harold Aguilar Mejia
 Imagen usando la técnica de bump mapping 
*/

#include "colors.inc"
//establecemos un fondo de color azul
background {
    Blue
}
//posicionamos la camara
camera{
    location<1,1,-2>
    look_at<1,1,0>
}
//posición de la luz y color
light_source{
    <1,4,-6>
    color White
}
//declaramos la esfera de nombre bola
#declare bola = sphere {
    <1,1,0>, 0.7
};
//usamos object para poder manejar la esfera 
object { 
	//Le decimos que tome la esfera antes declarada
	bola
	//Hacemos la textura del objeto
	texture {
		//Color	
		pigment {
		    Gray
        }
	    normal { 
	        bump_map { 
	            jpeg "piedra.jpeg"
				interpolate 2
				map_type 0 once
				bump_size 6 
			}
			scale <2,2,6> 
		}
	}
}
//utilizamos object par crear un plano
object{
    //es posible crear los objecto a utilizar aquí mismo sin antes haberlos declarado
    plane{
        <0,0.8,0>0
    }
    //agrgamos una textura
    texture{
        //le asignamos un color por RGB
        pigment{
            color <0.6,0.8,1>
        }
        normal{
            bump_map{
                jpeg "piedra.jpeg"
                interpolate 3
                map_type 0  
                bump_size 4
            }
            translate <-0.5,4,1>
            //rotamos la imagen de la textura para poderla apreciar de forma correcta en el plano
            rotate <45,0,0>
            scale <8,5,8>
        }
    }
}
