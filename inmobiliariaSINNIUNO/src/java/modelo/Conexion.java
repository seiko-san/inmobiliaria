/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author seiko
 */
public class Conexion {
    
    public String username = "root";
    public String password = "";
    public static final String hostname = "localhost";
    public String port = "3306";
    public String database = "inmobiliaria";
    public String driver = "com.mysql.jdbc.Driver";
    public String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database  ;

    public java.sql.Connection con;
    
    
      public Conexion(){

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException e) {
            System.out.println("Error Driver no encontrado");
        } catch (SQLException e) {
            System.out.println("Error en el SQL");
        }
    }
    public void conectar(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
            System.out.println("NO ENCONTRÉ LA LIBRERÍA");
        }
        
        try {
            con = DriverManager.getConnection("jdbc:mysql://"+hostname+":"+port+"/"+database+"?serverTimeZone=UTC&useSSL=false", username, password);
        } catch (SQLException ex) {
            System.out.println(ex);
            System.out.println("ERROR CON CONEXIÓN");
        }
    }
    public Connection getConnection() {
        return con;
    }
    public void desconectar() throws SQLException{
        if (this.con!=null && !this.con.isClosed()) {
            this.con.close();
        }       
    }
}
