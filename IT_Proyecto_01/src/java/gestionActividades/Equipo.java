package gestionActividades;
// Generated 16-may-2021 10:37:05 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Equipo generated by hbm2java
 */
public class Equipo  implements java.io.Serializable {


     private Integer id;
     private Actividad actividad;
     private String nombre;
     private Set jugadors = new HashSet(0);
     private Set actividadsForIdEquipoUnoFk = new HashSet(0);
     private Set actividadsForIdEquipoDosFk = new HashSet(0);

    public Equipo() {
    }

	
    public Equipo(Actividad actividad, String nombre) {
        this.actividad = actividad;
        this.nombre = nombre;
    }
    public Equipo(Actividad actividad, String nombre, Set jugadors, Set actividadsForIdEquipoUnoFk, Set actividadsForIdEquipoDosFk) {
       this.actividad = actividad;
       this.nombre = nombre;
       this.jugadors = jugadors;
       this.actividadsForIdEquipoUnoFk = actividadsForIdEquipoUnoFk;
       this.actividadsForIdEquipoDosFk = actividadsForIdEquipoDosFk;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Actividad getActividad() {
        return this.actividad;
    }
    
    public void setActividad(Actividad actividad) {
        this.actividad = actividad;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Set getJugadors() {
        return this.jugadors;
    }
    
    public void setJugadors(Set jugadors) {
        this.jugadors = jugadors;
    }
    public Set getActividadsForIdEquipoUnoFk() {
        return this.actividadsForIdEquipoUnoFk;
    }
    
    public void setActividadsForIdEquipoUnoFk(Set actividadsForIdEquipoUnoFk) {
        this.actividadsForIdEquipoUnoFk = actividadsForIdEquipoUnoFk;
    }
    public Set getActividadsForIdEquipoDosFk() {
        return this.actividadsForIdEquipoDosFk;
    }
    
    public void setActividadsForIdEquipoDosFk(Set actividadsForIdEquipoDosFk) {
        this.actividadsForIdEquipoDosFk = actividadsForIdEquipoDosFk;
    }




}


