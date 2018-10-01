<%-- 
    Document   : datos
    Created on : 01-oct-2018, 0:10:54
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar datos</title>
    </head>
    <body>
         <jsp:include page="../menu.jsp"/>  
        <h1>Actualizar Datos de Usuario</h1>
        <form action="actualizadatos" method="post">
            <label for="email">Correo</label>   <input type="email" name="email" max="35" value="<s:property value="usuario.email"/>"/>
            <label for="clave">Contraseña</label>   <input type="password" name="clave" max="16" value="<s:property value="usuario.clave"/>"/>
            <label for="nombre">Nombres</label>   <input type="text" name="nombre" max="35" value="<s:property value="usuario.nombre"/>"/>
            <label for="apellido">Apellidos</label>   <input type="text" name="apellido" max="35" value="<s:property value="usuario.apellido"/>"/> 
            <input type="hidden" name="idusuario" value="<s:property value="idusuario"/>"/>
            <input type="submit" value="Actualizar"/> <br>
            <span><s:property value="mensaje"/></span>
        </form>
    </body>
</html>
