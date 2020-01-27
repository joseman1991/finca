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
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Registrar Nueva Colmena</title>
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
                            <div class="panel-heading"><h3 class="  text-warning">Registrar nueva cosecha</h3></div>
                            <div class="panel-body">
                                <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                    </div>
                                </s:if>
                                <form action="colmenaregistrada" class="form-horizontal"  method="post" id="colmena">

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idarea">Producto *</label> 
                                        <div class="col-sm-5">
                                            <select class="form-control"  name="idproducto">
                                                <s:iterator value="listaProductos">
                                                    <option value="<s:property value="idproducto"/>"><s:property value="nombre"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="descripcion">Descripción *</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control required" type="text" name="descripcion" maxlength="50" required=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="hectareas">Numero de Hectareas *</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control required" type="text" name="hectareas" value="1" required=""/> 
                                        </div>
                                    </div>                                     

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="quintales">Quintales *</label>
                                        <div class="col-sm-5">
                                            <input  class="form-control required" type="text" name="quintales" value="1"   required=""/>       
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="ciclo">Ciclo de Cosecha *</label>      

                                        <div class="col-sm-5">
                                            <select  class="form-control" name="ciclo" id="origen">                                               
                                                    <option>CICLO CORTO</option>
                                                    <option>CICLO LARGO</option>                                              
                                            </select>
                                        </div>
                                    </div>




                                 



                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Fecha *</label>   
                                        <div class="col-sm-5">
                                            <input  class="form-control required" type="text" name="fech" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>"   required="" id="datepicker" readonly=""/> 
                                        </div>
                                    </div>





                                   





                                   




                                    

                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="submit" class=" btn btn-info " value="Registrar cosecha" id="btn-colmena"/> <br>
                                          <small>(*) Campos Obligatiorios</small>
                                    </div>                                

                                </form> 
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
            <p>Derechos Reservados 2020</p>
        </footer>


        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   

        <script type="text/javascript" src="colemenasView/js/colmena.js"></script>


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










