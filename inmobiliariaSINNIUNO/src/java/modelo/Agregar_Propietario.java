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
                + "correo_usuario,clave_usuario,telefono_usuario,numero_propiedad,estado, id_sexo,id_perfil) "
                + "values('" + usu.getRut() + "','" + usu.getNombre() + "','" + usu.getFecha()+ "','" + usu.getCorreo()+ "','" + usu.getClave()+ "','" + usu.getTelefono()+ "','" + usu.getNumero_propiedad()+ "' ,0,'" + usu.getSexo()+ "', 2)";
        try{
            conec = cn.getConnection();
            ps = conec.prepareStatement(SQL);
            ps.executeUpdate();
            
        }catch(SQLException e){
        
       System.out.print("ERROR SQL");
    }
        return true;
    }
    
    
    public boolean ActualizarEstado(Usuario_Propietario usu) throws SQLException{
        
        //String SQL = "UPDATE usuarios SET estado = '"+ usu.getEstado() +"' WHERE rut_usuario = '"+ usu.getRut() +"'";
        String SQL1 = "UPDATE usuarios SET estado = ? WHERE rut_usuario = ?";
      
            conec = cn.getConnection();
            ps = conec.prepareStatement("UPDATE usuarios SET estado = ? WHERE rut_usuario = ?");
            ps.setString(1, usu.getEstado());
            ps.setString(2, usu.getRut());
            ps.executeUpdate();
            
       
  
        return true;
    }
}
