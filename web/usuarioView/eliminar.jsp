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
                            <s:if test="usuario.idestado==1">
                                <div class="panel-heading"><h3 class="  text-warning">Desactivar Usuario</h3></div>
                            </s:if>
                            <s:else>
                                <div class="panel-heading"><h3 class="  text-warning">Activar Usuario</h3></div>
                            </s:else>
                            <div class="panel-body">
                                <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>. 
                                        <s:property value="rediret"></s:property>
                                    </div>
                                </s:if>   
                                <form action="cambioestado" class="form-horizontal" method="post">
                                    <div class="form-group">
                                        <label for="email" class="control-label col-sm-4">Correo</label> 
                                        <div class="col-sm-5">
                                            <input type="email" class="form-control" name="email" max="35" value="<s:property value="usuario.email"/>" disabled/>
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
                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Perfil</label>   
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="apellido" max="35" value="<s:property value="usuario.perfil.descripcion"/>"disabled/> 
                                        </div>                                       
                                    </div>


                                    <div class=" form-group col-sm-4 pull-right" >
                                        <s:a href="%{actualizar}" cssClass="btn btn-warning">Regresar</s:a>
                                        <s:if test="usuario.idestado==1">
                                            <input class="btn btn-danger" type="submit" value="Desactivar"/> <br>
                                            <input type="hidden" name="idestado" value="2"/>
                                        </s:if>
                                        <s:else>
                                            <input class="btn btn-info" type="submit" value="Activar"/> <br>   
                                            <input type="hidden" name="idestado" value="1"/>
                                        </s:else>

                                    </div>

                                    <input type="hidden" name="idusuario" value="<s:property value="usuario.idusuario"/>"/>

                                </form>
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
            <p>Footer Text</p>
        </footer>



        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
