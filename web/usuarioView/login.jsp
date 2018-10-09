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
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Entrar  al sistema</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-10">
                <div class="container">
                    <h1>Iniciar sesión</h1>
                    <form action="check" method="post">
                        <label for="email">Correo</label>   <input type="email" name="email" max="35"/>
                        <label for="clave">Contraseña</label>   <input type="password" name="clave" max="16"/>             
                        <input type="submit" value="Entrar al sistema"/> <br>
                        <span><s:property value="mensaje"/></span>
                    </form> 
                </div>
            </div>
        </div>

        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
