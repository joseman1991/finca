<%-- 
    Document   : registroUsuario
    Created on : 30-sep-2018, 20:55:10
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
        <title>Registro de usuario</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2 col-sm-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8 col-sm-8">
                <div class="container col-md-12">

                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Registro de nuevo usuario</h3></div>
                            <div class="panel-body">
                                <form action="registrar" class="form-horizontal" method="post">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">Correo</label>
                                        <div class="col-sm-5">
                                            <input type="email" class="form-control" name="email" max="35" placeholder="correo electronico"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="clave">Contraseña</label>  
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control" name="pclave" max="16" placeholder="contraseña"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="clave">Repite Contraseña</label>  
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control" name="clave" max="16" placeholder="escrbie contraseña de nuevo"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="nombre">Nombres</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="nombre" max="35" placeholder="nombres"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="apellido">Apellidos</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="apellido" max="35" placeholder="apellidos"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="submit" class=" btn btn-info " value="Registrar"/> <br>
                                        <span><s:property value="mensaje"/></span>
                                    </div>


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
        <script type="text/javascript" src="assets/jQuery/jquery-3.3.1.min.js" ></script>
        <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js" ></script>
    </body>
</html>
