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
    
    public boolean crear_propiedad(Propiedades p){
            
            PreparedStatement ps = null;
            
            boolean dato = false;
            try{
                String sql = "INSERT INTO propiedades(m2_propiedad,"+
                        " valor_propiedad, arriendo_propiedad, venta_propiedad, fecha_propiedad,"+
                        " dirección_propiedad, descripcion_propiedad, rut_usuario) "+
                        "VALUES(?,?,?,?,?,?,?,?)";
                
                ps = getConnection().prepareStatement(sql);
                ps.setFloat(1, p.getM2());
                ps.setInt(2, p.getValor());
                ps.setInt(3, p.getArriendo());
                ps.setInt(4, p.getVenta());
                ps.setString(5, p.getFecha());
                ps.setString(6, p.getDireccion());
                ps.setString(7, p.getDescripcion());
                ps.setString(8, p.getRut());
                
                if(ps.executeUpdate()==1){
                    dato = true;
                }
            }catch(Exception e){
            }finally{
                try{
                    if (getConnection() !=null) getConnection().close();
                    if(ps != null)ps.close();
                }catch(Exception e){
                }
            }
            return dato;
}
//    public static void main(String[] args) {
//        
//        PropiedadesConect proc =new PropiedadesConect();
//        Propiedades p = new Propiedades();
//          
//         
//        float m2 = 125;
//        int valor = 100000;
//        int arriendo = 1;
//        int venta = 1;
//        String fecha = "2020-03-05";
//        String direccion = "santiago 123";
//        String descripcion = "local 1";
//        String rut = "1-6";
//        
//        
//        p.setM2(m2);
//        p.setValor(valor);
//        p.setArriendo(arriendo);
//        p.setVenta(venta);
//        p.setFecha(fecha);
//        p.setDireccion(direccion);
//        p.setDescripcion(descripcion);
//        p.setRut(rut);
//      
//
//        System.out.println(proc.crear_propiedad(p));
//    }
    
    
    
   
}
