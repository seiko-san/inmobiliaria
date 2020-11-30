/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author seiko
 */
public class PropiedadesConect extends Conexion {

    public boolean crear_propiedad(Propiedades p) {

        PreparedStatement ps = null;

        boolean dato = false;
        try {
            String sql = "INSERT INTO propiedad('codigo_propiedad', 'tipo_propiedad',\n"
                    + " 'fotos', 'descripción', 'cantbaños', 'cantdormitorios',\n"
                    + " 'area_total', 'area_construida', 'precio_peso','precio_uf', \n"
                    + " 'fecha_publicación', 'opcion_visita', 'bodega', 'estacionamiento',\n"
                    + " 'logia', 'cocina_amoblada', 'antejardin', 'Patio_trasero', 'piscina')"
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            ps = getConnection().prepareStatement(sql);
            ps.setInt(1, p.getTipo());
            ps.setString(2, p.getFotos());
            ps.setString(3, p.getDescripción());
            ps.setInt(4, p.getCantbaños());
            ps.setInt(5, p.getCantdormitorios());
            ps.setFloat(6, p.getArea_total());
            ps.setFloat(7, p.getArea_construida());
            ps.setFloat(8, p.getPrecio_peso());
            ps.setFloat(9, p.getPrecio_uf());
            ps.setString(10, p.getFecha_publicación());
            ps.setBoolean(11, p.isOpcion_visita());
            ps.setBoolean(12, p.isBodega());
            ps.setBoolean(13, p.isEstacionamiento());
            ps.setBoolean(14, p.isLogia());
            ps.setBoolean(15, p.isCocina_amoblada());
            ps.setBoolean(16, p.isAntejardin());
            ps.setBoolean(17, p.isPatio_trasero());
            ps.setBoolean(18, p.isPiscina());

            if (ps.executeUpdate() == 1) {
                dato = true;
            }
        } catch (Exception e) {
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (Exception e) {
            }
        }
        return dato;
    }

}
