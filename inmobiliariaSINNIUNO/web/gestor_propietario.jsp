<%-- 
    Document   : gestor_inmueble
    Created on : 02-dic-2020, 23:32:41
    Author     : Law
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<body>
    <%
        Connection con;
        Conexion cn = new Conexion();
        PreparedStatement ps;
        ResultSet rs;

        String sql2 = "select usuarios.rut_usuario, numero_propiedad, nombre_sexo,usuarios.nombre_usuario, usuarios.fechanac_usuario, usuarios.correo_usuario, usuarios.clave_usuario, usuarios.telefono_usuario, sexo.nombre_sexo, perfiles.nombre_tipo from usuarios inner join perfiles on usuarios.id_perfil = perfiles.id_perfil inner join sexo on usuarios.id_sexo = sexo.id_sexo where perfiles.nombre_tipo = 'Gestor Inmobiliario Free';";

        con = cn.getConnection();
        ps = con.prepareStatement(sql2);

        rs = ps.executeQuery();
    %>
    <div class="row mt-5">
        <div class="col-12">
            <h3 class="mb-5">Listado de Usuarios :<br>Due�o de Inmueble o Propietario</h3>
            <table class="table table-info">
                <thead>
                    <tr>	 	
                        <th>Rut</th>
                        <th>Nombre</th>
                        <th>Fecha de Nacimiento</th>
                        <th>correo</th>
                        <th>sexo</th>
                        <th>Telefono</th>
                        <th>N�mero de propiedad</th>
                    </tr>
                </thead>
                <% 
                        while(rs.next()){
                        
                        %>
                        <tbody id="tabla">
                            <td><%=rs.getString("rut_usuario") %></td>
                            <td><%=rs.getString("nombre_usuario") %></td>
                            <td><%=rs.getString("fechanac_usuario") %></td>
                            <td><%=rs.getString("correo_usuario") %></td>
                            <td><%=rs.getString("nombre_sexo") %></td>
                            <td><%=rs.getString("telefono_usuario") %></td>
                            <td><%=rs.getString("numero_propiedad") %></td>
                        </tbody>
                        <% 

                        }
                        
                        %>
                    
            </table>

        </div>
    </div>
</body>
