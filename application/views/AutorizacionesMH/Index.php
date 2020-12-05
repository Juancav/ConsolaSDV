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
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Autorizaciones.css') ?>">
  <link rel="stylesheet" type="text/css" href="  https://printjs-4de6.kxcdn.com/print.min.css">
  <script src="https://printjs-4de6.kxcdn.com/print.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>

<body>

  <div class="page-wrapper chiller-theme toggled">
    <main class="page-content">
      <section id="hero" class="wow fadeIn">
        <h1>Autorizaciones MH</h1>

        <!-- Before Send Ajax -->
        <div class="load-7" style="display: none;" id="esperando">
          <div class="square-holder">
            <div class="square"></div>
          </div>
        </div><br>

        <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">
        <div style="display:flex; justify-content:space-around; flex-wrap:wrap; width:100%;">

          <!-- Cards -->
          <div class="card w-50" style="max-width: 540px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img src="<?php echo base_url('Public/Img/Vectores/Mod_autorizacionmh_1.jpg') ?>" class="card-img" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Correlativos de facturacion</h5>
                  <p class="card-text">Ver agregar y editar autorizaciones otorgadas por el ministerio de hacienda. </p> <br>
                  <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#CrearMH"> <i class="far fa-check-circle"></i> Crear</button>
                  <button type="button" class="btn btn-primary btn-sm" Onclick="Consultar_MH();"><i class="fas fa-list"></i> Consultar</button>
                </div>
              </div>
            </div>
          </div>

          <div class="card w-50" style="max-width: 540px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img src="<?php echo base_url('Public/Img/Vectores/Mod_autorizacionmh_2.jpg') ?>" class="card-img" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">Cambio de serie</h5>
                  <p class="card-text">Realizar cambio de serie a rutas de detalle x numero de caja. </p> <br>
                  <button type="button" class="btn btn-info btn-sm" Onclick="Baja_de_serie();"> <i class="far fa-check-circle"></i> Cambio de serie</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <!--<button type="button" class="btn btn-primary" onclick="printJS('<?php echo base_url('Public/Img/Ticket_prueba1.pdf') ?>')">
          Imprimir PDF
        </button>
         <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
          Imprimir Html
        </button>-->



        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Ip pc</label>
                  <input type="text" class="form-control" id="ippc" aria-describedby="emailHelp">

                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Serial numero</label>
                  <input type="text" class="form-control" id="numeroserial" aria-describedby="emailHelp">
                  <input type="text" class="form-control" id="ipv4" aria-describedby="emailHelp" value="<?php echo $_SERVER['REMOTE_ADDR'] ?>">
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" onclick="mostrarlocalstorage()" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="localstorage()">Save changes</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Consultar autorizaciones Activas , Bajas , y Altas -->
        <div class="ConsultarMH" id="ConsultarMH" style="display: none; ">

          <div class="form-row">

            <div class="form-group col-md-3 ">
              <label for="exampleFormControlSelect1">Distribuidora</label>
              <select class="form-control" id="txtdistribuidoramh" name="txtdistribuidoramh">
                <option selected="true" disabled="disabled" value="">Seleccione distribuidora</option>

              </select>
            </div>

            <div style="margin-top:27px;">
              <button class="btn btn-outline-primary" id="btnactivemh" onclick="MHActivas();">Activas</button>
              <button class="btn btn-outline-primary" id="btninactivemh" onclick="MHInactivas();">Inactivas</button>
              <button class="btn btn-outline-primary" id="btnbackupmh" onclick="MHBackUp();">Back Up</button>

            </div>

          </div>
          <br>

          <label for="MHBackUp" class="badge badge-info" style="display:none; float:right; margin-right:7%; font-size:16px; " id="MHBackUp"> Total A.M.H BackUP: <span id="Letra2" style="font-size:20px;"></span></label>
          <label for="MHActivas" class="badge badge-success" style="display:none; float:right; margin-right:7%; font-size:16px;" id="MHactivas"> Total A.M.H Activas: <span id="Letra1" style="font-size:20px;"></span></label>
          <label for="MHInantivas" class="badge badge-danger" style="display:none; float:right; margin-right:7%; font-size:16px;" id="MhInactivas"> Total A.M.H Inactivas: <span id="Letra0" style="font-size:20px;"></span></label>

          <div for="data_mh" id="data_mh">

          </div>

        </div>

        <!-- Realizar cambio de series -->
        <div class="BajaMH" id="BajaMH" style="display: none;">

          <div style="display:block;" id="inhabilitar">
            <h5> <i class="fas fa-sort-amount-down-alt"></i> INHABILITACION DE SERIES M.H.</h5> <br>
            <button type="button" class="btn btn-outline-primary " id="btnReset"> Reiniciar </button>

            <button type="button" class="btn btn-outline-primary " id="btnconsultarcaja" OnClick="Mostrar_CajasMH();"> Consultar Cajas </button>
            <button type="button" class="btn btn-success float-right" id="btnregistrarbajaserie" OnClick="Registrar_Baja_Alta();"> <i></i> <i class="far fa-check-circle"></i> Guardar </button>
          </div>

          <div style=" display:none;" id="habilitar">
            <h5> <i class="fas fa-sort-amount-up"></i> HABILITACION DE SERIES M.H.</h5><br>
            <button type="button" class="btn btn-outline-primary " id="btnReset"> Reiniciar </button>
            <button type="button" class="btn btn-outline-primary " id="btnconsultarcajaact" OnClick="Mostrar_CajasMH_R();" style="display: none;"> Consultar Cajas </button>
            <button type="button" class="btn btn-success float-right" id="btnregistrarbajaserieact" OnClick="Registrar_Alta_MH();" style="display: none;"> <i class="far fa-check-circle"></i> Guardar </button>

          </div><br>

          <!-- Buscador -->
          <input class="form-control form-control-sm" type="text" id="busqueda" placeholder="Buscar ...">
          <!-- Contenedor de Dragg y Drops -->
          <div id="containment-wrapper">

            <div style="display:none;" id="js"></div>
            <div style="display:none;" id="jsACT"></div>

            <div>

              <div style="display: flex; justify-content:center;">

                <!-- Draggable  Cajas Activas-->
                <div class="col-md" id="Cajas_Activas" style="display: flex; flex-wrap:wrap; margin-top:20px; justify-content:space-around;">

                  <!-- AQUI IRAN LAS CAJAS ACTIVAS -->

                </div>

                <!-- Draggable  Cajas Activas (ruta primera vez )-->
                <div class="col-md" id="Cajas_Activas1" style="display:none;">

                  <!-- AQUI IRAN LAS CAJAS ACTIVAS -->

                </div>

                <!-- Droppables -->
                <div style="margin-top: 50px; margin-bottom:50px;">

                  <div id="droppable" class="droppable" style="display:block;">
                    <p>N° De Caja A Dar De Baja</p>
                    <input type="text" id="Caja_Activa" class="form-control" style="display:none">
                  </div>

                  <div id="droppableBP" class="droppableBP" style="display:block;">
                    <p>N° De Caja A Dar De alta</p>
                    <input type="text" id="Caja_BackUp" class="form-control" style="display:none">
                  </div>

                  <div id="droppableACT" class="droppableACT" style="display:none;">
                    <p>Activar Caja</p>
                    <input type="text" id="ActCaja" class="form-control" style="display:none">
                  </div>


                </div>

                <!-- Draggable  Cajas Back UP-->
                <div class="col-md" id="Cajas_BackUP" style=" height:300px; display:flex; flex-wrap:wrap; justify-content:center;  margin-top:20px; ">
                  <!-- AQUI IRAN LAS CAJAS BACK UP ACTIVAR Y DAR DE BAJA-->
                </div>

                <div class="col-md" style=" height:300px; display:none; flex-wrap:wrap; justify-content:center;  margin-top:20px; " id="Cajas_BackUP_R">


                  <!-- AQUI IRAN LAS CAJAS BACK UP PARA ACTIVAR -->


                </div>

              </div>

            </div>

          </div>



        </div>

      </section>
      <input type="radio" id="mostrar-modal" name="modal" />
      <label class="PdfDispositivos" for="mostrar-modal"><span style="font-size:22px;"><i class="fas fa-file-pdf"></i></span></label>
      <input type="radio" id="cerrar-modal" name="modal" />
      <label for="cerrar-modal">X</label>

      <div id="modal">
        <h4> <i class="fas fa-list-ul"></i> Historial baja y alta de serie. </h4><br>

        <div id="tablapdf">

          <div class="form-row">
            <div class="form-group col-md-4">
              <label for="exampleFormControlSelect1">
                <h6>Distribuidora</h6>
              </label>
              <select class="form-control" id="bdistribuidora" name="bdistribuidora">
                <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                <?php
                foreach ($arrDistribuidora as $row) {
                  echo '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
                }
                ?>
              </select>
            </div>

            <div class="form-group col-md-3">
              <label for="exampleFormControlSelect1"><strong>
                  <h6>Canal</h6>
                </strong></label>
              <select class="form-control" id="bcanal" name="bcanal">
                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
              </select>
            </div>

            <div class="form-group col-md-3">
              <label for="exampleFormControlSelect1"><strong>
                  <h6>Ruta</h6>
                </strong></label>
              <select class="form-control" id="bruta" name="bruta">
                <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
              </select>
            </div>

            <div class="col-md-2 p-4">
              <button class="btn btn-primary " id="btn_searchdispositivos" onclick="ConsultarPDF()" style="margin-top:3px;"> <i class="fas fa-search"></i></button>
            </div>

          </div>

          <div class="tabla">
          </div>

        </div>

      </div>

      <!-- Modal editar autorizaciones MH -->
      <div class="modal fade" id="EditarMH" tabindex="-1" role="dialog" aria-labelledby="EditarMH" aria-hidden="true">
        <div class="modal-dialog" role="document">

          <div class="modal-content">

            <div class="modal-header">
              <strong>
                <h5 class="modal-title" id="EditarMH"><i class="fas fa-plus"></i> EditarAutorizaciones MH</h5>
              </strong>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <div class="modal-body">
              <div class="form" style="padding: 5%;">

                <form method='POST' id="Form-Autorizacionesedith" action='<?php echo base_url('index.php/AutorizacionesMH/Ingresar_Autorizaciones') ?>' enctype="multipart/form-data">

                  <input type="text" class="form-control" id="txtidautorizacionesedith" name="txtidautorizacionesedith" style="display:none">

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:90px;">Marca </span>
                    </div>
                    <input type="text" id="txtmarcaedith" name="txtmarcaedith" class="form-control" disabled="disabled">
                  </div>



                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:90px;">Modelo</span>
                    </div>
                    <input type="text" id="txtmodeloedith" name="txtmodeloedith" class="form-control" disabled="disabled">
                  </div>



                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:90px;">Año</span>
                    </div>
                    <input type="text" id="txtañoedith" name="txtañoedith" class="form-control" disabled="disabled">
                  </div>



                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:90px;">Color</span>
                    </div>
                    <input type="text" class="form-control" id="txtcoloredith" name="txtcoloredith" disabled="disabled">
                  </div>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:90px;" data-toggle="tooltip" data-placement="top" title="Distribuidora El Salvador">Zona</span>
                    </div>
                    <input type="text" class="form-control" id="txtzonaedith" name="txtzonaedith" disabled="disabled">
                  </div>

                  <br>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;">Software</span>
                    </div>
                    <input type="text" class="form-control" id="txtsoftwareedith" name="txtsoftwareedith" value="VENTA LITE">
                  </div>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;">N° Maquina</span>
                    </div>
                    <input type="number" id="txtmaquinaedith" name="txtmaquinaedith" class="form-control">
                  </div>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir en Ticket">N° Resolucion T</span>
                    </div>
                    <input type="text" id="txtresolucionedith" name="txtresolucionedith" class="form-control">
                  </div>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir Un Rango de Ticket">N° Resolucion RT</span>
                    </div>
                    <input type="text" id="txtresolucionrtedith" name="txtresolucionrtedith" class="form-control">
                  </div>


                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;" data-toggle="tooltip" data-placement="top" title="Numero de ticket autorizados">Serie Autorizada</span>
                    </div>
                    <input type="text" id="txtseriedith" name="txtseriedith" class="form-control">
                  </div>


                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;">Fecha Solicitud</span>
                    </div>
                    <input type="date" id="txtfechasolicitudedith" name="txtfechasolicitudedith" class="form-control">
                  </div>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" style="width:180px;">Fecha Autori.</span>
                    </div>
                    <input type="date" class="form-control" id="txtfechaautorizacionedith" name="txtfechaautorizacionedith">
                  </div>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">Cantidad</span>
                    </div>
                    <input type="number" class="form-control" id="txtcantidadcorrelativoedith" name="txtcantidadcorrelativoedith">
                  </div>



                </form>

              </div>
            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
              <button type="button" class="btn btn-primary" id="MeditarMH">Guardar</button>

            </div>

          </div>

        </div>

      </div>

      <!-- Modal registro de autorizaciones MH-->
      <div class="modal fade" id="CrearMH" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel"> <i class="fas fa-plus"></i> Añadir autorizaciones MH</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div style="display: flex; justify-content:space-around; flex-wrap:wrap; width:100%">

                <div style=" width:50%">

                  <form method='POST' id="Form-Autorizaciones" action='<?php echo base_url('index.php/AutorizacionesMH/Ingresar_Autorizaciones') ?>' enctype="multipart/form-data">


                    <span>Numero de Serie</span>
                    <div class="input-group mb-3">
                      <input type="number" class="form-control" placeholder="Imei" id="txtimei" name="txtimei">
                      <div class="input-group-append">
                        <button class="btn btn-outline-info" type="button" id="btnbuscar" OnClick="Buscar_Telefonos();">Buscar</button>
                      </div>

                    </div>
                    <div>
                      <div>


                        <input type="text" class="form-control" id="txtidtelefono" name="txtidtelefono" style="display:none;">
                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:90px;">Marca </span>
                          </div>
                          <input type="text" id="txtmarca" name="txtmarca" class="form-control" disabled="disabled">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:90px;">Modelo</span>
                          </div>
                          <input type="text" id="txtmodelo" name="txtmodelo" class="form-control" disabled="disabled">
                        </div>


                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:90px;">Año</span>
                          </div>
                          <input type="text" id="txtaño" name="txtaño" class="form-control" disabled="disabled">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:90px;">Color</span>
                          </div>
                          <input type="text" class="form-control" id="txtcolor" name="txtcolor" disabled="disabled">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:90px;" data-toggle="tooltip" data-placement="top" title="Distribuidora El Salvador">Zona</span>
                          </div>
                          <input type="text" class="form-control" id="txtzona" name="txtzona" disabled="disabled">
                        </div>
                      </div>
                      <br>
                      <div>


                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;">Software</span>
                          </div>
                          <input type="text" class="form-control" id="txtsoftware" name="txtsoftware" value="VENTA LITE">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;">N° Maquina</span>
                          </div>
                          <input type="number" id="txtmaquina" name="txtmaquina" class="form-control">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir en Ticket Eje. 20108-RES-CR-05836-2020">N° Resolucion T</span>
                          </div>
                          <input type="text" id="txtresolucion" name="txtresolucion" class="form-control">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;" data-toggle="tooltip" data-placement="top" title="N° Resolucion Asignado Para Poder Imprimir Un Rango de Ticket ej. ASC-15041-029525-2020">N° Resolucion RT</span>
                          </div>
                          <input type="text" id="txtresolucionrt" name="txtresolucionrt" class="form-control">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;" data-toggle="tooltip" data-placement="top" title="Numero de ticket autorizados">Serie Autorizada</span>
                          </div>
                          <input type="text" id="txtserie" name="txtserie" class="form-control">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;">Fecha Solicitud</span>
                          </div>
                          <input type="date" id="txtfechasolicitud" name="txtfechasolicitud" class="form-control">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;">Fecha Autori.</span>
                          </div>
                          <input type="date" class="form-control" id="txtfechaautorizacion" name="txtfechaautorizacion">
                        </div>

                        <div class="input-group ">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="width:180px;">Cantidad</span>
                          </div>
                          <input type="number" class="form-control" id="txtcantidadcorrelativo" name="txtcantidadcorrelativo">
                        </div>
                        <br>

                        <div class="form-group">
                          <input type="file" id="file" name="file" class="input-file">
                          <label for="file" class="btn btn-tertiary js-labelFile">
                            <i class="icon fa fa-check"></i>
                            <span class="js-fileName">Seleccionar carta mh</span>
                          </label>
                        </div>



                      </div>
                    </div>
                    <div>

                    </div>

                </div>

                <div style=" width:40%; display:flex; align-items:center;">
                  <img src="https://extyseg.com/wp-content/uploads/2019/04/EXTYSEG-imagen-no-disponible.jpg" id="img">
                </div>
              </div>
            </div>
            <div class="modal-footer">


              <button type="reset" class="btn btn-outline-secondary" id="btnlimpiarmh">Limpiar</button>
              <button type="button" name='comprobar' id="btncomprobar" class="btn btn-primary" OnClick="validar()">Guardar</button>
              <button type="submit" class="btn btn-primary" style="display:none;" id="btnguardarmh">Guardar</button>
            </div>
            </form>
          </div>
        </div>
      </div>

    </main>

  </div>

</body>
<!-- JavaScript -->
<script>
  $(document).ready(function() {

    //Carga tabla de datos de altas y bajas de serie
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Consultar_PDF",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {
        $("#esperando").css('display', 'none');
        var registros = eval(respuesta);
        var ruta = '';

        html = '';
        html += "<table class='table'>";
        html += "<tr><th>Ruta</th><th>Estatus</th><th>N Maquina</th><th> Fecha Baja/Alta</th><th>PDF</th></tr>";

        html += "<tbody>";
        for (var i = 0; i < registros.length; i++) {

          html += "<tr>";

          if (registros[i]["estatus"] == 'ALTA') {

            html += "<td rowspan='2' style='vertical-align : middle;text-align:center;'>" + registros[i]["Nombre_Ruta"] + "</td>";

          }

          html += "<td>" + registros[i]["estatus"] + "</td><td >" + registros[i]["n_maquina"] + "</>";

          if (registros[i]["estatus"] == 'ALTA') {

            html += "<td rowspan='2' style='vertical-align : middle;text-align:center;'>" + registros[i]["fecha_baja_alta"] + "</td>";
            html += "<td rowspan='2' style='vertical-align : middle;text-align:center;'><a href='<?php echo base_url(); ?>index.php/AutorizacionesMH/pdfdetails/" + registros[i]["Id_pdf_baja_serie"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a></td></tr>";

          }



        }
        html += "</tbody></table>";
        $(".tabla").html(html);
      }
    });

    //Carga Distribuidoras.
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_distribuidora",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(data) {
        $("#esperando").css('display', 'none');

        //Distribuidora crear autorizacion
        $('#txtdistribuidoramh').html(data);
        //distribuidora consultar bajas y altas de serie
        $('#bdistribuidora').html(data);

      }
    });

    // Drop de cajas a dar de baja
    $("#droppable").droppable({
      tolerance: "intersect",
      accept: ".draggable",

      drop: function(event, ui) {

        var Id_Caja_Activa = $(ui.draggable).attr("id");

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
          .find("p")
          .html("Colocado!");
        $(this).droppable("option", "disabled", true);

      }
    });

    //Drop de cajas a dar de alta
    $("#droppableBP").droppable({
      tolerance: "intersect",
      accept: ".draggableBP",



      drop: function(event, ui) {
        // OBTENER ID DE DRAGGABLE Y SETEARLO EN UN INPUT

        var Id_Caja_BackUp = $(ui.draggable).attr("id");
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
          .find("p")
          .html("Colocado!");


        $(this).droppable("option", "disabled", true);


      }

    });

    //Drop de cajas a dar de alta (ruta nueva)
    $("#droppableACT").droppable({
      tolerance: "intersect",
      accept: ".draggableACT",



      drop: function(event, ui) {
        // OBTENER ID DE DRAGGABLE Y SETEARLO EN UN INPUT

        var Id_Caja_BackUp = $(ui.draggable).attr("id");
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
          .find("p")
          .html("Colocado!");


        $(this).droppable("option", "disabled", true);


      }

    });

    // Buscador de maquinas en cambio de serie
    $("#busqueda").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      $("#containment-wrapper  .draggable  ").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });

      $("#containment-wrapper  .draggableBP ").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });

      $("#containment-wrapper  .draggableACT ").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });


    });


    //Presionar tecla enter no enviar formulario
    $("form").keypress(function(e) {
      if (e.which == 13) {
        return false;
      }
    });

    'use strict';
    //Carga de archivos de imagen de cartel de autorizacion
    $('.input-file').each(function() {
      var $input = $(this),
        $label = $input.next('.js-labelFile'),
        labelVal = $label.html();

      $input.on('change', function(element) {
        var fileName = '';

        if (element.target.value) fileName = element.target.value.split('\\').pop();
        fileName ? $label.addClass('has-file').find('.js-fileName').html(fileName) : $label.removeClass('has-file').html(labelVal);
      });

    });

    //Cambio de modalidad al activar cajas f7 y f8
    $(document).keydown(function(tecla) {

      if (tecla.keyCode == 118) {

        document.getElementById('droppable').style.display = 'none';
        document.getElementById('droppableBP').style.display = 'none';
        document.getElementById('droppableACT').style.display = 'block';
        document.getElementById('btnconsultarcaja').style.display = 'none';
        document.getElementById('btnconsultarcajaact').style.display = 'inline';
        document.getElementById('btnregistrarbajaserie').style.display = 'none';
        document.getElementById('btnregistrarbajaserieact').style.display = 'inline';
        document.getElementById('inhabilitar').style.display = 'none';
        document.getElementById('habilitar').style.display = 'block';
        document.getElementById('Cajas_Activas').style.display = 'none';
        document.getElementById('Cajas_BackUP').style.display = 'none';
        document.getElementById('Cajas_Activas1').style.display = 'inlblockine';
        document.getElementById('Cajas_BackUP_R').style.display = 'block';


      } else if (tecla.keyCode == 119) {

        document.getElementById('droppable').style.display = 'block';
        document.getElementById('droppableBP').style.display = 'block';
        document.getElementById('droppableACT').style.display = 'none';
        document.getElementById('btnconsultarcaja').style.display = 'inline';
        document.getElementById('btnconsultarcajaact').style.display = 'none';
        document.getElementById('btnregistrarbajaserie').style.display = 'inline';
        document.getElementById('btnregistrarbajaserieact').style.display = 'none';
        document.getElementById('inhabilitar').style.display = 'block';
        document.getElementById('habilitar').style.display = 'none';
        document.getElementById('Cajas_Activas').style.display = 'block';
        document.getElementById('Cajas_BackUP').style.display = 'block';
        document.getElementById('Cajas_Activas1').style.display = 'none';
        document.getElementById('Cajas_BackUP_R').style.display = 'none';
      }


    });

    //   obtener canal segun distribuidora consultar altas y bajas de serie
    $('#bdistribuidora').change(function() {
      var Id_Distribuidora = $('#bdistribuidora').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },

          success: function(data) {

            $('#bcanal').html(data);
            $('#bruta').html('<option value="" >Seleccione la Ruta</option>');
          }
        });
      } else {
        $('#bcanal').html('<option value="" >Selecccion el canal</option>');
        $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
      }
    });

    // obtener rutas segun canal consultar altas y bajas de serie
    $('#bcanal').change(function() {
      var Id_Canal = $('#bcanal').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_ruta_cell",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          success: function(data) {

            $('#bruta').html(data);
          }
        });
      } else {
        $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
      }
    });

    // Cuando se cargue una imagen llamar al metodo readURL
    $("#file").change(function() {
      readURL(this);
    });

    //Guardar cambios realizados en la autorizacion editada
    $('#MeditarMH').click(function() {

      var id_autorizaciones = $('#txtidautorizacionesedith').val();
      var software = $('#txtsoftwareedith').val();
      var n_maquina = $('#txtmaquinaedith').val();
      var n_resolucion = $('#txtresolucionedith').val();
      var n_resolucion_rt = $('#txtresolucionrtedith').val();
      var serie_autorizada = $('#txtseriedith').val();
      var fecha_solicitud = $('#txtfechasolicitudedith').val();
      var fecha_autorizacion = $('#txtfechaautorizacionedith').val();
      var cantidad_tk = $('#txtcantidadcorrelativoedith').val();

      if (id_autorizaciones.length == 0 || software.length == 0 || n_maquina.length == 0 || n_resolucion.length == 0 || n_resolucion_rt.length == 0 || serie_autorizada.length == 0 || fecha_solicitud.length == 0 || fecha_autorizacion.length == 0 || cantidad_tk.length == 0) {

        swal.fire({
          title: 'Oooppss..',
          text: 'Todos los campos son obligatorios',
          icon: 'error'
        });
        return false;

      } else {


        $.post("<?php echo base_url(); ?>index.php/AutorizacionesMH/Actualizar_A_MH", {

            txtidautorizacionesedith: id_autorizaciones,
            txtsoftwareedith: software,
            txtmaquinaedith: n_maquina,
            txtresolucionedith: n_resolucion,
            txtresolucionrtedith: n_resolucion_rt,
            txtseriedith: serie_autorizada,
            txtfechasolicitudedith: fecha_solicitud,
            txtfechaautorizacionedith: fecha_autorizacion,
            txtcantidadcorrelativoedith: cantidad_tk,


          },
          function(data) {
            if (data == 1) {
              $('#mbtnCerrarModal').click();
              let timerInterval
              Swal.fire({
                title: 'Excelente!',
                text: 'Registro actualizado correctamente',
                icon: 'success',
                timer: 2000,
                timerProgressBar: true,
                showConfirmButton: false
              }).then((result) => {
                if (
                  result.dismiss === Swal.DismissReason.timer
                ) {
                  //Click boton consultar autorizaciones mh back up
                  $('#btnbackupmh').click();

                }
              });

            }
          });
      }
    });

    //Reiniciar darga y drops (volver a posicion inicial)
    $("#btnReset").click(function() {

      $('#Caja_BackUp').val('');
      $('#Caja_Activa').val('');
      $('#ActCaja').val('');

      $(".draggable").css({
        "top": "",
        "left": ""
      });
      $(".draggableBP").css({
        "top": "",
        "left": ""
      });
      $(".draggableACT").css({
        "top": "",
        "left": ""
      });

      $("#droppable")
        .removeClass("droppablex")
        .addClass("droppable")
        .find("p")
        .html("N° De Caja A Dar De Baja");

      $("#droppable").droppable("option", "disabled", false);


      $("#droppableBP")
        .removeClass("droppablexBP")
        .addClass("droppableBP")
        .find("p")
        .html("N° De Caja A Dar De alta");

      $("#droppableBP").droppable("option", "disabled", false);

      $("#droppableACT")
        .removeClass("droppablexBP")
        .addClass("droppableACT")
        .find("p")
        .html("Activar Caja");

      $("#droppableACT").droppable("option", "disabled", false);

    });

  });

  //Mostrar opciones para consultar autorizaciones mh
  function Consultar_MH() {

    // FORMULARIO REGISTRO MH
    document.getElementById('ConsultarMH').style.display = 'block';

    // VISUALIZACION DE TELEFONOS
    document.getElementById('BajaMH').style.display = 'none';

    // VISUALIZACION DE TELEFONOS
    document.getElementById('AutorizacionesMH').style.display = 'none';



  }
  //Mostrar opciones para realizar cambio de maquina 
  function Baja_de_serie() {
    // FORMULARIO DE TELEFONOS
    document.getElementById('BajaMH').style.display = 'block';

    // VISUALIZACION DE TELEFONOS
    document.getElementById('ConsultarMH').style.display = 'none';

    // VISUALIZACION DE TELEFONOS
    document.getElementById('AutorizacionesMH').style.display = 'none';


  }

  //Buscar datos de telefono x imei para realizar el ingreso de autorizaciones mh
  function Buscar_Telefonos() {
    var imei = $('#txtimei').serialize();
    imeip = document.getElementById('txtimei').value;

    if (imeip.length == 0) {
      swal.fire({
        showConfirmButton: false,
        timer: 1500,
        position: 'top-end',
        title: 'Oppps!!',
        text: 'Ingrese Un Imei de Telefono',
        icon: 'info',
      });

    } else {

      $.ajax({
        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Buscar_Telefonos",
        method: "POST",
        data: imei,
        dataType: "JSON",
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {
          $("#esperando").css('display', 'none');

          if (respuesta.length != 0) {
            $('#txtidtelefono').val(respuesta.Id_Telefono);
            $('#txtmarca').val(respuesta.Nombre_Marca);
            $('#txtmodelo').val(respuesta.Nombre_Modelo);
            $('#txtaño').val(respuesta.año_telefono);
            $('#txtcolor').val(respuesta.color_telefono);
            $('#txtzona').val(respuesta.Nombre_Distribuidora);

          } else {
            $('#btnlimpiarmh').click();

            swal.fire({
              title: 'Oppps...',
              text: 'Imei no fue encontrado',
              icon: 'error',
              timer: 2000,
              showConfirmButton: false,
              timerProgressBar: true
            });
          }

        }
      });
    }
  }

  // Previsualizar imagen , colocar imagen cargada del cartel de autorizacion
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

  //Validacion si el dispositivo ya tiene una autorizacion asignada.
  function validar() {

    var software, maquina, resolucion, resolucionrt, fechasolicitud, fechaautorizacion, cantidad;

    software = document.getElementById('txtsoftware').value;
    maquina = document.getElementById('txtmaquina').value;
    resolucion = document.getElementById('txtresolucion').value;
    resolucionrt = document.getElementById('txtresolucionrt').value;
    serie = document.getElementById('txtserie').value;
    fechasolicitud = document.getElementById('txtfechasolicitud').value;
    fechaautorizacion = document.getElementById('txtfechaautorizacion').value;
    cantidad = document.getElementById('txtcantidadcorrelativo').value;
    var id_telefono = $('#txtidtelefono').serialize();



    if (document.getElementById("file").files.length == 0 || software.length == 0 || maquina.length == 0 || resolucion.length == 0 || resolucionrt.length == 0 || serie.length == 0 || fechasolicitud.length == 0 || fechaautorizacion.length == 0 || cantidad.length == 0) {
      swal.fire({
        title: 'Ooopppsss',
        texxt: 'Todos los campos son obligatorios',
        icon: 'error'
      });
      return false;

    } else {

      $.ajax({

        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_autorizacion",
        method: "POST",
        data: id_telefono,
        dataType: "JSON",
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {
          $("#esperando").css('display', 'none');

          if (respuesta.cantidad == 0) {
            swal.fire({
              icon: 'success',
              title: 'Excelente!',
              text: 'El registro se guardo correctamente',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false,

            });

            $('#btnguardarmh').click();


          } else {
            swal.fire({
              icon: 'warning',
              title: 'Upppss.',
              text: 'Este dispositivo ya tiene una autorizacion asignada, no puede ser registrada nuevamente',
              timer: 2500,
              timerProgressBar: true,
              showConfirmButton: false,
            });

            return false;


          }

        }
      });


    }


  }

  //Consultar numero de maquinas Activas
  function MHActivas() {


    var distribuidora = $('#txtdistribuidoramh').serialize();


    if (distribuidora.length == 0) {
      swal.fire({
        icon: 'error',
        title: 'Opppss',
        text: 'Seleccione una distribuidora para realizar la busqueda.',
      });

    } else {

      var distribuidora = $('#txtdistribuidoramh').serialize();

      $.ajax({
        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_autorizaciones_activas",
        method: "POST",
        data: distribuidora,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {
          $("#esperando").css('display', 'none');

          var registros = eval(respuesta);

          html = "<h4><i class='fas fa-list'> </i> Autorizaciones MH Activas</h4>";
          html += "<table class='table' id='tablemh' ><thead>";
          html += "<tr><th style='display:none;'>ID MH</th><th>Distribuidora</th><th>N. Maquina</th><th>Ruta</th><th>Marca</th><th>Modelo</th><th>Imei</th><th>Serie Autorizada</th><th>App</th></tr>"
          html += "</thead><tbody>";

          for (var i = 0; i < registros.length; i++) {
            html += "<tr><td style='display:none;'>" + registros[i]["id_autorizaciones"] + "</td>" +
              "<td>" + registros[i]["Nombre_Distribuidora"] + "</td>" +
              "<td>" + registros[i]["n_maquina"] + "</td>" +
              "<td>" + registros[i]["Nombre_ruta"] + "</td>" +
              "<td>" + registros[i]["Nombre_marca"] + "</td>" +
              "<td>" + registros[i]["nombre_Modelo"] + "</td>" +
              "<td>" + registros[i]["imei_telefono"] + "</td>" +
              "<td>" + registros[i]["serie_autorizada"] + "</td>" +
              "<td>" + registros[i]["software"] + "</td></tr>";

          };

          html += "</tbody></table>";
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

  //Consultar numero de maquinas Inactivas
  function MHInactivas() {

    var distribuidora = $('#txtdistribuidoramh').serialize();
    if (distribuidora.length == 0) {
      swal.fire({
        icon: 'error',
        title: 'Opppss',
        text: 'Seleccione una distribuidora para realizar la busqueda.',
      });
      return false;

    } else {
      $.ajax({
        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_autorizaciones_inactivas",
        method: "POST",
        data: distribuidora,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {
          $("#esperando").css('display', 'none');

          var registros = eval(respuesta);

          html = "<h4 > <i class='fas fa-list'> </i> Autorizaciones MH Inactivas</h4>";
          html += "<table class='table' id='tablemh' ><thead>";
          html += "<tr><th style='display:none;'>ID MH</th><th>Distribuidora</th><th>N. Maquina</th><th>Ruta</th><th>Marca</th><th>Modelo</th><th>Imei</th><th>Serie Autorizada</th><th>App</th></tr>"
          html += "</thead><tbody>";

          for (var i = 0; i < registros.length; i++) {
            html += "<tr><td style='display:none;'>" + registros[i]["id_autorizaciones"] + "</td>" +
              "<td>" + registros[i]["Nombre_Distribuidora"] + "</td>" +
              "<td>" + registros[i]["n_maquina"] + "</td>" +
              "<td>" + registros[i]["Nombre_ruta"] + "</td>" +
              "<td>" + registros[i]["Nombre_marca"] + "</td>" +
              "<td>" + registros[i]["nombre_Modelo"] + "</td>" +
              "<td>" + registros[i]["imei_telefono"] + "</td>" +
              "<td>" + registros[i]["serie_autorizada"] + "</td>" +
              "<td>" + registros[i]["software"] + "</td></tr>";

          };

          html += "</tbody></table>";


          $("#data_mh").html(html);

          var count = $('#tablemh > * > tr').length;
          var countx = count - 1;

          $("#Letra0").html(countx);
          document.getElementById('MHBackUp').style.display = 'none';
          document.getElementById('MHactivas').style.display = 'none';
          document.getElementById('MhInactivas').style.display = 'block';
        }

      });
    }



  }

  //Consultar numero de maquinas de Back Up
  function MHBackUp() {

    var distribuidora = $('#txtdistribuidoramh').serialize();

    if (distribuidora.length == 0) {
      swal.fire({
        icon: 'error',
        title: 'Opppss',
        text: 'Seleccione una distribuidora para realizar la busqueda.',
      });
      return false;

    } else {
      $.ajax({
        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/fetch_autorizaciones_backup",
        method: "POST",
        data: distribuidora,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {
          $("#esperando").css('display', 'none');

          var registros = eval(respuesta);

          html = "<h4 > <i class='fas fa-list'> </i> Autorizaciones MH Back Up</h4>";
          html += "<table class='table' id='tablemh'><thead>";
          html += "<tr><th style='display:none;'>ID MH</th><th>Distribuidora</th><th>N. Maquina</th><th>Marca</th><th >Modelo</th><th>Imei</th><th>Serie Autorizada</th><th >App</th><th>Accion</th></tr>"
          for (var i = 0; i < registros.length; i++) {
            html += "<tr><td  style='display:none;'>" + registros[i]["id_autorizaciones"] + "</td>" +
              "<td>" + registros[i]["Nombre_Distribuidora"] + "</td>" +
              "<td>" + registros[i]["n_maquina"] + "</td>" +
              "<td>" + registros[i]["Nombre_marca"] + "</td>" +
              "<td>" + registros[i]["nombre_Modelo"] + "</td>" +
              "<td>" + registros[i]["imei_telefono"] + "</td>" +
              "<td>" + registros[i]["serie_autorizada"] + "</td>" +
              "<td>" + registros[i]["software"] + "</td>" +

              "<td><button type='button' class='btn btn-outline-primary'  data-toggle='modal' data-target='#EditarMH' onClick='Datos_modal_mh(\"" + registros[i]["id_autorizaciones"] +
              "\",\"" + registros[i]["Nombre_marca"] +
              "\",\"" + registros[i]["nombre_Modelo"] +
              "\",\"" + registros[i]["año_telefono"] +
              "\",\"" + registros[i]["color_telefono"] +
              "\",\"" + registros[i]["Nombre_Distribuidora"] +
              "\",\"" + registros[i]["software"] +
              "\",\"" + registros[i]["n_maquina"] +
              "\",\"" + registros[i]["n_resolucion"] +
              "\",\"" + registros[i]["n_resolucion_rt"] +
              "\",\"" + registros[i]["serie_autorizada"] +
              "\",\"" + registros[i]["fecha_solicitud"] +
              "\",\"" + registros[i]["fecha_autorizacion"] +
              "\",\"" + registros[i]["cantidad_tk"] + "\");'><i class='fas fa-edit'></i></button>";


          };

          html += "</tbody></table>";


          $("#data_mh").html(html);

          var count = $('#tablemh > * > tr').length;
          var countx = count - 1;

          $("#Letra2").html(countx);
          document.getElementById('MHactivas').style.display = 'none';
          document.getElementById('MhInactivas').style.display = 'none';
          document.getElementById('MHBackUp').style.display = 'block';

        }

      });
    }




  }

  //Colocar datos en el modal para editar las autorizaciones MH
  function Datos_modal_mh(id_autorizaciones, Nombre_marca, nombre_Modelo, año_telefono, color_telefono, Nombre_Distribuidora, software, n_maquina, n_resolucion, n_resolucion_rt, serie_autorizada, fecha_solicitud, fecha_autorizacion, cantidad_tk) {
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

  //Consultar maquinas activas y asignadas (Draggables)
  function Mostrar_CajasMH() {

    $.ajax({
      url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Mostrar_CajasMH",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {
        $("#esperando").css('display', 'none');

        var registros = eval(respuesta);
        $("#btnReset").click();
        $("#Cajas_Activas").empty();
        $("#Cajas_BackUP").empty();
        $("#Cajas_BackUP_R").empty();
        $('#js').empty();

        htmlA = "";
        htmlB = "";
        js = "";



        for (var i = 0; i < registros.length; i++) {

          if (registros[i]["estado"] == 1) {

            htmlA += "<div id='" + registros[i]["Id_autorizaciones"] + "' name='draggableA' class='draggable' >" +
              "<label >" +
              "Ruta: " + registros[i]["Nombre_Ruta"] + " <br> <i class='fas fa-archive'></i> Numero de maquina <b>" + registros[i]["n_maquina"] + "</b></label>" +
              "</div>";

          } else if (registros[i]["estado"] == 2) {

            htmlB += "<div id='" + registros[i]["Id_autorizaciones"] + "' name='draggableB' class='draggableBP' >" +
              "<label >" +
              "Ruta: " + registros[i]["Nombre_Ruta"] + " <br> <i class='fas fa-archive'></i> Numero de maquina <b>" + registros[i]["n_maquina"] + "</b></label>" +
              "</div>";

          }

          js += "<script>";
          js += "$(function(){$('#" + registros[i]["Id_autorizaciones"] + "').draggable({ containment: '#containment-wrapper', revert: 'invalid' })})";
          js += "<\/script>";


        }
        //Colocar draggables y colocar codigo javascript
        $("#Cajas_Activas").html(htmlA);
        $("#Cajas_BackUP").html(htmlB);
        $("#js").html(js);
      }
    });



  }

  //Consultar maquinas asignadas (Draggables ,ruta nueva)
  function Mostrar_CajasMH_R() {

    $.ajax({
      url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Mostrar_CajasMH",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {
        $("#esperando").css('display', 'none');

        var registros = eval(respuesta);
        $("#btnReset").click();
        $("#Cajas_Activas").empty();
        $("#Cajas_BackUP").empty();
        $("#Cajas_BackUP_R").empty();
        $('#js').empty()

        html = "";
        js = "";



        for (var i = 0; i < registros.length; i++) {

          if (registros[i]["estado"] == 2 && registros[i]["estado_cell"] == "RESERVADO") {

            html += "<div id='" + registros[i]["Id_autorizaciones"] + "' name='draggableB' class='draggableACT' >" +
              "<label>" +
              "Ruta: " + registros[i]["Nombre_Ruta"] + " <br> <i class='fas fa-archive'></i> Caja numero: " + registros[i]["n_maquina"] + " </label>" +
              "</div>";

          }

          js += "<script>";
          js += "$(function(){$('#" + registros[i]["Id_autorizaciones"] + "').draggable({ containment: '#containment-wrapper', revert: 'invalid' })})";
          js += "<\/script>";


        }




        $("#Cajas_BackUP_R").html(html);
        $("#jsACT").html(js);
      }
    });



  }

  //Realizar cambio de numero de maquinas ( Baja y alta de serie)
  function Registrar_Baja_Alta() {


    n_maquina_baja = document.getElementById("Caja_Activa").value;
    n_maquina_alta = document.getElementById("Caja_BackUp").value;


    if (n_maquina_baja.length == 0 && n_maquina_alta.length == 0) {

      swal.fire({
        title: 'Oooppsss',
        title: 'Coloque los numeros de maquina en los cuadros respectivos',
        icon: 'error'
      });
      return false;

    } else if (n_maquina_baja.length == 0) {
      swal.fire({
        title: 'Oopppsss..',
        text: 'Coloque la caja a dar de Baja',
        type: 'error'
      });
      return false;
    } else if (n_maquina_alta.length == 0) {
      swal.fire({
        title: 'Oopppsss..',
        text: 'Coloque la caja a dar de Alta',
        type: 'error'
      });
      return false;
    } else {


      $.ajax({
        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Registrar_Baja_Alta",
        method: 'POST',
        data: {
          Caja_Activa: n_maquina_baja,
          Caja_BackUp: n_maquina_alta
        },
        beforeSend: function() {
          $("#esperando").css('display', 'block');
          $('#btnregistrarbajaserie').prop('disabled', true);
        },
        success: function(data) {
          $("#esperando").css('display', 'none');
          if (data == 1) {

            Swal.fire({
              title: 'Excelente!',
              text: 'Registro guardado correctamente',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {

                location.reload();
              }
            });
          }
        }
      });
    }
  }

  //Realizar cambio de numero de maquina (Alta de serie ruta nueva)
  function Registrar_Alta_MH() {

    n_maquina_alta = document.getElementById("ActCaja").value;

    if (n_maquina_alta.length == 0) {

      swal.fire({
        title: 'Oopppss',
        text: 'Coloque una caja para Activar',
        icon: 'error'
      });
      return false;


    } else {

      $.ajax({
        url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Registrar_Alta_MH",
        method: 'POST',
        data: {
          Caja_BackUp: n_maquina_alta
        },
        beforeSend: function() {
          $("#esperando").css('display', 'block');
          $('#btnregistrarbajaserieact').prop('disabled', true);
        },
        success: function(data) {
          $("#esperando").css('display', 'none');

          if (data == 1) {

            Swal.fire({
              title: 'Excelente!',
              text: 'Registro guardado correctamente',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {

                location.reload();
              }
            });
          }
        }
      });
    }
  }

  //Consultar datos de bajas y altas de serie x ruta
  function ConsultarPDF() {

    let Id_ruta = $("#bruta").val();
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/AutorizacionesMH/Consultar_PDF_r",
      method: "POST",
      data: {
        Id_ruta: Id_ruta
      },
      beforeSend: function() {
        $("#esperando").css('display', 'block');
        $('#btnregistrarbajaserieact').prop('disabled', true);
      },
      success: function(respuesta) {
        $("#esperando").css('display', 'none');
        var registros = eval(respuesta);

        html = '';
        html += "<table class='table'>";
        html += "<tr><th >Ruta</th><th>Estatus</th><th>N Maquina</th><th> Fecha Baja/Alta</th><th>PDF</th></tr>";



        html += "<tbody>";
        for (var i = 0; i < registros.length; i++) {

          html += "<tr>";

          if (registros[i]["estatus"] == 'ALTA') {

            html += "<td rowspan='2' style='vertical-align : middle;text-align:center;'>" + registros[i]["Nombre_Ruta"] + "</td>";

          }

          html += "<td>" + registros[i]["estatus"] + "</td><td >" + registros[i]["n_maquina"] + "</>";

          if (registros[i]["estatus"] == 'ALTA') {

            html += "<td rowspan='2' style='vertical-align : middle;text-align:center;'>" + registros[i]["fecha_baja_alta"] + "</td>";
            html += "<td rowspan='2' style='vertical-align : middle;text-align:center;'><a href='<?php echo base_url(); ?>index.php/AutorizacionesMH/pdfdetails/" + registros[i]["Id_pdf_baja_serie"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a></td></tr>";

          }



        }

        html += "</tbody></table>";
        $(".tabla").html(html);
      }
    });
  }
</script>

</html>