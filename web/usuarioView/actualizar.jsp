<%-- 
    Document   : actualizar
    Created on : 30-sep-2018, 23:45:10
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar usuarios</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"/>        
        <h1>Lista de usuarios</h1>
        <table>
            <thead>
            <th>Codigo</th>
            <th>Correo electrónico</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Acciones</th>
        </thead>
        <tbody>
            <s:iterator value="listaUsuarios">
                <tr>
                    <td><s:property value="idusuario"/></td>
                    <td><s:property value="email"/></td>
                    <td><s:property value="nombre"/></td>
                    <td><s:property value="apellido"/></td>
                    <s:url action="actualiza" var="actualiza">
                         <s:param name="idusuario"><s:property value="idusuario"/></s:param>
                    </s:url>
                    <td><s:a href="%{actualiza}">Editar</s:a></td>
                </tr>
            </s:iterator>
        </tbody>
    </table>
</body>
</html>
