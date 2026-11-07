package pe.edu.pucp.iweb.lab8.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import pe.edu.pucp.iweb.lab8.beans.Genero;

public class GeneroDao extends BaseDao { // TODO: heredar de BaseDao

    /**
     * Ejercicio 2: todos los géneros ordenados por nombre.
     */
    public ArrayList<Genero> listar() {
        // TODO
        String sql;
        try (Connection cn = getConnection();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setInt(1, idSede);
            ps.setInt(2, idSede);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String tipo = rs.getString("tipo");
                    EquipoRed equipo;
                    if ("SWITCH".equals(tipo)) {
                        equipo = new EquipoSwitch();
                    } else if ("AP".equals(tipo)) {
                        equipo = new EquipoAP();
                    } else {
                        throw new IllegalStateException("Tipo desconocido: " + tipo);
                    }
                    equipo.setIdEquipo(rs.getInt("idequipo"));
                    equipo.setModelo(rs.getString("modelo"));
                    equipo.setTipo(tipo);
                    equipo.setPrecio(rs.getDouble("precio"));
                    equipo.setCantidad(rs.getInt("cantidad"));
                    equipo.setSede(new Sede(rs.getInt("idsede"), rs.getString("sede_nombre")));
                    lista.add(equipo);
                }
            }
        } catch (SQLException e) {
            throw new IllegalStateException("No se pudo listar los equipos", e);
        }
        return new ArrayList<>();
    }
}
