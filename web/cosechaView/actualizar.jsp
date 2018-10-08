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
            <th>Colmena</th>
            <th>Obrero</th>
            <th>Marcos</th>
            <th>Peso vacío</th>
            <th>Peso lleno</th>
            <th>Fecha</th>
            <th>Tipo alza</th>
            <th>Acciones</th>
        </thead>
        <tbody>
            <s:iterator value="lista">
                <tr>
                    <td><s:property value="idcosecha"/></td>
                    <td><s:property value="colmena.descripcion"/></td>
                    <td><s:property value="idobrero"/></td>
                    <td><s:property value="marcos"/></td>                   
                    <td><s:property value="pesovacio"/></td>                   
                    <td><s:property value="pesolleno"/></td>                   
                    <td><s:property value="fecha"/></td>                   
                    <td><s:property value="tipoalza"/></td>                   
                    <td>
                        <form action="actualiza" method="post">
                            <input type="hidden" value="<s:property value="idcosecha"/>" name="idcosecha"/>
                            <button type="submit">Editar</button>
                        </form>    
                    </td>
                </tr>
            </s:iterator>
        </tbody>
    </table>
</body>
</html>
