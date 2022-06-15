package com.generation.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
/*lo que hacemos aqui es establecer el inicio de ruta por defecto /api */
/*para ver como capturamos a traves de una url */
public class ParametrosRestController {
    //localhost:8080/api?fecha=20220613
    /*en el browser --> ?q=api pasamos un parametro que queremos capturar*/
    @RequestMapping("")
    public String fecha(@RequestParam(value="fecha")String fecha){
        return "la fecha es: " + fecha;
    }

    //localhost:8080/api/seccion?modulo=3&seccion=5
    /*la estructura es la misma es conmutativo si cambiamos el html//SearchQuery
     * DEBEN ESTAR LOS 2 PARAMETROS
     * //localhost:8080/api/seccion?modulo=3&seccion=5

    */
    @RequestMapping("/seccion")
    public String seccion(@RequestParam(value="modulo")String modulo,
            @RequestParam (value="seccion")String seccion){
                return "el modulo es: " + modulo +" la seccion es " + seccion;
            }
    /*RUTAS con parametro obligatorio, es con request true, o bien no ponerlo es por defecto */
    /*RUTAS con parametro no obligatorio 
     * si no se asgina parametro, asigna NULL
    */
    //localhost:8080/api/date?anio=2022&mes=6&dia=13
    @RequestMapping("/date")
    public String capturarParametros(@RequestParam(value="anio", required =false) String anio,
    @RequestParam(value="mes", required =false) String mes,
    @RequestParam(value="dia", required =false) String dia
    ){
        /*para validar si no viene*/
        if (anio != null) {
            System.out.println("El año es: " +anio);
        }

        if (mes != null) {
            System.out.println("El año es: " +mes);
        }
        if (dia != null) {
            System.out.println("El año es: " +dia);
        }
        
        return "la fecha es: "+anio+mes+dia;
    }

}

