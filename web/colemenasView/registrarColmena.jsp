<%-- 
    Document   : registrarColmena
    Created on : 04-oct-2018, 11:37:37
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Nueva Colmena</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"/>
        <s:if test="listaSectores.size()<1">
            <% response.sendRedirect("sector"); %>
        </s:if>
        <s:else>
            <h1>Registrar Nueva colmena</h1>
            <form action="colmenaregistrada" method="post">
                <label for="idarea">Sector</label> 
                <select name="idarea">
                    <s:iterator value="listaSectores">
                        <option value="<s:property value="idsector"/>"><s:property value="nombre"/></option>
                    </s:iterator>
                </select><br>


                <label for="nmarcos">Numero de Marcos</label><input type="number" name="nmarcos" value="1" min="1" required=""/> <br>
                <label for="tipo">Tipo</label>   <input type="text" name="tipo" max="45" required=""/> <br>
                <label for="nalza">Numero de Marcos</label><input type="number" name="nalza" value="1" min="1" required=""/> <br>            
                <label for="idprovincia">Origen de Colmena</label>             
                <select name="idorigen">
                    <s:iterator value="listaOrigen">
                        <option value="<s:property value="idorigen"/>"><s:property value="descripcion"/></option>
                    </s:iterator>
                </select><br>
                <label for="precio">Precio</label><input type="number" name="precio" value="0.00" min="0.00" required=""/> <br>
                <label for="fecha">Fecha</label>   <input type="date" name="fecha" max="45" required=""/> <br>
                <label for="idreina">Id Reina</label><input type="number" name="idreina" value="1" min="1" required=""/> <br>  
                <label for="fechareina">Fecha de Reina</label>   <input type="date" name="fechareina" max="45" required=""/> <br>        
                <input type="submit" value="Registrar Colmena"/>
                <span><s:property value="mensaje"/></span>
            </form> 
        </s:else>

    </body>
</html>










