package com.mycompany.web1.Pacientes;

public class Pacientes {
    
    private String dni;
    private String nombre;
    private String resumen;

    public Pacientes() {
    }

    public Pacientes(String dni, String nombre, String resumen) {
        this.dni = dni;
        this.nombre = nombre;
        this.resumen = resumen;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }
    
}
