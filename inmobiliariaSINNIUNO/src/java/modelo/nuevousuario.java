///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package modelo;
//
//import java.sql.PreparedStatement;
//
///**
// *
// * @author seiko
// */
//public class nuevousuario extends Conexion{
//    
//    public boolean crearusuario(Usuario_Free u){
//        
//       PreparedStatement ps = null;
//            
//            boolean dato = false;
//            try{
//                String sql = "INSERT INTO usuarios(rut_usuario,"+
//                        " nombre_usuario, apellido_usuario, tipo_usuario, fechanac_usuario,"+
//                        " correo, clave, tipo_sexo,telefono) "+
//                        "VALUES(?,?,?,?,?,?,?,?,?)";
//                
//                ps = getConnection().prepareStatement(sql);
//                ps.setString(1, u.getRut());
//                ps.setString(2, u.getNombre());
//                ps.setString(3, u.getApellido());
//                ps.setInt(4, u.getTipo_usuario());
//                ps.setString(5, u.getFechanac());
//                ps.setString(6, u.getCorreo());
//                ps.setString(7, u.getClave());
//                ps.setInt(8, u.getSexo());
//                ps.setInt(9, u.getTelefono());
//                
//                if(ps.executeUpdate()==1){
//                    dato = true;
//                }
//            }catch(Exception e){
//            }finally{
//                try{
//                    if (getConnection() !=null) getConnection().close();
//                    if(ps != null)ps.close();
//                }catch(Exception e){
//                }
//            }
//            return dato;
//}
//}



