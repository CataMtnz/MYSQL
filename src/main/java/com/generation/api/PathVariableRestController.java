package com.generation.api;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/var") /*localhost:8080/var */
public class PathVariableRestController {
    /*capturar variables desde la ruta = path 
     * no hay ? ni el UMPER
     * localhost:8080/var cuando accedemos por la ruta viene de la siguiente manera 
     * EL VALOR ES DINAMICO en la ruta 
    */
    @RequestMapping("/anio/{a}/mes/{m}/dia/{d}")
    public String capturarVariablesPAth(@PathVariable("a")String anio,
    @PathVariable("m")String mes,
    @PathVariable("d")String dia
    ) {
        return "la fecha es: "+anio+"/"+mes+"/"+dia;

        /* el signo pregunta es cuando trabajamos con formularios*/
        /*{usuario/id} para ver solo una información */
    }
    @RequestMapping("/fecha/{anio}/{mes}/{dia}")
    public String masCorto(@PathVariable("anio") String anio, 
    @PathVariable("mes") String mes,
    @PathVariable("dia") String dia){

    return "la fecha es: "+anio+"/"+mes+"/"+dia;
    }
}
