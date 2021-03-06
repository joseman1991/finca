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

                    <div class="col-md-9 col-lg-12" >
                        <div class="panel panel-default">
                            <div class="panel-heading"><h3 class="  text-warning">Registro de nuevo sector</h3></div>
                            <div class="panel-body" style="min-height: 600px; max-height: 600px;overflow-y: scroll;">
                                <s:if test="mensaje!=null">
                                    <div class="alert <s:property value="style"/> alert-dismissible">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                                    </div>
                                </s:if>
                                <form class="form-horizontal" action="sectoractualizado" method="post" id="sector">
                                    <input type="hidden" value="<s:property value="sector.idsector"/>" name="idsector"/>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4"  for="nombre">Nombre Sector</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control" type="text" name="nombre" maxlength="45" value="<s:property value="sector.nombre"/>" required=""/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idprovincia">Provincia</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idprovincia">
                                                <s:iterator value="listaProvincias">                                                    
                                                    <s:if test="idprovincia.equals(sector.parroquia.canton.idprovincia)">                                                       
                                                        <option value="<s:property value="idprovincia"/>" selected><s:property value="nombreprovincia"/></option>                                                         
                                                    </s:if>
                                                    <s:else>                                                        
                                                        <option value="<s:property value="idprovincia"/>"><s:property value="nombreprovincia"/></option>
                                                    </s:else>
                                                </s:iterator>
                                            </select>
                                        </div> 

                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idcanton">Cantón</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idcanton" id="canton">
                                                <s:iterator value="listaCantones" >
                                                    <s:if test="idcanton.equals(sector.parroquia.canton.idcanton)">  
                                                        <option value="<s:property value="idcanton"/>" selected><s:property value="nombrecanton"/></option>
                                                    </s:if>
                                                    <s:else>
                                                        <option value="<s:property value="idcanton"/>"><s:property value="nombrecanton"/></option>
                                                    </s:else>
                                                </s:iterator>
                                            </select>
                                        </div>                     
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="idparroquia">Parroquia</label>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="idparroquia" id="parroquia">
                                                <s:iterator value="listaParroquias">
                                                    <s:if test="idparroquia.equals(sector.parroquia.idparroquia)"> 
                                                        <option value="<s:property value="idparroquia"/>" selected><s:property value="descripcion"/></option>
                                                    </s:if>
                                                    <s:else>
                                                        <option value="<s:property value="idparroquia"/>"><s:property value="descripcion"/></option>
                                                    </s:else>
                                                </s:iterator>
                                            </select>
                                        </div>   
                                    </div>   

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="rcto">Recinto</label> 
                                        <div class="col-sm-5">
                                            <input class="form-control" type="text" name="rcto" maxlength="45" required="" value="<s:property value="sector.rcto"/>"/> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="direccion">Dirección</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control" type="text" name="direccion" maxlength="45" required="" value="<s:property value="sector.direccion"/>"/> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="email">Correo Electrónico</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control" type="email" name="email" maxlength="50" required="" value="<s:property value="sector.email"/>"/>    
                                        </div>            
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="apellido">Observación</label>   
                                        <div class="col-sm-5">
                                            <textarea class="form-control" name="observacion" cols="1" rows="10"><s:property value="sector.observacion"/></textarea> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="responsable">Responsable</label>   
                                        <div class="col-sm-5">
                                            <input class="form-control" type="text" name="responsable" maxlength="50" required="" value="<s:property value="sector.responsable"/>"/> 
                                        </div>
                                    </div>

                                    <div class="form-group col-sm-4 pull-right"  >
                                        <input type="submit" class=" btn btn-info " value="Actualizar sector" id="btn-sector"/> <br>
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
            <p>Todos los Derechos Reservados 2018</p>
        </footer>



        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery.validate.min.js" ></script>    
        <script type="text/javascript" src="js/messages_es.js" ></script>   
        <script type="text/javascript" src="sectoresView/js/validar.js"></script> 
    </body>
</html>

