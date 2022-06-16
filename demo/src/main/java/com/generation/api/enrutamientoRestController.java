package com.generation.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping
public class enrutamientoRestController {
     /*redireccionamiento (ruta a responder) ("/") ruta por default */

    /*ENRUTAMIENTOS: TRABAJAR CON RUTAS, establecemos url a través de la cual podemos acceder
     * SON RUTAS TOTALMENTE DISTINTA
    */
    
    //http://localhost:8080/usuario
    @RequestMapping("/usuario")
    public String usuario(){
        return "Estamos en la url de usuario";
    }

    @RequestMapping("/usuario/inscrito")
    public String inscrito(){
        return "Estamos en la url de usuario/inscrito";
    }

    @RequestMapping("/cliente/registrado")
    public String cliente(){
        return "Ruta de cliente";
    }
    /* OTRA forma de escribir ruta  */
    @RequestMapping(value ="/cliente/proveedor", method = RequestMethod.GET)
    public String proveedor(){
        return "Ruta de proveedor";
    }
}

