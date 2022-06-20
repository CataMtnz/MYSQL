package com.generation.services;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.models.Auto;
import com.generation.repositories.AutoRepository;

@Service
public class AutoService {
    /*void no puede tener un return solo ejecuta y Valid es para */
    @Autowired
    AutoRepository autoRepository;
    public void saveAuto(@Valid Auto auto) {
        /*metodo para guardar */
        autoRepository.save(auto);
    }
        /*herencia del hijo */
        public List<Auto> findAll(){
            return autoRepository.findAll();

        }
        public Auto buscarId(Long id) {
            return autoRepository.findById(id).get();
        }

    }

