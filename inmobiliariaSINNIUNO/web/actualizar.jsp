<%-- 
    Document   : actualizar
    Created on : 07-dic-2020, 3:15:02
    Author     : Law
--%>

 

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>

<%

    String rut = request.getParameter("rut");
    System.out.println("de la vista actualizar "+rut);
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    String SQL = "select * from usuarios where rut_usuario = '" + rut + "'";

    con = cn.getConnection();
    ps = con.prepareStatement(SQL);
    rs = ps.executeQuery();


%>

<div class="container">
    <div class="row mb-4">
        <div class="col-12"><br>
            <h1 class="text-center text-white">REGISTRAR <br>Dueño de Inmueble o Propietario</h1>
        </div>
    </div>

    <div  class="row">
        <div id="prop" class="card offset-md-3 col-12 col-md-6 shadow">
            <div  class="card-body">

                <form >

                    <% while (rs.next()) {
                        
                        
                            if (rs.getString("estado").equals("0")) {

                    %>
                    <div class="form-group">
                        <label for="estado">Estado Actual</label>
                        <input type="text" class="form-control"  value="Desactivado" disabled="">
                    </div>
                    
                    <%  } else if (rs.getString("estado").equals("1")) {

                    %>
                    <div class="form-group">
                        <label for="estado">Estado Actual</label>
                        <input type="text" class="form-control"  value="Activado" disabled="">
                    </div>
                    <%                                        

                        }
                    %>

                    <input type="hidden" id="rut" name="rut" value="<%out.print(rs.getString("rut_usuario"));%>">
                   

                    <%

                        }

                    %>

                    
                    
                    <div class="form-group">
                        <div class="input-group-prepend">
                            <label for="estado">Estado</label>
                        </div>
                        <select id="estado" class="custom-select">
                            <option>Seleccionar</option>
                            <option value="0">Desactivado</option>
                            <option value="1">Activado</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block" href="javascript:;" onclick="modificar($('#estado').val(), $('#rut').val());return false;">Actualizar</button>
                    
                    <!--<button type="submit" class="btn btn-primary btn-block">Registrar</button>-->
                </form>
            </div>
            <div id="resultado"></div>
        </div>
    </div>

</div>