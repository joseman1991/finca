<%-- 
    Document   : registrarColmena
    Created on : 04-oct-2018, 11:37:37
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
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Registrar nuevo mantenimiento</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container col-md-12">

                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 class="text-warning">Registrar nuevo mantenimiento</h3></div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="mantenimientactualizado" method="post">
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="Colmena">Colmena</label>
                                    <div class="col-sm-5">
                                        <input class="form-control" type="text" max="45" value="<s:property value="mantenimiento.colmena.descripcion"/>" readonly=""/>                                
                                        <input type="hidden" name="idmantenimiento" value="<s:property value="mantenimiento.idmantenimiento"/>"/>  
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="tipo">Tipo</label>   
                                    <div class="col-sm-5">
                                        <input class="form-control" type="text" value="<s:property value="mantenimiento.tipo"/>" name="tipo" max="45" required=""/>       
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="fecha">Fecha</label>   
                                    <div class="col-sm-5">
                                        <input class="form-control" type="text" value="<s:date name="mantenimiento.fecha" format="yyyy-MM-dd"/>" name="fecha" max="45" required="" readonly="" id="datepicker"/> 

                                    </div>
                                </div>

                                 <div class="form-group">
                                    <label class="control-label col-sm-4" for="idobrero">Obrero </label>
                                    <div class="col-sm-5">                                        
                                        <input  class="form-control" type="text"   value="<s:property value="mantenimiento.obrero.fullname"/>" min="1" required="" readonly=""/>   
                                        <input  class="form-control" type="hidden"  name="idobrero" value="<s:property value="mantenimiento.idobrero"/>" min="1" required=""/>   
                                    </div>
                                </div>

                               

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="alimentacion">Alimentacion </label>
                                    <div class="col-sm-5">
                                        <input class="form-control" type="number" name="alimentacion"  value="<s:property value="mantenimiento.alimentacion"/>" min="1" required=""/> 
                                    </div>
                                </div>

                                <div class="form-group col-sm-4 pull-right"  >
                                    <input type="submit" class=" btn btn-info " value="Registrar Mantenimiento"/> <br>
                                    <span class="text-success"><b><s:property value="mensaje"/></b></span>
                                </div>      

                            </form> 
                        </div>
                    </div>




                </div>
            </div>
            <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Miel 100% pura</p>
                    <img src="image/med1.jpg" class="img-thumbnail" />
                </div>
                <div class="well">   
                    <p>Jalea Real</p>
                    <img src="image/miel.jpg" class="img-thumbnail" />                   
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Todos los Derechos Reservados 2018</p>
        </footer>




        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">

            $('#datepicker').datepicker({
                uiLibrary: 'bootstrap',
                format: 'yyyy-mm-dd'
            });

        </script>
    </body>
</html>









