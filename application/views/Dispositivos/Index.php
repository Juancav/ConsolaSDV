<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Consola SDV</title>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <!--Icon page-->
    <link href="Public/Img/favicon.png" rel="icon">

    <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Dispositivos.css') ?>">




</head>

<body>

    <div class="page-wrapper chiller-theme toggled">
        <main class="page-content">

            <section id="hero" class="wow fadeIn">
                <h1> Dispositivos moviles</h1>
                <div class="load-7" style="display: none;" id="esperando">
                    <div class="square-holder">
                        <div class="square"></div>
                    </div>
                </div><br>

                <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">

                <div style="display: flex; flex-wrap:wrap; justify-content:space-around;">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="<?php echo base_url('Public/Img/Vectores/Mod_dispositivos_1.jpg') ?>" class="card-img" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Creacion de dispositivos</h5>
                                    <p class="card-text">Crear nuevos dispositivos marcas y modelos para asignacion de canales de detalle mayoreo preferencial gudaff e impulso. </p>
                                    <br>
                                    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#creartelefonos"><i class="fas fa-phone"></i> Crear</button>
                                    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#AddMarca"><i class="fab fa-apple"></i> Marca</button>
                                    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#AddModel"><i class="fas fa-bezier-curve"></i> Modelo</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <img src="<?php echo base_url('Public/Img/Vectores/Mod_dispositivos_2.jpg') ?>" class="card-img" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Visualizacion de dispositivos</h5>
                                    <p class="card-text">Consulta y/o modificacion de datos de los dispositivos y realizacion de proceso de asignacion.</p>
                                    <br>
                                    <form id="form-vis">
                                        <div class="form-row ">

                                            <div class="form-group col-md-4">
                                                <label for="exampleFormControlSelect1">Distribuidora</label>
                                                <select class="form-control" id="Tdistribuidora" name="Tdistribuidora">
                                                    <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                                </select>
                                            </div>

                                            <div class="form-group col-md-4">
                                                <label for="exampleFormControlSelect1">Canal</label>
                                                <select class="form-control" id="Tcanal" name="Tcanal">
                                                    <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                                </select>
                                            </div>

                                            <div class=" col-md-2">

                                                <button type="button" name='buscar' id='buscar' class="btn btn-outline-primary" OnClick="mostrarTelefonos();" style="margin-top:26px;"><i class="fas fa-search"></i> </button>
                                            </div>
                                            <div class=" col-md-1">

                                                <button type="button" class="btn btn-outline-success " data-toggle="modal" data-target="#Asignarcell" style="margin-top:26px;"><i class="far fa-check-circle"></i> </button>
                                            </div>

                                        </div>
                                    </form>


                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <hr>

                <div class="dispo" id="dispo">


                    <div id="listatelefonos"></div>



                </div>

                <!-- Modal crear telefonos-->
                <div class="modal fade" id="creartelefonos" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel"><i class="fas fa-plus"></i> Nuevo dispositivos </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form method='POST' id='form_addtelefonos' name='form_addtelefonos' enctype="multipart/form-data">


                                    <div class="form-row">

                                        <div class="form-group col-md-6">
                                            <label for="input">Marca de dispostivos</label>
                                            <select class="form-control " id="ftxtmarcacell" name="ftxtmarcacell" required>
                                                <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                                <?php
                                                foreach ($arrMarca as $row) {
                                                    echo '<option value="' . $row->Id_marca_cell . '">' . $row->Nombre_Marca . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Modelo</label>
                                            <select class="form-control " id="ftxtmodeloAsignar" name="ftxtmodeloAsignar">
                                                <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="input">Año</label>
                                            <select value="" class="form-control " id="AñoCell" name="year">
                                                <option disabled="disabled" selected="true" value="" id="AñoCell">Año</option>
                                                <?php for ($i = 2010; $i <= 2020; $i++) {
                                                    echo "<option value='" . $i . "'>" . $i . "</option>";
                                                } ?>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Color</label>
                                            <input type="text" class="form-control" id="txtcolor" value="">
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="input">Imei</label>
                                            <input type="number" class="form-control" id="txtimei" name="txtimei">
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">N° de Serie</label>
                                            <input type="text" class="form-control" id="txtserie">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="input">Activo Fijo</label>
                                            <input type="number" class="form-control" id="txtactivof">
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Distribuidora</label>
                                            <select class="form-control" id="mtxtdistribuidoraAsignar" name="mtxtdistribuidoraAsignar">
                                                <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Canal</label>
                                            <select class="form-control" id="mtxtcanalAsignar" name="mtxtcanalAsignar">
                                                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                            </select>
                                        </div>
                                    </div>

                            </div>
                            <div class="modal-footer">
                                <button type="reset" name='limpiar' class="btn btn-outline-danger">Limpiar</button>
                                <button type="button" name='btnregistrartelefono' class="btn btn-primary" id="btnregistrartelefono">Guardar</button>

                            </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Modal Agregar Marca De Telefono  -->
                <div class="modal fade" id="AddMarca" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"><span><i class="fas fa-plus"></i> Nueva Marca</span></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <div class="col-7">
                                    <label for="formGroupExampleInput"><span>Marca de dispositivo</span></label>
                                    <input type="text" class="form-control" id="txtmarcacell" placeholder="Apple, Xiaomi, Samsung">
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
                                <button type="button" id="btnmarcacell" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Agregar Modelo De Telefono  -->
                <div class="modal fade" id="AddModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"><span><i class="fas fa-plus"></i> Nuevo Modelo</span></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <label for="input">Marca de dispositivo</label>
                                <select class="form-control col-md-10" id="mtxtmarcacell" name="mtxtmarcacell" required>
                                    <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                    <?php
                                    foreach ($arrMarca as $row) {
                                        echo '<option value="' . $row->Id_marca_cell . '">' . $row->Nombre_Marca . '</option>';
                                    }
                                    ?>
                                </select>
                                <br>
                                <label for="input">Modelo de dispositivo</label>
                                <input type="text" class="form-control col-md-8" id="mtxtmodelocell" name="mtxtmodelocell" placeholder="k4, Iphone 6 , J1">

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-primary" id="btnmodelocell">Guardar</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Modificar Telefonos -->
                <div class="modal fade" id="ModificarTelefonos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"><i class="far fa-edit"></i> Editar dispositivo </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form method='POST' id='Mod_Cell' name='Mod_Cell'>
                                    <input type="hidden" class="form-control" id="mtxtidcell" name="mtxtidcell" hiden>

                                    <div class="form-row">

                                        <div class="form-group col-md-6">
                                            <label for="input">Marca de dispositivo</label>
                                            <select class="form-control " id="mtxtmarcacellm" name="mtxtmarcacellm" required>
                                                <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                                <?php
                                                foreach ($arrMarca as $row) {
                                                    echo '<option value="' . $row->Id_marca_cell . '">' . $row->Nombre_Marca . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Modelo</label>
                                            <select class="form-control " id="mtxtmodeloasignar" name="mtxtmodeloasignar">
                                                <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Año</label>
                                            <select value="" class="form-control " id="mAñoCell" name="year">
                                                <option disabled="disabled" selected="true" value="" id="AñoCell">Año</option>
                                                <?php for ($i = 2010; $i <= 2021; $i++) {
                                                    echo "<option value='" . $i . "'>" . $i . "</option>";
                                                } ?>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Color</label>
                                            <input type="text" class="form-control" id="mtxtcolor" value="">
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Imei</label>
                                            <input type="number" class="form-control" id="mtxtimei">
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">N° de Serie</label>
                                            <input type="text" class="form-control" id="mtxtserie">
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="input">Activo Fijo</label>
                                            <input type="number" class="form-control" id="mtxtactivof">
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Distribuidora</label>
                                            <select class="form-control" id="Tdistribuidoram" name="Tdistribuidoram">
                                                <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="exampleFormControlSelect1">Canal</label>
                                            <select class="form-control" id="Tcanalm" name="Tcanalm">
                                                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                            </select>
                                        </div>


                                    </div>

                                </form>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger" id="mbtncerrarmodal" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-primary" id='mbtnUpCell' name='mbtnUpCell'>Guardar</button>

                            </div>

                        </div>
                    </div>
                </div>


                <!--Modal Asignar Telefono -->
                <div class="modal fade" id="Asignarcell" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <div style="display: flex; justify-content:space-around; width:100%;">
                                    <div style="width: 40%">
                                        <h5 class="modal-title" id="exampleModalLabel"><i class="far fa-check-circle"></i> Asignar dispositivo </h5>
                                    </div>

                                    <div style="width: 50%; justify-content:space-aroud;">

                                        <label>
                                            <input type="radio" class="option-input radio" name="example" id="autorizados" Onclick="autorizados();" />
                                            <label style="vertical-align:auto;">Autorizados</label>
                                        </label>

                                        <label>
                                            <input type="radio" class="option-input radio" name="example" id="no_autorizados" Onclick="no_autorizados();" />
                                            <label style="vertical-align:auto;">No Autorizados</label>
                                        </label>

                                    </div>


                                    <div style="width: 10%">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>

                                </div>

                            </div>

                            <div class="modal-body">

                                <div id="Inflar_pelota">
                                    <div class="pump">
                                        <div class="handle-assy">
                                            <div class="handle"></div>
                                            <div class="pole"></div>
                                        </div>

                                        <div class="tube"></div>

                                        <div class="gauge">
                                            <div class="limit"></div>
                                            <div class="hand"></div>
                                        </div>

                                        <div class="base"></div>

                                    </div>

                                    <div class="ball"></div>
                                    <div class="ball-shadow"></div>
                                </div>

                                <!--Entrega de dispositivos autorizados-->
                                <div id="form_autorizados" style="display:none;">

                                    <div class="container">

                                        <div class="row">

                                            <div class="col-md-5" style="border-right:1px dashed #000;">

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Distribuidora
                                                    </label>
                                                    <select class="form-control" id="mtxtdistribuidoracell" name="mtxtdistribuidoracell">
                                                        <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Canal
                                                    </label>
                                                    <select class="form-control" id="mtxtcanalcell" name="mtxtcanalcell">
                                                        <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Ruta Asignada
                                                    </label>
                                                    <select class="form-control" id="mtxtrutacell" name="mtxtrutacell">
                                                        <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-14">
                                                    <label for="EMPLEDAO">
                                                        Empleado
                                                    </label>
                                                    <div for="EMPLEADO" id="NombreEmpleado">
                                                        <input disabled="disabled" type="text" id="idEmpleado" class="form-control" style="display:none;">
                                                    </div>
                                                </div>
                                                <br>

                                                <div class="form-group col-md-14">
                                                    <label for="exampleFormControlSelect1">
                                                        Motivo de Entrega
                                                    </label>
                                                    <select class="form-control" id="mtxtmotivoentrega" name="mtxtmotivoentrega">
                                                        <option disabled="disabled " value="" selected="selected">Seleccione una opcion</option>
                                                        <option value="DAÑO">DAÑO</option>
                                                        <option value="ROBO">ROBO</option>
                                                        <option value="RENOVACION">RENOVACION</option>
                                                        <option value="PRIMERA VEZ">PRIMERA VEZ</option>
                                                    </select>
                                                </div>

                                            </div>


                                            <div class="col-md">
                                                <div class="form-row">
                                                    <div class="form-group col-md-5">
                                                        <label for="exampleFormControlSelect1">
                                                            N Maquina
                                                        </label>
                                                        <select class="form-control" id="mtxtnmaquina" name="mtxtnmaquina">
                                                            <option disabled="disabled" value="" selected="selected">Seleccione El N Maquina</option>
                                                        </select>
                                                    </div>

                                                    <div class="form-group col-md-7">
                                                        <label for="exampleFormControlSelect1">
                                                            Imei
                                                        </label>
                                                        <input class="form-control" type="text" disabled="disabled" id="mtxtimeiadd"></input>
                                                        </select>
                                                    </div>
                                                </div>


                                                <input type="text" id="mtxtidtelefono" name="mtxtidtelefono" class="form-control" disabled="disabled" style="display:none;">

                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Marca</span>
                                                    </div>
                                                    <input type="text" id="mtxtmarca" name="mtxtmarca" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Modelo</span>
                                                    </div>
                                                    <input type="text" id="mtxtmodelo" name="mtxtmodelo" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Color</span>
                                                    </div>
                                                    <input type="text" id="mtxtcoloradd" name="mtxtcoloradd" class="form-control" disabled="disabled">
                                                </div>
                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Zona</span>
                                                    </div>
                                                    <input type="text" id="mtxtzona" name="mtxtzona" class="form-control" disabled="disabled">
                                                </div>
                                                <br>
                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Serie A</span>
                                                    </div>
                                                    <input type="text" id="mtxtserieautorizada" name="mtxtserieautorizada" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-11">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Resolucion</span>
                                                    </div>
                                                    <input type="text" id="mtxtresolucion" name="mtxtresolucion" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-12">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Fecha Autorizacion</span>
                                                    </div>
                                                    <input type="date" id="mtxtfechaautorizacion" name="mtxtfechaautorizacion" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-12">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Fecha Habilitacion</span>
                                                    </div>
                                                    <input type="date" id="mtxtfechahabilitacion" name="mtxtfechahabilitacion" class="form-control">
                                                </div>





                                            </div>


                                        </div>
                                    </div>


                                </div>

                                <!-- Entrega de dispositivos no autorizados-->
                                <div id="form_no_autorizados" style="display:none;">
                                    <div class="container">

                                        <div class="row">

                                            <div class="col-md-5" style="border-right:1px dashed #000;">

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Distribuidora
                                                    </label>
                                                    <select class="form-control" id="mtxtdistribuidoranocell" name="mtxtdistribuidoranocell">
                                                        <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Canal
                                                    </label>
                                                    <select class="form-control" id="mtxtcanalnocell" name="mtxtcanalnocell">
                                                        <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Ruta Asignada
                                                    </label>
                                                    <select class="form-control" id="mtxtrutanocell" name="mtxtrutanocell">
                                                        <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                                    </select>
                                                </div>

                                                <div class="form-group col-md-12">
                                                    <label for="exampleFormControlSelect1">
                                                        Empleado</label>
                                                    <select class="form-control" id="NombreEmpleadono" name="NombreEmpleadono">
                                                        <option selected="true" disabled="disabled" value="">Seleccione el empleado</option>
                                                    </select>
                                                </div>
                                                <br>


                                            </div>

                                            <div class="col-md">
                                                <div class="form-row">
                                                    <div class="form-group col-md-5">
                                                        <label for="exampleFormControlSelect1">
                                                            Imei
                                                        </label>
                                                        <select class="form-control" id="mtxtimeitelefono" name="mtxtimeitelefono">
                                                            <option disabled="disabled" value="" selected="selected">Seleccione un imei</option>
                                                        </select>
                                                    </div>


                                                </div>


                                                <input type="text" id="mtxtidtelefonono" name="mtxtidtelefonono" class="form-control" disabled="disabled" style="display:none;">

                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Marca</span>
                                                    </div>
                                                    <input type="text" id="mtxtmarcano" name="mtxtmarcano" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Modelo</span>
                                                    </div>
                                                    <input type="text" id="mtxtmodelono" name="mtxtmodelono" class="form-control" disabled="disabled">
                                                </div>

                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:90px;">Color</span>
                                                    </div>
                                                    <input type="text" id="mtxtcoloraddno" name="mtxtcoloraddno" class="form-control" disabled="disabled">
                                                </div>
                                                <div class="input-group col-md-10">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" style="width:auto;">Distribuidora</span>
                                                    </div>
                                                    <input type="text" id="mtxtdistribuidorano" name="mtxtdistribuidorano" class="form-control" disabled="disabled">
                                                </div>
                                                <br>


                                                <div class="input-group col-md-12">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Fecha Habilitacion</span>
                                                    </div>
                                                    <input type="date" id="mtxtfechahabilitacionno" name="mtxtfechahabilitacionno" class="form-control">
                                                </div>
                                                <br>
                                                <div class="form-group col-md-9">
                                                    <label for="exampleFormControlSelect1">
                                                        Motivo de Entrega
                                                    </label>
                                                    <select class="form-control" id="mtxtmotivoentregano" name="mtxtmotivoentregano">
                                                        <option disabled="disabled " value="" selected="selected">Seleccione una opcion</option>
                                                        <option value="DAÑO">DAÑO</option>
                                                        <option value="ROBO">ROBO</option>
                                                        <option value="RENOVACION">RENOVACION</option>
                                                        <option value="PRIMERA VEZ">PRIMERA VEZ</option>
                                                    </select>
                                                </div>




                                            </div>


                                        </div>
                                    </div>
                                </div>
         

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-primary" id="btnguardarautorizados" style="display:none;">Guardar</button>
                                <button type="button" class="btn btn-success" id="btnguardarnoautorizados" style="display:none;">Guardar</button>
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
                <h4> <i class="fas fa-list-ul"></i> Historial de entrega </h4><br>

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

        </main>



</body>


<!-- Codigo Javascript -->
<SCRIPT>
    //Regitrar marca de telefono
    $('#btnmarcacell').click(function() {

        Marca = document.getElementById("txtmarcacell").value;

        if (Marca == '') {
            swal.fire({
                icon: 'error',
                title: 'Oppss..',
                text: 'El campo marca de dispositivo esta vacio',
            });
            return false;

        } else {
            var Marca = $('#txtmarcacell').val();

            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Registrar_Marca",
                method: "POST",
                data: {
                    txtmarcacell: Marca
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');

                    if (data == 1) {
                        $('#AddMarca').hide();
                        let timerInterval
                        Swal.fire({
                            title: 'Excelente!',
                            text: 'Marca ' + Marca + ' registrada correctamente',
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

    });


    //Registrar modelo de telefono
    $('#btnmodelocell').click(function() {

        Marca = document.getElementById("mtxtmarcacell").value;
        Modelo = document.getElementById("mtxtmodelocell").value;
        MarcaT = mtxtmarcacell.options[mtxtmarcacell.selectedIndex].text;

        if (Marca == '' || Modelo == '') {
            swal.fire({
                title: 'Oppss...',
                text: 'Todos los campos son obligatorios',
                icon: 'error'
            });
            return false;
        } else {

            var Marca = $('#mtxtmarcacell').val();
            var Modelo = $('#mtxtmodelocell').val();

            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Registrar_Modelo",
                method: 'POST',
                data: {
                    mtxtmarcacell: Marca,
                    mtxtmodelocell: Modelo

                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');
                    $('#AddModel').hide();

                    if (data == 1) {

                        let timerInterval
                        Swal.fire({
                            title: 'Excelente!',
                            text: 'Dispositivo ' + MarcaT + ' modelo ' + Modelo + ' correctamente registrado ',
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

    });

    //Registrar nuevo telefono
    $('#btnregistrartelefono').click(function() {

        Marca = document.getElementById("ftxtmarcacell").value;
        Modelo = document.getElementById("ftxtmodeloAsignar").value;
        Año = document.getElementById("AñoCell").value;
        Color = document.getElementById("txtcolor").value;
        Imei = document.getElementById("txtimei").value;
        Serie = document.getElementById("txtserie").value;
        ActivoFijo = document.getElementById("txtactivof").value;
        Distribuidora = document.getElementById("mtxtdistribuidoraAsignar").value;
        Canal = document.getElementById("mtxtcanalAsignar").value;

        if (Marca == '' || Modelo == '' || Año == '' || Color == '' || Imei == '' || Serie == '' || ActivoFijo == '' || Distribuidora == '' || Canal == '') {
            swal.fire({
                title: 'Ooopppss...',
                text: 'Todos los campos son obligatorios',
                icon: 'error'
            });
            return false;

        } else {
            var Imeix = $('#txtimei').serialize();

            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Verificar_Imei",
                method: "POST",
                data: Imeix,
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(respuesta) {

                    if (respuesta == '') {
                        swal.fire({
                            title: 'Oooppss...',
                            text: 'Ingrese un Imei valido',
                            icon: 'error'
                        });
                        return false;

                    } else if (respuesta == '[]') {

                        $.post("<?php echo base_url(); ?>index.php/Dispositivos/Registrar_Telefono", {
                                ftxtmarcacell: Marca,
                                ftxtmodeloAsignar: Modelo,
                                AñoCell: Año,
                                txtcolor: Color,
                                txtimei: Imei,
                                txtserie: Serie,
                                txtactivof: ActivoFijo,
                                mtxtdistribuidoraAsignar: Distribuidora,
                                mtxtcanalAsignar: Canal
                            },

                            function(data) {

                                if (data == 1) {
                                    $("#esperando").css('display', 'none');

                                    // $('#mbtnCerrarModal').click();
                                    let timerInterval

                                    Swal.fire({
                                        title: 'Excelente!',
                                        text: 'Dispositivo correctamente registrado',
                                        icon: 'success',
                                        timer: 2000,
                                        timerProgressBar: true,
                                        showConfirmButton: false
                                    }).then((result) => {
                                        if (
                                            result.dismiss === Swal.DismissReason.timer
                                        ) {
                                            window.location = "AutorizacionesMH";

                                        }
                                    });

                                }
                            });

                    } else {
                        $("#esperando").css('display', 'none');

                        swal.fire({
                            showConfirmButton: false,
                            timer: 2000,
                            title: 'Oppsss..',
                            text: 'Este IMEI ya fue ingresado',
                            icon: 'info',
                            timerProgressBar: true,
                            showConfirmButton: false
                        });
                        return false;
                    }



                }
            });


        }

    });

    //Registrar entrega de telefonos autorizados
    $('#btnguardarautorizados').click(function() {


        var Id_distribuidora = document.getElementById("mtxtdistribuidoracell").value;
        var Id_canal = document.getElementById("mtxtcanalcell").value;
        var Id_ruta = document.getElementById("mtxtrutacell").value;
        var Id_empleados = document.getElementById("idEmpleado").value;
        var Id_telefono = document.getElementById("mtxtidtelefono").value;
        var Id_autorizaciones = document.getElementById("mtxtnmaquina").value;
        var fecha_registro = document.getElementById("mtxtfechahabilitacion").value;
        var motivo_entrega = document.getElementById("mtxtmotivoentrega").value;
        var ruta = mtxtrutacell.options[mtxtrutacell.selectedIndex].text;


        if (Id_distribuidora == '' || motivo_entrega == '' || Id_canal == '' || Id_ruta == '' || Id_empleados == '' || Id_telefono == '' || Id_autorizaciones == '' || fecha_registro == '') {
            swal.fire({
                title: 'error',
                text: 'Todos los campos son obligatorios.',
                icon: 'error'
            });
            return false;
        } else {


            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Entrega_Cell_Autorizado",
                method: 'POST',
                data: {
                    mtxtdistribuidoracell: Id_distribuidora,
                    mtxtcanalcell: Id_canal,
                    mtxtrutacell: Id_ruta,
                    idEmpleado: Id_empleados,
                    mtxtidtelefono: Id_telefono,
                    mtxtnmaquina: Id_autorizaciones,
                    mtxtfechahabilitacion: fecha_registro,
                    mtxtmotivoentrega: motivo_entrega,
                    mtxtruta: ruta,


                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');
                    if (data == 1) {
                        $('#mbtnCerrarModal').click();
                        let timerInterval
                        Swal.fire({
                            title: 'Excelente!',
                            text: 'Entrega Registrada Correctamente',
                            icon: 'success',
                            timerProgressBar: true,
                            timer: 2000,
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

    });

    //Registrar entrega de telefonos no autorizados
    $('#btnguardarnoautorizados').click(function() {


        var Id_distribuidora = document.getElementById("mtxtdistribuidoranocell").value;
        var Id_canal = document.getElementById("mtxtcanalnocell").value;
        var Id_ruta = document.getElementById("mtxtrutanocell").value;
        var Id_empleados = document.getElementById("NombreEmpleadono").value;
        var Id_telefono = document.getElementById("mtxtidtelefonono").value;
        var fecha_registro = document.getElementById("mtxtfechahabilitacionno").value;
        var motivo_entrega = document.getElementById("mtxtmotivoentregano").value;



        if (Id_distribuidora == '' || Id_canal == '' || Id_ruta == '' || Id_empleados == '' || Id_telefono == '' || motivo_entrega == '' || fecha_registro == '') {
            swal.fire({
                title: 'Oopppsss...',
                text: 'Todos Los Campos Son Obligatorios',
                icon: 'error'
            });
            return false;
        } else {


            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Entrega_Cell_NoAutorizado",
                method: 'POST',
                data: {
                    mtxtdistribuidoranocell: Id_distribuidora,
                    mtxtcanalnocell: Id_canal,
                    mtxtrutacell: Id_ruta,
                    NombreEmpleadono: Id_empleados,
                    mtxtidtelefonono: Id_telefono,
                    mtxtfechahabilitacion: fecha_registro,
                    mtxtmotivoentregano: motivo_entrega,
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');
                    if (data == 1) {
                        $('#mbtnCerrarModal').click();
                        let timerInterval
                        Swal.fire({
                            title: 'Excelente!',
                            text: 'Entrega Registrada Correctamente',
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

    });

    //Actualizar datos del telefono
    $('#mbtnUpCell').click(function() {

        var Id_telefono, Id_marca_cell, Id_modelo_cell, año_telefono, color_telefono, imei_telefono, N_serie_telefono, activo_fijo, Id_Distribuidora, Id_Canal;

        Id_telefono = document.getElementById("mtxtidcell").value;
        Id_marca_cell = document.getElementById("mtxtmarcacellm").value;
        Id_modelo_cell = document.getElementById("mtxtmodeloasignar").value;
        año_telefono = document.getElementById("mAñoCell").value;
        color_telefono = document.getElementById("mtxtcolor").value;
        imei_telefono = document.getElementById("mtxtimei").value;
        N_serie_telefono = document.getElementById("mtxtserie").value;
        activo_fijo = document.getElementById("mtxtactivof").value;
        Id_Distribuidora = document.getElementById("Tdistribuidoram").value;
        Id_Canal = document.getElementById("Tcanalm").value;


        if (Id_telefono.length == 0 || Id_marca_cell.length == 0 || Id_modelo_cell.length == 0 || año_telefono.length == 0 || color_telefono.length == 0 || imei_telefono.length == 0 || N_serie_telefono.length == 0 || activo_fijo.length == 0 || Id_Distribuidora.length == 0 || Id_Canal.length == 0) {

            swal.fire({
                icon: 'error',
                title: 'Ooopppss...',
                text: 'Todos los campos son obligatorios'

            });
            return false;

        } else {

            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Actualizar_Telefonos",
                method: 'POST',
                data: {
                    mtxtidcell: Id_telefono,
                    mtxtmarcacellm: Id_marca_cell,
                    mtxtmodeloasignar: Id_modelo_cell,
                    mAñoCell: año_telefono,
                    mtxtcolor: color_telefono,
                    mtxtimei: imei_telefono,
                    mtxtserie: N_serie_telefono,
                    mtxtactivof: activo_fijo,
                    Tdistribuidoram: Id_Distribuidora,
                    Tcanalm: Id_Canal

                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');
                    $('#ModificarTelefonos').modal('hide')
                    if (data == 1) {
                        let timerInterval
                        const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 2500,
                            timerProgressBar: true

                        });

                        Toast.fire({

                            icon: 'success',
                            title: 'Excelente!',
                            text: 'Registro Completado Correctamente'


                        }).then((result) => {
                            if (
                                result.dismiss === Swal.DismissReason.timer
                            ) {
                                //location.reload();
                            }
                        });

                    }
                }
            });
        }
    });

    $(document).ready(function() {


        //Carga modelos de telefonos segun la marca en formulario crear telefono
        $('#ftxtmarcacell').change(function() {
            var Id_Marca = $('#ftxtmarcacell').val();

            if (Id_Marca != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_Modelo",
                    method: "POST",
                    data: {
                        Id_Marca: Id_Marca
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');
                        $('#ftxtmodeloAsignar').html(data);
                    }
                });
            } else {
                $('#ftxtmodeloAsignar').html('<option value="">Selecccion el  producto</option>');
            }
        });

        //Carga modelos segun marca en formulario editar telefono
        $('#mtxtmarcacellm').change(function() {
            var Id_Marca = $('#mtxtmarcacellm').val();

            if (Id_Marca != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_Modelo",
                    method: "POST",
                    data: {
                        Id_Marca: Id_Marca
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#mtxtmodeloasignar').html(data);

                    }

                });
            } else {
                $('#mtxtmodeloasignar').html('<option value="">Selecccione el Modelo</option>');
            }
        });

        //Carga distribuidora en crear nuevo telefono
        $.ajax({
            url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_distribuidora",
            method: "POST",
            beforeSend: function() {
                $("#esperando").css('display', 'block');
            },
            success: function(data) {
                $("#esperando").css('display', 'none');
                //crear telefono
                $('#mtxtdistribuidoraAsignar').html(data);
                $('#mtxtcanalAsignar').html('<option value="">Seleccione El Canal</option>');

                //tabla telefono
                $('#Tdistribuidora').html(data);
                $('#Tcanal').html('<option value="">Seleccione El Canal</option>');

                //editar telefonos
                $('#Tdistribuidoram').html(data);
                $('#Tcanalm').html('<option value="">Seleccione El Canal</option>');

                //obtener distribuidora telefonos autorizados
                $('#mtxtdistribuidoracell').html(data);
                $('#mtxtcanalcell').html('<option value="" >Seleccione El Canal</option>');
                $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');

                //obtener distribuidora telefonos no autorizados
                $('#mtxtdistribuidoranocell').html(data);
                $('#mtxtcanalnocell').html('<option value="" >Seleccione El Canal</option>');
                $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');

                //Obtener distribuidora historial de entrega
                $('#bdistribuidora').html(data);
            }
        });

        //Busca canal segun distribuidora seleccionada en formulario crear nuevo telefono
        $('#mtxtdistribuidoraAsignar').change(function() {
            var Id_Distribuidora = $('#mtxtdistribuidoraAsignar').val();

            if (Id_Distribuidora != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal",
                    method: "POST",
                    data: {
                        Id_Distribuidora: Id_Distribuidora
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');
                        $('#mtxtcanalAsignar').html(data);

                    }
                });
            } else {
                $('#mtxtcanalAsignar').html('<option value="">Selecccion el canal</option>');

            }
        });


        //busca canal segun distribuidora en tabla telefonos
        $('#Tdistribuidora').change(function() {
            var Id_Distribuidora = $('#Tdistribuidora').val();

            if (Id_Distribuidora != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal",
                    method: "POST",
                    data: {
                        Id_Distribuidora: Id_Distribuidora
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#Tcanal').html(data);

                    }
                });
            } else {
                $('#Tcanal').html('<option value="">Selecccion el canal</option>');

            }
        });

        //busca canal segun distribuidora en editar telefonos
        $('#Tdistribuidoram').change(function() {
            var Id_Distribuidora = $('#Tdistribuidoram').val();

            if (Id_Distribuidora != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal",
                    method: "POST",
                    data: {
                        Id_Distribuidora: Id_Distribuidora
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#Tcanalm').html(data);

                    }
                });
            } else {
                $('#Tcanalm').html('<option value="">Selecccion el canal</option>');

            }
        });

        //Obtener n maquina a asignar telefono autorizados
        $('#mtxtcanalcell').change(function() {

            var Id_Canal = document.getElementById('mtxtcanalcell').value;

            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/n_maquina",
                method: "POST",
                data: {
                    Id_Canal: Id_Canal
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {
                    $("#esperando").css('display', 'none');

                    $('#mtxtnmaquina').html(data);

                }
            });
        });

        //Obtener canal segun distribuidora
        $('#mtxtdistribuidoracell').change(function() {
            var Id_Distribuidora = $('#mtxtdistribuidoracell').val();

            if (Id_Distribuidora != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal_cell",
                    method: "POST",
                    data: {
                        Id_Distribuidora: Id_Distribuidora
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#mtxtcanalcell').html(data);
                        $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');
                    }
                });
            } else {
                $('#mtxtcanalcell').html('<option value="" >Selecccion el canal</option>');
                $('#mtxtrutacell').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        // obtener rutas segun canal
        $('#mtxtcanalcell').change(function() {
            var Id_Canal = $('#mtxtcanalcell').val();
            if (Id_Canal != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
                    method: "POST",
                    data: {
                        Id_Canal: Id_Canal
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#mtxtrutacell').html(data);
                    }
                });
            } else {
                $('#mtxtrutacell').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        // obtener empleado segun ruta
        $('#mtxtrutacell').change(function() {
            var Id_Ruta = $('#mtxtrutacell').val();

            if (Id_Ruta != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_empleado",
                    method: "POST",
                    data: {
                        Id_Ruta: Id_Ruta
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#NombreEmpleado').html(data);

                    }
                });
            } else {
                $('#NombreEmpleado').html('NO ENCONTRADO');
            }
        });

        //Obtener datos de numero de caja (telefono)
        $('#mtxtnmaquina').change(function() {
            var n_maquina = $('#mtxtnmaquina').val();

            if (n_maquina != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/datos_mh_cell",
                    method: "POST",
                    data: {
                        n_maquina: n_maquina
                    },
                    dataType: "JSON",
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(respuesta) {
                        $("#esperando").css('display', 'none');
                        if (respuesta.length != 0) {
                            $('#mtxtimeiadd').val(respuesta.imei_telefono);
                            $('#mtxtmarca').val(respuesta.Nombre_marca);
                            $('#mtxtmodelo').val(respuesta.Nombre_Modelo);
                            $('#mtxtcoloradd').val(respuesta.color_telefono);
                            $('#mtxtserieautorizada').val(respuesta.serie_autorizada);
                            $('#mtxtresolucion').val(respuesta.n_resolucion_rt);
                            $('#mtxtfechaautorizacion').val(respuesta.fecha_autorizacion);
                            $('#mtxtzona').val(respuesta.Nombre_Distribuidora);
                            $('#mtxtidtelefono').val(respuesta.Id_telefono);


                        } else {

                            swal.fire({
                                showConfirmButton: false,
                                timer: 2500,
                                title: 'Oooppsss.',
                                text: 'Datos No Encontrados',
                                icon: 'error',
                                timerProgressBar: true
                            });
                        }
                    }
                });
            } else {

            }
        });


        //Obtener numero de imei disponibles telefonos no autorizados
        $('#mtxtcanalnocell').change(function() {
            var Id_Canal = $('#mtxtcanalnocell').val();

            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/imei_telefonos",
                method: "POST",
                data: {
                    Id_Canal: Id_Canal
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {
                    $("#esperando").css('display', 'none');
                    $('#mtxtimeitelefono').html(data);

                }
            });
        });

        //Obtener canal segun distribuidora telefonos no autorizados
        $('#mtxtdistribuidoranocell').change(function() {
            var Id_Distribuidora = $('#mtxtdistribuidoranocell').val();

            if (Id_Distribuidora != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal_nocell",
                    method: "POST",
                    data: {
                        Id_Distribuidora: Id_Distribuidora
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#mtxtcanalnocell').html(data);
                        $('#mtxtrutanocell').html('<option value="" >Seleccione la Ruta</option>');
                    }
                });
            } else {
                $('#mtxtcanalnocell').html('<option value="" >Selecccion el canal</option>');
                $('#mtxtrutanocell').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        //Obtener rutas segun canal telefonos no autorizados
        $('#mtxtcanalnocell').change(function() {
            var Id_Canal = $('#mtxtcanalnocell').val();
            if (Id_Canal != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
                    method: "POST",
                    data: {
                        Id_Canal: Id_Canal
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');
                        $('#mtxtrutanocell').html(data);
                    }
                });
            } else {
                $('#mtxtrutanocell').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        //Obtener empleado segun ruta telefonos no autorizados
        $('#mtxtrutanocell').change(function() {
            var Id_Ruta = $('#mtxtrutanocell').val();

            if (Id_Ruta != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_noempleado",
                    method: "POST",
                    data: {
                        Id_Ruta: Id_Ruta
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');
                        $('#NombreEmpleadono').html(data);

                    }
                });
            } else {
                $('#NombreEmpleadono').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        //Obtener datos del telefono , telefonos no autorizados
        $('#mtxtimeitelefono').change(function() {
            var imei_telefono = $('#mtxtimeitelefono').val();

            if (imei_telefono != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/datos_cell",
                    method: "POST",
                    data: {
                        imei_telefono: imei_telefono
                    },
                    dataType: "JSON",
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(respuesta) {
                        $("#esperando").css('display', 'none');
                        if (respuesta.length != 0) {

                            $('#mtxtmarcano').val(respuesta.Nombre_marca);
                            $('#mtxtmodelono').val(respuesta.Nombre_Modelo);
                            $('#mtxtcoloraddno').val(respuesta.color_telefono);

                            $('#mtxtdistribuidorano').val(respuesta.Nombre_Distribuidora);
                            $('#mtxtidtelefonono').val(respuesta.Id_telefono);


                        } else {

                            swal.fire({
                                showConfirmButton: false,
                                timer: 1500,
                                position: 'top-end',
                                title: 'Ooopppsss..',
                                text: 'Datos No Encontrados',
                                icon: 'error',
                                timerProgressBar: true
                            });
                        }
                    }
                });
            } else {

            }
        });

        //Obtener canal segun distribuidora de historial de entrega
        $('#bdistribuidora').change(function() {
            var Id_Distribuidora = $('#bdistribuidora').val();

            if (Id_Distribuidora != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal",
                    method: "POST",
                    data: {
                        Id_Distribuidora: Id_Distribuidora
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#bcanal').html(data);
                        $('#bruta').html('<option value="" >Seleccione la Ruta</option>');
                    }
                });
            } else {
                $('#bcanal').html('<option value="" >Selecccion el canal</option>');
                $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        // obtener rutas segun canal de historial de entrega
        $('#bcanal').change(function() {
            var Id_Canal = $('#bcanal').val();
            if (Id_Canal != '') {
                $.ajax({
                    url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
                    method: "POST",
                    data: {
                        Id_Canal: Id_Canal
                    },
                    beforeSend: function() {
                        $("#esperando").css('display', 'block');
                    },
                    success: function(data) {
                        $("#esperando").css('display', 'none');

                        $('#bruta').html(data);
                    }
                });
            } else {
                $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
            }
        });

        //Tabla de historial de entrega de telefono
        $.ajax({
            url: "<?php echo base_url(); ?>index.php/Dispositivos/Consultar_PDF",
            method: "POST",
            beforeSend: function() {
                $("#esperando").css('display', 'block');
            },
            success: function(respuesta) {
                $("#esperando").css('display', 'none');
                var registros = eval(respuesta);

                html = "<table class='table' >";
                html += "<tr><th >Ruta</th><th >Nombre</th><th >Dispositivo</th><th> Fecha Entrega</th><th>PDF</th></tr>";
                html += "<tbody>";

                for (var i = 0; i < registros.length; i++) {
                    html += "<tr><td style='display:none;'>" + registros[i]["Id_Ruta"] +
                        "</td><td>" + registros[i]["Nombre_Ruta"] +
                        "</td><td>" + registros[i]["Nombre"] +
                        "</td><td>" + registros[i]["Nombre_Marca"] + " " + registros[i]["nombre_Modelo"] + " <BR>IMEI: " + registros[i]["Imei_telefono"] +
                        "</td><td>" + registros[i]["fecha_registro"] +
                        "</td><td style='display:none;'>" + registros[i]["Id_PDF"] +
                        "</td><td><a href='<?php echo base_url(); ?>index.php/Dispositivos/pdfdetails/" + registros[i]["Id_pdf_cell"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>" +
                        "</td></tr>";


                };


                html += "</tbody></table>";


                $(".tabla").html(html);
            }
        });

    });

    // Efecto Botones De formularios de entrega de  Telefono 
    function autorizados() {
        document.getElementById('Inflar_pelota').style.display = 'none';
        document.getElementById('form_autorizados').style.display = 'block';
        document.getElementById('form_no_autorizados').style.display = 'none';
        document.getElementById('btnguardarautorizados').style.display = 'block';
        document.getElementById('btnguardarnoautorizados').style.display = 'none';

    }

    function no_autorizados() {
        document.getElementById('Inflar_pelota').style.display = 'none';
        document.getElementById('form_autorizados').style.display = 'none';
        document.getElementById('form_no_autorizados').style.display = 'block';
        document.getElementById('btnguardarautorizados').style.display = 'none';
        document.getElementById('btnguardarnoautorizados').style.display = 'block';
    }

    function mostrarTelefonos() {

        var datos = $('#form-vis').serialize();

        $.ajax({
            url: "<?php echo base_url(); ?>index.php/Dispositivos/Consultar_Telefonos",
            method: "POST",
            data: datos,
            beforeSend: function() {
                $("#esperando").css('display', 'block');
            },
            success: function(respuesta) {

                $("#esperando").css('display', 'none');

                var registros = eval(respuesta);


                html = " <h4 > <i class='fas fa-mobile-alt'></i> Dispositivos </h4> <br> <table class='table'><thead>";
                html += "<tr><th style='display:none; '>ID</th><th>Dispositivo</th><th style='display:none;'>Id Marca</th><th style='display:none;'>Id Modelo</th><th>Imei</th><th style='display:none;'>Año</th><th style='display:none;'>Color</th><th style='display:none;'>Id_Distribuidora</th><th> Distribuidora</th><th style='display:none;'>Id_Canal</th><th>Canal</th><th style='display:none;'>Estado</th><th width='90px'>Modificar</th><th width='90px'>Baja/alta</th></tr>";
                html += "</tr></thead><tbody>";

                for (var i = 0; i < registros.length; i++) {
                    html += "<tr><td style='display:none;'>" + registros[i]["Id_telefono"] +
                        "</td><td>" + registros[i]["Nombre_Marca"] + " " + registros[i]["nombre_Modelo"] + " " + registros[i]["color_telefono"] + " " + registros[i]["año_telefono"] +
                        "</td><td style='display:none;'>" + registros[i]["Id_marca_cell"] +
                        "</td><td style='display:none;'>" + registros[i]["Id_modelo_cell"] +
                        "</td><td>" + registros[i]["imei_telefono"] +
                        "</td><td style='display:none;'>" + registros[i]["año_telefono"] +
                        "</td><td style='display:none;'>" + registros[i]["color_telefono"] +
                        "</td><td style='display:none;'>" + registros[i]["Id_Distribuidora"] +
                        "</td><td>" + registros[i]["Nombre_Distribuidora"] +
                        "</td><td style='display:none;'>" + registros[i]["Id_Canal"] +
                        "</td><td>" + registros[i]["Nombre_Canal"] +
                        "</td><td style='display:none;'>" + registros[i]["estado_telefono"] +
                        "</td>";

                    if (registros[i]['estado_telefono'] == 0 || registros[i]['estado_telefono'] == 2) {
                        html += "<td><a href='#' data-toggle='modal' data-target='#ModificarTelefonos' onClick='Enviar_DatosTelefono_modal(\"" + registros[i]["Id_telefono"] +
                            "\",\"" + registros[i]["Id_marca_cell"] +
                            "\",\"" + registros[i]["Id_modelo_cell"] +
                            "\",\"" + registros[i]["año_telefono"] +
                            "\",\"" + registros[i]["color_telefono"] +
                            "\",\"" + registros[i]["imei_telefono"] +
                            "\",\"" + registros[i]["N_serie_telefono"] +
                            "\",\"" + registros[i]["activo_fijo"] +
                            "\",\"" + registros[i]["Id_Distribuidora"] +
                            "\",\"" + registros[i]["Id_Canal"] + "\");'>" +
                            "<span style='font-size: 30px;'><i class='far fa-edit'></i></span></a></td>";
                    } else {
                        html += "<td></td>";
                    }

                    if (registros[i]['estado_telefono'] == 1) {
                        html += "<td style='width:200px;'><div class='form-row'>" +
                            "<div class='col-md-9 mb-3'>" +
                            "<select value='' class='form-control' id='observacionbaja" + registros[i]["Id_telefono"] + "' name='year'>" +
                            "<option disabled='disabled' selected='true' value='' >Observacion</option>" +
                            "<option value='DAÑO' id=''>DAÑO</option>" +
                            "<option value='ROBO' id=''>ROBO</option>" +
                            "<option value='REVISION' id=''>REVISION</option>" +
                            "<option value='RENOVACION' id=''>RENOVACION</option>" +
                            "</select>" +
                            "</div>";

                        html += "<a href='#' class='InactivarTelefono' id='InactivarTelefono' onClick='InactivarTelefono(\"" + registros[i]["Id_telefono"] + "\");'><span style='font-size: 25px; color:#70FF00; margin-left:10px;'><i class='fas fa-level-down-alt'></i></span></a></div>" +
                            "</td></tr>";
                    } else if (registros[i]['estado_telefono'] == 0) {
                        html += "<td style='width:200px;'><div class='form-row'>" +
                            "<div class='col-md-9 mb-3'>" +
                            "<select value='' class='form-control' id='observacionalta" + registros[i]["Id_telefono"] + "' name='year'>" +
                            "<option disabled='disabled' selected='true' value=''>Observacion</option>" +
                            "<option value='REPARADO' id=''>REPARADO</option>" +
                            "<option value='BACK UP' id=''>BACK UP</option>" +
                            "</select>" +
                            "</div>";


                        html += "<a href='#' class='ActivarTelefono' id='ActivarTelefono' onClick='ActivarTelefono(\"" + registros[i]["Id_telefono"] + "\");'><span style='font-size: 25px; color:#FF2D00; margin-left:10px;'><i class='fas fa-level-up-alt'></i></span></a></div>" +
                            "</td></tr>";
                    } else if (registros[i]['estado_telefono'] == 7) {
                        html += "<td ><div class='form-row'>" +
                            "<div class='col-md-9 mb-3'>" +
                            "<p style='color: red; font-size: 20px;text-align: center; margin-left:5%;'>IRRECUPERABLE</hp>"
                        "</div</td></tr>";
                    }

                };
                html += "</tbody></table>";
                $("#listatelefonos").html(html);
            }
        });
    }

    //Enviar datos al modal editar telefonos
    function Enviar_DatosTelefono_modal(Id_telefono, Id_marca_cell, Id_modelo_cell, año_telefono, color_telefono, imei_telefono, N_serie_telefono, activo_fijo, Id_Distribuidora, Id_Canal) {

        $(document).ready(function() {

            $('#mtxtidcell').val(Id_telefono);

            $("#mtxtmarcacellm").val(Id_marca_cell);
            $('#mtxtmarcacellm').change();

            $("#Tdistribuidoram option[value='" + Id_Distribuidora + "']").attr("selected", true);
            $("#Tdistribuidoram").change();

            $("#mAñoCell option[value='" + año_telefono + "']").attr("selected", true);
            $('#mtxtcolor').val(color_telefono);
            $('#mtxtimei').val(imei_telefono);
            $('#mtxtserie').val(N_serie_telefono);
            $('#mtxtactivof').val(activo_fijo);

            setTimeout(function() {
                $("#mtxtmodeloasignar").val(Id_modelo_cell);


            }, 300);

            setTimeout(function() {

                $("#Tcanalm").val(Id_Canal);

            }, 300);
        });

    }

    //Activar telefono 
    function ActivarTelefono(Id_Telefono) {

        let observacion = document.getElementById("observacionalta" + Id_Telefono).value;

        if (observacion.length == 0) {

            swal.fire({
                title: 'Oppss..',
                text: 'Seleccione una observacion para dar de alta',
                icon: 'error'
            });
            return false;
        } else {
            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Activar_Telefono",
                method: "POST",
                data: {
                    mtxtidcell: Id_Telefono,
                    observacionalta: observacion
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');
                    if (data == 1) {


                        let timerInterval
                        const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 2500,
                            timerProgressBar: true

                        });

                        Toast.fire({

                            icon: 'success',
                            title: 'Excelente!',
                            text: 'Dispositivo activado correctamente',


                        }).then((result) => {
                            if (
                                result.dismiss === Swal.DismissReason.timer
                            ) {

                                $('#buscar').click();
                            }
                        });

                    }
                }
            });
        }
    }


    function InactivarTelefono(Id_Telefono) {

        let observacion = document.getElementById("observacionbaja" + Id_Telefono).value;
        if (observacion.length == 0) {

            swal.fire({
                title: 'Oppss...',
                text: 'Seleccione una observacion para dar de baja',
                icon: 'error'
            });
            return false;

        } else {
            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Inactivar_Telefono",
                method: 'POST',
                data: {
                    mtxtidcell: Id_Telefono,
                    observacionbaja: observacion
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(data) {

                    $("#esperando").css('display', 'none');
                    if (data == 1) {


                        let timerInterval
                        const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 2500,
                            timerProgressBar: true
                        });

                        Toast.fire({

                            icon: 'success',
                            title: 'Excelente!',
                            text: 'Dispositivo inactivado correctamente',


                        }).then((result) => {
                            if (
                                result.dismiss === Swal.DismissReason.timer
                            ) {
                                $('#buscar').click();
                            }
                        });

                    }
                }
            });
        }

    }

    //Consultar pdf por rutas
    function ConsultarPDF() {

        let Id_ruta = $("#bruta").val();
        if (Id_ruta === null) {
            swal.fire({
                icon: 'error',
                title: 'Oopppsss..',
                text: 'Seleccione una ruta para buscar.'
            })
            return false;
        } else {
            //Tabla de historial de entrega de telefono
            $.ajax({
                url: "<?php echo base_url(); ?>index.php/Dispositivos/Consultar_PDF_r",
                method: "POST",
                data: {
                    Id_ruta: Id_ruta
                },
                beforeSend: function() {
                    $("#esperando").css('display', 'block');
                },
                success: function(respuesta) {

                    $("#esperando").css('display', 'none');
                    var registros = eval(respuesta);

                    html = "<table class='table' >";
                    html += "<tr><th >Ruta</th><th >Nombre</th><th >Dispositivos</th><th> Fecha Entrega</th><th>PDF</th></tr>";
                    html += "<tbody>";

                    for (var i = 0; i < registros.length; i++) {
                        html += "<tr><td style='display:none;'>" + registros[i]["Id_Ruta"] +
                            "</td><td>" + registros[i]["Nombre_Ruta"] +
                            "</td><td>" + registros[i]["Nombre"] +
                            "</td><td>" + registros[i]["Nombre_Marca"] + " " + registros[i]["nombre_Modelo"] + " <BR>IMEI: " + registros[i]["Imei_telefono"] +
                            "</td><td>" + registros[i]["fecha_registro"] +
                            "</td><td style='display:none;'>" + registros[i]["Id_PDF"] +
                            "</td><td><a href='<?php echo base_url(); ?>index.php/Dispositivos/pdfdetails/" + registros[i]["Id_pdf_cell"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>" +
                            "</td></tr>";


                    };


                    html += "</tbody></table>";


                    $(".tabla").html(html);
                }
            });
        }

    }

    //Inflar balon de entretenimiento asignar telefono
    var click = 0;
    var posY = 0;
    var posX = 0;
    var opacity = 9;
    var newopacity;

    $(".pump").on("touchstart mousedown", function(e) {
        click++;
        $(".handle-assy").css({
            top: 30 + "px"
        });
        $(".hand").css({
            transform: "rotate(" + 280 + "deg)"
        });
        $(".ball").css({
            transform: "scale(" + click + "," + click + ")",
            display: "initial",
            top: 310 - (click * 15),
            opacity: "0." + opacity
        });
        $(".ball-shadow").css({
            background: "#454545",
            transform: "scaleX(" + click * 2 + ")",
        });
        $(".ball-shadow").show();
        opacity--;
        newopacity = opacity;
        console.log("0." + opacity)
        if (opacity <= 0.2) {
            $(".ball").text("BOOM!");
            $(".ball-shadow").hide();

            click = 0;
            opacity = 9;
        } else {
            $(".ball").text("");
        }
    });

    $(".pump").mouseup(function() {
        $(".handle-assy").css({
            top: 0 + "px"
        });
        $(".hand").css({
            transform: "rotate(" + 0 + "deg)"
        });
    });

    $(".btn").click(function() {
        $(".ball").css({
            transform: "scale(0, 0)",
            transition: "0.5s"
        });
        $(".ball").css({
            display: "none"
        });
        $(".ball-shadow").hide();
        click = 0;
        opacity = 9;
    });
</script>

</html>