<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Empleado</title>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

  <!--Icon page-->
  <link href="Public/Img/favicon.png" rel="icon">
  <!-- Css empleados -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Empleados.css') ?>">

</head>

<body>

  <div class="page-wrapper chiller-theme toggled">

    <!-- Contenido de la pagina empleado -->
    <main class="page-content">

      <!-- Titulo -->
      <section id="hero" class="wow fadeIn">
        <br>
        <h1>Empleados</h1>
        <div class="load-7" style="display: none;" id="esperando">
          <div class="square-holder">
            <div class="square"></div>
          </div>
        </div>
        <br>
      </section>
      <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">
      <div class="form-row p-1" style="display:flex; justify-content:space-around;">
        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="<?php echo base_url('Public/Img/Vectores/Mod_empleados_1.jpg') ?>" class="card-img" alt="...">
            </div>

            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Vista Empleados</h5>
                <p class="card-text">Visualizacion y actualizacion de los empleados por sucursal y por tipo de empleado</p>
                <br>
                <form id="form-vis">

                  <div class="form-row">


                    <!-- Filtro dsitribuidora -->
                    <div class="form-group col-md-4">

                      <label for="x">Distribuidora</label>
                      <select class="form-control" id="Cdistribuidora" name="Cdistribuidora" required>
                        <option selected="true" disabled="disabled" value="">Seleccione distribuidora</option>
                        <?php
                        foreach ($arrDistribuidora as $row) {
                          echo '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
                        }
                        ?>
                      </select>

                    </div>

                    <!-- Filtro tipo empleado -->
                    <div class="form-group col-md-4">
                      <label for="x">Tipo </label>
                      <select class="form-control" id="Ccargo" name="Ccargo" required>
                        <option selected="true" disabled="disabled" value="">Seleccione Tipo Empleado</option>
                        <option value='VENDEDOR'>VENDEDOR</option>
                        <option value='IMPULSADORA'>IMPULSADORA</option>
                        <option value='SUPERVISOR'>SUPERVISOR</option>
                        <option value='VENDEDOR JR'>VENDEDOR JR</option>
                        <option value='SUPERVISOR JR'>SUPERVISOR JR</option>
                        <option value='REPARTO'>REPARTO</option>
                        <option value='AUXILIAR DE REPARTO'>AUXILIAR DE REPARTO</option>
                        <option value='JEFE DE VENTA'>JEFE DE VENTA</option>
                        <option value='ANALISTA'>ANALISTA</option>
                      </select>
                    </div>

                    <div class="form-group col-md-2">
                      <button type="button" name='buscar' id='buscar' class="btn btn-primary" style="margin-top:25px;" OnClick="mostrarDatos();"><i class="fas fa-search"></i></button>
                    </div>
                  </div>

                </form>

              </div>
            </div>
          </div>
        </div>


        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="<?php echo base_url('Public/Img/Vectores/Mod_empleados_6.png') ?>" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Acciones para empleados</h5>
                <p class="card-text">Creacion de empleados y asignacion de equipo de facturacion para todos los empleados del area de ventas.</p>
                <br><br>

                <button class="btn btn-primary btn-small" data-toggle="modal" data-target="#crearempleado"><i class="fas fa-plus"></i> Nuevo empleado</button>
                <button class="btn btn-outline-success btn-small" data-toggle="modal" data-target="#Asignarequipo"><i class="far fa-check-circle"></i> Asignar</button>

              </div>
            </div>
          </div>
        </div>
      </div>

      <hr>
      <!-- Se inserta tabla de datos consultados -->
      <div id="listaEmpleados">
        <input type="hidden" class="form-control" id="txtid" name="txtid">
      </div>
    </main>

    <!-- Modal Editar Empleado-->
    <div class="modal fade" id="ModalEdithPersona" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">

        <div class="modal-content">

          <div class="modal-header">
            <h4 class="modal-title" id="x">Actualizar Datos</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <!-- Contenido de formulario -->
          <div class="modal-body">

            <!-- Formulario para editar empleado -->
            <form method='POST' id='form_empleados_edith' name='form_empleados_edith'>
              <!-- Campo Id Empleado -->
              <input type="hidden" class="form-control" id="mtxtid" name="mtxtid" hiden>

              <!-- Campos carnet,dui,nombre -->
              <div>
                <!-- Campo Carnet -->
                <div class="form-group">
                  <label for="inputEmail4">Numero de Carnet</label>
                  <input type="number" class="form-control" id="mtxtcarnet" name="mtxtcarnet" placeholder="Carnet">
                </div>
                <!-- Campo Dui -->
                <div class="form-group">
                  <label for="inputPassword4">Numero De Dui</label>
                  <input type="text" class="form-control" id="mtxtdui" name="mtxtdui" placeholder="00000000-0">
                </div>
                <!-- Campo Nombre -->
                <div class="form-group">
                  <label for="inputAddress">Nombre</label>
                  <input type="text" class="form-control" id="mtxtnombre" name="mtxtnombre" placeholder="">
                </div>
              </div>
              <!-- Campos cargo, Fecha ingreso -->
              <div>
                <!-- Campo Cargo -->
                <div class="form-group">
                  <label for="inputState">Cargo</label>
                  <select id="mtxtcargo" name='mtxtcargo' class="form-control">
                    <option selected="true" disabled="disabled" value="">Seleccione El Cargo</option>
                    <option value='VENDEDOR'>VENDEDOR</option>
                    <option value='IMPULSADORA'>IMPULSADORA</option>
                    <option value='SUPERVISOR'>SUPERVISOR</option>
                    <option value='VENDEDOR JR'>VENDEDOR JR</option>
                    <option value='SUPERVISOR JR'>SUPERVISOR JR</option>
                    <option value='REPARTO'>REPARTO</option>
                    <option value='AUXILIAR DE REPARTO'>AUXILIAR DE REPARTO</option>
                    <option value='JEFE DE VENTA'>JEFE DE VENTA</option>
                    <option value='ANALISTA'>ANALISTA</option>
                  </select>
                </div>
                <!-- Campo Fecha Ingreso -->
                <div class="form-group">
                  <label for="inputAddress2">Fecha Ingreso</label>
                  <input type="date" class="form-control" id="mtxtfecha" name="mtxtfecha">
                </div>

              </div>
              <!-- Campos distribuidora, canal , ruta -->
              <div>
                <!-- Campo Distribuidora -->
                <div class="form-group ">
                  <label for="exampleFormControlSelect1">Distribuidora</label>
                  <select class="form-control" id="mtxtdistribuidora" name="mtxtdistribuidora">
                    <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                    <?php
                    foreach ($arrDistribuidora as $row) {
                      echo '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
                    }
                    ?>
                  </select>
                </div>
                <!-- Campo Canal -->
                <div class="form-group ">
                  <label for="exampleFormControlSelect1"><strong>
                      <h6>Canal</h6>
                    </strong></label>
                  <select class="form-control" id="mtxtcanal" name="mtxtcanal">
                    <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                  </select>
                </div>
                <!-- Campo Ruta -->
                <div class="form-group ">
                  <label for="exampleFormControlSelect1"><strong>
                      <h6>Ruta Asignada</h6>
                    </strong></label>
                  <select class="form-control" id="mtxtruta" name="mtxtruta">
                    <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                  </select>
                </div>
              </div>

            </form>

          </div>

          <!-- Botones -->
          <div class="modal-footer">
            <button type="button" class="btn btn-outline-danger" id='mbtnCerrarModal' data-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" id='mbtnUpdPerona'>Guardar</button>

          </div>

        </div>

      </div>
    </div>

    <!-- Modal crear empleados-->
    <div class="modal fade" id="crearempleado" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"> <i class="fas fa-plus"></i> Nuevo Empleado</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

            <!-- Foto insertada de empleado -->
            <div style="display:flex; justify-content: space-around; margin-bottom:20px; flex-wrap:wrap;">
              <div>
                <img src="../Public/Img/sin_perfil.jpg" width="200px" height="250px" id="img" class="muestraimg">
              </div>
              <form method='POST' id='form_empleados' name='form_empleados' action='<?php echo base_url('index.php/Empleados/Ingresar_Empleados') ?>' enctype="multipart/form-data">

                <div>
                  <!-- Campo carnet -->
                  <div class="form-group ">
                    <label for="x">Numero de Carnet</label>
                    <input type="number" class="form-control" id="txtcarnet" name="txtcarnet" placeholder="Carnet">
                  </div>
                  <!-- Campo dui -->
                  <div class="form-group  ">
                    <label for="x">Numero De Dui</label>
                    <input type="text" class="form-control" id="txtdui" name="txtdui" placeholder="00000000-0">
                  </div>
                  <!-- Campo insertar foto empleado -->
                  <div class="form-group ">
                    <label for="exampleFormControlSelect1">Foto Empleado</label>

                    <div class="custom-file ">
                      <input type="file" class="custom-file-input" id="foto_empleado" name="foto_empleado">
                      <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
                    </div>

                  </div>
                </div>





            </div>

            <div class="form-row">

              <!-- Campo nombre -->
              <div class="form-group  col-md-12">
                <label for="x">Nombre</label>
                <input type="text" class="form-control" id="txtnombre" name="txtnombre" placeholder="" autocomplete="off">
              </div>
              <!-- Campo cargo -->
              <div class="form-group  col-md-6">
                <label for="x">Cargo</label>
                <select id="txtcargo" name='txtcargo' class="form-control">
                  <option selected="true" disabled="disabled" value="">Seleccione El Cargo</option>
                  <option value='VENDEDOR'>VENDEDOR</option>
                  <option value='IMPULSADORA'>IMPULSADORA</option>
                  <option value='SUPERVISOR'>SUPERVISOR</option>
                  <option value='VENDEDOR JR'>VENDEDOR JR</option>
                  <option value='SUPERVISOR JR'>SUPERVISOR JR</option>
                  <option value='REPARTO'>REPARTO</option>
                  <option value='AUXILIAR DE REPARTO'>AUXILIAR DE REPARTO</option>
                  <option value='JEFE DE VENTA'>JEFE DE VENTA</option>
                  <option value='ANALISTA'>ANALISTA</option>
                </select>
              </div>
              <!-- Campo fecha ingreso -->
              <div class="form-group  col-md-6">
                <label for="x">Fecha Ingreso</label>
                <input type="date" class="form-control" id="txtfecha" name="txtfecha">
              </div>
              <!-- Campo dsitribuidora -->
              <div class="form-group  col-md-12">
                <label for="x">Distribuidora</label>
                <select class="form-control" id="distribuidora" name="distribuidora">
                  <option selected="true" disabled="disabled" value="">Seleccione Distribuidora</option>

                  <?php
                  foreach ($arrDistribuidora as $row) {
                    echo '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
                  }
                  ?>
                </select>
              </div>
              <!-- Campo Canal -->
              <div class="form-group col-md-6">
                <label for="x">Canal</label>
                <select class="form-control" id="canal" name="canal">
                  <option selected="true" disabled="disabled" value="">Seleccione Canal</option>

                </select>
              </div>
              <!-- Campo ruta -->
              <div class="form-group col-md-6">
                <label for="x">Ruta Asignada</label>
                <select class="form-control" id="ruta" name="ruta">
                  <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                </select>
              </div>

            </div>

          </div>
          <div class="modal-footer">
            <button type="reset" name='limpiar' class="btn btn-outline-danger" style="margin-right:10px;">Limpiar</button>
            <button type="submit" name='guardar' id="btnguardarempleado" class="btn btn-primary" style="display: none;">Guardar</button>
            <button type="button" name='comprobar' id="btncomprobar" class="btn btn-primary" OnClick="validar()">Guardar</button>
          </div>
        </div>
        </form>
      </div>
    </div>

    <!-- Modal Asignacion de equipo Empleado-->
    <div class="modal fade" id="Asignarequipo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">

        <div class="modal-content">

          <div class="modal-header">
            <div>
              <h4 class="modal-title" id="x"> <i class="far fa-check-circle"></i> Asignacion de equipo</h4>
            </div>
            <!-- Botones superior derecho -->
            <div class="">
              <button class="btn btn-outline-primary button" id="btnAsigVend" OnClick="btnAsigVend();"><i class="fas fa-male"></i></button>
              <button class="btn btn-outline-danger button" id="btnAsigImp" OnClick="btnAsigImp();"><i class="fas fa-female"></i></button>
            </div>
            <div>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

          </div>

          <!-- Contenido de formulario -->
          <div class="modal-body" style="display: flex; justify-content:space-around; width:100%; flex-wrap:wrap;">

            <!-- Accesorios vendedores -->
            <div style="width:25%; min-width:350px; display:flex; flex-direction:column;" id="AccesoriosVend">
              <br>
              <!-- Radio Power Bank -->
              <label for="rdo-1" class="btn-radio">
                <input type="radio" id="rdo-1" name="PW">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Power Bank</span>
              </label>

              <!-- Radio Cable USB -->
              <label for="rdo-2" class="btn-radio">
                <input type="radio" id="rdo-2" name="CU">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Cable Usb</span>
              </label>

              <!-- Radio Vidrio Templado -->
              <label for="rdo-3" class="btn-radio">
                <input type="radio" id="rdo-3" name="VT">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Vidrio Templado</span>
              </label>

              <!-- Radio Estuche Protector -->
              <label for="rdo-4" class="btn-radio">
                <input type="radio" id="rdo-4" name="EP">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Estuche Protector</span>
              </label>

              <!-- Radio Estche Impresora -->
              <label for="rdo-5" class="btn-radio">
                <input type="radio" id="rdo-5" name="EI">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Estuche Impresora</span>
              </label>

              <!-- Radio Cargador Telefono -->
              <label for="rdo-6" class="btn-radio">
                <input type="radio" id="rdo-6" name="CT">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Cargador Telefono</span>
              </label>

              <!-- Radio Cargador Impresora -->
              <label for="rdo-7" class="btn-radio">
                <input type="radio" id="rdo-7" name="CI">
                <svg width="20px" height="20px" viewBox="0 0 20 20">
                  <circle cx="10" cy="10" r="9"></circle>
                  <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                  <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                </svg>
                <span>Cargador Impresora</span>
              </label>

              <!-- Campo Observacion -->
              <div class="form-group col-md-10">
                <label for="inputEmail4">Observacion</label>
                <input type="text" class="form-control" id="txtobservacion" name="txtobservacion" placeholder="Observacion">
              </div>

            </div>

            <!-- Formulario Asignacion de Equipo Vendedores-->
            <div id="formAsigEqui" style="width:50%; min-width:350px;">

              <!-- Campo Distribuidora -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Distribuidora</label>
                <select class="form-control" id="asigtxtdistribuidora">
                  <option selected="true" disabled="disabled" value="">Seleccione Distribuidora</option>
                  <?php
                  foreach ($arrDistribuidora as $row) {
                    echo '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
                  }
                  ?>
                </select>
              </div>

              <!-- Campo Canal -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Canal</label>
                <select class="form-control" id="asigtxtcanal">
                  <option selected="true" disabled="disabled" value="">Seleccione Canal</option>

                </select>
              </div>
              <!-- Campo Ruta -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Ruta</label>
                <select class="form-control" id="asigtxtruta">
                  <option selected="true" disabled="disabled" value="">Seleccione Ruta</option>

                </select>
              </div>

              <!-- Campo Empleado -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Empleado</label>
                <select class="form-control" id="asigtxtempleado">
                  <option selected="true" disabled="disabled" value="">Seleccione Empleado</option>

                </select>
              </div>

              <!-- Campo Motivo -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Motivo</label>
                <select class="form-control" id="asigtxtmotivo">
                  <option selected="true" disabled="disabled" value="" selected>Seleccione Motivo </option>
                  <option value="PRIMERA VEZ">PRIMERA VEZ</option>
                  <option value="DESVINCULACION">DESVINCULACION</option>
                  <option value="CAMBIO DE RUTA">CAMBIO DE RUTA</option>
                  <option value="CAMBIO DE RUTA">VACACIONES</option>

                </select>
              </div>

              <!-- Botones -->

            </div>


            <!-- Accesorios Impulsadoras-->
            <div id="AccesoriosI" style="width:25%; min-width:350px; display:none; flex-direction:column;">

              <!-- Contenido de accesorios -->
              <div class="" id="Accesorios">
                <br>
                <!-- Radio Vidrio Templado -->
                <label for="rdo-8" class="btn-radio">
                  <input type="radio" id="rdo-8" name="VTI">
                  <svg width="20px" height="20px" viewBox="0 0 20 20">
                    <circle cx="10" cy="10" r="9"></circle>
                    <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                    <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                  </svg>
                  <span>Vidrio Templado</span>
                </label>
                <br>
                <!-- Radio Estuche Protector -->
                <label for="rdo-9" class="btn-radio">
                  <input type="radio" id="rdo-9" name="EPI">
                  <svg width="20px" height="20px" viewBox="0 0 20 20">
                    <circle cx="10" cy="10" r="9"></circle>
                    <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                    <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                  </svg>
                  <span>Estuche Protector</span>
                </label>
                <br>
                <!-- Radio Cargador Telefono -->
                <label for="rdo-10" class="btn-radio">
                  <input type="radio" id="rdo-10" name="CTI">
                  <svg width="20px" height="20px" viewBox="0 0 20 20">
                    <circle cx="10" cy="10" r="9"></circle>
                    <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" class="inner"></path>
                    <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" class="outer"></path>
                  </svg>
                  <span>Cargador Telefono</span>
                </label>

                <br><br>
                <!-- Campo Observacion -->
                <div class="form-group col-md-10">
                  <label for="inputEmail4">Observacion</label>
                  <input type="text" class="form-control" id="txtobservacionimp" name="txtobservacion" placeholder="Observacion">
                </div>

              </div>

            </div>

            <!-- Formulario Asignacion de Equipo  Impulsadoras-->
            <div id="formAsigEquiImp" style="display:none; width:50%; min-width:350px;">


              <!-- Campo Impulsadora Baja -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Impulsadora Baja</label>
                <input type="number" class="form-control" id="carnetbaja" placeholder="Carnet">

                </input>
              </div>

              <!-- Campo Impulsadora Baja -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Nombre Impulsadora</label>
                <input class="form-control" id="nombrebaja" placeholder="Carnet" disabled="disabled">

                </input>
              </div>

              <!-- Campo Impulsadora Alta -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Impulsadora alta</label>
                <input type="number" class="form-control" id="carnetalta" placeholder="Carnet">

                </input>
              </div>

              <!-- Campo Impulsadora Baja -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Nombre Impulsadora</label>
                <input class="form-control" id="nombrealta" placeholder="Carnet" disabled="disabled">

                </input>
              </div>

              <!-- Campo Motivo -->
              <div class="form-group">
                <label for="exampleFormControlSelect1">Motivo</label>
                <select class="form-control" id="asigtxtmotivoImp">
                  <option selected="true" disabled="disabled" value="" selected>Seleccione Motivo </option>
                  <option value="PRIMERA VEZ">PRIMERA VEZ</option>
                  <option value="DESVINCULACION">DESVINCULACION</option>
                  <option value="CAMBIO DE RUTA">CAMBIO DE RUTA</option>
                  <option value="VACACIONES">VACACIONES</option>

                </select>
              </div>




            </div>


          </div>

          <!-- Botones -->
          <div class="modal-footer">
            <button class="btn btn-outline-danger"> Limpiar</button>
            <button class="btn btn-success" id="btn_asignar_i" style="display:none;" OnClick="AsignacionEquipoI();">Asignar</button>
            <button class="btn btn-primary" id="btn_asignar_v" OnClick="AsignacionEquipo();">Asignar</button>

          </div>


        </div>
      </div>



    </div>

</body>
<input type="radio" id="mostrar-modal" name="modal" />
<label class="PdfDispositivos" for="mostrar-modal"><span style="font-size:22px;"><i class="fas fa-file-pdf"></i></span></label>
<input type="radio" id="cerrar-modal" name="modal" />
<label for="cerrar-modal">X</label>

<div id="modal">
  <h4> <i class="fas fa-list"></i> Bitacora de asignacion. </h4>
  <br>
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
        <button class="btn btn-primary " id="btn_searchAsign" style="margin-top:3px;"> <i class="fas fa-search"></i></button>
      </div>

    </div>

    <div class="" id="tabla">



    </div>

  </div>

</div>

<!-- JavaScript  y Jquery -->
<script>
  // Carga datos de distribuidora canal y ruta
  $(document).ready(function() {

    // Datos Distribuidora vista empleados
    $('#mtxtdistribuidora').change(function() {
      var Id_Distribuidora = $('#mtxtdistribuidora').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")
            $('#mtxtcanal').html(data);
            $('#mtxtruta').html('<option value="">Seleccione la Ruta</option>');
          }
        });
      } else {
        $('#mtxtcanal').html('<option value="">Selecccion el canal</option>');
        $('#mtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    // Datos Canal
    $('#mtxtcanal').change(function() {
      var Id_Canal = $('#mtxtcanal').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")
            $('#mtxtruta').html(data);
          }
        });
      } else {
        $('#mtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    // Datos canal segun distribuidora bitacora asignacion
    $('#bdistribuidora').change(function() {
      var Id_Distribuidora = $('#bdistribuidora').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")
            $('#bcanal').html(data);

          }
        });
      } else {
        $('#bcanal').html('<option value="">Algo salio mal</option>');

      }
    });

    // Datos ruta segun canal bitacora aignacion
    $('#bcanal').change(function() {
      var Id_Canal = $('#bcanal').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")
            $('#bruta').html(data);
          }
        });
      } else {
        $('#bruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });


    // Datos Distribuidora
    $('#asigtxtdistribuidora').change(function() {
      var Id_Distribuidora = $('#asigtxtdistribuidora').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")

            $('#asigtxtcanal').html(data);
            $('#asigtxtruta').html('<option value="">Seleccione la Ruta</option>');
          }
        });
      } else {
        $('#asigtxtcanal').html('<option value="">Selecccion el canal</option>');
        $('#asigtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    // Datos Canal
    $('#asigtxtcanal').change(function() {
      var Id_Canal = $('#asigtxtcanal').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")

            $('#asigtxtruta').html(data);
          }
        });
      } else {
        $('#asigtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    // Datos Ruta 
    $('#asigtxtruta').change(function() {
      var Id_Ruta = $('#asigtxtruta').val();

      if (Id_Ruta != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_empleado",
          method: "POST",
          data: {
            Id_Ruta: Id_Ruta
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")

            $('#asigtxtempleado').html(data);
          }
        });
      } else {
        $('#asigtxtempleado').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    // Validacion tecla enter
    $("form").keypress(function(e) {
      if (e.which == 13) {
        return false;
      }
    });


    // Datos canal segun distribuidora
    $('#distribuidora').change(function() {
      var Id_Distribuidora = $('#distribuidora').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")
            $('#canal').html(data);
            $('#ruta').html('<option value="" disabled="disabled" selected="true">Seleccione la Ruta</option>');
          }
        });
      } else {
        $('#canal').html('<option value="" disabled="disabled" selected="true">Selecccion el canal</option>');
        $('#ruta').html('<option value="" disabled="disabled" selected="true">Selecccione la Ruta</option>');
      }
    });

    // Datos ruta segun canal
    $('#canal').change(function() {
      var Id_Canal = $('#canal').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(data) {
            $("#esperando").css("display", "none")
            $('#ruta').html(data);
          }
        });
      } else {
        $('#ruta').html('<option value=""disabled="disabled" selected="true">Selecccione la Ruta</option>');
      }
    });


  });

  // buscar pdf por rutas
  $('#btn_searchAsign').click(function() {

    var Id_Ruta = $('#bruta').val();
    if (Id_Ruta != null) {

      $.ajax({
        url: "<?php echo base_url(); ?>index.php/Empleados/Consultar_PDF_ruta",
        data: {
          Id_Ruta: Id_Ruta
        },
        method: "POST",
        beforeSend: function() {
          $("#esperando").css("display", "block")

        },
        success: function(respuesta) {
          $("#esperando").css("display", "none")
          var registros = eval(respuesta);

          html = "<table class='table'>";
          html += "<tr><th>Ruta</th><th>Nombre</th><th>Motivo Traspaso</th><th> Fecha Traspaso</th><th>PDF</th></tr>";
          html += "<tbody>";

          for (var i = 0; i < registros.length; i++) {
            html += "<tr><td>" + registros[i]["Nombre_Ruta"] +
              "</td><td>" + registros[i]["Nombre"] +
              "</td><td>" + registros[i]["Motivo_Traspaso"] +
              "</td><td>" + registros[i]["fecha_registro"] +
              "</td><td style='display:none;'>" + registros[i]["Id_PDF"] +
              "</td><td><a href='<?php echo base_url(); ?>index.php/Empleados/pdfdetails/" + registros[i]["Id_PDF"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>" +
              "</td></tr>";


          };


          html += "</tbody></table>";


          $("#tabla").html(html);
        }
      });

    } else {
      swal.fire({
        icon: 'error',
        title: 'Opppsss...',
        text: 'Seleccione una ruta para realizar una busqueda.'
      });
      return false;
    }

  });

  // Tabla de registros
  $.ajax({
    url: "<?php echo base_url(); ?>index.php/Empleados/Consultar_PDF",
    method: "POST",
    beforeSend: function() {
      $("#esperando").css("display", "block")

    },
    success: function(respuesta) {
      $("#esperando").css("display", "none")
      var registros = eval(respuesta);

      html = "<table class='table'>";
      html += "<tr><th>Ruta</th><th>Nombre</th><th>Motivo Traspaso</th><th> Fecha Traspaso</th><th>PDF</th></tr>";
      html += "<tbody>";

      for (var i = 0; i < registros.length; i++) {
        html += "<tr><td>" + registros[i]["Nombre_Ruta"] +
          "</td><td>" + registros[i]["Nombre"] +
          "</td><td>" + registros[i]["Motivo_Traspaso"] +
          "</td><td>" + registros[i]["fecha_registro"] +
          "</td><td style='display:none;'>" + registros[i]["Id_PDF"] +
          "</td><td><a href='<?php echo base_url(); ?>index.php/Empleados/pdfdetails/" + registros[i]["Id_PDF"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>" +
          "</td></tr>";


      };


      html += "</tbody></table>";


      $("#tabla").html(html);
    }
  });

  // Funcion validar formulario  ingreso  empleado
  function validar() {

    var carnet, dui, nombre, cargo, fecha, distribuidora, canal, ruta;

    carnet = document.getElementById('txtcarnet').value;
    dui = document.getElementById('txtdui').value;
    nombre = document.getElementById('txtnombre').value;
    cargo = document.getElementById('txtcargo').value;
    fecha = document.getElementById('txtfecha').value;
    distribuidora = document.getElementById('distribuidora').value;
    canal = document.getElementById('canal').value;
    ruta = document.getElementById('ruta').value;


    if (document.getElementById("foto_empleado").files.length == 0 || carnet.length == 0 || dui.length == 0 || nombre.length == 0 || cargo.length == 0 || fecha.length == 0 || distribuidora.length == 0 || canal.length == 0 || ruta.length == 0) {
      swal.fire({
        title: "Oppps...",
        text: 'Todos Los Campos Son Obligatorios',
        icon: 'error'
      });
      return false;
    } else {

      var rutav = $('#ruta').serialize();

      if (cargo != 'VENDEDOR') {
        swal.fire({
          title: 'Excelente!',
          text: 'Se Envio Correctamente el registro',
          icon: 'success',
          timer: 1500,
          showConfirmButton: false,
          timerProgressBar: true,
        });

        $('#btnguardarempleado').click();

      } else {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Empleados/Verificacion_Empleado",
          method: "POST",
          data: rutav,
          dataType: "JSON",
          beforeSend: function() {
            $("#esperando").css("display", "block")

          },
          success: function(respuesta) {
            $("#esperando").css("display", "none")
            if (respuesta.CantidadActivos > 0) {

              swal.fire({
                title: 'Opppsss...',
                text: 'La ruta seleccionada ya cuenta con un empleado activo.',
                icon: 'warning',

              });

              return flag = 1;

            } else {

              swal.fire({
                title: 'Excelente!',
                text: 'Se Envio Correctamente el registro',
                icon: 'success',
                timer: 1500,
                showConfirmButton: false,
                timerProgressBar: true,
              });

              $('#btnguardarempleado').click();
            }
          }
        });
      }
    }
  }

  // Funcion consultar empleados
  function mostrarDatos() {

    var datos = $('#form-vis').serialize();

    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Empleados/Consultar_Empleados",
      method: "POST",
      data: datos,
      beforeSend: function() {
        $("#esperando").css("display", "block")

      },
      success: function(respuesta) {
        $("#esperando").css("display", "none")

        var registros = eval(respuesta);

        html = '<h3> Empleados </h3><br>';
        html += "<table class='table'>";
        html += "<tr style='text-align:center;'>" +
          "<th class='th' style='display:none; '>ID</th>" +
          "<th class='th' >Foto</th>" +
          "<th class='th' >Carnet</th>" +
          "<th class='th' >Dui</th>" +
          "<th class='th' >Empleado</th>" +
          "<th class='th' >Canal</th>" +
          "<th class='th' >Ruta</th>" +
          "<th class='th' style='display:none;'>Estado</th>" +
          "<th class='th' >Accion</th>" +
          "</tr>";


        html += "</thead><tbody>";

        for (var i = 0; i < registros.length; i++) {
          html += "<tr><td  style='display:none; '>" + registros[i]["Id_Empleados"] +
            "</td><td><img  width='90px' height='90px' src='" + registros[i]["foto_empleado"] +
            "'></td><td style='vertical-align : middle;text-align:center;'>" + registros[i]["Carnet"] +
            "</td><td style='vertical-align : middle;text-align:center;'>" + registros[i]["Dui"] +
            "</td><td style='vertical-align : middle;text-align:center;'>" + registros[i]["Nombre"] +
            "</td><td style='vertical-align : middle;text-align:center;'>" + registros[i]["Nombre_Canal"] +
            "</td><td style='vertical-align : middle;text-align:center;'>" + registros[i]["Nombre_Ruta"] +
            "</td><td style='vertical-align : middle;text-align:center; display:none;'>" + registros[i]["Estado"] +
            "</td><td style='vertical-align : middle;text-align:center;'>" +
            "<a href='#' data-toggle='modal' class='editar' data-target='#ModalEdithPersona' onClick='Enviar_Datos_modal(\"" + registros[i]["Id_Empleados"] +
            "\",\"" + registros[i]["Carnet"] +
            "\",\"" + registros[i]["Dui"] +
            "\",\"" + registros[i]["Nombre"] +
            "\",\"" + registros[i]["Cargo"] +
            "\",\"" + registros[i]["Fecha"] +
            "\",\"" + registros[i]["Id_Distribuidora"] +
            "\",\"" + registros[i]["Id_Canal"] +
            "\",\"" + registros[i]["Id_Ruta"] + "\");'>" +
            "<span style='font-size: 25px;'><i class='far fa-edit'></i></span>";

          if (registros[i]['Estado'] == 1) {

            html += "<a href='#' class='InactivarEmpleado' id='InactivarEmpleado' onClick='InactivarEmpleado(\"" + registros[i]["Id_Empleados"] + "\");'><span style='margin-left:5px; font-size: 30px; color:#70FF00;'><i class='fas fa-angle-double-down'></i></span></a>" + "</td></tr>";
          } else {
            html += "<a href='#' class='ActivarEmpleado' id='ActivarEmpleado' onClick='ActivarEmpleado(\"" + registros[i]["Id_Empleados"] + "\");'><span style='margin-left:5px; font-size: 30px; color:#FF2D00;'><i class='fas fa-angle-double-up'></i></span></a>" + "</td></tr>";
          }
        };
        html += "</tbody></table>";
        $("#listaEmpleados").html(html);
      }
    });
  }

  // Funcion activar empleado
  function ActivarEmpleado(Id_Empleados) {
    // alert("Empleado Activado "+Id_Empleados);
    $.post("<?php echo base_url(); ?>index.php/Empleados/Activar_Empleado", {
        txtid: Id_Empleados,
      },
      function(data) {
        if (data == 1) {

          let timerInterval
          Swal.fire({
            title: 'Excelente!',
            text: 'Empleado Activado Correctamente',
            icon: 'success',
            timer: 2000,
            showConfirmButton: false,
            timerProgressBar: true,
            onClose: () => {
              clearInterval(timerInterval)
            }
          }).then((result) => {
            if (
              result.dismiss === Swal.DismissReason.timer
            ) {
              $('#buscar').click();
            }
          });

        }
      });
  }

  // Funcion inactivar empleado
  function InactivarEmpleado(Id_Empleados) {
    // alert("Empleado Desactivado "+Id_Empleados);
    $.post("<?php echo base_url(); ?>index.php/Empleados/Inactivar_Empleado", {
        txtid: Id_Empleados,
      },
      function(data) {
        if (data == 1) {

          let timerInterval
          Swal.fire({
            title: 'Excelente!',
            text: 'Empleado Desactivado Correctamente',
            icon: 'success',
            timer: 2000,
            showConfirmButton: false,
            timerProgressBar: true,
            onClose: () => {
              clearInterval(timerInterval)
            }
          }).then((result) => {
            if (
              result.dismiss === Swal.DismissReason.timer
            ) {
              $('#buscar').click();
            }
          });

        }
      });

  }

  // Funcion enviar datos al modal editar
  function Enviar_Datos_modal(Id_Empleado, Carnet, Dui, Nombre, Cargo, Fecha, Id_Distribuidora, Id_Canal, Id_Ruta) {

    $('#mtxtid').val(Id_Empleado);
    $('#mtxtcarnet').val(Carnet);
    $('#mtxtdui').val(Dui);
    $('#mtxtnombre').val(Nombre);
    $('#mtxtcargo').val(Cargo);
    $('#mtxtfecha').val(Fecha);

    $("#mtxtdistribuidora option[value=" + Id_Distribuidora + "]").attr("selected", true);
    $("#mtxtdistribuidora").change();


    setTimeout(function() {
      $("#mtxtcanal option[value=" + Id_Canal + "]").attr("selected", true);
      $("#mtxtcanal").change();

    }, 200);


    setTimeout(function() {
      $("#mtxtruta option[value=" + Id_Ruta + "]").attr("selected", true);

    }, 600);



    // $("#mtxtruta option[value='"+Id_Ruta+"']").attr("selected",true);
    // $("#mtxtruta").change();



  }

  // Actualizar empleados campos modal
  $('#mbtnUpdPerona').click(function() {


    var carnet, dui, nombre, cargo, fecha, distribuidora, canal, ruta;
    carnet = document.getElementById("mtxtcarnet").value;
    dui = document.getElementById("mtxtdui").value;
    nombre = document.getElementById("mtxtnombre").value;
    cargo = document.getElementById("mtxtcargo").value;
    fecha = document.getElementById("mtxtfecha").value;
    distribuidora = document.getElementById("mtxtdistribuidora").value;
    canal = document.getElementById("mtxtcanal").value;
    ruta = document.getElementById("mtxtruta").value;


    if (carnet.length == 0 || dui.length == 0 || nombre.length == 0 || cargo.length == 0 || fecha.length == 0 || distribuidora.length == 0 || canal.length == 0 || ruta.length == 0) {

      swal.fire({
        title: 'Oppss...',
        text: 'Todos Los Campos Son Obligatorios',
        icon: 'error'
      });
      return false;
    } else {


      var idE = $('#mtxtid').val();
      var cat = $('#mtxtcarnet').val();
      var dui = $('#mtxtdui').val();
      var nom = $('#mtxtnombre').val();
      var cag = $('#mtxtcargo').val();
      var fec = $('#mtxtfecha').val();
      var dist = $('#mtxtdistribuidora').val();
      var can = $('#mtxtcanal').val();
      var rut = $('#mtxtruta').val();

      $.post("<?php echo base_url(); ?>index.php/Empleados/Actualizar_Empleados", {
          mtxtid: idE,
          mtxtcarnet: cat,
          mtxtdui: dui,
          mtxtnombre: nom,
          mtxtcargo: cag,
          mtxtfecha: fec,
          mtxtdistribuidora: dist,
          mtxtcanal: can,
          mtxtruta: rut

        },
        function(data) {
          if (data == 1) {
            $('#mbtnCerrarModal').click();
            let timerInterval
            Swal.fire({
              title: 'Excelente!',
              text: 'Registro Actualizado Correctamente',
              icon: 'success',
              timer: 2000,
              showConfirmButton: false,
              timerProgressBar: true,
              onClose: () => {
                clearInterval(timerInterval)
              }
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {

                $('#buscar').click();
                $('#mtxtdistribuidora').val('');
                $('#mtxtproductoAsignar').val('');
                $('#mtxtruta').val('');
              }
            });

          }
        });
    }
  });

  // Previsualizacion de imagen insertada
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

  // Coloca la imagen insertada
  $("#foto_empleado").change(function() {
    readURL(this);
  });


  // Validacion tamaño de imagen
  $(document).on('change', 'input[type="file"]', function() {

    var fileName = this.files[0].name;
    var fileSize = this.files[0].size;

    if (fileSize > 2000000) {
      swal.fire({
        title: 'La Imagen No debe superar los 2 MG',
        type: 'error'
      });
      this.value = '';
      this.files[0].name = '';
    }
  });

  // verificacion y  Asignacion Equipo De Facturacion vendedores
  function AsignacionEquipo() {

    var Distribuidora = $('#asigtxtdistribuidora').val();
    var Canal = $('#asigtxtcanal').val();
    var Ruta = $('#asigtxtruta').val();
    var Empleado = $('#asigtxtempleado').val();
    var Motivo = $('#asigtxtmotivo').val();

    // alert(Distribuidora+Canal+Ruta+Empleado+Motivo);

    if (Distribuidora == null || Canal == null || Ruta == null || Empleado == null || Motivo == null) {
      swal.fire({
        title: 'Oppps...',
        title: 'Todos Los Campos Son Obligatorios',
        icon: 'error'
      });
      return false;
    } else {

      var PW = $("#Accesorios input[name='PW']:radio").is(':checked');
      var CU = $("#Accesorios input[name='CU']:radio").is(':checked');
      var VT = $("#Accesorios input[name='VT']:radio").is(':checked');
      var EP = $("#Accesorios input[name='EP']:radio").is(':checked');
      var EI = $("#Accesorios input[name='EI']:radio").is(':checked');
      var CT = $("#Accesorios input[name='CT']:radio").is(':checked');
      var CI = $("#Accesorios input[name='CI']:radio").is(':checked');


      if (PW == 0 || CU == 0 || VT == 0 || EP == 0 || EI == 0 || CT == 0 || CI == 0) {


        var Observacion = $("#txtobservacion").val();

        if (Observacion.length == 0) {

          swal.fire({
            title: '',
            text: 'Esta seguro de no agregar una observacion?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Estoy seguro!',
          }).then((result) => {
            if (result.value) {

              Registrar_Historial();
            }
          })

        } else {
          Registrar_Historial();
        }


      } else {

        Registrar_Historial();

      }
    }



  }

  function Registrar_Historial() {
    var Distribuidora = $('#asigtxtdistribuidora').val();
    var Canal = $('#asigtxtcanal').val();
    var Ruta = $('#asigtxtruta').val();
    var Empleado = $('#asigtxtempleado').val();
    var Motivo = $('#asigtxtmotivo').val();
    var PW = ~~($("#Accesorios input[name='PW']:radio").is(':checked'));
    var CU = ~~($("#Accesorios input[name='CU']:radio").is(':checked'));
    var VT = ~~($("#Accesorios input[name='VT']:radio").is(':checked'));
    var EP = ~~($("#Accesorios input[name='EP']:radio").is(':checked'));
    var EI = ~~($("#Accesorios input[name='EI']:radio").is(':checked'));
    var CT = ~~($("#Accesorios input[name='CT']:radio").is(':checked'));
    var CI = ~~($("#Accesorios input[name='CI']:radio").is(':checked'));
    var Observacion = $("#txtobservacion").val();



    $.post("<?php echo base_url(); ?>index.php/Empleados/Registrar_Historial", {
      asigtxtdistribuidora: Distribuidora,
      asigtxtcanal: Canal,
      asigtxtruta: Ruta,
      asigtxtempleado: Empleado,
      asigtxtmotivo: Motivo,
      PW: PW,
      CU: CU,
      VT: VT,
      EP: EP,
      EI: EI,
      CT: CT,
      CI: CI,
      txtobservacion: Observacion,


    }, function(data) {

      const swalWithBootstrapButtons = Swal.mixin({
        customClass: {
          confirmButton: 'btn btn-success',
          cancelButton: 'btn btn-danger'
        },
        buttonsStyling: false
      })
      if (data == 1) {




        swalWithBootstrapButtons.fire(
          'Excelente!',
          'Su registro ha sido guardado con exito',
          'success'
        ).then((result) => {
          if (result.value) {
            location.reload();
          }
        });

      } else if (data == 0) {

        swalWithBootstrapButtons.fire(
          'Error!',
          'Esta ruta no tiene Telefono o Impresora Asignado',
          'error'
        ).then((result) => {
          if (result.value) {
            location.reload();
          }
        });

      }
    });

  }

  // Muestra campos para asignar vendedor 
  function btnAsigVend() {

    $("#formAsigEqui").css("display", "block");
    $("#AccesoriosVend").css("display", "flex");
    $("#AccesoriosI").css("display", "none");
    $("#formAsigEquiImp").css("display", "none");

    $("#btn_asignar_v").css("display", "block");
    $("#btn_asignar_i").css("display", "none");

  }
  // Muestra campos para asignar impulsadora
  function btnAsigImp() {
    $("#formAsigEqui").css("display", "none");
    $("#AccesoriosVend").css("display", "none");

    $("#AccesoriosI").css("display", "flex");
    $("#formAsigEquiImp").css("display", "block");

    $("#btn_asignar_v").css("display", "none");
    $("#btn_asignar_i").css("display", "block");

  }

  // obtener empleado segun carnet baja
  $('#carnetbaja').change(function() {

    var Carnet = $('#carnetbaja').val();

    if (Carnet != '') {
      $.ajax({
        url: "<?php echo base_url(); ?>index.php/Empleados/fetch_impulsadora",
        method: "POST",
        data: {
          Carnet: Carnet
        },
        dataType: "JSON",
        beforeSend: function() {
          $("#esperando").css("display", "block")

        },
        success: function(data) {
          $("#esperando").css("display", "none")
          $("#nombrebaja").removeClass("inputalert");
          $("#nombrebaja").removeClass("inputsucces");

          $('#nombrebaja').val(data.Nombre);


          if (data == '') {

            $("#nombrebaja").addClass("inputalert");
            $('#nombrebaja').val('IMPULSADORA NO ENCONTRADA');


          } else {
            $("#nombrebaja").addClass("inputsucces");
          }

        }
      });
    } else {
      $('#nombrealta').val('NO ENCONTRADO');
    }
  });

  // obtener empleado segun carnet alta
  $('#carnetalta').change(function() {


    var Carnet = $('#carnetalta').val();

    if (Carnet != '') {
      $.ajax({
        url: "<?php echo base_url(); ?>index.php/Empleados/fetch_impulsadora",
        method: "POST",
        data: {
          Carnet: Carnet
        },
        dataType: "JSON",
        beforeSend: function() {
          $("#esperando").css("display", "block")

        },
        success: function(data) {
          $("#esperando").css("display", "none");
          
          $("#nombrealta").removeClass("inputalert");
          $("#nombrealta").removeClass("inputsucces");

          $('#nombrealta').val(data.Nombre);


          if (data == '') {

            $("#nombrealta").addClass("inputalert");
            $('#nombrealta').val('IMPULSADORA NO ENCONTRADA');

          } else {
            $("#nombrealta").addClass("inputsucces");
          }

        }
      });
    } else {
      $('#nombrealta').val('NO ENCONTRADO');
    }
  });

  // verificacion y  Asignacion Equipo De Facturacion impulsadoa
  function AsignacionEquipoI() {


    var Carnetbaja = $('#carnetbaja').val();
    var ImpulsadoraBaja = $('#nombrebaja').val();
    var CarnetAlta = $('#carnetalta').val();
    var ImpulsadoraAlta = $('#nombrealta').val();
    var Motivo = $('#asigtxtmotivoImp').val();


    if (Carnetbaja == null || ImpulsadoraBaja == "IMPULSADORA NO ENCONTRADA" || CarnetAlta == null || ImpulsadoraAlta == "IMPULSADORA NO ENCONTRADA" || Motivo == null) {
      swal.fire({
        title: 'Opppsss...',
        text: 'Todos Los Campos Son Obligatorios',
        icon: 'error'
      });
      return false;
    } else {

      var VT = ~~($("#AccesoriosI input[name='VTI']:radio").is(':checked'));
      var EP = ~~($("#AccesoriosI input[name='EPI']:radio").is(':checked'));
      var CT = ~~($("#AccesoriosI input[name='CTI']:radio").is(':checked'));


      if (VT == 0 || EP == 0 || CT == 0) {


        var Observacion = $("#txtobservacionimp").val();

        if (Observacion.length == 0) {

          swal.fire({
            title: '',
            text: 'Esta seguro de no agregar una observacion?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Estoy seguro!',
          }).then((result) => {
            if (result.value) {

              Registrar_HistorialImp();
            }
          })

        } else {
          Registrar_HistorialImp();
        }


      } else {

        Registrar_HistorialImp();

      }
    }



  }

  function Registrar_HistorialImp() {

    var Carnetbaja = $('#carnetbaja').val();
    var ImpulsadoraBaja = $('#nombrebaja').val();
    var CarnetAlta = $('#carnetalta').val();
    var ImpulsadoraAlta = $('#nombrealta').val();
    var Motivo = $('#asigtxtmotivoImp').val();
    var VT = ~~($("#AccesoriosI input[name='VTI']:radio").is(':checked'));
    var EP = ~~($("#AccesoriosI input[name='EPI']:radio").is(':checked'));
    var CT = ~~($("#AccesoriosI input[name='CTI']:radio").is(':checked'));
    var Observacion = $("#txtobservacionimp").val();


    $.post("<?php echo base_url(); ?>index.php/Empleados/Insert_Historial_Impulso", {
      carnetbaja: Carnetbaja,
      nombrebaja: ImpulsadoraBaja,
      carnetalta: CarnetAlta,
      nombrealta: ImpulsadoraAlta,
      asigtxtmotivoImp: Motivo,
      VT: VT,
      EP: EP,
      CT: CT,
      txtobservacionimp: Observacion,


    }, function(data) {

      const swalWithBootstrapButtons = Swal.mixin({
        customClass: {
          confirmButton: 'btn btn-success',
          cancelButton: 'btn btn-danger'
        },
        buttonsStyling: false
      })
      if (data == 1) {

        swalWithBootstrapButtons.fire(
          'Excelente!',
          'Su registro ha sido guardado con exito',
          'success'
        ).then((result) => {
          if (result.value) {
            location.reload();
          }
        });

      } else if (data == 0) {

        swalWithBootstrapButtons.fire(
          'Error!',
          'Esta Impulsadora no tiene Telefono  Asignado',
          'error'
        ).then((result) => {
          if (result.value) {
            location.reload();
          }
        });

      }
    });

  }
</script>


</html>