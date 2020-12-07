<%-- 
    Document   : Formulario_Propietario
    Created on : 07-dic-2020, 19:36:04
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
        %>
<div class="w3-main" style="margin-left:340px;margin-right:40px">



            <!-- Designers -->
            <form id="NuevoInmueble" class="form" id="FrmAgregarINM" method="post" action="Agregar_Inmueble">
                <div class="w3-container" id="designers" style="margin-top:75px">
                    <h1 class="w3-xxxlarge w3-text-red"><b>Agregar Nuevo Inmueble</b></h1>
                    <hr style="width:50px;border:5px solid red" class="w3-round">

                    <div class="row register-form">
                        <div class="col-md-6 shadow">

                            <div class="form-group">
                                <label class="text" for="tipo">Tipo Propiedad</label>
                                <select class="form-control" id="tipo" name="tipo">
                                    <option value="0">Selecciona Tipo Propiedad</option>
                                    <%                                        String sql2 = "select * from tipo_propiedad;";
                                        try {
                                            con = cn.getConnection();
                                            ps = con.prepareStatement(sql2);

                                            rs = ps.executeQuery();

                                            while (rs.next()) {
                                                out.println("<option value= " + rs.getString(1) + ">" + rs.getString(2) + "</option>");

                                            }

                                        } catch (Exception e) {
                                            out.println(e.toString());
                                        }


                                    %>
                                </select>
                            </div>

                            <div class="form-group" >
                                <label class="text" for="fotos">Ingrese Fotografias:</label>
                                <input type="file"name="file[]" id="fotos" class="form-contralue" multiple/>
                            </div>

                            <div class="form-group">
                                <label class="text" for="fecha">Descripcion:</label>
                                <textarea class="form-control" name="descripcion" id="descripcion"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="text" for="correo">Cantidad de baños:</label>
                                <input type="number" class="form-control" name="banos"  id="banos" />
                            </div>
                            <div class="form-group">
                                <label class="text" for="dormitorios">Cantidad de Dormitorios:</label>
                                <input type="number" class="form-control" name="dormitorios" id="clave" />
                            </div>
                            <div class="form-group">
                                <label class="text" for="areatotal">Área Total del Terreno:</label>
                                <input type="float" class="form-control" id="areatotal" name="areatotal">
                            </div>
                            <div class="form-group">
                                <label class="text" for="areacasa">Área Construida:</label>
                                <input type="text" class="form-control" name="areacasa"  id="areacasa" />
                            </div>
                            <div>
                                <label class="text" for="precios">Precios:</label>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">$</span>
                                </div>
                                <input type="text" class="form-control" id="preciopeso" aria-label="precio" aria-describedby="basic-addon1">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">UF</span>
                                </div>
                                <input type="text" class="form-control" id="preciouf" aria-label="preciouf" aria-describedby="basic-addon1">
                            </div>
                            <div class="form-group">
                                <label class="text" for="fecha">Fecha de Publicacion:</label>
                                <input type="date" class="form-control" name="fecha"  id="fecha" />
                            </div>
                        </div>
                        <div class="col-md-6 shadow">

                            <div class="form-group">
                                <label class="text" for="visita">Opcion de visita:</label>
                                <select class="form-control" id="visita" name="visita">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="visita">Opcion de visita:</label>
                                <select class="form-control" id="visita" name="visita">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="bodega">Posee Bodega:</label>
                                <select class="form-control" id="bodega" name="bodega">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="estacionamiento">Posee Estacionamiento:</label>
                                <select class="form-control" id="estacionamiento" name="estacionamiento">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="logia">Posee Logia</label>
                                <select class="form-control" id="logia" name="logia">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="cocina">Equipa con cocina amoblada:</label>
                                <select class="form-control" id="cocina" name="cocina">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="jardin">Posee Antejardin</label>
                                <select class="form-control" id="jardin" name="jardin">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="patio">Posee Patio Trasero</label>
                                <select class="form-control" id="patio" name="patio">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="text" for="piscina">Posee Piscina</label>
                                <select class="form-control" id="piscina" name="piscina">
                                    <option value="0">Si</option>
                                    <option value="1">No</option>
                                </select>
                            </div>
                            <br>
                            <button type="submit" name="accion" class="btn btn-primary " value="Crear">Agregar Inmobiliario</button>
                            <!--<button type="submit" class="btn btn-primary btn-block" href="javascript:;" onclick="addinmobiliario($('#rut').val(), $('#nombre').val(), $('#fecha_nacimiento').val(), $('#correo').val(), $('#telefono').val(), $('#sexo').val(), $('#archivos').val(), $('#clave').val());return false;">Registrar</button>-->
                            <br>
                        </div>
                    </div>
                    <br><br><br>

                </div>
            </form>

        </div>