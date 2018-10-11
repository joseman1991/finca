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
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet">
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <title>Listadodo de mantenimientos</title>
    </head>
    <body >


        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 class="text-warning">Listado de mantenimiento</h3></div>
                        <div class="panel-body">
                            <table class="table table-hover table-responsive table-bordered">
                                <thead>
                                <th>Codigo</th>
                                <th>Tipo</th>
                                <th>Fecha</th>
                                <th>Obrero</th>
                                <th>Colmena</th>
                                <th>Aliementacion</th>             
                                <th>Acciones</th>
                                </thead>
                                <tbody>
                                    <s:iterator value="listaMantenimientos">
                                        <tr>
                                            <td><s:property value="idmantenimiento"/></td>
                                            <td><s:property value="tipo"/></td>
                                            <td><s:date name="fecha" format="EE, dd/MMM/yyyy"/></td>
                                            <td><s:property value="idobrero"/></td>                   
                                            <td><s:property value="colmena.descripcion"/></td>                   
                                            <td><s:property value="alimentacion"/></td> 
                                            <td>
                                                <form action="actualizamantenimiento" method="post">
                                                    <input type="hidden" value="<s:property value="idmantenimiento"/>" name="idmantenimiento"/>
                                                    <button class="btn btn-warning btn-xs " data-toggle="tooltip" title="Editar sector" type="submit">
                                                     <span class="glyphicon glyphicon-edit"></span>
                                                    </button>
                                                </form>  
                                            </td>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Otro contenido</p>
                </div>
                <div class="well">
                    <p>Mas contenido</p>
                </div>
            </div>
        </div>


        <footer class="container-fluid text-center">
            <p>Footer Text</p>
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
