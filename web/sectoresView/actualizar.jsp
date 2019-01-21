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
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <title>Lista de sectores</title>
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
                            <div class="panel-heading"><h3 class="  text-warning">Lista de sectores</h3></div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                      <table class="table table-hover table-responsive">
                                    <thead>
                                    <th>Codigo</th>
                                    <th>Nombre</th>
                                    <th>Provincia</th>
                                    <th>Canton</th>
                                    <th>Parroquia</th>
                                    <th>Recinto</th>
                                    <th>Dirección</th>
                                    <th>Correo electrónico</th>
                                    <th>Observación</th>
                                    <th>Responsable</th>
                                    <th>Acciones</th>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="listaSectores">
                                            <tr>
                                                <td><s:property value="idsector"/></td>
                                                <td><s:property value="nombre"/></td>
                                                <td><s:property value="parroquia.canton.provincia.nombreprovincia"/></td>
                                                <td><s:property value="parroquia.canton.nombrecanton"/></td>
                                                <td><s:property value="parroquia.descripcion"/></td>
                                                <td><s:property value="rcto"/></td>
                                                <td><s:property value="direccion"/></td>
                                                <td><s:property value="email"/></td>
                                                <td><s:property value="observacion"/></td>
                                                <td><s:property value="responsable"/></td>
                                                <s:url action="actualizarsector" var="actualizarsector">
                                                    <s:param name="idsector"><s:property value="idsector"/></s:param>
                                                </s:url>
                                                <td>                                                    
                                                    <s:a cssClass="btn btn-warning" data-toggle="tooltip" title="Editar sector" href="%{actualizarsector}"> 
                                                        <span class="glyphicon glyphicon-edit"></span>
                                                    </s:a>

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
                    <p>Miel 100% pura</p>
                    <img src="image/med1.jpg" class="img-thumbnail" />
                </div>
                <div class="well">   
                    <p>Jalea Real</p>
                    <img src="image/miel.jpg" class="img-thumbnail" />                   
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
