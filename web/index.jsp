<%-- 
    Document   : index
    Created on : 30-sep-2018, 19:11:40
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
        <title>Inicio</title>
    </head>
    <body>

        <jsp:include page="menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="menu.jsp" />        
            </div>
            <s:if test="#user==null">
                <%
                    response.sendRedirect("login");
                %>
            </s:if>
            <div class="col-md-8 col-lg-8">
                <div class="container col-md-12">                     
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">

                            <div class="item active">
                                <img src="image/hacienda-header.jpg" alt="abejas" style="width:100%;">
                                <div class="carousel-caption">
                                    <h3 class="text-black">Hacienda</h3>
                                    <p class="text-black">Mejores Productos</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="image/cattle-demo-banner-01.jpg" alt="miel" style="width:100%;">
                                <div class="carousel-caption">
                                    <h3 class="text-black">Ganadería</h3>
                                    <p class="text-black">Mejores animales del mercado</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="image/5.6._aaheader.png" alt="New York" style="width:100%;">
                                <div class="carousel-caption">
                                    <h3 class="text-black">Agricultura</h3>
                                    <p class="text-black">El mejor producto de nuestra tierra</p>
                                </div>
                            </div>

                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                </div>
            </div>

            <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Agricultura</p>
                    <img src="image/granero-aerogenerador_18591-54816.jpg" class="img-thumbnail" />
                </div>
                <div class="well">   
                    <p>Ganado</p>
                    <img src="image/ganado-vacuno-acaba-atmosfera-1.jpg" class="img-thumbnail" />                   
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Todos los Derechos Reservados 2020</p>
        </footer>
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
