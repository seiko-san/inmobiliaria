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
 * @author Law
 */

public class Agregar_Propietario {
    
   
    Conexion cn = new Conexion();
    
    //CARGO LAS VARIABLES A UTILIZAR
    Connection conec;
    //String conec;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean Registrar(Usuario_Propietario usu) throws SQLException{
        
        String SQL = "Insert into usuarios(rut_usuario,nombre_usuario,fechanac_usuario,"
                + "correo_usuario,clave_usuario,telefono_usuario,numero_propiedad,id_sexo,id_perfil) "
                + "values('" + usu.getRut() + "','" + usu.getNombre() + "','" + usu.getFecha()+ "','" + usu.getCorreo()+ "','" + usu.getClave()+ "','" + usu.getTelefono()+ "','" + usu.getNumero_propiedad()+ "','" + usu.getSexo()+ "', 2)";
        try{
            conec = cn.getConnection();
            ps = conec.prepareStatement(SQL);
            ps.executeUpdate();
            
        }catch(SQLException e){
        
       System.out.print("ERROR SQL");
    }
        return true;
    }
}
