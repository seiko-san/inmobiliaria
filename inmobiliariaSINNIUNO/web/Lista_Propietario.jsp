<%-- 
    Document   : Lista_Propietario
    Created on : 07-dic-2020, 19:54:21
    Author     : Law
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>

<%
    String rut = request.getParameter("rut");
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    String SQL = "select * from propiedad where rut_usuario = '" + rut + "'";

    con = cn.getConnection();
    ps = con.prepareStatement(SQL);

    rs = ps.executeQuery();

%>






<div class="row mt-5">
    <div class="col-12">
        <h3 class="mb-5">Listado Antedecentes</h3>
        <table class="table table-info">
            <thead>
                <tr>	 	
                    <th>Tipo Propiedad</th>
                    <th>Fotos</th>
                    <th>Descripcion</th>
                    <th>Cantidad Baños</th>
                    <th>Cantidad Dormitorio</th>
                    <th>Area Total Terreno</th>
                    <th>Area Construida</th>
                    <th>Precio UF</th>
                    <th>Fecha Publicado</th>
                    <th>Opcion Visita</th>
                    <th>Bodega</th>
                    <th>Estacionamiento</th>
                    <th>Logia</th>
                    <th>Cocina Amueblada</th>
                    <th>Antejardin</th>
                    <th>Patio Trasero</th>
                    <th>Piscina</th>
 
                </tr>
            </thead>
            <%                while (rs.next()) {


            %>
            <tbody id="tabla">
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>
            <td><%=rs.getString("")%></td>

            </tbody>
            <%                }

            %>
            

        </table>

    </div>
</div>
