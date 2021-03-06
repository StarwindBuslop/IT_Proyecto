/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionActividades;

import gestionActividades.HibernateUtil;
import gestionActividades.Jugador;
import java.sql.SQLException;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author frank
 */
public class jugadoresDAO {

    Session s1 = null;

    /**
     * Localiza todos los jugadores de la base de datos
     *
     * @return
     */
    public List<Jugador> consultaTodosJugadores() {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q1 = s1.createQuery("from Jugador");
        List<Jugador> listaJugadores = (List<Jugador>) q1.list();

        tx.commit();
        return listaJugadores;
    }

    /**
     * Localiza el jugador por el dorsal y el nombre
     *
     * @param nombre
     * @param dorsal
     * @return
     */
    public List<Jugador> busquedaJugadorPorNombreDorsal(String nombre) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q1 = s1.createQuery("from Jugador where nombre='" + nombre + "'");

        List<Jugador> jugadores = q1.list();
        tx.commit();
        return jugadores;
    }

    /**
     * Localiza el jugador por el dorsal y el nombre
     *
     * @param nombre
     * @param dorsal
     * @return
     */
    public List<Jugador> busquedaJugadorPorId(Integer id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();

        Query q1 = s1.createQuery("From Jugador where id = " +id+ "");

        List<Jugador> jugador = q1.list();
        tx.commit();
        return jugador;
    }

    public List<Jugador> buscarJugadorId(Integer id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q1 = s1.createQuery("From Actividad where id = " + id + "");
        List<Jugador> listActivi = q1.list();
        tx.commit();
        return listActivi;
    }

    /**
     * Localiza el jugador por el dorsal y el nombre
     *
     * @param nombre
     * @param dorsal
     * @return
     */
    public Jugador busquedaJugadorPorNombre(int id, int idEquipoFK) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q1 = s1.createQuery("from Jugador where id='" + id
                + "' and idEquipoFK='" + idEquipoFK
                + "'");

        Jugador jugador = (Jugador) q1.uniqueResult();
        tx.commit();
        return jugador;
    }

    /**
     * Edita un jugador de la bd
     *
     * @param jug
     */

    public void editarJugador(Jugador jug) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.update(jug);
        s1.getTransaction().commit();
    }

    /**
     * Eliminar un jugador de la bd
     *
     * @param id
     */
    public void eliminarJugador(String id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.createSQLQuery("delete from Jugador where id='" + id + "'").executeUpdate();

        tx.commit();
    }

    public void insertarJugador(Jugador jugador) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();

        s1.beginTransaction();

        s1.save(jugador);

        s1.getTransaction().commit();
    }
}
