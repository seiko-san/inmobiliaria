/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author seiko
 */
public class UsuarioConect implements Validar {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;

    @Override
    public int validar(Usuario usu) {
        String sql = "select * from usuarios where rut_usuario = ? and clave = ? ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, usu.getRut());
            ps.setString(2, usu.getClave());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                usu.setRut(rs.getString("rut_usuario"));
                usu.setClave(rs.getString("clave"));
            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            return 0;
        }
    }

    @Override
    public Usuario listarID(String rut) {

        String sql = "select * from usuarios";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            while (rs.next()) {
                
  
                rs.getString("rut_usuario");
                rs.getString("nombre_usuario");
                rs.getString("apellido_usuario");
                rs.getString("tipo_usuario");
                rs.getString("fechanac_usuario");
                rs.getString("correo");
                rs.getString("clave");
                rs.getString("tipo_sexo");
                rs.getString("telefono");
                r = r + 1;

            }
        } catch (SQLException e) {
            
        }
        return null;
    }}
    


