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
                    <div class="col-md-9 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Actualizar Datos de Usuario</h3></div>
                            <div class="panel-body" style="min-height: 600px; max-height: 600px;overflow-y: scroll;">
                                <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                    </div>
                                </s:if>   
                                <form action="actualizadatos" class="form-horizontal" method="post" id="formulario">

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idperfil">Perfil</label>
                                        <div class="col-sm-5">
                                            <s:if test="usuario.idusuario==#user.idusuario">
                                                <input type="text" class="form-control"  maxlength="35" value="<s:property value="#user.perfil.descripcion"/>" readonly=""/>
                                                <input type="hidden" name="idperfil" value="<s:property value="#user.idperfil"/>"/>                                                
                                            </s:if> 
                                            <s:else>
                                                <select class="form-control" name="idperfil">
                                                    <s:iterator value="listaPerfiles">
                                                        <s:if test="usuario.idperfil==idperfil">
                                                            <option value="<s:property value="idperfil"/>" selected="">
                                                                <s:property value="descripcion"/>
                                                            </option>
                                                        </s:if>
                                                        <s:else>
                                                            <option value="<s:property value="idperfil"/>">
                                                                <s:property value="descripcion"/>
                                                            </option>
                                                        </s:else>

                                                    </s:iterator>
                                                </select>
                                            </s:else>
                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <label for="email" class="control-label col-sm-4">Correo *</label> 
                                        <div class="col-sm-5">
                                            <input type="email" class="form-control required" name="email" maxlength="35" value="<s:property value="usuario.email"/>" required="" id="correo" autocomplete="off"/>
                                            <label class="error" style="display: none" id="userError"><strong>Correo ya se encuentra registrado</strong></label>
                                        </div>                                        
                                    </div>

                                    <div class="form-group">
                                        <label for="clave" class="control-label col-sm-4">Contraseña *</label>
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control required" name="pclave" minlength="5" maxlength="16" value="<s:property value="usuario.clave"/>" required="" id="pclave"/>
                                        </div>                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="clave" class="control-label col-sm-4">Repite la Contraseña *</label>
                                        <div class="col-sm-5">
                                            <input type="password" class="form-control required" name="clave"  maxlength="16" value="<s:property value="usuario.clave"/>"required=""/>
                                        </div>                                       
                                    </div>

                                    <div class="form-group">
                                        <label for="nombre" class="control-label col-sm-4">Primer Nombre *</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="nombre" maxlength="35" value="<s:property value="usuario.nombre"/>"required=""/>
                                        </div>                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="nombre" class="control-label col-sm-4">Segundo Nombre *</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="nombre2" maxlength="35" value="<s:property value="usuario.nombre2"/>"required=""/>
                                        </div>                                       
                                    </div>

                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Apellido paterno *</label>   
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="apellido" maxlength="35" value="<s:property value="usuario.apellido"/>" required=""/> 
                                        </div>                                       
                                    </div>

                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Apellido materno *</label>   
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="apellido2" maxlength="35" value="<s:property value="usuario.apellido2"/>" required=""/> 
                                        </div>                                       
                                    </div>

                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Dirección *</label>   
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="direccion" maxlength="35" value="<s:property value="usuario.direccion"/>" required=""/> 
                                        </div>                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Teléfono *</label>   
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="telefono" maxlength="35" value="<s:property value="usuario.telefono"/>" required=""/> 
                                        </div>                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="apellido" class="control-label col-sm-4">Cédula *</label>   
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control required" name="cedula" maxlength="35" value="<s:property value="usuario.cedula"/>" required=""/> 
                                        </div>                                       
                                    </div>

                                    <div class=" form-group col-sm-4 pull-right" >
                                        <input class="btn btn-info" type="button" value="Actualizar" id="boton"/> <br>
                                        <small>(*) Campos Obligatiorios</small>
                                    </div>

                                    <input type="hidden" name="idusuario" value="<s:property value="idusuario"/>" id="idusuario"/>
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
            <p>Derechos Reservados 2018</p>
        </footer>



        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   
        <script type="text/javascript" src="usuarioView/js/usuario.js"></script>
    </body>
</html>
