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
                                <form action="registrar" class="form-horizontal" method="post" id="formulario">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idperfil">Perfil</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idperfil">
                                                <s:iterator value="listaPerfiles">
                                                    <option value="<s:property value="idperfil"/>">
                                                        <s:property value="descripcion"/>
                                                    </option>
                                                </s:iterator>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">Correo</label>
                                        <div class="col-sm-5">
                                            <input type="email" class="form-control required" name="email"  maxlength="35" placeholder="correo electronico" id="email" autocomplete="off"/>
                                            <label class="error" style="display: none" id="userError"><strong>Correo ya se encuentra registrado</strong></label>
                                        
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="clave">Contraseña</label>  
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control required" minlength="5" name="pclave" maxlength="16" placeholder="contraseña" id="pclave"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="clave">Repite Contraseña</label>  
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control required" name="clave" maxlength="16" placeholder="escrbe la contraseña de nuevo" id="clave"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="nombre">Nombres</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="nombre" maxlength="35" placeholder="nombres"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="apellido">Apellidos</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="apellido" maxlength="35" placeholder="apellidos"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="button" class=" btn btn-info " value="Registrar" id="boton"/> <br>
                                        <span class="text-success"><strong><s:property value="mensaje"/></strong></span>
                                    </div>

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
            </div>        </div>

        <footer class="container-fluid text-center">
            <p>Footer Text</p>
        </footer>
        <script type="text/javascript" src="assets/jQuery/jquery-3.3.1.min.js" ></script>
        <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js" ></script>        
        <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   
        <script type="text/javascript" src="usuarioView/js/usuario.js">

        </script>
    </body>
</html>
