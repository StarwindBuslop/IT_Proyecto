package gestionActividades;
// Generated 16-may-2021 10:37:05 by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Reserva generated by hbm2java
 */
public class Reserva implements java.io.Serializable {

    private Integer id;
    private Pago pago;
    private Usuario usuario;
    private Actividad actividad;
         private Equipo equipoByIdEquipoUnoFk;
     private Equipo equipoByIdEquipoDosFk;
    private Date fecha;

    public Reserva() {
    }

    public Reserva(Pago pago, Usuario usuario, Date fecha) {
        this.pago = pago;
        this.usuario = usuario;
        this.fecha = fecha;
    }

    public Reserva(Pago pago, Usuario usuario, Date fecha, Actividad actividad,Equipo equipoByIdEquipoUnoFk, Equipo equipoByIdEquipoDosFk) {
        this.pago = pago;
        this.usuario = usuario;
        this.fecha = fecha;
        this.actividad = actividad;
                this.equipoByIdEquipoUnoFk = equipoByIdEquipoUnoFk;
        this.equipoByIdEquipoDosFk = equipoByIdEquipoDosFk;
    }

    public Reserva(Integer id, Pago pago, Usuario usuario, Date fecha, Actividad actividad) {
        this.pago = pago;
        this.usuario = usuario;
        this.fecha = fecha;
        this.actividad = actividad;
        this.id = id;
    }

        public Equipo getEquipoByIdEquipoUnoFk() {
        return this.equipoByIdEquipoUnoFk;
    }
    
    public void setEquipoByIdEquipoUnoFk(Equipo equipoByIdEquipoUnoFk) {
        this.equipoByIdEquipoUnoFk = equipoByIdEquipoUnoFk;
    }
    public Equipo getEquipoByIdEquipoDosFk() {
        return this.equipoByIdEquipoDosFk;
    }
    
    public void setEquipoByIdEquipoDosFk(Equipo equipoByIdEquipoDosFk) {
        this.equipoByIdEquipoDosFk = equipoByIdEquipoDosFk;
    }

    public Actividad getActividad() {
        return actividad;
    }

    public void setActividad(Actividad actividad) {
        this.actividad = actividad;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Pago getPago() {
        return this.pago;
    }

    public void setPago(Pago pago) {
        this.pago = pago;
    }

    public Usuario getUsuario() {
        return this.usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Date getFecha() {
        return this.fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

}