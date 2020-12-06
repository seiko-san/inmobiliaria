/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

//import java.io.InputStream;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.Base64;
//import java.util.logging.Level;
//import java.util.logging.Logger;

/**
 *
 * @author seiko
 */
public class Usuario_Free {

    String rut;
    String nombre;
    String fechanac;
    String correo;
    int sexo;
    String clave;
    String telefono;
    String antecedentes;

    public Usuario_Free() {
    }

    public Usuario_Free(String rut, String nombre, String fechanac, String correo, int sexo, String clave, String telefono) {
        this.rut = rut;
        this.nombre = nombre;
        this.fechanac = fechanac;
        this.correo = correo;
        this.sexo = sexo;
        this.clave = clave;
        this.telefono = telefono;
       
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechanac() {
        return fechanac;
    }

    public void setFechanac(String fechanac) {
        this.fechanac = fechanac;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getSexo() {
        return sexo;
    }

    public void setSexo(int sexo) {
        this.sexo = sexo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getAntecedentes() {
        return antecedentes;
    }

    public void setAntecedentes(String antecedentes) {
        this.antecedentes = antecedentes;
    }
    
    
    
    
    

//    public String guardarPropiedad() {
//
//        Statement st;
//        Conexion conexion = new Conexion();
//        String sql = "INSERT INTO propiedad VALUES (" + rut + ",'" + nombre + "','" + apellido + "','" + tipo_usuario + "','" + fechanac + "','" + correo + "','" + sexo + "','" + clave + "','" + telefono + "','" + perfil + "','" + pdf + "')";
//        try {
//            conexion.conectar();
//            st = conexion.getConnection().createStatement();
//            st.executeUpdate(sql);
//            conexion.desconectar();
//            return "USUARIO FUE GUARDADO CON ÉXITO";
//        } catch (SQLException ex) {
//            Logger.getLogger(Usuario_Free.class.getName()).log(Level.SEVERE, null, ex);
//            return "HA OCURRIDO UN ERROR AL GUARDAR LOS DATOS";
//        }
//
//    }
//
//    public ArrayList<Usuario_Free> obtenerPropiedades() {
//
//        ArrayList<Usuario_Free> propiedades = new ArrayList<>();
//
//        Statement st;
//        Conexion conexion = new Conexion();
//        String sql = "SELECT * FROM usuarios;";
//        conexion.conectar();
//
//        try {
//            st = conexion.getConnection().createStatement();
//            ResultSet rs = st.executeQuery(sql);
//            while (rs.next()) {
//                String rut = rs.getString("rut");
//                String nombre = rs.getString("nombre");
//                String apellido = rs.getString("apellido");
//                int tipo_usuario = rs.getInt("tipo_usuario");
//                String fechanac  = rs.getString("fechanac");
//                String correo = rs.getString("fechanac");
//                int sexo = rs.getInt("sexo");
//                String clave = rs.getString("clave");
//                int telefono = rs.getInt("telefono");
//                int perfil = rs.getInt("perfil");
//                byte[] pdf = rs.getBytes("pdf");
//
//                Usuario_Free usuario = new Usuario_Free(rut, nombre, apellido, tipo_usuario, fechanac, correo, sexo,clave,telefono,perfil);
//
//                if (pdf != null) {
//                    String imageEncode = Base64.getEncoder().encodeToString(pdf);
//                    usuario.setPdf(imageEncode);
//                }
//                propiedades.add(usuario);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Usuario_Free.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return propiedades;
//    }
//
//    public String guardarImagen(InputStream inputStream, int rut) {
//        Conexion conexion = new Conexion();
//        conexion.conectar();
//        Connection conn = conexion.getConnection();
//
//        String sql = "UPDATE `usuarios` SET `certificado_antecedente`=? WHERE `id`=?;";
//
//        try {
//            PreparedStatement statement = conn.prepareStatement(sql);
//            if (inputStream != null) {
//                statement.setBlob(1, inputStream);
//            }
//            statement.setInt(2, rut);
//            statement.executeUpdate();
//            conexion.desconectar();
//            return "IMAGEN FUE GUARDADO CON ÉXITO";
//        } catch (SQLException ex) {
//            Logger.getLogger(Usuario_Free.class.getName()).log(Level.SEVERE, null, ex);
//            return "HA OCURRIDO UN ERROR AL GUARDAR LOS DATOS";
//        }
//    }

}
