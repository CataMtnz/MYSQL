package com.generation.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.models.Usuario;
import com.generation.services.UsuarioService;


@Controller
@RequestMapping("/registro")
public class RegistroController {

    /*inyeccion de dependencias */
    @Autowired
    UsuarioService usuarioService;

    /*ruta para desplegar el htp */
    @RequestMapping("")
    public String registro(@ModelAttribute("usuario") Usuario usuario
    ){
        return "registroUsuario.jsp"; //OJITO
    }
    /*ruta para capturar datos de usuario */
    @PostMapping("/usuario/respaldo")
    public String registroUsuario(@RequestParam(value="nombre")String nombre,
    @RequestParam(value="apellido")String apellido,
    @RequestParam(value="edad")String edad
    ){
        System.out.println("metodo registro de usuario, usted a asignado nombre: "+nombre);
        System.out.println("metodo registro de usuario, usted a asignado apellido: "+apellido);
        System.out.println("metodo registro de usuario, usted a asignado edad: "+edad);
        return "registroUsuario.jsp";//OJITO
    }
    @Valid
    @PostMapping("/usuario")
    public String guardarUsuario(@Valid @ModelAttribute("usuario") Usuario usuario,
    BindingResult resultado,
    Model model){

        if(resultado.hasErrors()){ /*capturamos si existe un error en el ingreso de datos  */
            model.addAttribute("msgError","Realice un ingreso correcto de los datos");
            return "registroUsuario.jsp";
        }
        /*del objeto vacio, ahora lo capturamos con los atributos */

        /*enviarl el objeto al service */
        System.out.println(usuario.getNombre()+" "+usuario.getApellido()+" "+ usuario.getEdad());
        //return "registrousuario.jsp"; //OJITO

        /*enviar el objeto al service llamamos al m??todo  creado en UsuarioService ->saveUsuario */
        usuarioService.saveUsuario(usuario);

        return "index.jsp";
    }
}
