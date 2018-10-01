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
        <title>Registro de usuario</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"/>
        <h1>Registro de nuevo usuario</h1>
        <form action="registrar" method="post">
            <label for="email">Correo</label>   <input type="email" name="email" max="35"/>
            <label for="clave">Contraseña</label>   <input type="password" name="clave" max="16"/>
            <label for="nombre">Nombres</label>   <input type="text" name="nombre" max="35"/>
            <label for="apellido">Apellidos</label>   <input type="text" name="apellido" max="35"/> 
            <input type="submit" value="Actualizar"/> <br>
            <span><s:property value="mensaje"/></span>
        </form>
    </body>
</html>
