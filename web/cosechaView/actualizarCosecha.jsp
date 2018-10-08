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
        <title>Registrar nueva cosecha</title>
    </head>
    <body>
        <jsp:include page="../menu.jsp"/>
        <s:if test="listaColmenas.size()<1">
            <h3>Necesitas al memos una colmena para hacer un mantenimiento</h3>
        </s:if>
        <s:else>
            <h1>Registrar nueva cosecha</h1>
            <form action="cosechaActualizada" method="post">
                <input type="hidden" name="idcosecha" value="<s:property value="idcosecha"/>"/>
                <label for="idcolmena">Colmena</label> 
                <select name="idcolmena">
                    <s:iterator value="listaColmenas">
                        <option value="<s:property value="idcolmena"/>"><s:property value="descripcion"/></option>
                    </s:iterator>
                </select><br>               
                <label for="tipoalza">Tipo de Alza</label>   <input type="text" name="tipoalza" value="<s:property value="objeto.tipoalza"/>" max="45" required=""/> <br>                
                <label for="fecha">Fecha</label>   <input type="date" name="fecha" max="45" required="" value="<s:property value="objeto.fecha"/>"/> <br>
                <label for="idobrero">Id Obrero </label><input type="number" name="idobrero" value="<s:property value="objeto.idobrero"/>" min="1" required=""/> <br>  
                <label for="marcos">Marcos </label><input type="number" name="marcos" value="<s:property value="objeto.marcos"/>" min="1" required=""/> <br>
                <label for="pesovacio">Peso vacío </label><input type="number" name="pesovacio" value="<s:property value="objeto.pesovacio"/>" min="1" required=""/> <br>
                <label for="pesolleno">Peso Lleno </label><input type="number" name="pesolleno" value="<s:property value="objeto.pesolleno"/>" min="1" required=""/> <br>
                <input type="submit" value="Registrar Colmena"/>
                <span><s:property value="mensaje"/></span>
            </form> 
        </s:else>

    </body>
</html>

 




