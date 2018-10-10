<%-- 
    Document   : menuHorizontal
    Created on : 08-oct-2018, 22:44:13
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <s:url action="eliminar" var="eliminar">
            <s:param name="idusuario"><s:property value="#user.idusuario"/></s:param>
        </s:url>

        <s:url action="agregarsector" var="agregarsector"/>
        <s:url action="agregarcolmena" var="agregarcolmena"/>        
        <s:url action="cosechar" var="cosechar"/>
        <s:url action="editCosecha" var="editCosecha">
            <s:param name="idcosecha"><s:property value="1"/></s:param>
        </s:url>
        <s:url action="listadecosechas" var="listadecosechas"/>
        <s:url action="listademantenimiento" var="listademantenimiento"/>
        <s:url action="sectores" var="sectores"/>
        <s:url action="listacolmenas" var="listacolmenas"/>
        <s:url action="actualizarcolmena" var="actualizarcolmena"/>

        <title> </title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-warning">
            <div class="container-fluid">
                <div class="navbar-header">
                    <s:a cssClass="navbar-brand text-warning" href="#">Gestión de Colmenas</s:a>
                    </div>
                    <ul class="nav navbar-nav " role="menu" aria-labelledby="dLabel">
                        <li class="active"><s:a href="%{inicio}">Inicio</s:a></li>
                    <li class="dropdown"><s:a cssClass="dropdown-toggle" data-toggle="dropdown" href="#">Usuarios<span class="caret"></span></s:a>
                            <ul class="dropdown-menu">
                                <li><s:a href="%{registro}">Agregar nuevo usuario</s:a></li>
                            <li><s:a href="%{actualizar}">Lista de Usuarios</s:a></li>                             
                            </ul>
                        </li>

                        <li class="dropdown"><s:a cssClass="dropdown-toggle" data-toggle="dropdown" href="#">Sectores<span class="caret"></span></s:a>
                            <ul class="dropdown-menu">
                                <li><s:a href="%{agregarsector}">Agregar nuevo sector  </s:a></li>
                            <li><s:a href="%{sectores}">Lista de sectores</s:a></li>

                            </ul>
                        </li>
                        <li class="dropdown"><s:a cssClass="dropdown-toggle" data-toggle="dropdown" href="#">Colmenas<span class="caret"></span></s:a>
                            <ul class="dropdown-menu">
                                <li><s:a href="%{agregarcolmena}">Agregar nueva colmena </s:a></li>
                                <li><s:a href="%{listacolmenas}">Lista de colmenas</s:a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                        <s:a cssClass="dropdown-toggle" data-toggle="dropdown" href="#">Acciones<span class="caret"></span></s:a>
                            <ul class="dropdown-menu">
                                <li><s:a href="#">Page 1-1</s:a></li>
                                <li class="dropdown-submenu">                                
                                    <a tabindex="-1" href="#">More options</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                        <s:a href="#">Page 1-2</s:a>
                                        </li>
                                        <li><s:a href="#">Page 1-3</s:a></li>
                                    </ul>
                                </li>

                            </ul>
                        </li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                    <s:if test="#user!=null">
                        <li><s:a href="%{mydata}"> <span class="glyphicon glyphicon-user"></span>  Hola, <s:property value="#user.nombre"/></s:a> </li>
                        <li><s:a href="%{logout}"><span class="glyphicon glyphicon-log-out"></span> Cerrar sesión</s:a></li>                        
                        </s:if>
                        <s:else>
                        <li><s:a href="%{login}"><span class="glyphicon glyphicon-log-in"></span> Iniciar sesión</s:a></li>                         
                        </s:else>
                </ul>
            </div>
        </nav>
    </body>
</html>
