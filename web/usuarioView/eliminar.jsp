<%-- 
    Document   : datos
    Created on : 01-oct-2018, 0:10:54
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
        <title>Actualizar datos</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Actualizar Datos de Usuario</h3></div>
                            <div class="panel-body">
                                <form action="actualizadatos" class="form-horizontal" method="post">
                                    <div class="form-group">
                                        <label for="email" class="control-label col-sm-4">Correo</label> 
                                        <div class="col-sm-5">
                                            <input type="email" class="form-control" name="email" max="35" value="<s:property value="usuario.email"/>" disabled/>
                                        </div>                                        
                                    </div>

                                    <div class="form-group">
                                        <label for="clave" class="control-label col-sm-4">Contraseña</label>
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control" name="pclave" max="16" value="<s:property value="usuario.clave"/>" disabled=""/>
                                        </div>                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="clave" class="control-label col-sm-4">Repite la Contraseña</label>
                                        <div class="col-sm-5">
                                             <input type="password" class="form-control" name="clave" max="16" value="<s:property value="usuario.clave"/>"disabled/>
                                        </div>                                       
                                    </div>

                                    <div class="form-group">
                                        <label for="nombre" class="control-label col-sm-4">Nombres</label>
                                        <div class="col-sm-5">
                                             <input type="text" class="form-control" name="nombre" max="35" value="<s:property value="usuario.nombre"/>"disabled/>
                                        </div>                                       
                                    </div>

                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Apellidos</label>   
                                        <div class="col-sm-5">
                                             <input type="text" class="form-control" name="apellido" max="35" value="<s:property value="usuario.apellido"/>"disabled/> 
                                        </div>                                       
                                    </div>
                                 
                                    <div class=" form-group col-sm-4 pull-right" >
                                        <input class="btn btn-danger" type="button" value="Eliminar"/> <br>
                                        <span><s:property value="mensaje"/></span>
                                    </div>

                                    <input type="hidden" name="idusuario" value="<s:property value="idusuario"/>"/>
                                    
                                </form>
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
