package com.generation.controllers;

import java.util.List;

import javax.persistence.metamodel.ListAttribute;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.models.Auto;
import com.generation.services.AutoService;

@Controller
@RequestMapping("/auto")
public class AutoController {
    @Autowired
    AutoService autoService;

    @RequestMapping("")
    public String inicio(@ModelAttribute("auto")Auto auto){

    return "registroAuto.jsp";
    }
    @RequestMapping("/guardar")
    public String guardarAuto(@Valid @ModelAttribute("auto") Auto auto, BindingResult resultado, 
    Model model){
        if(resultado.hasErrors()){
            model.addAttribute("msgError","Datos erroneos");
            return "registroAuto.jsp";

        }else{
            /*persistencia para BD */
            autoService.saveAuto(auto);

            /*creamos uuna lista de autos en la que guardamos todo auto que encuentre -->lista del objeto nombre lista, llamo al metodo */
            List<Auto> listaAutos = autoService.findAll();

            /*envia al jsp la lista de autos FOREACH */
            model.addAttribute("autosCapturados", listaAutos);
            /*envio del objeto */
            return "mostrarAutos.jsp";
        }
        }
    }