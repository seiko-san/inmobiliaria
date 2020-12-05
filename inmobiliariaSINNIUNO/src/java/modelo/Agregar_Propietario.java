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
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean Registrar(Usuario_Propietario usu) throws SQLException{
        
        String sql = "Insert into sumas(valor1,valor2,suma) values('" + o.getValor1() + "','" + o.getValor2()+ "','" + o.getSuma()+ "')";
        try{
            conec = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        }catch(SQLException e){
        
       System.out.print("ERROR SQL");
    }
        return true;
    }
}
