<%-- 
    Document   : actualizar
    Created on : 30-sep-2018, 23:45:10
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">

        <title>Lista de cosechas</title>
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
                        <div class="panel-heading"><h3 class="text-warning">Lista de cosechas</h3></div>
                        <div class="panel-body">
                            <table class="table table-hover table-responsive table-bordered">
                                <thead>
                                <th>Codigo</th>
                                <th>Colmena</th>
                                <th>Obrero</th>
                                <th>Marcos</th>
                                <th>Peso vacío</th>
                                <th>Peso lleno</th>
                                <th>Fecha</th>
                                <th>Tipo alza</th>
                                <th>Acciones</th>
                                </thead>
                                <tbody>
                                    <s:iterator value="lista">
                                        <tr>
                                            <td><s:property value="idcosecha"/></td>
                                            <td><s:property value="colmena.descripcion"/></td>
                                            <td><s:property value="idobrero"/></td>
                                            <td><s:property value="marcos"/></td>                   
                                            <td><s:property value="pesovacio"/></td>                   
                                            <td><s:property value="pesolleno"/></td>                   
                                            <td><s:date name="fecha" format="EE,dd-MMM-yyyy"/></td>                   
                                            <td><s:property value="tipoalza"/></td>                   
                                            <td>
                                                <form action="editCosecha" method="post">
                                                    <input type="hidden" value="<s:property value="idcosecha"/>" name="idcosecha"/>
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





        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
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
