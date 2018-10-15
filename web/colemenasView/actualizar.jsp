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
        <title>Lista de Colmenas</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2 col-sm-2 sidenav">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8 col-lg-8">
                <div class="container col-md-12">

                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 class="text-warning">Lista de colmenas</h3></div>
                        <div class="panel-body">
                            <table class="table table-hover table-responsive table-bordered table-sm">
                                <thead>
                                <th>Cod.</th>
                                <th>Sector</th>
                                <th> Marcos</th>
                                <th>Tipo</th>
                                <th>Descripción</th>
                                <th>Alza</th>
                                <th>Origen</th>
                                <th>Pisos</th>
                                <th>Precio</th>
                                <th>Fecha</th>
                                <th>ID Reina</th>
                                <th>Fecha de reina</th>
                                <th>Acciones</th>
                                </thead>
                                <tbody>
                                    <s:iterator value="listaColmenas">
                                        <tr>
                                            <td><s:property value="idcolmena"/></td>
                                            <td><s:property value="sector.nombre"/></td>
                                            <td><s:property value="nmarcos"/></td>
                                            <td><s:property value="tipo"/></td>
                                            <td><s:property value="descripcion"/></td>
                                            <td><s:property value="nalza"/></td>
                                            <td><s:property value="origen.descripcion"/></td>
                                            <td><s:property value="npisos"/></td>                                                
                                            <td><s:property value="precio"/></td>
                                            <td><s:date name="fecha" format="dd/MMM/yyyy"/></td>
                                            <td><s:property value="idreina"/></td>
                                            <td><s:date name="fechareina" format="dd/MMM/yyyy"/></td>

                                            <s:url action="actualizarcolmena" var="actualizarcolmena">
                                                <s:param name="idcolmena"><s:property value="idcolmena"/></s:param>
                                            </s:url>
                                            <td>
                                                <div class=" row">
                                                    <div class="col-xs-1">
                                                        <s:a cssClass="btn btn-warning btn-sm" data-toggle="tooltip" title="Editar colmena" href="%{actualizarcolmena}"> 
                                                            <span class="glyphicon glyphicon-edit"></span>
                                                        </s:a>
                                                    </div> 
                                                    <div class="col-xs-1 col-md-offset-1">

                                                        <form action="cosechar" method="post">
                                                            <input type="hidden" name="idcolmena" value="<s:property value="idcolmena"/>"/>
                                                            <button class="btn btn-success btn-sm" type="submit" data-toggle="tooltip" title="Cosechar Colmena"> 
                                                                <span class="glyphicon glyphicon-ok"></span>
                                                            </button> 
                                                        </form>
                                                    </div> 
                                                </div> 

                                                <div class=" row">
                                                    <div class="col-xs-1 ">
                                                        <form action="agregarmantenimiento" method="post">
                                                            <input type="hidden" name="idcolmena" value="<s:property value="idcolmena"/>"/>
                                                            <button class="btn btn-default btn-sm" type="submit" data-toggle="tooltip" title="Mantenimiento de Colmena"> 
                                                                <span class="glyphicon glyphicon-cog"></span>
                                                            </button>
                                                        </form>
                                                    </div> 

                                                    <div class="col-xs-1 col-md-offset-1">
                                                        <form action="agregarmantenimiento" method="post">
                                                            <input type="hidden" name="idcolmena" value="<s:property value="idcolmena"/>"/>
                                                            <button class="btn btn-primary btn-sm" type="submit" data-toggle="tooltip" title="Reportes"> 
                                                                <span class="glyphicon glyphicon-list-alt"></span>
                                                            </button>
                                                        </form>
                                                    </div> 
                                                </div>                                                    
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
            <p>Derechos Reservado 2018</p>
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
