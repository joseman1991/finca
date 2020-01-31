<%-- 
    Document   : insertarSector
    Created on : 04-oct-2018, 6:48:02
    Author     : 
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
         <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet">
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Agregar nuevo sector</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container">



                    <div class="col-md-9 col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Registro de nuevo ganado</h3></div>
                            <div class="panel-body" style="min-height: 600px; max-height: 600px;overflow-y: scroll;">
                                <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                    </div>
                                </s:if>

                                <form class="form-horizontal" action="registrarganado" method="post" id="sector">

                                    <div class="form-group">
                                        <label class="control-label col-sm-4"  for="nombre">Nombre *</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="text" name="nombre" maxlength="45" required=""/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="tipo" >Tipo *</label>
                                        <div class="col-sm-5">
                                            
                                            <select class="form-control" name="tipo" id="provincia">
                                                <option>Vacuno</option>
                                                                                           </select>
                                        </div>                     
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="raza">Raza *</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="raza" id="canton">
                                                <option>Alemana</option>
 
                                            </select>
                                        </div>                     
                                    </div>

                                    <%--
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idparroquia">Parroquia *</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idparroquia" id="parroquia">
                                                <s:iterator value="listaParroquias">
                                                    <option value="<s:property value="idparroquia"/>"><s:property value="descripcion"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>                     
                                    </div>
--%>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="rcto">Edad *</label> 
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="text" name="rcto" maxlength="45" required=""/> 
                                        </div>
                                    </div>


                                    


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="observacion">Observación *</label>   
                                        <div class="col-sm-5">
                                            <textarea class="form-control required" name="observacion" cols="1" rows="10"></textarea> 
                                        </div>
                                    </div>


                                   <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Fecha *</label>   
                                        <div class="col-sm-5">
                                            <input  class="form-control required" type="text" name="fech" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>"   required="" id="datepicker" readonly=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="submit" class=" btn btn-info " value="Registrar ganado" id="btn-sector"/> <br>  
                                        <small>(*) Campos Obligatiorios</small>
                                    </div>
                                </form>
                            </div>
                        </div>
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



       
        <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   
        <script type="text/javascript" src="sectoresView/js/validar.js"></script> 
        
         <script type="text/javascript">
            $('#datepicker').datepicker({
                uiLibrary: 'bootstrap',
                format: 'yyyy-mm-dd'
            });

            $('#datepicker2').datepicker({
                uiLibrary: 'bootstrap',
                format: 'yyyy-mm-dd'
            });

        </script>
    </body>
</html>

