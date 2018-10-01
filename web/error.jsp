<%-- 
    Document   : error
    Created on : 30-sep-2018, 21:04:38
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
        <h1>Un error ha ocurrido</h1>
        <h1><s:property value="mensaje"/></h1>
    </body>
</html>
