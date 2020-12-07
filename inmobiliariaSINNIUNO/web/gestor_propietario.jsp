<%-- 
    Document   : gestor_inmueble
    Created on : 02-dic-2020, 23:32:41
    Author     : Law
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>

<%
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    String SQL = "select usuarios.rut_usuario, numero_propiedad, nombre_sexo,usuarios.nombre_usuario, usuarios.fechanac_usuario, usuarios.correo_usuario, usuarios.clave_usuario, usuarios.telefono_usuario, sexo.nombre_sexo, perfiles.nombre_tipo, usuarios.estado from usuarios inner join perfiles on usuarios.id_perfil = perfiles.id_perfil inner join sexo on usuarios.id_sexo = sexo.id_sexo where perfiles.nombre_tipo = 'Dueño de Inmueble o Propietario';";

    con = cn.getConnection();
    ps = con.prepareStatement(SQL);

    rs = ps.executeQuery();

%>
<div class="row mt-5">
    <div class="col-12">
        <h3 class="mb-5">Listado de Usuarios :<br>Dueño de Inmueble o Propietario</h3>
        <table class="table table-info">
            <thead>
                <tr>	 	
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Fecha de Nacimiento</th>
                    <th>correo</th>
                    <th>sexo</th>
                    <th>Telefono</th>
                    <th>Número de propiedad</th>
                    <th>Estado</th>
                    <th>Accion</th>
                    
                </tr>
            </thead>
            <%                while (rs.next()) {


            %>
            <tbody id="tabla">
            <td><%=rs.getString("rut_usuario")%></td>
            <td><%=rs.getString("nombre_usuario")%></td>
            <td><%=rs.getString("fechanac_usuario")%></td>
            <td><%=rs.getString("correo_usuario")%></td>
            <td><%=rs.getString("nombre_sexo")%></td>
            <td><%=rs.getString("telefono_usuario")%></td>
            <td><%=rs.getString("numero_propiedad")%></td>
            


            <%
                //String estado = rs.getString("estado");
                if (rs.getString("estado").equals("0")) {
            %>
            <td><i class="far fa-times-circle"></i></i></td>
            <%
            } else {
            %>
            <td><i class="far fa-check-circle"></i></td>
            <%
                }
            %>
            <td><a  href="javascript:;" onclick="editar(<%out.print(rs.getString("rut_usuario"));%>);" ><img src="img/editar.svg" height="20" width="20" /></a></td> 
            
            </tbody>
            <%                }

            %>
            

        </table>

    </div>
</div>

