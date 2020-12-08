<%-- 
    Document   : gestor_inmobiliario
    Created on : 06-dic-2020, 17:53:35
    Author     : Law
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>

        <%
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;

            String SQL = "select usuarios.rut_usuario, usuarios.nombre_usuario, usuarios.fechanac_usuario, usuarios.correo_usuario, usuarios.clave_usuario, usuarios.telefono_usuario, sexo.nombre_sexo, perfiles.nombre_tipo, usuarios.certificado_antecedente from usuarios inner join perfiles on usuarios.id_perfil = perfiles.id_perfil inner join sexo on usuarios.id_sexo = sexo.id_sexo where perfiles.nombre_tipo = 'Gestor Inmobiliario Free'";

            con = cn.getConnection();
            ps = con.prepareStatement(SQL);

            rs = ps.executeQuery();
        %>


            <div class="row mb-4">
                <div class="col-12"><br>
                    <h3 class="mb-5">Listado de Usuarios :<br>Usuario Inmobiliario Free</h3>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-12">
                    <table class="table table-info">
                        <thead>
                            <tr>
                                <th>Rut Usuario</th>
                                <th>Nombre Usuario</th>
                                <th>Fecha Nacimiento</th>
                                <th>Correo Usuario</th>
                                <th>Clave</th>
                                <th>Telefono</th>
                                <th>Sexo</th>
                                <th>Perfil</th>
                                <th>Certificado Antecedente</th>
                            </tr>
                        </thead>
                        <% 
                        while(rs.next()){
                            
                         //Blob fileData = rs.getBlob("certificado_antecedente");
                        
                        %>
                        <tbody id="tabla">
                            <td><%=rs.getString("rut_usuario") %></td>
                            <td><%=rs.getString("nombre_usuario") %></td>
                            <td><%=rs.getString("fechanac_usuario") %></td>
                            <td><%=rs.getString("correo_usuario") %></td>
                            <td><%=rs.getString("clave_usuario") %></td>
                            <td><%=rs.getString("telefono_usuario") %></td>
                            <td><%=rs.getString("nombre_sexo") %></td>
                            <td><%=rs.getString("nombre_tipo") %></td>
                            <td><a href="descarga.jsp?rut=<%out.print(rs.getString("rut_usuario"));%>" target="_blank">Ver PDF</a></td>
                        </tbody>
                        <% 

                        }
                        
                        %>
                    </table>
                </div>

            </div>
