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
        <link href="css/style.css" rel="stylesheet">
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
                            <div class="panel-heading"><h3 class="  text-warning">Registro de nuevo sector</h3></div>
                            <div class="panel-body" style="min-height: 600px; max-height: 600px;overflow-y: scroll;">
                                <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                    </div>
                                </s:if>

                                <form class="form-horizontal" action="registrarsector" method="post" id="sector">

                                    <div class="form-group">
                                        <label class="control-label col-sm-4"  for="nombre">Nombre Sector *</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="text" name="nombre" maxlength="45" required=""/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idprovincia" >Provincia *</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idprovincia" id="provincia">
                                                <s:iterator value="listaProvincias">
                                                    <option value="<s:property value="idprovincia"/>"><s:property value="nombreprovincia"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>                     
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idcanton">Cantón *</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idcanton" id="canton">
                                                <s:iterator value="listaCantones" >
                                                    <option value="<s:property value="idcanton"/>"><s:property value="nombrecanton"/></option>
                                                </s:iterator>
                                            </select>
                                        </div>                     
                                    </div>

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

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="rcto">Recinto *</label> 
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="text" name="rcto" maxlength="45" required=""/> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="direccion">Dirección *</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="text" name="direccion" maxlength="45" required=""/> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">Correo Electrónico *</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="email" name="email" maxlength="50" required=""/>    
                                        </div>            
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="observacion">Observación *</label>   
                                        <div class="col-sm-5">
                                            <textarea class="form-control required" name="observacion" cols="1" rows="10"></textarea> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="responsable">Responsable *</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control required" type="text" name="responsable" maxlength="50" required=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="submit" class=" btn btn-info " value="Registrar sector" id="btn-sector"/> <br>  
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



        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   
        <script type="text/javascript" src="sectoresView/js/validar.js"></script> 
    </body>
</html>

