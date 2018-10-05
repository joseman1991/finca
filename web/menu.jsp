<%-- 
    Document   : menu
    Created on : 30-sep-2018, 19:18:48
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <s:set name="user" value="#session['usuario']"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <s:url action="inicio" var="inicio"/>
        <s:url action="login" var="login"/>
        <s:url action="logout" var="logout"/>
        <s:url action="registro" var="registro"/>
        <s:url action="actualizar" var="actualizar"/>
        <s:url action="actualiza" var="mydata">
            <s:param name="idusuario"><s:property value="#user.idusuario"/></s:param>
        </s:url>
        
        <s:url action="agregarsector" var="agregarsector"/>
        <s:url action="agregarcolmena" var="agregarcolmena"/>
    </head>
    <body>
        <s:if test="#user!=null">
            Hola <s:property value="#user.nombre"/>
            <s:a href="%{logout}"> Cerrar sesión</s:a>
        </s:if>
        <s:else>
            <s:a href="%{login}">Iniciar sesión</s:a>
        </s:else>
        <ul>  
            <li><s:a href="%{inicio}">Inicio</s:a></li>
                <li> 
                    <a href="#">Usuarios</a>                    
                    <ul>                    
                        <li><s:a href="%{registro}">Agregar nuevo usuario</s:a></li>
                    <li><s:a href="%{actualizar}">Actualizar</s:a></li>
                    <li><s:a href="%{mydata}">Mis Datos</s:a></li>                     
                </ul>
            </li>
            <li>
                <a href="#">Sectores</a>
                <ul>
                    <li><s:a href="%{agregarsector}">Agregar nuevo sector</s:a></li>
                    <li><a href="#">Actualizar sector</a></li>
                    <li><a href="#">Listado de sectores</a></li>
                </ul>
            </li>
            <li>
                <a href="#">Colmenas</a>
                <ul>
                    <li><s:a href="%{agregarcolmena}">Agregar nueva colmena</s:a></li>
                    <li><a href="#">Actualizar colmena</a></li>
                    <li><a href="#">Lista de colmenas</a></li>
                </ul>
            </li>
            <li>
                <a href="#">Acciones</a>
                <ul>
                    <li><a href="#">Agregar nuevo mantenimiento</a></li>
                    <li><a href="#">Cosechar colmena</a></li>
                </ul>
            </li>
        </ul>
        <h1>Sistema de Administración y Gestión de Colmenas</h1>
    </body>
</html>
