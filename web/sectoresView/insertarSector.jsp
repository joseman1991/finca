<%-- 
    Document   : insertarSector
    Created on : 04-oct-2018, 6:48:02
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar nuevo sector</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"/>
        <h1>Registro de nuevo usuario</h1>
        <form action="registrarsector" method="post">
            <label for="nombre">Nombre Sector</label>   <input type="text" name="nombre" max="45" required=""/><br>
            <label for="idprovincia">Provincia</label>  
            
            <select name="idprovincia">
                <s:iterator value="listaProvincias">
                    <option value="<s:property value="idprovincia"/>"><s:property value="nombreprovincia"/></option>
                </s:iterator>
            </select><br>
            <label for="rcto">Recinto</label>   <input type="text" name="rcto" max="45" required=""/> <br>
            <label for="direccion">Dirección</label>   <input type="text" name="direccion" max="45" required=""/> <br>
            <label for="email">Correo Electrónico</label>   <input type="text" name="email" max="50" required=""/>    <br>         
            <label for="apellido">Observación</label>   <textarea name="observacion" cols="1" rows="10"></textarea> <br>
            <label for="responsable">Responsable</label>   <input type="text" name="responsable" max="50" required=""/> <br>
            <input type="submit" value="Registrar sector"/> <br>
            <span><s:property value="mensaje"/></span>
        </form>
    </body>
</html>

