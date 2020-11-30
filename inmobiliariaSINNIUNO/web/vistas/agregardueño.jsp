<%-- 
    Document   : agregardueño
    Created on : 28-11-2020, 18:28:48
    Author     : seiko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<script src="../js/contenido.js"></script>
<div class="table-wrapper">
    <div class="table-title">
        <div class="row">
            <div class="col-sm-7">
                <h2>Gestor de <b>Productos</b></h2>
            </div>

            <div class="col-sm-6"> 

                <a href="#" onclick="javascript:agregarproducto();" class="btn btn-success">Agregar Producto</a>
                <!--<button id="btnNuevo" type="button" class="btn btn-success" data-toggle="modal">Añadir</button>-->    
            </div>
        </div>
        <table id="TablaCategoria" class="table table-striped table-hover">
            <thead>
                <tr>

                    <th>Codigo</th>
                    <th>Categoria</th>
                    <th>Producto</th>
                    <th>Descripcion</th>
                    <th>Precio</th>
                    <th>Accion</th>
                </tr>
            </thead> 

            <?php
            foreach ($resultado as $row) {

                ?>
                <tbody>

                    <tr>
                        <td><?php echo $codigo = $row['codigo_producto']; ?></td>
                        <td><?php echo $row['nombre_categoria']; ?></td>
                        <td><?php echo $row['nombre_producto']; ?></td>
                        <td><?php echo $row['descripcion_producto']; ?></td>
                        <td><?php echo $row['precio_producto']; ?></td>
                        <td>
                            <button type="button" class="btn btn-primary" href="javascript:;" onclick="editproducto(<?php echo $codigo;?>);">Editar</button>
                            <button type="button" class="btn btn-danger" href="javascript:;" onclick="deleteproducto(<?php echo $codigo;?>);">Eliminar</button>
                        <!--<span class="action"><a href="#" id="<?php echo $codigo; ?>" class="delete" title="Delete" style="color:red;">&nbsp;X</a></span>-->
                        </td>
                    </tr>           					 
                </tbody>
            <?php } ?>
        </table>

    </div>
</div>

