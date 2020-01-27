<%-- 
    Document   : registroUsuario
    Created on : 30-sep-2018, 20:55:10
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
        <title>Entrar  al sistema</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 class="  text-warning">Iniciar sesión</h3></div>
                        <div class="panel-body">
                            <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                    </div>
                                </s:if>
                            <form action="check" class="form-horizontal" method="post" id="login">

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="email">Correo</label>   
                                    <div class="col-sm-5"><input type="email" class="form-control required" name="email" maxlength="35"/></div>
                                </div>

                                <div class="form-group">
                                    <label  class="control-label col-sm-4"  for="clave">Contraseña</label>   
                                    <div class="col-sm-5">  <input class="form-control required" type="password" name="clave" maxlength="16"/> </div>    
                                </div>
                                
                                <div class="form-group col-sm-4 pull-right"  >
                                    <input type="submit" class=" btn btn-primary " value="Entrar al sistema" id="btn-login"/> <br>                                        
                                </div>
                                
                                
                            </form> 
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
            <p>Todos los derechos reservados 2018</p>
        </footer>
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
         <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   
        <script type="text/javascript" src="usuarioView/js/login.js"></script>  
    </body>
</html>
