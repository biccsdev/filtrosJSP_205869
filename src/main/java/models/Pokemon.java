/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;
import java.util.List;

public class Pokemon {
    private String id;
    private String nombre;
    private String imagen;
    private String tipo;
    private double altura;
    private double peso;
    private String estadisticas;
    private String descripcion;
    private List<String> habilidades;
    private List<String> evoluciones;
    private List<String> debilidades;

    public Pokemon(String id, String nombre, String imagen, String tipo, double altura, 
                  double peso, String estadisticas, String descripcion, 
                  List<String> habilidades, List<String> evoluciones, List<String> debilidades) {
        this.id = id;
        this.nombre = nombre;
        this.imagen = imagen;
        this.tipo = tipo;
        this.altura = altura;
        this.peso = peso;
        this.estadisticas = estadisticas;
        this.descripcion = descripcion;
        this.habilidades = habilidades;
        this.evoluciones = evoluciones;
        this.debilidades = debilidades;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getEstadisticas() {
        return estadisticas;
    }

    public void setEstadisticas(String estadisticas) {
        this.estadisticas = estadisticas;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<String> getHabilidades() {
        return habilidades;
    }

    public void setHabilidades(List<String> habilidades) {
        this.habilidades = habilidades;
    }

    public List<String> getEvoluciones() {
        return evoluciones;
    }

    public void setEvoluciones(List<String> evoluciones) {
        this.evoluciones = evoluciones;
    }

    public List<String> getDebilidades() {
        return debilidades;
    }

    public void setDebilidades(List<String> debilidades) {
        this.debilidades = debilidades;
    }

    
}

