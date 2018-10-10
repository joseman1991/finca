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
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
         <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Registrar nueva cosecha</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content" >
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">              
                <div class="container col-md-12">

                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 class="text-warning">Registrar nueva cosecha</h3></div>
                        <div class="panel-body">
                            <form action="cosechado" class="form-horizontal" method="post">
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="Colmena">Colmena</label>
                                    <div class="col-sm-5">
                                        <input class="form-control" type="text" max="45" value="<s:property value="colmena.descripcion"/>" readonly=""/>                                
                                        <input type="hidden" name="idcolmena" value="<s:property value="idcolmena"/>"/>  
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="tipoalza">Tipo de Alza</label>   
                                    <div class="col-sm-5">
                                        <input  class="form-control" type="text" name="tipoalza" max="45" required=""/> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="fecha">Fecha</label>   
                                    <div class="col-sm-5">
                                        <input class="form-control" type="text" value="<s:date name="new java.util.Date()" format="yyyy-MM-dd"/>" name="fecha" max="45" required="" readonly="" id="datepicker"/> 
                                    </div>
                                </div>





                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="idobrero">Id Obrero </label>
                                    <div class="col-sm-5">
                                        <input  class="form-control" type="number" name="idobrero" value="1" min="1" required=""/>   
                                    </div>
                                </div>




                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="marcos">Marcos </label>
                                    <div class="col-sm-5">
                                        <input class="form-control" type="number" name="marcos" value="1" min="1" required=""/> 
                                    </div>
                                </div>




                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="pesovacio">Peso vacío </label>
                                    <div class="col-sm-5">
                                        <input class="form-control" type="number" name="pesovacio" value="1" min="1" required=""/> 
                                    </div>
                                </div>




                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="pesolleno">Peso Lleno </label>
                                    <div class="col-sm-5">
                                        <input class="form-control" type="number" name="pesolleno" value="1" min="1" required=""/> 
                                    </div>
                                </div>




                                <div class="form-group col-sm-4 pull-right"  >
                                    <input type="submit" class=" btn btn-info " value="Registrar cosecha"/> <br>
                                    <span><s:property value="mensaje"/></span>
                                </div>      
                            </form> 
                        </div>
                    </div>




                </div>
            </div>
            <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Otro contenido</p>
                </div>
                <div class="well">
                    <p>Mas contenido</p>
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Footer Text</p>
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






