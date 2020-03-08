<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Autorizaciones MH</title>
   <!--Icon page-->
   <link href="Public/Img/favicon.png" rel="icon">
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Autorizaciones.css')?>">
<style>
 .table{
              border-collapse: collapse;
               padding:20px;
              box-shadow: 2px 5px 5px #999;
              overflow: hidden;
              margin: auto;
              text-align: center;
              border-radius:5px;  
        }
        .th {
              
              background-color:#DADADF;
              text-align: center;
              color: #000;
        }
        .td {
            
              text-align: center;      
        }
</style>

</head>

<body>

  <div class="page-wrapper chiller-theme toggled">
    <main class="page-content">
      <section id="hero" class="wow fadeIn">
        <h1 style="color:black;">Autorizaciones MH</h1>  

          <div class="tabbed">
            <ul>
              <li Onclick="Baja_de_serie();">Baja De Serie A.M.H </li>
              <li Onclick="Consultar_MH();">Consultar A.M.H</li>
              <li class="active" Onclick="Ingresar_MH();">Ingresar A.M.H</li>
            </ul>
          </div>

          <div class="AutorizacionesMH" id="AutorizacionesMH" style="display: block;">
            <img src="https://extyseg.com/wp-content/uploads/2019/04/EXTYSEG-imagen-no-disponible.jpg"  width="55%" height="70%" id="img" style="margin-left:40%; margin-top:10%; position:absolute;" >
          
            <div class="AutorizacionesMH form-mh" >

                <form method='POST' id="Form-Autorizaciones" action='<?php echo base_url('index.php/AutorizacionesMH/Ingresar_Autorizaciones')?>' enctype="multipart/form-data"> 
                
                        <br>
                        <h1 style="color:black; font-size:20px; margin-left:40px; "> Ingreso Autorizaciones MH</h1>
                        <img class="img"src="<?php echo base_url('Public/Img/Gobierno2019.png')?>" width="50px" height="60px" style="float:right; margin-top:-12%; margin-right:5%;" >
                        <br>
                        <span style="font-size:16px; font-style: oblique;">Numero de Serie</span>

                        <div class="input-group mb-3">
                          
                          <input type="number" class="form-control" placeholder="Imei" id="txtimei" name="txtimei">
                          
                          <div class="input-group-append">

                            <button class="btn btn-outline-info" type="button" id="btnbuscar" OnClick="Buscar_Telefonos();">Buscar</button>
                          </div>

                        </div>

                        <br>
                        <input type="text" class="form-control"  id="txtidtelefono" name="txtidtelefono" style="display:none;">

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"  style="width:90px;">Marca </span>
                          </div>
                          <input type="text" id="txtmarca" name="txtmarca" class="form-control" disabled="disabled">
                        </div>

                        

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:90px;">Modelo</span>
                          </div>
                          <input type="text" id="txtmodelo" name="txtmodelo" class="form-control" disabled="disabled">
                        </div>
                        
                      

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:90px;">Año</span>
                          </div>
                          <input type="text" id="txtaño" name="txtaño" class="form-control" disabled="disabled">
                        </div>

                      

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:90px;">Color</span>
                          </div>
                          <input type="text" class="form-control" id="txtcolor" name="txtcolor" disabled="disabled">
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:90px;" data-toggle="tooltip" data-placement="top" title="Distribuidora El Salvador">Zona</span>
                          </div>
                          <input type="text" class="form-control" id="txtzona" name="txtzona" disabled="disabled">
                        </div>

                        <br>
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:180px;">Software</span>
                          </div>
                          <input type="text" class="form-control" id="txtsoftware" name="txtsoftware" value="VENTA LITE" >
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:180px;">N° Maquina</span>
                          </div>
                          <input type="number" id="txtmaquina" name="txtmaquina" class="form-control">
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"  style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir en Ticket">N° Resolucion T</span>
                          </div>
                          <input type="text"  id="txtresolucion" name="txtresolucion"  class="form-control">
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"  style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir Un Rango de Ticket">N° Resolucion RT</span>
                          </div>
                          <input type="text"  id="txtresolucionrt" name="txtresolucionrt"  class="form-control">
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"  style="width:180px;" data-toggle="tooltip" data-placement="top" title="Numero de ticket autorizados">Serie Autorizada</span>
                          </div>
                          <input type="text"  id="txtserie" name="txtserie"  class="form-control">
                        </div>
                      

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:180px;">Fecha Solicitud</span>
                          </div>
                          <input type="date" id="txtfechasolicitud" name="txtfechasolicitud" class="form-control" >
                        </div>
                        
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"   style="width:180px;">Fecha Autori.</span>
                          </div>
                          <input type="date" class="form-control" id="txtfechaautorizacion" name="txtfechaautorizacion">
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"  >Cantidad</span>
                          </div>
                          <input type="number" class="form-control" id="txtcantidadcorrelativo" name="txtcantidadcorrelativo">
                        </div>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"  >Carta MH</span>
                          </div>
                          <input type="file" class="form-control" id="img_mh" name="img_mh">
                        </div>

                        <br>
                        <div style="margin: inherit; margin-left:25%;">
                          <button type="submit" class="btn btn-primary" style="display:none;" id="btnguardarmh">Guardar</button>
                          <button type="button" name='comprobar'  id="btncomprobar" class="btn btn-primary" OnClick="validar()" >Guardar</button>
                          <button type="reset" class="btn btn-secondary" id="btnlimpiarmh">Limpiar</button>
                        </div>



                </form>


            </div>

          </div>

          <div class="ConsultarMH" id="ConsultarMH" style="display: none; ">
          <div class="form-row" style="margin-left: 1.5%; margin-top:1.5%;">
            <div class="form-group col-md-3 " >
                <label for="exampleFormControlSelect1" style="font-size:22px;">Distribuidora</label>
                  <select class="form-control" id="txtdistribuidoramh" name="txtdistribuidoramh" >
                    <option selected="true" disabled="disabled" value="">Seleccione distribuidora</option>
                    
                  </select>
                </div>
          
          <button class="btn btn-primary" id="btnactivemh" style="width:100px; margin-left:10px;" onclick="MHActivas();">A.M.H <BR>Activas</button>
          <button class="btn btn-primary" id="btninactivemh" style="width:100px; margin-left:10px;" onclick="MHInactivas();">A.M.H <BR>Inactivas</button>
          <button class="btn btn-primary" id="btnbackupmh" style="width:100px; margin-left:10px;" onclick="MHBackUp();">A.M.H <BR>Back Up</button>
        
          </div>
          
            <label for="MHBackUp" class="badge badge-info" style="display:none; float:right; margin-right:7%; font-size:16px; " id="MHBackUp"> Total A.M.H BackUP: <span id="Letra2" style="font-size:20px;"></span></label>
            <label for="MHActivas" class="badge badge-success" style="display:none; float:right; margin-right:7%; font-size:16px;" id="MHactivas"> Total A.M.H Activas: <span id="Letra1"  style="font-size:20px;"></span></label>
            <label for="MHInantivas" class="badge badge-danger" style="display:none; float:right; margin-right:7%; font-size:16px;" id="MhInactivas"> Total A.M.H Inactivas: <span id="Letra0"  style="font-size:20px;"></span></label>
         
            <div for="data_mh" id="data_mh" style="padding:50px;">
              
            </div>
                    
          </div>

          <div class="BajaMH" id="BajaMH" style="display: none;" >
          <div style="text-align:center; display:block;" id="inhabilitar">  <h1 style="color:black; font-size:40px; padding-top:2%;">INHABILITACION DE SERIES M.H.</h1></div>
          <div style="text-align:center; display:none;" id="habilitar">  <h1 style="color:black; font-size:40px; padding-top:2%;">HABILITACION DE SERIES M.H.</h1></div>

          <div class="form-row" style="padding:2% 0% 0% 5%; margin-left:18%;">
            
             
          <a href="#" id="btnReset" class="action-button shadow animate blue" > Reiniciar </a>
          <a href="#" id="btnconsultarcaja" class="action-button shadow animate red" OnClick="Mostrar_CajasMH();" style="margin-left:1%; display:block;"> Consultar Cajas </a>
          <a href="#" id="btnconsultarcajaact" class="action-button shadow animate green" OnClick="Mostrar_CajasMH_R();" style="margin-left:1%; display:none;"> Consultar Cajas </a>
          <a href="#" class="action-button shadow animate green" OnClick="Registrar_Baja_Alta();" id="btnregistrarbajaserie" style="margin-left:1%; text-align: -webkit-right; display:block;"> Guardar </a>
          <a href="#" class="action-button shadow animate red" OnClick="Registrar_Alta_MH();" id="btnregistrarbajaserieact" style="margin-left:1%; text-align: -webkit-right; display:none"> Guardar </a>
          </div>
          
            <div id="containment-wrapper">
              <div style="display:none;" id="js"></div>
              <div style="display:none;" id="jsACT"></div>
              <div class="container">
                
                      <div class="row">
                        <!-- Draggable  Cajas Activas-->
                        <div class="col-md" id="Cajas_Activas" style="text-align: -webkit-left;">

                          <!-- AQUI IRAN LAS CAJAS ACTIVAS -->
  
                        </div>

                    
                        <!-- Draggable  Cajas Activas-->
                        <div class="col-md" id="Cajas_Activas1" style="text-align: -webkit-left; display:none;">

                          <!-- AQUI IRAN LAS CAJAS ACTIVAS -->
  
                        </div>
                        

                        <!-- Droppables -->
                        <div class="col-md">

                                    <div id="droppable" class="droppable"  style="display:block;">
                                      <p style="color: black;   -webkit-text-stroke: 0.5px black;">N° De Caja A Dar De Baja</p>
                                      <input type="text" id="Caja_Activa"  class="form-control" style="display:none">
                                    </div>

                                    <div id="droppableBP" class="droppableBP" style="display:block;" >
                                      <p style="color: black;  -webkit-text-stroke: 0.5px black;">N° De Caja A Dar De alta</p>
                                      <input type="text" id="Caja_BackUp"  class="form-control" style="display:none">
                                    </div>

                                    <div id="droppableACT" class="droppableACT"  style="display:none;">
                                      <p style="color: black;  -webkit-text-stroke: 0.5px black;">Activar Caja</p>
                                      <input type="text" id="ActCaja"  class="form-control" style="display:none">
                                    </div>
                                    
                                      
                        </div>
                        
                        <!-- Draggable  Cajas Back UP-->    
                        <div class="col-md" style="text-align: -webkit-right;" id="Cajas_BackUP">

                    
                            <!-- AQUI IRAN LAS CAJAS BACK UP ACTIVAR Y DAR DE BAJA-->
                        
                          
                        </div>

                        <div class="col-md" style="text-align: -webkit-right; display:none;" id="Cajas_BackUP_R">

                    
                            <!-- AQUI IRAN LAS CAJAS BACK UP PARA ACTIVAR -->
                        
                          
                        </div>

                      </div>
              </div>
 
            </div>

            

          </div>
          <input type="radio" id="mostrar-modal" name="modal"/>
            <label  class="PdfDispositivos" for="mostrar-modal"><span style="font-size:22px;"><i class="fas fa-file-pdf"></i></span></label>
            <input type="radio" id="cerrar-modal" name="modal"/>
            <label for="cerrar-modal">X</label>
            
            <div id="modal">
            <h1 style="color:white; margin-left:20vw;"> Alta y Baja de Serie </hr>
            <h1 style="color: white;    float: right;    margin-right: 100px;    margin-top: 75px; cursor:pointer;"></a><span style="font-size:70px;"><i onclick="ConsultarPDF();"class="fab fa-sistrix"></i></span> </h1><br>
                <div id="tablapdf"> 

                    <div class="buscador" style="">
                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                                <select class="form-control" id="bdistribuidora" name="bdistribuidora" > 
                                <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
                                <select class="form-control" id="bcanal" name="bcanal" >
                                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                </select>
                            </div> 

                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Ruta Asignada</h6></strong></label>
                                <select class="form-control" id="bruta" name="bruta" >
                                <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                </select>
                            </div>  

                    </div>
                     
                    <div class="tabla" style="margin-left:2%;">

                   

                    </div>

                </div>
             
            </div>


          <!--============= MODAL EDITAR AUTORIZACIONES MH BACK UP========= -->
            <div class="modal fade" id="EditarMH" tabindex="-1" role="dialog" aria-labelledby="EditarMH" aria-hidden="true">
                    <div class="modal-dialog" role="document">

                      <div class="modal-content">

                        <div class="modal-header">
                          <strong><h3 class="modal-title" id="EditarMH" style="margin-left:30px; margin-top:10px;">Editar <br>Autorizaciones MH</h3></strong>
                          <img class="img"src="<?php echo base_url('Public/Img/Gobierno2019.png')?>" width="50px" height="60px" style="float:right; margin-left:60px; margin-top:20px;" >

                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>

                        <div class="modal-body">
                          <div class="form" style="padding: 5%; background-color:#; border-radius:10px;">

                            <form method='POST' id="Form-Autorizacionesedith" action='<?php echo base_url('index.php/AutorizacionesMH/Ingresar_Autorizaciones')?>' enctype="multipart/form-data"> 
                      
                              <input type="text" class="form-control"  id="txtidautorizacionesedith" name="txtidautorizacionesedith" style="display:none">

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"  style="width:90px;">Marca </span>
                                      </div>
                                      <input type="text" id="txtmarcaedith" name="txtmarcaedith" class="form-control" disabled="disabled">
                                    </div>

                                    

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:90px;">Modelo</span>
                                      </div>
                                      <input type="text" id="txtmodeloedith" name="txtmodeloedith" class="form-control" disabled="disabled">
                                    </div>
                                    
                                  

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:90px;">Año</span>
                                      </div>
                                      <input type="text" id="txtañoedith" name="txtañoedith" class="form-control" disabled="disabled">
                                    </div>

                                  

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:90px;">Color</span>
                                      </div>
                                      <input type="text" class="form-control" id="txtcoloredith" name="txtcoloredith" disabled="disabled">
                                    </div>

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:90px;" data-toggle="tooltip" data-placement="top" title="Distribuidora El Salvador">Zona</span>
                                      </div>
                                      <input type="text" class="form-control" id="txtzonaedith" name="txtzonaedith" disabled="disabled">
                                    </div>

                                    <br>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:180px;">Software</span>
                                      </div>
                                      <input type="text" class="form-control" id="txtsoftwareedith" name="txtsoftwareedith" value="VENTA LITE" >
                                    </div>

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:180px;">N° Maquina</span>
                                      </div>
                                      <input type="number" id="txtmaquinaedith" name="txtmaquinaedith" class="form-control">
                                    </div>

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"  style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir en Ticket">N° Resolucion T</span>
                                      </div>
                                      <input type="text"  id="txtresolucionedith" name="txtresolucionedith"  class="form-control">
                                    </div>

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"  style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir Un Rango de Ticket">N° Resolucion RT</span>
                                      </div>
                                      <input type="text"  id="txtresolucionrtedith" name="txtresolucionrtedith"  class="form-control">
                                    </div>

                                    
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"  style="width:180px;" data-toggle="tooltip" data-placement="top" title="Numero de ticket autorizados">Serie Autorizada</span>
                                      </div>
                                      <input type="text"  id="txtseriedith" name="txtseriedith"  class="form-control">
                                    </div>
                                  

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:180px;">Fecha Solicitud</span>
                                      </div>
                                      <input type="date" id="txtfechasolicitudedith" name="txtfechasolicitudedith" class="form-control" >
                                    </div>
                                    
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"   style="width:180px;">Fecha Autori.</span>
                                      </div>
                                      <input type="date" class="form-control" id="txtfechaautorizacionedith" name="txtfechaautorizacionedith">
                                    </div>

                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text"  >Cantidad</span>
                                      </div>
                                      <input type="number" class="form-control" id="txtcantidadcorrelativoedith" name="txtcantidadcorrelativoedith">
                                    </div>



                            </form>

                          </div>
                        </div>

                        <div class="modal-footer">
                          <button type="button" class="btn btn-primary" id="MeditarMH" >Guardar</button>
                          <button type="button" class="btn btn-danger" id="mbtnCerrarModal" data-dismiss="modal" >Cerrar</button>
                        </div>

                      </div>

                    </div>

            </div>
          <!--============= FINISH EDITAR AUTORIZACIONES MH BACK UP========= -->
              

      </section>

     
      
    </main>

  </div>


</body>

<!-- JavaScript -->

<script>
  /**************************VALIDAR SI SE PULSA LA TECLA ENTER*********************************/
$(document).ready(function() {
    $("form").keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });
});

  /**************************FINISH ,VALIDAR SI SE PULSA LA TECLA ENTER*********************************/


  
  /**************************FUNCION F7 Y F8*********************************/
  $(document).keydown(function (tecla) {
    if (tecla.keyCode == 118) {
       
        document.getElementById('droppable').style.display = 'none';
        document.getElementById('droppableBP').style.display = 'none';
        document.getElementById('droppableACT').style.display = 'block';
        document.getElementById('btnconsultarcaja').style.display = 'none';
        document.getElementById('btnconsultarcajaact').style.display = 'block';
        document.getElementById('btnregistrarbajaserie').style.display = 'none';
        document.getElementById('btnregistrarbajaserieact').style.display = 'block';
        document.getElementById('inhabilitar').style.display = 'none';
        document.getElementById('habilitar').style.display = 'block';
        document.getElementById('Cajas_Activas').style.display = 'none';
        document.getElementById('Cajas_BackUP').style.display = 'none';
        document.getElementById('Cajas_Activas1').style.display = 'block';
        document.getElementById('Cajas_BackUP_R').style.display = 'block';
        

    }
  });

  $(document).keydown(function (tecla) {
      if (tecla.keyCode == 119) {
        
          document.getElementById('droppable').style.display = 'block';
          document.getElementById('droppableBP').style.display = 'block';
          document.getElementById('droppableACT').style.display = 'none';
          document.getElementById('btnconsultarcaja').style.display = 'block';
          document.getElementById('btnconsultarcajaact').style.display = 'none';
          document.getElementById('btnregistrarbajaserie').style.display = 'block';
          document.getElementById('btnregistrarbajaserieact').style.display = 'none';
          document.getElementById('inhabilitar').style.display = 'block';
          document.getElementById('habilitar').style.display = 'none';
          document.getElementById('Cajas_Activas').style.display = 'block';
          document.getElementById('Cajas_BackUP').style.display = 'block';
          document.getElementById('Cajas_Activas1').style.display = 'none';
          document.getElementById('Cajas_BackUP_R').style.display = 'none';
      }
  });

  /**************************FINISH ,FUNCION F7 Y F8*********************************/


/**************************EFECTOS BOTONES INGRESAR, CONSULTAR ,BAJA SERIE OCULTAR O MOSTRAR DIV*********************************/
          function Consultar_MH(){
            // FORMULARIO REGISTRO MH
            document.getElementById('ConsultarMH').style.display = 'block';

            // VISUALIZACION DE TELEFONOS
            document.getElementById('BajaMH').style.display = 'none';

             // VISUALIZACION DE TELEFONOS
             document.getElementById('AutorizacionesMH').style.display = 'none';

           

          }

          function Baja_de_serie(){
            // FORMULARIO DE TELEFONOS
            document.getElementById('BajaMH').style.display = 'block';

             // VISUALIZACION DE TELEFONOS
             document.getElementById('ConsultarMH').style.display = 'none';

            // VISUALIZACION DE TELEFONOS
            document.getElementById('AutorizacionesMH').style.display = 'none';


          }


          function Ingresar_MH(){
            // FORMULARIO DE TELEFONOS
            document.getElementById('AutorizacionesMH').style.display = 'block';

             // VISUALIZACION DE TELEFONOS
             document.getElementById('ConsultarMH').style.display = 'none';

            // VISUALIZACION DE TELEFONOS
            document.getElementById('BajaMH').style.display = 'none';

          }
/**************************FINISH , EFECTOS BOTONES INGRESAR, CONSULTAR ,BAJA SERIE OCULTAR O MOSTRAR DIV*********************************/


/**************************EFECTOS BOTONES INGRESAR, CONSULTAR ,BAJA SERIE*********************************/
document.addEventListener("DOMContentLoaded", function() {
    var tabs = document.querySelectorAll('.tabbed li');



    for (var i = 0, len = tabs.length; i < len; i++) {
      tabs[i].addEventListener("click", function() {
        if (this.classList.contains('active'))
          return;

        var parent = this.parentNode,
            innerTabs = parent.querySelectorAll('li');

        for (var index = 0, iLen = innerTabs.length; index < iLen; index++) {
          innerTabs[index].classList.remove('active');
        }

        this.classList.add('active');
      });
    }
});
/**************************FINISH,EFECTOS BOTONES INGRESAR, CONSULTAR ,BAJA SERIE*********************************/


/**************************BUSCAR DETALLES DE TELEFONO X IMEI*********************************/
function Buscar_Telefonos(){
  var imei =  $('#txtimei').serialize();
  imeip = document.getElementById('txtimei').value;

  if(imeip.length==0){
    swal.fire({ showConfirmButton: false, 
                    timer: 1500, 
                    position: 'top-end',
                    title:'Ingrese Un Imei de Telefono', 
                    type: 'info',
                    });

  }else{
   
      $.ajax({
                url:"<?php echo base_url();?>index.php/AutorizacionesMH/Buscar_Telefonos",
                method:"POST", 
                data:imei,
                dataType:"JSON",
                success:function(respuesta){

                  if( respuesta.length !=0){
                    $('#txtidtelefono').val(respuesta.Id_Telefono);
                    $('#txtmarca').val(respuesta.Nombre_Marca);
                    $('#txtmodelo').val(respuesta.Nombre_Modelo);
                    $('#txtaño').val(respuesta.año_telefono);
                    $('#txtcolor').val(respuesta.color_telefono);
                    $('#txtzona').val(respuesta.Nombre_Distribuidora);

                  }else{
                    $('#btnlimpiarmh').click();
                    swal.fire({ showConfirmButton: false, 
                        timer: 1500, 
                        position: 'top-end',
                        title:'Imei No Encontrado', 
                        type: 'error',
                        });
                  }
                  
                }
      });
  }
}
/**************************END, BUSCAR DETALLES DE TELEFONO X IMEI*********************************/


/********************** PREVISUALIZACION DE IMAGENES ************************* */
function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      // Asignamos el atributo src a la tag de imagen
      $('#img').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
   }
  }

  // El listener va asignado al input
  $("#img_mh").change(function() {
    readURL(this);
});
/********************** END, PREVISUALIZACION DE IMAGENES ************************* */


/********************** VERIFICACION DE TAMAÑO DE IMAGEN ************************* */
$(document).on('change','input[type="file"]',function(){
	// this.files[0].size recupera el tamaño del archivo
	// alert(this.files[0].size);
	
	var fileName = this.files[0].name;
	var fileSize = this.files[0].size;

	if(fileSize > 2000000){
    swal.fire({title:'La Imagen No debe superar los 2 MG', type: 'error'});
		this.value = '';
		this.files[0].name = '';
	}
});
/********************** FINISH, VERIFICACION DE TAMAÑO DE IMAGEN  ************************* */


/********************** STAR, VALIDACION DE INGRESO DE AUTORIZACIONES MH ************************* */
function validar(){
  

  var software,maquina,resolucion,resolucionrt,fechasolicitud,fechaautorizacion,cantidad;
  
  software = document.getElementById('txtsoftware').value;
  maquina = document.getElementById('txtmaquina').value;
  resolucion = document.getElementById('txtresolucion').value;
  resolucionrt = document.getElementById('txtresolucionrt').value;
  serie = document.getElementById('txtserie').value;
  fechasolicitud = document.getElementById('txtfechasolicitud').value;
  fechaautorizacion = document.getElementById('txtfechaautorizacion').value;
  cantidad = document.getElementById('txtcantidadcorrelativo').value;
  var id_telefono =  $('#txtidtelefono').serialize();



    if(document.getElementById("img_mh").files.length == 0 || software.length == 0 || maquina.length == 0 || resolucion.length == 0 || resolucionrt.length == 0 || serie.length == 0 ||fechasolicitud.length == 0 || fechaautorizacion.length == 0 || cantidad.length == 0 ){
                swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                return false; 



    }else{
      
      $.ajax({

            url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_autorizacion",
            method:"POST",
            data:id_telefono,
            dataType:"JSON",

          

            success:function(respuesta)
            {
           

             if(respuesta.cantidad==0){
              swal.fire({ showConfirmButton: false, 
              timer: 2000, 
              position: 'top-end',
              title:'Se Envio Correctamente el registro', 
              type: 'success'});
        
              $('#btnguardarmh').click();


             }else{
              swal.fire({ showConfirmButton: false, 
              timer: 2000, 
              position: 'top-end',
              title:'Esta Imei De Telefono Ya Tiene Autorizacion MH Asignada', 
              type: 'warning'});
        
              return false;


             }
        
            }
      });
        
              
    }    
        
  
}
/********************** END, VALIDACION DE INGRESO DE AUTORIZACIONES MH ************************* */


/********************** FETCH DISTRIBUIDORA ************************* */
$(document).ready(function(){
        
        $.ajax({
            url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtdistribuidoramh').html(data);
        
            }
          });

      
});
/********************** FINISH,FETCH DISTRIBUIDORA ************************* */


/********************** CONSULTAR MH ACTIVAS ************************* */     
function MHActivas(){


  var distribuidora =  $('#txtdistribuidoramh').serialize();
  // distribuidora = document.getElementById('txtdistribuidoramh').value;

  if(distribuidora.length==0){
    swal.fire({ showConfirmButton: false, 
                    timer: 1500, 
                    position: 'top-end',
                    title:'Seleccione Una distribuidora', 
                    type: 'info',
                    });

  }else{

  var distribuidora=$('#txtdistribuidoramh').serialize();

  $.ajax({
            url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_autorizaciones_activas",
            method:"POST",
            data:distribuidora,
          

            success:function(respuesta)
            {
            // alert(data);
              
            var registros =eval(respuesta);

            html ="<h3 style='text-align: center; color:#026A55;'> Autorizaciones MH Activas</h3>"
            html +="<table class='table' id='tablemh' align='center'><thead>";
            html +="<tr><th style='display:none;'>ID MH</th><th class='th'>Distribuidora</th><th  class='th'>N. Maquina</th><th  class='th'>Marca</th><th  class='th'>Modelo</th><th  class='th'>Imei</th><th  class='th'>Serie Autorizada</th><th  class='th'>App</th></tr>"
              html +="</thead><tbody>";

              for (var i = 0; i<registros.length; i++) {
              html+="<tr><td class='td' style='display:none;'>"+registros[i]["id_autorizaciones"]+"</td>"+
              "<td class='th' >"+registros[i]["Nombre_Distribuidora"]+"</td>"+
              "<td class='td' >"+registros[i]["n_maquina"]+"</td>"+
              "<td class='td' >"+registros[i]["Nombre_marca"]+"</td>"+
              "<td class='td' >"+registros[i]["nombre_Modelo"]+"</td>"+
              "<td class='td' >"+registros[i]["imei_telefono"]+"</td>"+
              "<td class='td' >"+registros[i]["serie_autorizada"]+"</td>"+
              "<td class='td' >"+registros[i]["software"]+"</td></tr>";
        
              };
              
              html +="</tbody></table>";
              $("#data_mh").html(html);


              var count = $('#tablemh > * > tr').length; 
              var countx = count - 1;

            $("#Letra1").html(countx);
            document.getElementById('MHBackUp').style.display = 'none';
            document.getElementById('MhInactivas').style.display = 'none';
            document.getElementById('MHactivas').style.display = 'block';

            
          }
          
        });
      }    
     

}
/********************** FINISH CONSULTAR MH ACTIVAS ************************* */


/********************** CONSULTAR MH INACTIVAS ************************* */     
function MHInactivas(){

   
  var distribuidora =  $('#txtdistribuidoramh').serialize();
  // distribuidora = document.getElementById('txtdistribuidoramh').value;

  if(distribuidora.length==0){
    swal.fire({ showConfirmButton: false, 
                    timer: 1500, 
                    position: 'top-end',
                    title:'Seleccione Una distribuidora', 
                    type: 'info',
                    });

  }else{
  $.ajax({
          url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_autorizaciones_inactivas",
          method:"POST",
          data:distribuidora,
        

          success:function(respuesta)
          {
          // alert(data);
            
          var registros =eval(respuesta);

          html ="<h3 style='text-align: center; color:#026A55;'> Autorizaciones MH Inactivas</h3>"
          html +="<table class='table' id='tablemh' align='center'><thead>";
          html +="<tr><th style='display:none;'>ID MH</th><th class='th'>Distribuidora</th><th  class='th'>N. Maquina</th><th  class='th'>Marca</th><th  class='th'>Modelo</th><th  class='th'>Imei</th><th  class='th'>Serie Autorizada</th><th  class='th'>App</th></tr>"
            for (var i = 0; i<registros.length; i++) {
            html+="<tr><td class='td' style='display:none;'>"+registros[i]["id_autorizaciones"]+"</td>"+
            "<td class='th' >"+registros[i]["Nombre_Distribuidora"]+"</td>"+
            "<td class='td' >"+registros[i]["n_maquina"]+"</td>"+
            "<td class='td' >"+registros[i]["Nombre_marca"]+"</td>"+
            "<td class='td' >"+registros[i]["nombre_Modelo"]+"</td>"+
            "<td class='td' >"+registros[i]["imei_telefono"]+"</td>"+
            "<td class='td' >"+registros[i]["serie_autorizada"]+"</td>"+
            "<td class='td' >"+registros[i]["software"]+"</td></tr>";
          
               
            };
            
            html +="</tbody></table>";

           
            $("#data_mh").html(html);

            var count = $('#tablemh > * > tr').length; 
            var countx = count - 1;

            $("#Letra0").html(countx);
            document.getElementById('MHBackUp').style.display = 'none';
            document.getElementById('MHactivas').style.display = 'none';
            document.getElementById('MhInactivas').style.display = 'block';
            
            // alert(count);
        }
        
      });
    }             
   


}
/********************** FINISH CONSULTAR MH INACTIVAS ************************* */



/********************** CONSULTAR MH BACKUP ************************* */     
function MHBackUp(){

  var distribuidora=$('#txtdistribuidoramh').serialize();
  
  if(distribuidora.length==0){
    swal.fire({ showConfirmButton: false, 
                    timer: 1500, 
                    position: 'top-end',
                    title:'Seleccione Una distribuidora', 
                    type: 'info',
                    });

  }else{
  $.ajax({
        url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_autorizaciones_backup",
        method:"POST",
        data:distribuidora,
      

        success:function(respuesta)
        {
        // alert(data);
          
        var registros =eval(respuesta);

        html ="<h3 style='text-align: center; color:#026A55;'> Autorizaciones MH Back-Up</h3>"
        html +="<table class='table' id='tablemh' align='center'><thead>";
        html +="<tr><th style='display:none;'>ID MH</th><th class='th'>Distribuidora</th><th  class='th'>N. Maquina</th><th  class='th'>Marca</th><th  class='th'>Modelo</th><th  class='th'>Imei</th><th  class='th'>Serie Autorizada</th><th  class='th'>App</th><th  class='th'>Accion</th></tr>"
          for (var i = 0; i<registros.length; i++) {
          html+="<tr><td class='td' style='display:none;'>"+registros[i]["id_autorizaciones"]+"</td>"+
          "<td class='th' >"+registros[i]["Nombre_Distribuidora"]+"</td>"+
          "<td class='td' >"+registros[i]["n_maquina"]+"</td>"+
          "<td class='td' >"+registros[i]["Nombre_marca"]+"</td>"+
          "<td class='td' >"+registros[i]["nombre_Modelo"]+"</td>"+
          "<td class='td' >"+registros[i]["imei_telefono"]+"</td>"+
          "<td class='td' >"+registros[i]["serie_autorizada"]+"</td>"+
          "<td class='td' >"+registros[i]["software"]+"</td>"+
    
          "<td class='td' ><button type='button' class='btn btn-outline-primary'  data-toggle='modal' data-target='#EditarMH' onClick='EnviarDatosMH_Accesorios(\""+registros[i]["id_autorizaciones"]+
                          "\",\""+registros[i]["Nombre_marca"]+
                          "\",\""+registros[i]["nombre_Modelo"]+
                          "\",\""+registros[i]["año_telefono"]+
                          "\",\""+registros[i]["color_telefono"]+
                          "\",\""+registros[i]["Nombre_Distribuidora"]+
                          "\",\""+registros[i]["software"]+
                          "\",\""+registros[i]["n_maquina"]+
                          "\",\""+registros[i]["n_resolucion"]+
                          "\",\""+registros[i]["n_resolucion_rt"]+
                          "\",\""+registros[i]["serie_autorizada"]+
                          "\",\""+registros[i]["fecha_solicitud"]+
                          "\",\""+registros[i]["fecha_autorizacion"]+
                          "\",\""+registros[i]["cantidad_tk"]+"\");'><i class='fas fa-edit'></i></button>";
        
             
          };
          
          html +="</tbody></table>";

         
          $("#data_mh").html(html);

          var count = $('#tablemh > * > tr').length; 
          var countx = count-1;

          $("#Letra2").html(countx);
            document.getElementById('MHactivas').style.display = 'none';
            document.getElementById('MhInactivas').style.display = 'none';
            document.getElementById('MHBackUp').style.display = 'block';
            
          
          // alert(count);
      }
      
    });
  }
                  
 


}
/********************** FINISH CONSULTAR MH BACKUP ************************* */


/********************** STAR, ENVIAR DATOS MODAL EDITAR AMH ************************* */
function EnviarDatosMH_Accesorios(id_autorizaciones,Nombre_marca,nombre_Modelo,año_telefono,color_telefono,Nombre_Distribuidora,software,n_maquina,n_resolucion,n_resolucion_rt,serie_autorizada,fecha_solicitud,fecha_autorizacion,cantidad_tk){
        $('#txtidautorizacionesedith').val(id_autorizaciones);
        $('#txtmarcaedith').val(Nombre_marca);
        $('#txtmodeloedith').val(nombre_Modelo);
        $('#txtañoedith').val(año_telefono);
        $('#txtcoloredith').val(color_telefono);
        $('#txtzonaedith').val(Nombre_Distribuidora);
        $('#txtsoftwareedith').val(software);
        $('#txtmaquinaedith').val(n_maquina);
        $('#txtresolucionedith').val(n_resolucion);
        $('#txtresolucionrtedith').val(n_resolucion_rt);
        $('#txtseriedith').val(serie_autorizada);
        $('#txtfechasolicitudedith').val(fecha_solicitud);
        $('#txtfechaautorizacionedith').val(fecha_autorizacion);
        $('#txtcantidadcorrelativoedith').val(cantidad_tk);
     
}
/**********************FINISH, ENVIAR DATOS MODAL EDITAR AMH  ************************* */


/**********************FINISH, ENVIAR DATOS MODAL EDITAR AMH  ************************* */
 $('#MeditarMH').click(function(){
          
        var id_autorizaciones=$('#txtidautorizacionesedith').val();
        
        var software=$('#txtsoftwareedith').val();
        var n_maquina=$('#txtmaquinaedith').val();
        var n_resolucion=$('#txtresolucionedith').val();
        var n_resolucion_rt=$('#txtresolucionrtedith').val();
        var serie_autorizada=$('#txtseriedith').val();
        var fecha_solicitud=$('#txtfechasolicitudedith').val();
        var fecha_autorizacion=$('#txtfechaautorizacionedith').val();
        var cantidad_tk=$('#txtcantidadcorrelativoedith').val();
         
          if(id_autorizaciones.length == 0  || software.length == 0 || n_maquina.length == 0|| n_resolucion.length == 0 || n_resolucion_rt.length == 0 || serie_autorizada.length == 0 || fecha_solicitud.length == 0 || fecha_autorizacion.length == 0 || cantidad_tk.length == 0) {
            
            swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
            return false;
            
          }
          else{
          

          $.post("<?php echo base_url(); ?>index.php/AutorizacionesMH/Actualizar_A_MH",	
          {

            txtidautorizacionesedith:id_autorizaciones,
            txtsoftwareedith:software,
            txtmaquinaedith:n_maquina,
            txtresolucionedith:n_resolucion,
            txtresolucionrtedith:n_resolucion_rt,
            txtseriedith:serie_autorizada,
            txtfechasolicitudedith:fecha_solicitud,
            txtfechaautorizacionedith:fecha_autorizacion,
            txtcantidadcorrelativoedith:cantidad_tk,
         
           
          },			
          function(data){
            if (data == 1) {
              $('#mbtnCerrarModal').click();
              let timerInterval
                Swal.fire({
                title: 'Registro Actualizado Correctamente',
                type: 'success',
                html: '',
                timer: 2000,
                onBeforeOpen: () => {
                    Swal.showLoading()
                    timerInterval = setInterval(() => {
                          
                    }, 100)
                    },
                    onClose: () => {
                    clearInterval(timerInterval)
                }
                }).then((result) => {
                    if (
                        result.dismiss === Swal.DismissReason.timer
                    ){
                      
                      $('#btnbackupmh').click();
                    // location.reload();
                      
                      
                    }
                });
            
            }
          });
          }
});

/**********************FINISH, ENVIAR DATOS MODAL EDITAR AMH  ************************* */


/**********************STAR , DRAG AND DROG ************************* */
$( function() {
  
  $( "#droppable" ).droppable({
    tolerance: "intersect",
    accept: 
    ".draggable",

    drop: function( event, ui ) {
      
      var Id_Caja_Activa= $(ui.draggable).attr("id");
        $("#Caja_Activa").val(Id_Caja_Activa)

      var $this = $(this);
      ui.draggable.position({
        my: "center",
        at: "center",
        of: $this,
        using: function(pos) {
          $(this).animate(pos, 200, "linear");
        }
      });

      $(this)
      .removeClass("droppable")
        .addClass("droppablex")
        .find( "p" )
          .html( "Colocado!" );
          $(this).droppable("option","disabled", true);
          
    }
  });

  $( "#droppableBP" ).droppable({
    tolerance: "intersect",
    accept: 
    ".draggableBP",
    


    drop: function( event, ui ) {
      // OBTENER ID DE DRAGGABLE Y SETEARLO EN UN INPUT

        var Id_Caja_BackUp= $(ui.draggable).attr("id");
        $("#Caja_BackUp").val(Id_Caja_BackUp)

      // CENTRAR DRAGGABLE
        var $this = $(this);
        
        ui.draggable.position({
          my: "center",
          at: "center",
          of: $this,
          using: function(pos) {
            $(this).animate(pos, 200, "linear");
          }
        });

        $(this)
        .removeClass("droppableBP")
          .addClass("droppablexBP")
          .find( "p" )
            .html( "Colocado!" );
            

            $(this).droppable("option","disabled", true);

          
    }

  });

  $( "#droppableACT" ).droppable({
    tolerance: "intersect",
    accept: 
    ".draggableACT",
    


    drop: function( event, ui ) {
      // OBTENER ID DE DRAGGABLE Y SETEARLO EN UN INPUT

        var Id_Caja_BackUp= $(ui.draggable).attr("id");
        $("#ActCaja").val(Id_Caja_BackUp)

      // CENTRAR DRAGGABLE
        var $this = $(this);
        
        ui.draggable.position({
          my: "center",
          at: "center",
          of: $this,
          using: function(pos) {
            $(this).animate(pos, 200, "linear");
          }
        });

        $(this)
        .removeClass("droppableACT")
          .addClass("droppablexBP")
          .find( "p" )
            .html( "Colocado!" );
            

            $(this).droppable("option","disabled", true);

          
    }

  });

});

/**********************FINISH , DRAG AND DROG ************************* */


/**********************RESET DRAG AND DROG ************************* */
$("#btnReset").click(function() {

  $('#Caja_BackUp').val('');
  $('#Caja_Activa').val('');
  $('#ActCaja').val('');

  $(".draggable").css({"top":"", "left":""});
  $(".draggableBP").css({"top":"", "left":""});
  $(".draggableACT").css({"top":"", "left":""});

  $("#droppable")
        .removeClass("droppablex")
          .addClass("droppable")
          .find( "p" )
            .html( "N° De Caja A Dar De Baja" );

            $("#droppable").droppable("option","disabled", false);


  $("#droppableBP")
        .removeClass("droppablexBP")
          .addClass("droppableBP")
          .find( "p" )
            .html( "N° De Caja A Dar De alta" );

            $("#droppableBP").droppable("option","disabled", false);

  $("#droppableACT")
        .removeClass("droppablexBP")
          .addClass("droppableACT")
          .find( "p" )
            .html( "Activar Caja" );

            $("#droppableACT").droppable("option","disabled", false);

});
/**********************FINISH , RESET DRAG AND DROG ************************* */




/********************** MOSTRAR CAJAS DRAGGABLES ************************* */
function Mostrar_CajasMH(){
        
    $.ajax({
          url:"<?php echo base_url();?>index.php/AutorizacionesMH/Mostrar_CajasMH",
          method:"POST", 

          success:function(respuesta){
            // alert(respuesta);

            var registros =eval(respuesta);
            $( "#btnReset" ).click(); 
            $("#Cajas_Activas").empty();
            $("#Cajas_BackUP").empty();     
            $("#Cajas_BackUP_R").empty();	     	
            $('#js').empty()
            htmlA="<p style='font-size:20px; text-align:center; font-weight: bold;'> CAJAS ACTIVAS</P>";
            htmlB="<p style='font-size:20px; text-align:center; font-weight: bold;'> CAJAS RESERVADAS</P>";
            js="";

           

              for (var i = 0; i<registros.length; i++) {
            
                if(registros[i]["estado"] == 1){
             
                htmlA +="<div id='"+registros[i]["Id_autorizaciones"]+"' name='draggableA' class='draggable' style='z-index:1;'>"+
                  "<label style='color:white; font-size:18px;'>"+
                  ""+registros[i]["Nombre_Ruta"]+"<br> <i class='fas fa-archive'></i> "+registros[i]["n_maquina"]+"</label>"+
                  "</div>";

                }else if(registros[i]["estado"] ==2){
                  htmlB +="<div id='"+registros[i]["Id_autorizaciones"]+"' name='draggableB' class='draggableBP' style='z-index:1;'>"+
                  "<label style='color:white; font-size:18px;'>"+
                  ""+registros[i]["Nombre_Ruta"]+"<br><i class='fas fa-archive'></i> "+registros[i]["n_maquina"]+" </label>"+
                  "</div>";
                  
                }

                js +="<script>";
                js += "$(function(){$('#"+registros[i]["Id_autorizaciones"]+"').draggable({ containment: '#containment-wrapper', revert: 'invalid' })})";
                js +="<\/script>";
              

            }
            
            
              
            
              $("#Cajas_Activas").html(htmlA);
              $("#Cajas_BackUP").html(htmlB);
              $("#js").html(js);
          }
    });
    


}
/********************** FINISH,MOSTRAR CAJAS DRAGGABLES ************************* */



/********************** MOSTRAR CAJAS DRAGGABLES(ACTIVAR RUTA) ************************* */
function Mostrar_CajasMH_R(){
        
        $.ajax({
              url:"<?php echo base_url();?>index.php/AutorizacionesMH/Mostrar_CajasMH",
              method:"POST", 
    
              success:function(respuesta){
                // alert(respuesta);
    
                var registros =eval(respuesta);
                $( "#btnReset" ).click();
                $("#Cajas_Activas").empty();
                $("#Cajas_BackUP").empty();  
                $("#Cajas_BackUP_R").empty();	
                $('#js').empty()
                html="<p style='font-size:20px; text-align:center; font-weight: bold;'> CAJAS RESERVADAS</P>";
                js="";
    
               
    
                  for (var i = 0; i<registros.length; i++) {
                
                    if(registros[i]["estado"] == 2 && registros[i]["estado_cell"]=="RESERVADO"){
                 
                    html +="<div id='"+registros[i]["Id_autorizaciones"]+"' name='draggableB' class='draggableACT' style='z-index:1;'>"+
                          "<label style='color:white; font-size:18px;'>"+
                          ""+registros[i]["Nombre_Ruta"]+"<br><i class='fas fa-archive'></i>"+registros[i]["n_maquina"]+" </label>"+
                          "</div>";
    
                    }
    
                    js +="<script>";
                    js += "$(function(){$('#"+registros[i]["Id_autorizaciones"]+"').draggable({ containment: '#containment-wrapper', revert: 'invalid' })})";
                    js +="<\/script>";
                  
    
                }
                
                
                  
                
                  $("#Cajas_BackUP_R").html(html);
                  $("#jsACT").html(js);
              }
        });
        
    
    
}
/********************** FINISH,MOSTRAR CAJAS DRAGGABLES ************************* */
    

/*==================METODO REGISTRAR BAJA DE SERIEL==================================*/

function Registrar_Baja_Alta(){
      

      n_maquina_baja = document.getElementById("Caja_Activa").value;
      n_maquina_alta =document.getElementById("Caja_BackUp").value;


    if(n_maquina_baja.length == 0 && n_maquina_alta.length == 0 ){
      
      swal.fire({title:'Coloque Los Numeros De Cajas En Los Cuadros Correspondientes', type: 'error'});
      return false;

    }else if(n_maquina_baja.length == 0){
      swal.fire({title:'Coloque La Caja a Dar De Baja', type: 'error'});
      return false;
    }
    else if(n_maquina_alta.length == 0){
      swal.fire({title:'Coloque La Caja a Dar De Alta', type: 'error'});
      return false;
    }else{
      
      // inhabilitar boton al hacer click
      $(this).attr('disabled','disabled');
      // //////////////////////////////////

 
      $.post("<?php echo base_url(); ?>index.php/AutorizacionesMH/Registrar_Baja_Alta",	
      {
        Caja_Activa:n_maquina_baja,
        Caja_BackUp:n_maquina_alta
      
        
      },			
      function(data){

        if (data == 1) {
        
          let timerInterval
            Swal.fire({
            title: 'Registro Completado Correctamente',
            type: 'success',
            html: '',
            timer: 2000,
            onBeforeOpen: () => {
                Swal.showLoading()
                timerInterval = setInterval(() => {
                      
                }, 100)
                },
                onClose: () => {
                clearInterval(timerInterval)
            }
            }).then((result) => {
                if (
                    result.dismiss === Swal.DismissReason.timer
                ){
                  
                  location.reload();
                }
            });
        
        }
      });
    }
}
/*================== END, METODO REGISTRAR BAJA DE SERIE==================================*/



/*==================METODO REGISTRAR BAJA DE SERIEL==================================*/

function Registrar_Alta_MH(){
      

      
      n_maquina_alta =document.getElementById("ActCaja").value;


    if(n_maquina_alta.length == 0 ){
      
      swal.fire({title:'Coloque una caja para Activar', type: 'error'});
      return false;

    
    }else{
      
      // inhabilitar boton al hacer click
      $(this).attr('disabled','disabled');
      // //////////////////////////////////

 
      $.post("<?php echo base_url(); ?>index.php/AutorizacionesMH/Registrar_Alta_MH",	
      {
        
        Caja_BackUp:n_maquina_alta
      
        
      },			
      function(data){

        if (data == 1) {
        
          let timerInterval
            Swal.fire({
            title: 'Registro Completado Correctamente',
            type: 'success',
            html: '',
            timer: 2000,
            onBeforeOpen: () => {
                Swal.showLoading()
                timerInterval = setInterval(() => {
                      
                }, 100)
                },
                onClose: () => {
                clearInterval(timerInterval)
            }
            }).then((result) => {
                if (
                    result.dismiss === Swal.DismissReason.timer
                ){
                  
                  location.reload();
                }
            });
        
        }
      });
    }
}



/*================== END, METODO REGISTRAR BAJA DE SERIE==================================*/


/*==================MOSTRAR DISTRIBUIDORA , CANAL , RUTA , BITACORA ALTA Y BAJA SERIE==================================*/

  $.ajax({
                url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_distribuidora",
                method:"POST",
            

                success:function(data)
                {
                
                $('#bdistribuidora').html(data);
                //   $('#mtxtcanalnocell').html('<option value="" >Seleccione El Canal</option>');
                //   $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');
                }
            });

            //   obtener canal segun distribuidora
            $('#bdistribuidora').change(function(){
            var Id_Distribuidora = $('#bdistribuidora').val();

            if(Id_Distribuidora != '')
            {
                $.ajax({
                url:"<?php echo base_url();?>index.php/AutorizacionesMH/fetch_canal",
                method:"POST",
                data:{Id_Distribuidora:Id_Distribuidora},

                success:function(data)
                {
                
                    $('#bcanal').html(data);
                    $('#bruta').html('<option value="" >Seleccione la Ruta</option>');
                }
                });
            }
            else
            {
            $('#bcanal').html('<option value="" >Selecccion el canal</option>');
            $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
            }
            });
            // obtener rutas segun canal
            $('#bcanal').change(function(){
            var Id_Canal = $('#bcanal').val();
            if(Id_Canal != '')
            {
            $.ajax({
                url:"<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_ruta_cell",
                method:"POST",
                data:{Id_Canal:Id_Canal},
                success:function(data)
                {
                
                $('#bruta').html(data);
                }
            });
            }
            else
            {
            $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
            }
            });
/*==================END MOSTRAR DISTRIBUIDORA , CANAL , RUTA , BITACORA PDF ALTA Y BAJA SERIE==================================*/



function ConsultarPDF(){
    alert("Realmente Funciona Pero No Funciona")
}

/*==================END MOSTRAR REGISTROS PDF CON PARAMETROS==================================*/


$.ajax({
            url:"<?php echo base_url();?>index.php/AutorizacionesMH/Consultar_PDF",
            method:"POST",
          

            success:function(respuesta)
            {
                var registros =eval(respuesta);
                var ROSPAN='';
                var ruta ='';

            html ='';
            html +="<table class='table' style='margin: 200 auto; border:white 2px solid; width:55%; margin-bottom:5%;'>";
            html +="<tr><th class='th'>Ruta</th><th class='th'>Estatus</th><th class='th'>N Maquina</th><th class='th'> Fecha Baja/Alta</th><th class='th'>PDF</th></tr>";
            
            
           
            html +="<tbody>";
              for (var i = 0; i <registros.length; i++) {
                               
                  html +="<tr>";

                  if(registros[i]["estatus"]=='ALTA'){

                    html+="<td rowspan='2' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Ruta"]+"</td>";

                  }

                  html+="<td>"+registros[i]["estatus"]+"</td><td >"+registros[i]["n_maquina"]+"</>";
                  
                  if(registros[i]["estatus"]=='ALTA'){

                    html+="<td rowspan='2' style='vertical-align : middle;text-align:center;'>"+registros[i]["fecha_baja_alta"]+ "</td>";
                    html+="<td rowspan='2' style='vertical-align : middle;text-align:center;'><a href='<?php echo base_url();?>index.php/AutorizacionesMH/pdfdetails/"+registros[i]["Id_pdf_baja_serie"]+"' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a></td></tr>";                  

                    }

                    

              }

             

            

            html +="</tbody></table>";

            
            $(".tabla").html(html);
            }
          });


</script>

<!-- End, JavaScript -->


</html>