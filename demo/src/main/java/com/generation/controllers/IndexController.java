package com.generation.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController  {
    //http://localhost:8080/
    @RequestMapping("/")
    public String index(Model model){
        /*clave, valor */
        model.addAttribute("apellidos", "Martínez Flores");
        model.addAttribute("nombres", "Catalina Andrea");
        model.addAttribute("name", 25);
        
        
        /*Usuario usuario = new Usuario("Michi", "Leonidas", 8, "LaContraseña");
        //pasando el objeto a la vista JSP
        model.addAttribute("usuario", usuario);
        System.out.println(usuario.getNombre());
        */
        return "index.jsp";

    }
}