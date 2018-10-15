<%-- 
    Document   : logout
    Created on : 12-jul-2018, 22:35:00
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Cerrar Sesión</title>
    </head>
    <body>
        <%
            session.setAttribute("usuario", null);            
            session.invalidate();            
            response.sendRedirect("login");
        %>
    </body>
</html>
