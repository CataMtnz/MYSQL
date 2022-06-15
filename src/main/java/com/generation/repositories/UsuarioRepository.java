package com.generation.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.generation.models.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
    /*las interfaces solo DEFINEN los métodos JpaRepository<Objeto, tipo de dato PK>
     * trabajamos TODO LO RELACIONADO A BASE DE DATOS 
    */
}
