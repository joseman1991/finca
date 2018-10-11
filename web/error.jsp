<%-- 
    Document   : error
    Created on : 30-sep-2018, 21:04:38
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
        <title>Error</title>
    </head>
    <body>

        <jsp:include page="menuHorizontal.jsp"/>
        <div class="row">
            <div class="col-md-2">
                <jsp:include page="menu.jsp" />        
            </div>
            <div class="col-md-10">
                <div class="container">
                    <h1>Un error ha ocurrido</h1>
                    <h3><s:property value="mensaje"/></h3>
                </div>
            </div>
        </div>





        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
