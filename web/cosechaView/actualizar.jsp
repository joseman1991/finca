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
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
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
                        <div class="panel-heading"><h3 class="text-warning">Lista general de ganado</h3></div>
                        <div class="panel-body">
                            <div class="row">
                                <form class="form-inline col-md-12" action="imprimir" method="post" target="_blank">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Desde Fecha</label>   
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" name="fecha" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>" max="45" required="" id="datepicker" readonly=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Hasta Fecha</label>   
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" name="fecha1" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>" max="45" required="" id="datepicker2" readonly=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group">                                        
                                        <div class="col-sm-6">
                                            <button  class="btn btn-primary" type="button" id="buscar">Buscar
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button> 
                                        </div>
                                    </div>
                                    <div class="form-group">                                        
                                        <div class="col-sm-6">
                                            <button  class="btn btn-warning" type="submit"  max="45">Imprimir
                                                <span class="glyphicon glyphicon-print"></span>
                                            </button> 
                                        </div>
                                    </div>
                                </form>
                            </div><hr>
                            <div class="table-responsive">
                                <table class="table table-hover table-responsive table-bordered">
                                       <thead>
                                    <th>Codigo</th>
                                    <th>Nombre</th>
                                    <th>Tipo</th>
                                    <th>Raza</th>
                                    <th>Edad</th>                                  
                                    <th>Observación</th>                                  
                                    <th>Fecha</th>
                                    </thead>
                                    <tbody id="tbody">
                                        <s:iterator value="listGanados">
                                            <tr>
                                                <td><s:property value="idganado"/></td>
                                                <td><s:property value="nombre"/></td>
                                                <td><s:property value="tipo"/></td>
                                                <td><s:property value="raza"/></td>
                                                <td><s:property value="edad"/></td>
                                                <td><s:property value="observacion"/></td>                                                
                                               
                                                <td>                                                    
                                                    <s:property value="fecha"/>

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
            <p>Todos los Derechos Resevados 2018</p>
        </footer>





        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="cosechaView/js/cosecha.js"></script>

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

                $('#datepicker').datepicker({
                    uiLibrary: 'bootstrap',
                    format: 'yyyy-mm-dd'
                });

                $('#datepicker2').datepicker({
                    uiLibrary: 'bootstrap',
                    format: 'yyyy-mm-dd'
                });

            });
        </script>

    </body>
</html>
