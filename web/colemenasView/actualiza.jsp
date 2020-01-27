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
        <title>Actualizar Colmena</title>
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
                        <div class="panel-heading"><h3 class="  text-warning">Actualizar colmena</h3></div>
                        <div class="panel-body" style="min-height: 600px; max-height: 600px;overflow-y: scroll;">
                            <s:if test="mensaje!=null">
                                <div class="alert <s:property value="style"/> alert-dismissible">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                </div>
                            </s:if>
                            <form action="colmenaactualizada" class="form-horizontal"  method="post" id="colmena">
                                <input type="hidden" value="<s:property value="idcolmena"/>" name="idcolmena"/>
                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="idarea">Sector</label> 
                                    <div class="col-sm-5">
                                        <select class="form-control"  name="idarea">
                                            <s:iterator value="listaSectores">
                                                <s:if test="idsector==colmena.idarea">
                                                    <option value="<s:property value="idsector"/>" selected=""><s:property value="nombre"/></option>
                                                </s:if>
                                                <s:else>
                                                    <option value="<s:property value="idsector"/>"><s:property value="nombre"/></option>
                                                </s:else>
                                            </s:iterator>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="nmarcos">Descripción *</label>
                                    <div class="col-sm-5">
                                        <input  class="form-control" type="text" value="<s:property value="colmena.nmarcos"/>" name="descripcion" max="50" required=""/> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="nmarcos">Numero de Marcos *</label>
                                    <div class="col-sm-5">
                                        <input  class="form-control" value="<s:property value="colmena.nmarcos"/>" type="text" name="nmarcos" value="1" min="1" required=""/> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="nalza">Numero de Alzas Melaria *</label>
                                    <div class="col-sm-5">
                                        <input  class="form-control" value="<s:property value="colmena.nalza"/>" type="text" name="nalza" value="1" min="1" required=""/>       
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="idorigen">Origen de Colmena *</label>      

                                    <div class="col-sm-5">
                                        <select  class="form-control" name="idorigen" id="origen">
                                            <s:iterator value="listaOrigen">
                                                <s:if test="idorigen==colmena.idorigen">
                                                    <option value="<s:property value="idorigen"/>" selected=""><s:property value="descripcion"/></option>
                                                </s:if>
                                                <s:else>
                                                    <option value="<s:property value="idorigen"/>"><s:property value="descripcion"/></option>
                                                </s:else>
                                            </s:iterator>
                                        </select>
                                    </div>
                                </div>




                                <div class="form-group" id="divprecio">
                                    <label class="control-label col-sm-4" for="precio">Precio *</label>
                                    <div class="col-sm-5">
                                        <input  class="form-control" value="<s:property value="colmena.precio"/>" type="number" name="precio" value="0.00" min="0.00" required="" id="precio"/> 
                                    </div>
                                </div>




                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="fecha">Fecha *</label>   
                                    <div class="col-sm-5">
                                        <input  class="form-control" value="<s:date name="colmena.fecha" format="yyyy-MM-dd"/>" type="text"  name="fecha"   required="" id="datepicker" readonly /> 
                                    </div>
                                </div>





                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="idreina">Raza de Reina *</label>
                                    <div class="col-sm-5">
                                        
                                        <select class="form-control" name="idreina">  
                                            
                                            <s:iterator value="listaReinas"> 
                                                
                                                <s:if test="idreina==colmena.idreina">
                                                    <option value="<s:property value="idreina"/>" selected=""><s:property value="descripcion"/></option>
                                                </s:if>
                                                <s:else>
                                                    <option value="<s:property value="idreina"/>"><s:property value="descripcion"/></option>
                                                </s:else>
                                               
                                            </s:iterator>
                                        </select>
                                    </div>
                                </div>





                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="npisos">Numero de Pisos *</label>
                                    <div class="col-sm-5">
                                        <input class="form-control" value="<s:property value="colmena.npisos"/>" type="number" name="npisos" value="1" min="1" required=""/>   
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-4" for="fechareina">Fecha de Reina *</label>   
                                    <div class="col-sm-5">
                                        <input  class="form-control" value="<s:date name="colmena.fechareina" format="yyyy-MM-dd"/>" type="text" name="fechareina"   id="datepicker2" readonly required=""/>   
                                    </div>
                                </div>

                                <div class="form-group col-sm-4 pull-right">
                                    <input type="submit" class=" btn btn-info " value="Actualizar Colmena" id="btn-colmena"/> <br>    
                                    <small>(*) Campos obligatorios</small>
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
            <p>Footer Text</p>
        </footer>





        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="colemenasView/js/colmena.js"></script>
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










