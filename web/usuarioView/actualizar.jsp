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
        <title>Actualizar usuarios</title>
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
                                <table class="table table-hover table-responsive">
                                    <thead>
                                    <th>Codigo</th>
                                    <th>Correo electrónico</th>
                                    <th>Nombres</th>
                                    <th>Apellidos</th>
                                    <th>Acciones</th>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="listaUsuarios">
                                            <tr>
                                                <td><s:property value="idusuario"/></td>
                                                <td><s:property value="email"/></td>
                                                <td><s:property value="nombre"/></td>
                                                <td><s:property value="apellido"/></td>
                                                <s:url action="actualiza" var="actualiza">
                                                    <s:param name="idusuario"><s:property value="idusuario"/></s:param>
                                                </s:url>
                                                <td>                                                    
                                                    <s:a cssClass="btn btn-warning" data-toggle="tooltip" title="Editar usuario" href="%{actualiza}"> 
                                                        <span class="glyphicon glyphicon-edit"></span>
                                                    </s:a>
                                                    <s:a cssClass="btn btn-danger" href="%{eliminar}" data-toggle="tooltip" title="Eliminar usuario"> 
                                                        <span class="glyphicon glyphicon-remove"></span>
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

        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
