package com.generation.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="autos")
public class Auto {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    @Size(min=2, max=50)
    private String modelo;
    @Size(min=2, max=30)
    private String marca;

    @Size(min=2, max=30)
    private String tipoCombustible;

    private String cantidadPuerta; //OJITO agregar en el boton 
    private String cantidadRueda; //OJITO agregar en el boton 
    
    @Size(min=3, max=50)
    private String dueno;

    public Auto() {
    }

    public Auto(Long id, String modelo, String marca, String tipoCombustible, String cantidadPuerta, String cantidadRueda, String dueno) {
        this.id = id;
        this.modelo = modelo;
        this.marca = marca;
        this.tipoCombustible = tipoCombustible;
        this.cantidadPuerta = cantidadPuerta;
        this.cantidadRueda = cantidadRueda;
        this.dueno = dueno;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getTipoCombustible() {
        return tipoCombustible;
    }

    public void setTipoCombustible(String tipoCombustible) {
        this.tipoCombustible = tipoCombustible;
    }

    public String getCantidadPuerta() {
        return cantidadPuerta;
    }

    public void setCantidadPuerta(String cantidadPuerta) {
        this.cantidadPuerta = cantidadPuerta;
    }

    public String getCantidadRueda() {
        return cantidadRueda;
    }

    public void setCantidadRueda(String cantidadRueda) {
        this.cantidadRueda = cantidadRueda;
    }

    public String getDueno() {
        return dueno;
    }

    public void setDueno(String dueno) {
        this.dueno = dueno;
    }

    @Override
    public String toString() {
        return "Auto [cantidadPuerta=" + cantidadPuerta + ", cantidadRueda=" + cantidadRueda + ", dueno=" + dueno
                + ", id=" + id + ", marca=" + marca + ", modelo=" + modelo + ", tipoCombustible=" + tipoCombustible
                + "]";
    }

    
}
