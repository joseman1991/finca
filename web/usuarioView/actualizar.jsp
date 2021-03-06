<%-- 
    Document   : actualizar
    Created on : 30-sep-2018, 23:45:10
    Author     : 
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <title>Lista de usuarios</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2 col-sm-2 sidenav">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8 col-lg-8">
                <div class="container col-md-12">
                    <div class="col-md-12 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Lista de usuarios</h3></div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-hover table-responsive">
                                        <thead>
                                        <th>Codigo</th>
                                        <th>Correo electrónico</th>
                                        <th>P. Nombre</th>
                                        <th>S. Nombre</th>
                                        <th>Apellido P.</th>
                                        <th>Apellido M.</th>
                                        <th>Perfil</th>
                                        <th>Direccion</th>
                                        <th>Telefono</th>
                                        <th>Cedula</th>
                                        <th>Acciones</th>
                                        </thead>
                                        <tbody>
                                            <s:iterator value="listaUsuarios">
                                                <tr>
                                                    <td><s:property value="idusuario"/></td>
                                                    <td><s:property value="email"/></td>
                                                    <td><s:property value="nombre"/></td>
                                                    <td><s:property value="nombre2"/></td>
                                                    <td><s:property value="apellido"/></td>
                                                    <td><s:property value="apellido2"/></td>
                                                    <td><s:property value="perfil.descripcion"/></td>
                                                    <td><s:property value="direccion"/></td>
                                                    <td><s:property value="telefono"/></td>
                                                    <td><s:property value="cedula"/></td>
                                                    <s:url action="actualiza" var="actualiza">
                                                        <s:param name="idusuario"><s:property value="idusuario"/></s:param>
                                                    </s:url>
                                                    <s:url action="eliminar" var="eliminar">
                                                        <s:param name="idusuario"><s:property value="idusuario"/></s:param>
                                                    </s:url>
                                                    <td>                                                    
                                                        <s:a cssClass="btn btn-warning" data-toggle="tooltip" title="Editar usuario" href="%{actualiza}"> 
                                                            <span class="glyphicon glyphicon-edit"></span>
                                                        </s:a>
                                                        <s:if test="idestado==1" >
                                                            <s:a cssClass="btn btn-danger" href="%{eliminar}" data-toggle="tooltip" title="Desactivar usuario"> 
                                                                <span class="glyphicon glyphicon-ban-circle"></span>
                                                            </s:a>
                                                        </s:if>
                                                        <s:else>
                                                            <s:a cssClass="btn btn-info" href="%{eliminar}" data-toggle="tooltip" title="Activar usuario"> 
                                                                <span class="glyphicon glyphicon-check"></span>
                                                            </s:a>
                                                        </s:else>
                                                    </td>
                                                </tr>
                                            </s:iterator>
                                        </tbody>
                                    </table>
                                </div>

                            </div>                    
                        </div>                    
                    </div>                    
                </div>
            </div>

             <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Agricultura</p>
                    <img src="image/granero-aerogenerador_18591-54816.jpg" class="img-thumbnail" />
                </div>
                <div class="well">   
                    <p>Ganado</p>
                    <img src="image/ganado-vacuno-acaba-atmosfera-1.jpg" class="img-thumbnail" />                   
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Todos los Derechos Reservados 2018</p>
        </footer>


        <script >
            $(document).ready(function () {
                $('.table').DataTable({
                    "language": {
                        "lengthMenu": "Mostrando _MENU_ registro por página",
                        "zeroRecords": "Lo sentimos - no hay resultados",
                        "info": "Mostrando página _PAGE_ de _PAGES_",
                        "infoEmpty": "No hay registros",
                        "infoFiltered": "(filtrado de _MAX_ registros totales)",
                        "paginate": {
                            "first": "Primero",
                            "last": "'Last'Ultimo",
                            "next": "Siguiente",
                            "previous": "Anterior"
                        },
                        "search": "Buscar"

                    }
                });
            });
        </script>
    </body>
</html>
