/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Law
 */
public class Agregar_Inmobiliario {
    
    Conexion cn = new Conexion();
    Connection conec;
    PreparedStatement ps;
    ResultSet rs;
    
    public void GuardarInmobiliario(Usuario_Free use, InputStream inputstream){
        
        String SQL = "Insert into usuarios(rut_usuario,nombre_usuario,fechanac_usuario,"
                + "correo_usuario,clave_usuario,telefono_usuario,certificado_antecedente,id_sexo,id_perfil) values(?,?,?,?,?,?,?,?,3)";
        
        try{
            conec = cn.getConnection();
            ps = conec.prepareStatement(SQL);
            ps.setString(1, use.getRut());
            ps.setString(2, use.getNombre());
            ps.setString(3, use.getFechanac());
            ps.setString(4, use.getCorreo());
            ps.setString(5, use.getClave());
            ps.setString(6, use.getTelefono());
            
            if(inputstream != null){
                ps.setBlob(7, inputstream);
            }
            
            ps.setInt(8, use.getSexo());
            
            ps.execute();
            
            
            
        }catch(SQLException ex){
            System.out.println(ex);
        }
        
        
    }
    
    
}
