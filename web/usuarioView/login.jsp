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
        <title>Entrar  al sistema</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"/>
        <h1>Iniciar sesión</h1>
        <form action="check" method="post">
            <label for="email">Correo</label>   <input type="email" name="email" max="35"/>
            <label for="clave">Contraseña</label>   <input type="password" name="clave" max="16"/>             
            <input type="submit" value="Entrar al sistema"/> <br>
            <span><s:property value="mensaje"/></span>
        </form>
    </body>
</html>
