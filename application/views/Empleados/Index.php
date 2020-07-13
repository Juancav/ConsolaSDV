<!DOCTYPE html>
<html lang="en">

  <head>

    <style>
                
            .cntr {
              margin: auto;
            }

            .btn-radio {
              cursor: pointer;
              display: inline-block;
              float: left;
              -webkit-user-select: none;
              user-select: none;
            }
            .btn-radio:not(:first-child) {
              margin-left: 20px;
            }
            @media screen and (max-width: 480px) {
              .btn-radio {
                display: block;
                float: none;
              }
              .btn-radio:not(:first-child) {
                margin-left: 0;
                margin-top: 15px;
              }
            }
            .btn-radio svg {
              fill: none;
              vertical-align: middle;
            }
            .btn-radio svg circle {
              stroke-width: 2;
              stroke: #C8CCD4;
            }
            .btn-radio svg path {
              stroke: #008FFF;
            }
            .btn-radio svg path.inner {
              stroke-width: 6;
              stroke-dasharray: 19;
              stroke-dashoffset: 19;
            }
            .btn-radio svg path.outer {
              stroke-width: 2;
              stroke-dasharray: 57;
              stroke-dashoffset: 57;
            }
            .btn-radio input {
              display: none;
            }
            .btn-radio input:checked + svg path {
              transition: all 0.4s ease;
            }
            .btn-radio input:checked + svg path.inner {
              stroke-dashoffset: 38;
              transition-delay: 0.3s;
            }
            .btn-radio input:checked + svg path.outer {
              stroke-dashoffset: 0;
            }
            .btn-radio span {
              display: inline-block;
              vertical-align: middle;
            }
    </style>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Empleado</title>
      <!--Icon page-->
      <link href="Public/Img/favicon.png" rel="icon">

      <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Empleados.css')?>">
  </head>

  <body>

    <div class="page-wrapper chiller-theme toggled">

      <!-- Contenido de la pagina empleado -->
      <main class="page-content">
          <!-- Titulo -->
          <section id="hero" class="wow fadeIn">


       

                <br>
                  <h1 >Empleados Bocadeli</h1>
                <br>
          </section>
          
          <!-- Pestañas de navegacion -->
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                  <a class="nav-item nav-link active" id="nav-visualizar-tab" data-toggle="tab" href="#nav-visualizar" role="tab" aria-controls="nav-visualizar" aria-selected="true">Visualizar</a>
                  <a class="nav-item nav-link" id="nav-crear-tab" data-toggle="tab" href="#nav-crear" role="tab" aria-controls="nav-crear" aria-selected="false">Crear</a>
                  <a class="nav-item nav-link" id="nav-asignar-tab" data-toggle="tab" href="#nav-asignar" role="tab" aria-controls="nav-asignar" aria-selected="false">Asignar</a>
                </div>
            </nav>

          <!-- Contenido de pestañas -->
          <div class="tab-content" id="nav-tabContent">

              <!-- Contenido de pestaña Visualizar  -->
              <div class="tab-pane fade show active" id="nav-visualizar" role="tabpanel" aria-labelledby="nav-visualizar-tab">

                    <!-- Filtros -->
                    <div class='form-row' style='float:right; margin-top:50px; margin-right: -50px;'>
                    
                      <form id="form-vis" >
                      <h4 style="color:blue;"> <i class="fas fa-users"></i> Consultar Empleados</h4><br><br>
                        <div >

                          <!-- Filtro dsitribuidora -->
                          <div class="form-group " >

                                  <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                                  <select class="form-control" id="Cdistribuidora" name="Cdistribuidora" required>
                                  <option selected="true" disabled="disabled" value="">Seleccione distribuidora</option>
                                  <?php
                                      foreach($arrDistribuidora as $row)
                                      {
                                      echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                                      }
                                      ?>
                                  </select>
                          </div> 

                          <!-- Filtro tipo empleado -->
                          <div class="form-group " >
                                  <label for="exampleFormControlSelect1"><strong><h6>Tipo Empleado</h6></strong></label>
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
                                      
                          <!--Botones -->
                          <div>
                          <button type="button" class="btn btn-outline-success " disabled="disabled">Exportar</button>
                              <button type="button" name='buscar' id='buscar' class="btn btn-primary" OnClick="mostrarDatos();">Consultar</button>
                              
                          </div>

                        </div> 
                
                      </form>

                    </div>
                    <br><br>
                    <!-- Se inserta tabla de datos consultados -->
                    <div id="listaEmpleados" style='float:left;'>
                      <input type="hidden" class="form-control" id="txtid"  name="txtid" >
                    </div>

              </div>

              <!-- Contenido de pestaña Crear-->
              <div class="tab-pane fade" id="nav-crear" role="tabpanel" aria-labelledby="nav-crear-tab">
                      
                      <!-- Foto insertada de empleado -->
                      <div style="float:right;  text-align:center; margin-right:100px; margin-top:50px;">

                        <img style="border-radius:5px;  filter: drop-shadow(5px 5px 10px #444);" src="http://innovacion.uanl.mx/wp-content/uploads/2017/06/sin-perfil.jpg"  width="200px" height="250px" id="img" class="muestraimg" >
                        <br><br><br><br>
                        <h2 style=" color: #000; font-size:20px; text-align:center;">Previsualizacion De Foto De Empleado</h2>

                      </div>  

                      <!-- Div gris fondo formulario crear -->
                      <div style='background-color:#DFDFDF; border-radius:10px; width:40%; padding:10px; height:auto; margin-bottom:5%;'>
                          
                          <!-- Formulario para creacion de empleado -->
                          <div style="background:white;  border-radius:10px;  padding:40px; height:auto; ">
                            <p style="font-size:25px; color:black;">  <i class="fas fa-user-tie"></i> Creacion De Empleado </p><br>
                              <form style="font-size:16px;" method='POST' id='form_empleados' name='form_empleados' action='<?php echo base_url('index.php/Empleados/Ingresar_Empleados')?>' enctype="multipart/form-data">
                                      <!-- Campo carnet -->
                                      <div class="form-group row ">
                                        <label for="inputEmail4">Numero de Carnet</label>
                                        <input type="number" class="form-control" id="txtcarnet"  name="txtcarnet" placeholder="Carnet" >
                                      </div>
                                      <!-- Campo dui -->
                                      <div class="form-group  row ">
                                        <label for="inputPassword4">Numero De Dui</label>
                                        <input type="text" class="form-control" id="txtdui" name="txtdui" placeholder="00000000-0">
                                      </div>   
                                      <!-- Campo nombre -->
                                      <div class="form-group row ">
                                        <label for="inputAddress">Nombre</label>
                                        <input type="text" class="form-control" id="txtnombre" name="txtnombre" placeholder="" >
                                      </div>
                                      <!-- Campo cargo -->
                                      <div class="form-group row ">
                                        <label for="inputState">Cargo</label>
                                        <select id="txtcargo" name='txtcargo' class="form-control" >
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
                                      <div class="form-group row ">
                                          <label for="inputAddress2">Fecha Ingreso</label>
                                          <input type="date" class="form-control" id="txtfecha" name="txtfecha"  >
                                      </div>
                                      <!-- Campo dsitribuidora -->
                                      <div class="form-group row " >
                                        <label for="exampleFormControlSelect1">Distribuidora</label>
                                        <select class="form-control" id="distribuidora" name="distribuidora" > 
                                        <option selected="true" disabled="disabled" value="">Seleccione Distribuidora</option>
                                        
                                        <?php
                                            foreach($arrDistribuidora as $row)
                                            {
                                            echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                                            }
                                            ?>
                                        </select>
                                      </div>
                                      <!-- Campo Canal -->
                                      <div class="form-group  row " >
                                        <label for="exampleFormControlSelect1">Canal</label>
                                        <select class="form-control" id="canal" name="canal" >
                                        <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                      
                                        </select>
                                      </div> 
                                      <!-- Campo ruta -->
                                      <div class="form-group  row " >
                                        <label for="exampleFormControlSelect1">Ruta Asignada</label>
                                        <select class="form-control" id="ruta" name="ruta" >
                                        <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                        </select>
                                      </div>

                                      <!-- Campo insertar foto empleado -->
                                      <label for="exampleFormControlSelect1">Foto Empleado</label>  
                                      <div class="custom-file " style="margin-left:20px;">
                                      
                                        <input type="file" class="custom-file-input" id="foto_empleado" name="foto_empleado" lang="es">
                                        <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
                                      </div>
                                <!-- Botones -->
                                <div class="form-row" style='padding-top: 40px; padding-left: 100px;'>
                                <button type="reset" name='limpiar' class="btn btn-outline-danger" style="margin-right:10px;">Limpiar</button>
                                  <button type="submit" name='guardar'  id="btnguardarempleado" class="btn btn-primary" style="display: none;">Guardar</button>
                                  <button type="button" name='comprobar'  id="btncomprobar" class="btn btn-primary" OnClick="validar()" >Guardar</button>
                                  
                                </div>

                              </form>
                          </div>

                      </div>
                      
                
              </div>

              <!-- Contenido de pestaña Asignar-->
              <div class="tab-pane fade" id="nav-asignar" role="tabpanel" aria-labelledby="nav-asignar-tab">

                 <!-- Botones lateral derecho -->
                  <!-- <div class="colc_buttons">
                      <button class="btn btn-outline-primary button" id="btnAsigVend" OnClick="btnAsigVend();"><i class="fas fa-male"></i></button><br><br>
                      <button class="btn btn-outline-danger button" id="btnAsigImp" OnClick="btnAsigImp();"><i class="fas fa-female"></i></button><br><br>
                  </div> -->
                  <!--  -->
                 
                      <!-- Campos Accesorios Vendedores-->
                      <div id="AccesoriosVend" style="float:right; margin-top:20px; text-align:center; width:20%; margin-right:250px;" >

                                      <h2>Accesorios</h2> <br>
                                      <!-- Contenido de accesorios -->
                                      <div class="cntr row" id="Accesorios">
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
                                        <!-- Radio Estuche Impresora -->
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

                                          <br><br>
                                        <!-- Campo Observacion -->
                                        <div class="form-group row ">
                                          <label for="inputEmail4">Observacion</label>
                                          <input type="text" class="form-control" id="txtobservacion"  name="txtobservacion" placeholder="Observacion" >
                                        </div>

                                      </div>

                      </div>
                      
                      <!-- Formulario Asignacion de Equipo Vendedores-->
                      <div id="formAsigEqui" style=" width:35%;  padding:10px; background:#D1D1D1; border-radius:10px; margin-bottom:20px;">
                                    
                          <div style="ma width:100%;  padding:20px; font-size:16px; background:white; border-radius:10px;">
                                          <h2 style="font-size:20px; text-align:center;">Asignacion de Equipo Vendedores</h2><br>
                                            <!-- Campo Distribuidora -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Distribuidora</label>
                                              <select class="form-control" id="asigtxtdistribuidora" >
                                              <option selected="true" disabled="disabled" value="">Seleccione Distribuidora</option>
                                              <?php
                                                  foreach($arrDistribuidora as $row)
                                                  {
                                                  echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                                                  }
                                                  ?>
                                              </select>
                                            </div>
                                            <!-- Campo Canal -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Canal</label>
                                              <select class="form-control" id="asigtxtcanal" >
                                              <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                            
                                              </select>
                                            </div> 
                                            <!-- Campo Ruta -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Ruta</label>
                                              <select class="form-control" id="asigtxtruta" >
                                              <option selected="true" disabled="disabled" value="">Seleccione Ruta</option>
                                            
                                              </select>
                                            </div> 
                                            <!-- Campo Empleado -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Empleado</label>
                                              <select class="form-control" id="asigtxtempleado" >
                                              <option selected="true" disabled="disabled" value="">Seleccione Empleado</option>
                                            
                                              </select>
                                            </div> 
                                            <!-- Campo Motivo -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Motivo</label>
                                              <select class="form-control" id="asigtxtmotivo" >
                                              <option selected="true"  disabled="disabled" value="" selected>Seleccione Motivo  </option>
                                              <option value="PRIMERA VEZ">PRIMERA VEZ</option>
                                              <option value="DESVINCULACION">DESVINCULACION</option>
                                              <option value="CAMBIO DE RUTA">CAMBIO DE RUTA</option>
                                              <option value="CAMBIO DE RUTA">VACACIONES</option>
                                            
                                              </select>
                                            </div> 
                                            <!-- Botones -->
                                            <button class="btn btn-outline-danger" style="margin-left:60px;"> Limpiar</button>
                                            <button class="btn btn-primary" OnClick="AsignacionEquipo();">Asignar</button>
                                           

                          </div>

                      </div>


                      <!-- Campos Accesorios Impulsadoras-->
                      <div id="AccesoriosI" style="display:none; float:right; margin-top:20px; text-align:center; width:20%; margin-right:250px;" >

                                      <h2>Accesorios Impulso</h2> <br>
                                      <!-- Contenido de accesorios -->
                                      <div class="cntr row" id="Accesorios">
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
                                        <div class="form-group row ">
                                          <label for="inputEmail4">Observacion</label>
                                          <input type="text" class="form-control" id="txtobservacionimp"  name="txtobservacion" placeholder="Observacion" >
                                        </div>

                                      </div>

                      </div>
                      
                      <!-- Formulario Asignacion de Equipo  Impulsadoras-->
                      <div id="formAsigEquiImp" style="display:none; width:35%;  padding:10px; background:#D1D1D1; border-radius:10px; margin-bottom:20px;">
                                    
                          <div style="ma width:100%;  padding:20px; font-size:16px; background:white; border-radius:10px;">
                                          <h2 style="font-size:20px; text-align:center;">Asignacion de Equipo Impulso</h2><br>
                                            <!-- Campo Impulsadora Baja -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Impulsadora Baja</label>
                                              <input type="number" class="form-control" id="carnetbaja" placeholder="Carnet">
                                             
                                              </input>
                                            </div>

                                            <!-- Campo Impulsadora Baja -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Nombre Impulsadora</label>
                                              <input class="form-control" id="nombrebaja" placeholder="Carnet" disabled="disabled">
                                             
                                              </input>
                                            </div>

                                             <!-- Campo Impulsadora Alta -->
                                             <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Impulsadora alta</label>
                                              <input type="number" class="form-control" id="carnetalta" placeholder="Carnet">
                                             
                                              </input>
                                            </div>
                                            
                                            <!-- Campo Impulsadora Baja -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Nombre Impulsadora</label>
                                              <input class="form-control" id="nombrealta" placeholder="Carnet" disabled="disabled">
                                             
                                              </input>
                                            </div>
                                            
                                            <!-- Campo Motivo -->
                                            <div class="form-group" >
                                              <label for="exampleFormControlSelect1">Motivo</label>
                                              <select class="form-control" id="asigtxtmotivoImp" >
                                              <option selected="true"  disabled="disabled" value="" selected>Seleccione Motivo  </option>
                                              <option value="PRIMERA VEZ">PRIMERA VEZ</option>
                                              <option value="DESVINCULACION">DESVINCULACION</option>
                                              <option value="CAMBIO DE RUTA">CAMBIO DE RUTA</option>
                                              <option value="VACACIONES">VACACIONES</option>
                                            
                                              </select>
                                            </div> 
                                            <!-- Botones -->
                                            <button class="btn btn-outline-danger" style="margin-left:60px;">Limpiar</button>
                                            <button class="btn btn-success" OnClick="AsignacionEquipoI();">Asignar</button>
                                           

                          </div>

                      </div>
                  

              </div>
          </div>

      </main>

      <!-- Modal Editar Empleado-->
      <div class="modal fade" id="ModalEdithPersona" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">

          <div class="modal-content modal-lg">

            <div class="modal-header bg-red">
              <h2 class="modal-title" id="exampleModalLabel">Actualizar Datos</h2>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>

            <!-- Contenido de formulario -->
            <div class="modal-body">

                <!-- Formulario para editar empleado -->
              <form method='POST' id='form_empleados' name='form_empleados'>
                    <!-- Campo Id Empleado -->
                    <input type="hidden" class="form-control" id="mtxtid" name="mtxtid"hiden>

                    <!-- Campos carnet,dui,nombre -->
                    <div class="form-row">
                      <!-- Campo Carnet -->
                      <div class="form-group col-md-2">
                        <label for="inputEmail4">Numero de Carnet</label>
                        <input type="number" class="form-control" id="mtxtcarnet"  name="mtxtcarnet" placeholder="Carnet" >
                      </div>
                      <!-- Campo Dui -->
                      <div class="form-group col-md-2">
                        <label for="inputPassword4">Numero De Dui</label>
                        <input type="text" class="form-control" id="mtxtdui" name="mtxtdui"placeholder="00000000-0">
                      </div> 
                      <!-- Campo Nombre -->
                      <div class="form-group col-md-6">
                        <label for="inputAddress">Nombre</label>
                        <input type="text" class="form-control" id="mtxtnombre" name="mtxtnombre" placeholder="" >
                      </div>
                    </div>
                    <!-- Campos cargo, Fecha ingreso -->
                    <div class="form-row">
                      <!-- Campo Cargo -->
                      <div class="form-group col-md-2">
                        <label for="inputState">Cargo</label>
                        <select id="mtxtcargo" name='mtxtcargo' class="form-control" >
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
                        <input type="date" class="form-control" id="mtxtfecha" name="mtxtfecha"  >
                      </div>

                    </div>
                    <!-- Campos distribuidora, canal , ruta -->
                    <div class="form-row">
                      <!-- Campo Distribuidora -->
                      <div class="form-group col-md-3" >
                        <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                        <select class="form-control" id="mtxtdistribuidora" name="mtxtdistribuidora" > 
                        <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                        <?php
                            foreach($arrDistribuidora as $row)
                            {
                            echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                            }
                        ?>
                        </select>
                      </div>
                      <!-- Campo Canal -->
                      <div class="form-group col-md-2" >
                        <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
                        <select class="form-control" id="mtxtcanal" name="mtxtcanal" >
                        <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                        </select>
                      </div> 
                      <!-- Campo Ruta -->
                      <div class="form-group col-md-2" >
                        <label for="exampleFormControlSelect1"><strong><h6>Ruta Asignada</h6></strong></label>
                        <select class="form-control" id="mtxtruta" name="mtxtruta" >
                        <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                        </select>
                      </div>
                    </div>
            
              </form>

            </div>

            <!-- Botones -->
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" id='mbtnUpdPerona' >Guardar</button>
              <button type="button" class="btn btn-danger" id='mbtnCerrarModal'data-dismiss="modal">Cerrar</button>
            </div>

          </div>

        </div>
      </div>

    </div>

  </body>
  <input type="radio" id="mostrar-modal" name="modal"/>
            <label  class="PdfDispositivos" for="mostrar-modal"><span style="font-size:22px;"><i class="fas fa-file-pdf"></i></span></label>
            <input type="radio" id="cerrar-modal" name="modal"/>
            <label for="cerrar-modal">X</label>
            
            <div id="modal">
            <h1 style="color:white; margin-left:20vw; margin-top:15px;"> Asignacion de equipo </hr>
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
                     
                    <div class="tabla">

                   

                    </div>

                </div>
             
            </div>
<!-- JavaScript  y Jquery -->
<script>

  // Carga datos de distribuidora canal y ruta
  $(document).ready(function(){
    // Datos Distribuidora
    $('#mtxtdistribuidora').change(function(){
      var Id_Distribuidora = $('#mtxtdistribuidora').val();

      if(Id_Distribuidora != '')
      {
        $.ajax({
          url:"<?php echo base_url();?>index.php/Empleados/fetch_canal",
          method:"POST",
          data:{Id_Distribuidora:Id_Distribuidora},

          success:function(data)
          {
          
            $('#mtxtcanal').html(data);
            $('#mtxtruta').html('<option value="">Seleccione la Ruta</option>');
          }
        });
      }
      else
      {
      $('#mtxtcanal').html('<option value="">Selecccion el canal</option>');
      $('#mtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });
    // Datos Canal
    $('#mtxtcanal').change(function(){
      var Id_Canal = $('#mtxtcanal').val();
      if(Id_Canal != '')
      {
      $.ajax({
        url:"<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
        method:"POST",
        data:{Id_Canal:Id_Canal},
        success:function(data)
        {
          
        $('#mtxtruta').html(data);
        }
      });
      }
      else
      {
      $('#mtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });
    // Datos Distribuidora
    $('#asigtxtdistribuidora').change(function(){
      var Id_Distribuidora = $('#asigtxtdistribuidora').val();

      if(Id_Distribuidora != '')
      {
        $.ajax({
          url:"<?php echo base_url();?>index.php/Empleados/fetch_canal",
          method:"POST",
          data:{Id_Distribuidora:Id_Distribuidora},

          success:function(data)
          {
          
            $('#asigtxtcanal').html(data);
            $('#asigtxtruta').html('<option value="">Seleccione la Ruta</option>');
          }
        });
      }
      else
      {
      $('#asigtxtcanal').html('<option value="">Selecccion el canal</option>');
      $('#asigtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });
    // Datos Canal
    $('#asigtxtcanal').change(function(){
      var Id_Canal = $('#asigtxtcanal').val();
      if(Id_Canal != '')
      {
      $.ajax({
        url:"<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
        method:"POST",
        data:{Id_Canal:Id_Canal},
        success:function(data)
        {
          
        $('#asigtxtruta').html(data);
        }
      });
      }
      else
      {
      $('#asigtxtruta').html('<option value="">Selecccione la Ruta</option>');
      }
    });
    // Datos Ruta 
    $('#asigtxtruta').change(function(){
      var Id_Ruta = $('#asigtxtruta').val();
    
      if(Id_Ruta != '')
      {
      $.ajax({
        url:"<?php echo base_url(); ?>index.php/Empleados/fetch_empleado",
        method:"POST",
        data:{Id_Ruta:Id_Ruta},
        success:function(data)
        {
          
        $('#asigtxtempleado').html(data);
        }
      });
      }
      else
      {
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
    $('#distribuidora').change(function(){
      var Id_Distribuidora = $('#distribuidora').val();

      if(Id_Distribuidora != '')
      {
        $.ajax({
          url:"<?php echo base_url();?>index.php/Empleados/fetch_canal",
          method:"POST",
          data:{Id_Distribuidora:Id_Distribuidora},

          success:function(data)
          {

            $('#canal').html(data);
            $('#ruta').html('<option value="" disabled="disabled" selected="true">Seleccione la Ruta</option>');
          }
        });
      }
      else
      {
      $('#canal').html('<option value="" disabled="disabled" selected="true">Selecccion el canal</option>');
      $('#ruta').html('<option value="" disabled="disabled" selected="true">Selecccione la Ruta</option>');
      }
    });
    // Datos ruta segun canal
    $('#canal').change(function(){
      var Id_Canal = $('#canal').val();
      if(Id_Canal != '')
      {
      $.ajax({
        url:"<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
        method:"POST",
        data:{Id_Canal:Id_Canal},
        success:function(data)
        {
          
        $('#ruta').html(data);
        }
      });
      }
      else
      {
      $('#ruta').html('<option value=""disabled="disabled" selected="true">Selecccione la Ruta</option>');
      }
    });


  });

// Tabla de registros
  $.ajax({
            url:"<?php echo base_url();?>index.php/Empleados/Consultar_PDF",
            method:"POST",
          

            success:function(respuesta)
            {
                var registros =eval(respuesta);
            
            html ="<table class='table' style='margin: auto; border:white 2px solid; width:55%;   margin-bottom:5%;'>";
            html +="<tr style='background: rgba(255, 255, 255, 0.95); color: #000000;' ><th>Ruta</th><th>Nombre</th><th>Motivo Traspaso</th><th> Fecha Traspaso</th><th>PDF</th></tr>";
            html +="<tbody>"; 
            
            for (var i = 0; i <registros.length; i++) {
              html +="<tr><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Ruta"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["Motivo_Traspaso"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["fecha_registro"]+ 
              "</td><td style='display:none;'>"+registros[i]["Id_PDF"]+
              "</td><td><a href='<?php echo base_url();?>index.php/Empleados/pdfdetails/"+registros[i]["Id_PDF"]+"' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>"+
              "</td></tr>";
              

            };


            html +="</tbody></table>";

            
            $(".tabla").html(html);
            }
        });

  // Funcion validar formulario  ingreso  empleado
  function validar(){
    
    var carnet,dui,nombre,cargo,fecha,distribuidora,canal,ruta;
              
      carnet = document.getElementById('txtcarnet').value;
      dui = document.getElementById('txtdui').value;
      nombre = document.getElementById('txtnombre').value;
      cargo = document.getElementById('txtcargo').value;
      fecha = document.getElementById('txtfecha').value;
      distribuidora = document.getElementById('distribuidora').value;
      canal = document.getElementById('canal').value;
      ruta = document.getElementById('ruta').value;
  

        if(document.getElementById("foto_empleado").files.length == 0 || carnet.length == 0 || dui.length == 0 || nombre.length == 0 || cargo.length == 0 || fecha.length == 0 || distribuidora.length == 0 || canal.length == 0 || ruta.length == 0 ){
                        swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                        return false; 
        }else{

          var rutav = $('#ruta').serialize(); 
        
          if(cargo!='VENDEDOR'){
            swal.fire({ showConfirmButton: false, timer: 1500, position: 'top-end',title:'Se Envio Correctamente el registro', type: 'success'});
              
                    $('#btnguardarempleado').click();
          }else{
            $.ajax({
                url:"<?php echo base_url();?>index.php/Empleados/Verificacion_Empleado",
                method:"POST", 
                data:rutav,
                dataType:"JSON",
                success:function(respuesta){        

                    if(respuesta.CantidadActivos>0){

                      swal.fire({ showConfirmButton: false, 
                                timer: 1500, 
                                position: 'top-end',
                                title:'La ruta Ya Tiene 1 Empleado Activo', 
                                type: 'warning',
                                });

                      return flag=1;
                                
                    }else{
                
                      swal.fire({ showConfirmButton: false, timer: 1500, position: 'top-end',title:'Se Envio Correctamente el registro', type: 'success'});
                
                      $('#btnguardarempleado').click();
                    }    
                }      
            }); 
          }
        }   
  }

  // Funcion consultar empleados
  function mostrarDatos(){

      var datos = $('#form-vis').serialize();

      $.ajax({
        url:"<?php echo base_url();?>index.php/Empleados/Consultar_Empleados",
        method:"POST", 
        data:datos,
    
        success:function(respuesta){
      
          var registros =eval(respuesta);

          html='';
          html +="<table class='table' style='width:100%;'>";
          html +="<tr style='text-align:center;'>"+
          "<th class='th' style='display:none; '>ID</th>"+
          "<th class='th' >Foto</th>"+
          "<th class='th' >Carnet</th>"+
          "<th class='th' >Dui</th>"+
          "<th class='th' >Empleado</th>"+
          "<th class='th' >Canal</th>"+
          "<th class='th' >Ruta</th>"+
          "<th class='th' style='display:none;'>Estado</th>"+
          "<th class='th' >Accion</th>"+
          "</tr>";


          html +="</thead><tbody>"; 
          
          for (var i = 0; i <registros.length; i++) {
            html +="<tr><td class='td' style='display:none; '>"+registros[i]["Id_Empleados"]+
            "</td><td class='td'><img  width='90px' height='90px' src='"+registros[i]["foto_empleado"]+
            "'></td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Carnet"]+
            "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Dui"]+
            "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre"]+
            "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Canal"]+
            "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Ruta"]+
            "</td><td class='td' style='vertical-align : middle;text-align:center; display:none;'>"+registros[i]["Estado"]+
            "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+
            "<a href='#' data-toggle='modal' class='editar' data-target='#ModalEdithPersona' onClick='Enviar_Datos_modal(\""+registros[i]["Id_Empleados"]+
            "\",\""+registros[i]["Carnet"]+
            "\",\""+registros[i]["Dui"]+
            "\",\""+registros[i]["Nombre"]+
            "\",\""+registros[i]["Cargo"]+
            "\",\""+registros[i]["Fecha"]+
            "\",\""+registros[i]["Id_Distribuidora"]+
            "\",\""+registros[i]["Id_Canal"]+
            "\",\""+registros[i]["Id_Ruta"]+"\");'>"+
            "<span style='font-size: 25px;'><i class='far fa-edit'></i></span>";

            if(registros[i]['Estado']==1){ 

              html+="<a href='#' class='InactivarEmpleado' id='InactivarEmpleado' onClick='InactivarEmpleado(\""+registros[i]["Id_Empleados"]+"\");'><span style='margin-left:5px; font-size: 30px; color:#70FF00;'><i class='fas fa-angle-double-down'></i></span></a>"+"</td></tr>";
            }
            else{
              html+="<a href='#' class='ActivarEmpleado' id='ActivarEmpleado' onClick='ActivarEmpleado(\""+registros[i]["Id_Empleados"]+"\");'><span style='margin-left:5px; font-size: 30px; color:#FF2D00;'><i class='fas fa-angle-double-up'></i></span></a>"+"</td></tr>";
            }
          };
          html +="</tbody></table>";
          $("#listaEmpleados").html(html);
        }
      });
  }

  // Funcion activar empleado
  function ActivarEmpleado(Id_Empleados){
    // alert("Empleado Activado "+Id_Empleados);
    $.post("<?php echo base_url(); ?>index.php/Empleados/Activar_Empleado",	
    {
      txtid:Id_Empleados,
    },			
    function(data){
      if (data == 1) {
      
        let timerInterval
          Swal.fire({
          title: 'Empleado Activado Correctamente',
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
                $('#buscar').click();
              }
          });
      
      }
    });
  }

  // Funcion inactivar empleado
  function InactivarEmpleado(Id_Empleados){
    // alert("Empleado Desactivado "+Id_Empleados);
    $.post("<?php echo base_url(); ?>index.php/Empleados/Inactivar_Empleado",	
    {
      txtid:Id_Empleados,
    },			
    function(data){
      if (data == 1) {
      
        let timerInterval
          Swal.fire({
          title: 'Empleado Desactivado Correctamente',
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
                $('#buscar').click();
              }
          });
      
      }
    });

  }

  // Funcion enviar datos al modal editar
  function Enviar_Datos_modal(Id_Empleado,Carnet,Dui,Nombre,Cargo,Fecha,Id_Distribuidora,Id_Canal,Id_Ruta){
        
      $('#mtxtid').val(Id_Empleado);
      $('#mtxtcarnet').val(Carnet);
      $('#mtxtdui').val(Dui);
      $('#mtxtnombre').val(Nombre);
      $('#mtxtcargo').val(Cargo);
      $('#mtxtfecha').val(Fecha);

      $("#mtxtdistribuidora option[value='"+Id_Distribuidora+"']").attr("selected",true);
      $("#mtxtdistribuidora").change();
      
      
      setTimeout(function(){ 
        $("#mtxtcanal").val(Id_Canal);
        $("#mtxtcanal").change();

      }, 200);


      setTimeout(function(){ 
        
        $("#mtxtruta").val(Id_Ruta);

        
      }, 400);
      
      
      
      // $("#mtxtruta option[value='"+Id_Ruta+"']").attr("selected",true);
      // $("#mtxtruta").change();
  
      

  }

  // Actualizar empleados campos modal
  $('#mbtnUpdPerona').click(function(){


    var carnet,dui,nombre, cargo ,fecha, distribuidora, canal ,ruta;
    carnet = document.getElementById("mtxtcarnet").value;
    dui = document.getElementById("mtxtdui").value;
    nombre = document.getElementById("mtxtnombre").value;
    cargo = document.getElementById("mtxtcargo").value;
    fecha = document.getElementById("mtxtfecha").value;
    distribuidora = document.getElementById("mtxtdistribuidora").value;
    canal = document.getElementById("mtxtcanal").value;
    ruta = document.getElementById("mtxtruta").value;


    if(carnet.length == 0 || dui.length == 0 || nombre.length == 0 || cargo.length == 0 || fecha.length == 0 || distribuidora.length == 0 || canal.length == 0 || ruta.length == 0 ){
      
      swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
      return false;
    }else{


    var idE = $('#mtxtid').val();
    var cat = $('#mtxtcarnet').val();
    var dui = $('#mtxtdui').val();
    var nom = $('#mtxtnombre').val();
    var cag = $('#mtxtcargo').val();
    var fec = $('#mtxtfecha').val();
    var dist = $('#mtxtdistribuidora').val();
    var can = $('#mtxtcanal').val();
    var rut = $('#mtxtruta').val();

    $.post("<?php echo base_url(); ?>index.php/Empleados/Actualizar_Empleados",	
    {
      mtxtid:idE,
      mtxtcarnet:cat,
      mtxtdui:dui,
      mtxtnombre:nom,
      mtxtcargo:cag,
      mtxtfecha:fec,
      mtxtdistribuidora:dist,
      mtxtcanal:can,
      mtxtruta:rut
      
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
  $(document).on('change','input[type="file"]',function(){
  
    var fileName = this.files[0].name;
    var fileSize = this.files[0].size;

    if(fileSize > 2000000){
      swal.fire({title:'La Imagen No debe superar los 2 MG', type: 'error'});
      this.value = '';
      this.files[0].name = '';
    }
  });

  // verificacion y  Asignacion Equipo De Facturacion vendedores
  function AsignacionEquipo(){
  
    var Distribuidora = $('#asigtxtdistribuidora').val();
    var Canal = $('#asigtxtcanal').val();
    var Ruta =$('#asigtxtruta').val();
    var Empleado =$('#asigtxtempleado').val();
    var Motivo=$('#asigtxtmotivo').val();
    
    // alert(Distribuidora+Canal+Ruta+Empleado+Motivo);

    if(Distribuidora==null || Canal==null  || Ruta==null || Empleado==null || Motivo==null)
    {
      swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
        return false;
    }else{

      var PW = $("#Accesorios input[name='PW']:radio").is(':checked');
      var CU = $("#Accesorios input[name='CU']:radio").is(':checked');
      var VT = $("#Accesorios input[name='VT']:radio").is(':checked');
      var EP = $("#Accesorios input[name='EP']:radio").is(':checked');
      var EI = $("#Accesorios input[name='EI']:radio").is(':checked');
      var CT = $("#Accesorios input[name='CT']:radio").is(':checked');
      var CI = $("#Accesorios input[name='CI']:radio").is(':checked');
     

      
      
      if(PW==0 || CU==0 || VT==0 || EP==0 || EI==0 || CT==0 || CI==0 ){


        var Observacion =$("#txtobservacion").val();

        if(Observacion.length==0){

          swal.fire({
            title: 'Esta seguro de no agregar una observacion?',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Estoy seguro !',
            type:'warning'
          }).then((result) => {
            if (result.value) {

              Registrar_Historial();
            }
          })
          
        }else{
          Registrar_Historial();
        }
        

      }else{

        Registrar_Historial();
        
      }
    }



  }

  function Registrar_Historial(){
      var Distribuidora = $('#asigtxtdistribuidora').val();
      var Canal = $('#asigtxtcanal').val();
      var Ruta =$('#asigtxtruta').val();
      var Empleado =$('#asigtxtempleado').val();
      var Motivo=$('#asigtxtmotivo').val();
      var PW = ~~($("#Accesorios input[name='PW']:radio").is(':checked'));
      var CU = ~~($("#Accesorios input[name='CU']:radio").is(':checked'));
      var VT = ~~($("#Accesorios input[name='VT']:radio").is(':checked'));
      var EP = ~~($("#Accesorios input[name='EP']:radio").is(':checked'));
      var EI = ~~($("#Accesorios input[name='EI']:radio").is(':checked'));
      var CT = ~~($("#Accesorios input[name='CT']:radio").is(':checked'));
      var CI = ~~($("#Accesorios input[name='CI']:radio").is(':checked'));
      var Observacion =$("#txtobservacion").val();



    $.post("<?php echo base_url(); ?>index.php/Empleados/Registrar_Historial",	
    {
      asigtxtdistribuidora:Distribuidora,
      asigtxtcanal :Canal, 
      asigtxtruta:Ruta,
      asigtxtempleado:Empleado,
      asigtxtmotivo:Motivo,
      PW:PW,
      CU:CU,
      VT:VT,
      EP:EP,
      EI:EI,
      CT:CT,
      CI:CI,
      txtobservacion:Observacion,

    
    },function(data){
        
                           const swalWithBootstrapButtons = Swal.mixin({
                            customClass: {
                              confirmButton: 'btn btn-success',
                              cancelButton: 'btn btn-danger'
                            },
                            buttonsStyling: false
                            })
                        if (data == 1) {

                          
                 
            
                              swalWithBootstrapButtons.fire(
                                'Guardado!',
                                'Su registro ha sido guardado con exito',
                                'success'
                              ).then((result) => {
                                if (result.value){
                                  location.reload();
                                }
                               });
                            
                          }else if(data==0){

                            swalWithBootstrapButtons.fire(
                                'Error!',
                                'Esta ruta no tiene Telefono o Impresora Asignado',
                                'error'
                              ).then((result) => {
                                if (result.value){
                                  location.reload();
                                }
                               });

                          }
      });

  }

        // Muestra campos para asignar vendedor 
        function btnAsigVend(){
          
          $("#formAsigEqui").css("display", "block");
          $("#AccesoriosVend").css("display", "block");
          $("#AccesoriosI").css("display", "none");
          $("#formAsigEquiImp").css("display", "none");
          
        }
        // Muestra campos para asignar impulsadora
        function btnAsigImp(){
          $("#formAsigEqui").css("display", "none");
          $("#AccesoriosVend").css("display", "none");

          $("#AccesoriosI").css("display", "Block");
          $("#formAsigEquiImp").css("display", "Block");

        }

       // obtener empleado segun carnet baja
       $('#carnetbaja').change(function(){

          var Carnet = $('#carnetbaja').val();

          if(Carnet != '')
          {
            $.ajax({
                url:"<?php echo base_url(); ?>index.php/Empleados/fetch_impulsadora",
                method:"POST",
                data:{Carnet:Carnet},
                dataType:"JSON",
                success:function(data)
                {
                  $( "#nombrebaja" ).removeClass( "inputalert" );
                  $( "#nombrebaja" ).removeClass( "inputsucces" );

                $('#nombrebaja').val(data.Nombre);
                

                  if(data==''){

                    $( "#nombrebaja" ).addClass( "inputalert" );
                    $('#nombrebaja').val('IMPULSADORA NO ENCONTRADA');


                  }else{
                    $( "#nombrebaja" ).addClass( "inputsucces" );
                  }

                }
            });
          }
          else
          {
            $('#nombrealta').val('NO ENCONTRADO');
          }
      });

         // obtener empleado segun carnet alta
       $('#carnetalta').change(function(){
        
                                            
            var Carnet = $('#carnetalta').val();

            if(Carnet != '')
            {
              $.ajax({
                  url:"<?php echo base_url(); ?>index.php/Empleados/fetch_impulsadora",
                  method:"POST",
                  data:{Carnet:Carnet},
                  dataType:"JSON",
                  success:function(data)
                  {

                    $( "#nombrealta" ).removeClass( "inputalert" );
                    $( "#nombrealta" ).removeClass( "inputsucces" );

                  $('#nombrealta').val(data.Nombre);
             

                  if(data==''){

                    $( "#nombrealta" ).addClass( "inputalert" );
                    $('#nombrealta').val('IMPULSADORA NO ENCONTRADA');

                    }else{
                    $( "#nombrealta" ).addClass( "inputsucces" );
                    }

                  }
              });
            }
            else
            {
              $('#nombrealta').val('NO ENCONTRADO');
            }
      });



       // verificacion y  Asignacion Equipo De Facturacion impulsadoa
  function AsignacionEquipoI(){


      var Carnetbaja = $('#carnetbaja').val();
      var ImpulsadoraBaja =$('#nombrebaja').val();
      var CarnetAlta = $('#carnetalta').val();
      var ImpulsadoraAlta=$('#nombrealta').val();
      var Motivo =$('#asigtxtmotivoImp').val();

    
    if(Carnetbaja==null || ImpulsadoraBaja=="IMPULSADORA NO ENCONTRADA"  || CarnetAlta==null || ImpulsadoraAlta=="IMPULSADORA NO ENCONTRADA" || Motivo==null)
    {
      swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
        return false;
    }else{

      var VT = ~~($("#AccesoriosI input[name='VTI']:radio").is(':checked'));
      var EP = ~~($("#AccesoriosI input[name='EPI']:radio").is(':checked'));
      var CT = ~~($("#AccesoriosI input[name='CTI']:radio").is(':checked'));

    
      if(VT==0 || EP==0 ||  CT==0 ){


        var Observacion =$("#txtobservacionimp").val();

        if(Observacion.length==0){

          swal.fire({
            title: 'Esta seguro de no agregar una observacion?',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Estoy seguro !',
            type:'warning'
          }).then((result) => {
            if (result.value) {

              Registrar_HistorialImp();
            }
          })
          
        }else{
          Registrar_HistorialImp();
        }
        

      }else{

        Registrar_HistorialImp();
        
      }
    }



  }

  function Registrar_HistorialImp(){

      var Carnetbaja = $('#carnetbaja').val();
      var ImpulsadoraBaja =$('#nombrebaja').val();
      var CarnetAlta = $('#carnetalta').val();
      var ImpulsadoraAlta=$('#nombrealta').val();
      var Motivo =$('#asigtxtmotivoImp').val();
      var VT = ~~($("#AccesoriosI input[name='VTI']:radio").is(':checked'));
      var EP = ~~($("#AccesoriosI input[name='EPI']:radio").is(':checked'));
      var CT = ~~($("#AccesoriosI input[name='CTI']:radio").is(':checked'));
      var Observacion =$("#txtobservacionimp").val();


      $.post("<?php echo base_url(); ?>index.php/Empleados/Insert_Historial_Impulso",	
      {
        carnetbaja:Carnetbaja,
        nombrebaja:ImpulsadoraBaja,
        carnetalta:CarnetAlta,
        nombrealta:ImpulsadoraAlta,
        asigtxtmotivoImp:Motivo,
        VT:VT,
        EP:EP,
        CT:CT,
        txtobservacionimp:Observacion,

      
      },function(data){
        
                           const swalWithBootstrapButtons = Swal.mixin({
                            customClass: {
                              confirmButton: 'btn btn-success',
                              cancelButton: 'btn btn-danger'
                            },
                            buttonsStyling: false
                            })
                        if (data == 1) {

                              swalWithBootstrapButtons.fire(
                                'Guardado!',
                                'Su registro ha sido guardado con exito',
                                'success'
                              ).then((result) => {
                                if (result.value){
                                  location.reload();
                                }
                               });
                            
                          }else if(data==0){

                            swalWithBootstrapButtons.fire(
                                'Error!',
                                'Esta Impulsadora no tiene Telefono  Asignado',
                                'error'
                              ).then((result) => {
                                if (result.value){
                                  location.reload();
                                }
                               });

                          }
      });

  }

</script>


</html>