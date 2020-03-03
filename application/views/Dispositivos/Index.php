<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Consola SDV</title>

    <!--Icon page-->
    <link href="Public/Img/favicon.png" rel="icon">

    <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Dispositivos.css')?>">

    <style>
    input[type="color"] {
        -webkit-appearance: none;
        border: none;
        width: 70px;
        height: 30px;
    }
    input[type="color"]::-webkit-color-swatch-wrapper {
        padding: 0;
    }
    input[type="color"]::-webkit-color-swatch {
        border: none;
    }

    table {
    
        border-collapse: collapse;
        overflow: hidden;
        box-shadow: 2px 5px 5px rgba(116, 117, 111);
        }

        th {
        padding: 15px;
        background-color:#000000;
        text-align: center;
        
        color: #fff;
        }


        }



</style>

</head>

<body>

    <div class="page-wrapper chiller-theme toggled">    
    <main class="page-content">
   
    
    <section id="hero" class="wow fadeIn">
    <h1> Telefenos</h1><br>

    <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">

    <div class="smartphone" style="position:fixed;" >

            <!-- Fondo De Pantalla de Telefono -->
        <img class="img"src="<?php echo base_url('Public/Img/FondoCell'.rand(0, 5).'.gif')?>" width="200%" height="100%" style="margin:auto;"> 
            <!-- End ,Fondo De Pantalla De Telefono -->


        <div class="flexbox">

                <!-- Agregar Telefonos -->
            <a href="#" class="buttonCell a1" onclick="MostrarFormAddCell();" id="MostrarForm"  style="display: block;"><i class="fas fa-phone" ></i></a>
            <a href="#" class="buttonCell a1" onclick="OcultarFormAddCell();" id="OcultarForm" style="display: none;"><i class="fas fa-minus"></i></a>
                <!-- End Agregar Telefonos -->


                <!-- Visualizar Telefonos -->
            <a href="#" class="buttonCell a2" onclick="MostrarImagen();" id="MostrarForm1"  style="display: block;"><i class="fas fa-archive"></i></a>
            <a href="#" class="buttonCell a3" onclick="OcultarImagen();" id="OcultarForm1" style="display: none;"><i class="fas fa-minus"></i></a>
                <!-- End Visualizar Telefonos -->

                <!-- ASIGNAR TELEFONO A EMPLEADO  -->
            <a href="#" class="buttonCell a5" data-toggle="modal" data-target="#Asignarcell"><i class="fab fa-autoprefixer"></i></a>
                <!-- END ,ASIGNAR TELEFONO A EMPLEADO-->


                <!-- Modal, Agregar Marca De Telefono -->
            <a href="#" class="buttonCell a4" data-toggle="modal" data-target="#AddMarca"><i class="fab fa-apple"></i></a>
                <!-- End Agregar Marca De Telefono  -->


                <!--Modal, Agregar Modelo de Telefono -->
            <a href="#" class="buttonCell a4" data-toggle="modal" data-target="#AddModel"><i class="fas fa-bezier-curve"></i></i></a>
                <!-- End Agregar Modelo de Telefono  -->
        </div>
       
        
    </div>
    
    
        <div  class="dispo" id="dispo"> 

            <!-- Div Formulario Agregar telefono -->
            <div id="FormAddCell" style="display: none; padding:5%; margin:0 auto;">

                <h1 align="center"><span style="color:black;"><i class="fas fa-mobile"></i> Añadir Telefonos</span></h1><br><br>

                <div style="margin-left:10%; margin-right:10%;">

                  <form method='POST' id='form_addtelefonos' name='form_addtelefonos'  enctype="multipart/form-data">

                    <div class="form-row" >

                            <div class="col-md-5 mb-3">
                                <label for="input" style="font-size: 20px;">Marca De Telefono</label>
                                <select class="form-control " id="ftxtmarcacell" name="ftxtmarcacell" required>
                                <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                    <?php
                                        foreach($arrMarca as $row)
                                            {
                                                echo '<option value="'.$row->Id_marca_cell.'">'.$row->Nombre_Marca.'</option>';
                                            }
                                    ?>
                                </select>
                            </div>

                            <div class="col-md-5 mb-3">
                                <label for="input" style="font-size: 20px;">Modelo</label>
                                <select class="form-control " id="ftxtmodeloAsignar" name="ftxtmodeloAsignar" >
                                <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                                </select>
                            </div>

                            <div class="col-md-2 mb-3">
                                <label for="input" style="font-size: 20px;">Año</label>
                                <select   value="" class="form-control " id="AñoCell" name="year">
                                <option disabled="disabled" selected="true" value="" id="AñoCell">Año</option>
                                <?php  for($i=2010;$i<=2020;$i++) { echo "<option value='".$i."'>".$i."</option>"; } ?>
                                </select>
                            </div>

                            <div class="col-md-3 mb-2">
                                <label for="input" style="font-size: 20px;">Color</label>
                            <input type="text" class="form-control" id="txtcolor" value="">
                            </div>

                            <div class="col-md-4 mb-2">
                                <label for="input" style="font-size: 20px;">Imei</label>
                            <input type="number" class="form-control" id="txtimei"  name="txtimei">
                            </div>

                            <div class="col-md-4 mb-2">
                                <label for="input" style="font-size: 20px;">N° de Serie</label>
                            <input type="text" class="form-control" id="txtserie" >
                            </div>

                            <div class="col-md-4 mb-2">
                                <label for="input" style="font-size: 20px;">Activo Fijo</label>
                            <input type="number" class="form-control" id="txtactivof" >
                            </div>

                            <div class="col-md-4 mb-2" >
                                <label for="exampleFormControlSelect1" style="font-size: 20px;">Distribuidora</label>
                                <select class="form-control" id="mtxtdistribuidoraAsignar" name="mtxtdistribuidoraAsignar" > 
                                <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                </select>
                            </div>

                            <div class="col-md-4 mb-2" >
                                <label for="exampleFormControlSelect1" style="font-size: 20px;">Canal</label>
                                <select class="form-control" id="mtxtcanalAsignar" name="mtxtcanalAsignar" >
                                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                </select>
                            </div> 

                            <div style="margin:auto; margin-top:5%;">
                                    <button type="button" name='btnregistrartelefono' class="btn btn-primary" id="btnregistrartelefono" >Guardar</button>
                                    <button type="reset" name='limpiar' class="btn btn-danger">Limpiar</button>
                            </div>
                    </div>
                    
                  </form>

                </div>
            </div>    
            <!-- End Div , Formulario Agregar Telefono -->


            <!--  Div Visualizar Telefonos -->
            <div id="Imagen" style="display: none; padding:5%; margin:0 auto;">
                <h1><span style="color:black;"> Visualizacion De Telefonos  <i class="fas fa-satellite"></i></span></h1>

                <form id="form-vis">
                 <div class="form-row">
          
                        <div class="col-md-4 mb-2" >
                            <label for="exampleFormControlSelect1" style="font-size: 20px;">Distribuidora</label>
                            <select class="form-control" id="Tdistribuidora" name="Tdistribuidora" > 
                            <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                            </select>
                        </div>

                        <div class="col-md-4 mb-2" >
                            <label for="exampleFormControlSelect1" style="font-size: 20px;">Canal</label>
                            <select class="form-control" id="Tcanal" name="Tcanal" >
                            <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                            </select>
                        </div> 
          
                        <div style="margin:auto; margin-top: 35px; ">
                            <button type="button" name='buscar' id='buscar' class="btn btn-dark" OnClick="mostrarTelefonos();" >Consultar</button>
                            <!-- <button type="button" class="btn btn-success ">Exportar</button> -->
                        </div>
                             
                 </div>
                </form>
                <br>
                <div id="listatelefonos" ></div>
            </div>
            <!-- End Div, Visualizar Telefonos -->

        </div>     

            <!-- Modal Agregar Marca De Telefono  -->
            <div class="modal fade" id="AddMarca" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span style="font-size:25px; color:#000;"><i class="fas fa-pencil-alt"></i>Añadir Marca</span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                <div class="col-7">
                    <label for="formGroupExampleInput"><span style="font-size:16px; text_aling:center;">Marca De Telefono</span></label>
                    <input type="text" class="form-control" id="txtmarcacell" placeholder="Apple, Xiaomi, Samsung">
                </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btnmarcacell" class="btn btn-primary">Guardar</button>
                </div>
                </div>
            </div>
            </div>
            <!-- End Modal,Agregar Marca De Telefono -->

                   
            <!-- Modal Agregar Modelo De Telefono  -->
            <div class="modal fade" id="AddModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span style="font-size:25px; color:#000;"><i class="fas fa-pencil-alt"></i>Añadir Modelo</span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                   
              <label for="input" style="font-size: 20px;">Marca De Telefono</label>
              <select class="form-control col-md-10" id="mtxtmarcacell" name="mtxtmarcacell" required>
              <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                    <?php
                        foreach($arrMarca as $row)
                            {
                                echo '<option value="'.$row->Id_marca_cell.'">'.$row->Nombre_Marca.'</option>';
                            }
                    ?>
              </select>
                <br>
              <label for="input" style="font-size: 20px;">Modelo De Telefono</label>
              <input type="text" class="form-control col-md-8"  id="mtxtmodelocell" name="mtxtmodelocell" placeholder="k4, Iphone 6 , J1" >
            
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btnmodelocell" >Guardar</button>
                </div>
                </div>
            </div>
            </div>
            <!-- End Modal, Agregar Modelo De Telefono -->
            
            
            <!-- Modal Modificar Telefonos -->
            <div class="modal fade" id="ModificarTelefonos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                       <h1 style="color:black;" class="modal-title" id="exampleModalLabel">Modificar Telefono  <span style="size:10px;"><i class="fas fa-pen-fancy"></i></span> </h1>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method='POST' id='Mod_Cell' name='Mod_Cell'>
                         <input type="hidden" class="form-control" id="mtxtidcell" name="mtxtidcell"hiden>

                            <div class="form-row" >

                                    <div class="col-md-5 mb-3">
                                        <label for="input" style="font-size: 20px;">Marca De Telefono</label>
                                        <select class="form-control " id="mtxtmarcacellm" name="mtxtmarcacellm" required>
                                        <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                            <?php
                                                foreach($arrMarca as $row)
                                                    {
                                                        echo '<option value="'.$row->Id_marca_cell.'">'.$row->Nombre_Marca.'</option>';
                                                    }
                                            ?>
                                        </select>
                                    </div>

                                    <div class="col-md-5 mb-3">
                                        <label for="input" style="font-size: 20px;">Modelo</label>
                                        <select class="form-control " id="mtxtmodeloasignar" name="mtxtmodeloasignar" >
                                        <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                                        </select>
                                    </div>

                                    <div class="col-md-2 mb-3">
                                        <label for="input" style="font-size: 20px;">Año</label>
                                        <select   value="" class="form-control " id="mAñoCell" name="year">
                                        <option disabled="disabled" selected="true" value="" id="AñoCell">Año</option>
                                        <?php  for($i=2010;$i<=2020;$i++) { echo "<option value='".$i."'>".$i."</option>"; } ?>
                                        </select>
                                    </div>

                                    <div class="col-md-3 mb-2">
                                        <label for="input" style="font-size: 20px;">Color</label>
                                    <input type="text" class="form-control" id="mtxtcolor" value="">
                                    </div>

                                    <div class="col-md-4 mb-2">
                                        <label for="input" style="font-size: 20px;">Imei</label>
                                    <input type="number" class="form-control" id="mtxtimei" >
                                    </div>

                                    <div class="col-md-4 mb-2">
                                        <label for="input" style="font-size: 20px;">N° de Serie</label>
                                    <input type="text" class="form-control" id="mtxtserie" >
                                    </div>

                                    <div class="col-md-4 mb-2">
                                        <label for="input" style="font-size: 20px;">Activo Fijo</label>
                                    <input type="number" class="form-control" id="mtxtactivof" >
                                    </div>

                                    <div class="col-md-4 mb-2" >
                                        <label for="exampleFormControlSelect1" style="font-size: 20px;">Distribuidora</label>
                                        <select class="form-control" id="Tdistribuidoram" name="Tdistribuidoram" > 
                                        <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4 mb-2" >
                                        <label for="exampleFormControlSelect1" style="font-size: 20px;">Canal</label>
                                        <select class="form-control" id="Tcanalm" name="Tcanalm" >
                                        <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                        </select>
                                    </div> 


                            </div>

                        </form>
                    </div>

                    <div class="modal-footer" >
                        <button type="button" class="btn btn-primary" id='mbtnUpCell' name='mbtnUpCell'>Guardar</button>
                        <button type="button" class="btn btn-danger" id="mbtncerrarmodal" data-dismiss="modal">Cerrar</button>
                    </div>

                    </div>
                </div>
            </div>
            <!-- End, Modal Modificar Telefonos -->
                                                    
            
            <!--Modal Asignar Telefono -->
            <div class="modal fade" id="Asignarcell" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h1 style = " color:black; font-size:28px;"class="modal-title" id="exampleModalLabel"><i class="fas fa-vote-yea"></i> Asignar Telefono
                    
                    <label style="margin-left:">
                        <input type="radio" class="option-input radio" name="example" id="autorizados" Onclick="autorizados();"/>
                        Autorizados
                    </label>

                    <label>
                        <input type="radio" class="option-input radio" name="example" id="no_autorizados" Onclick="no_autorizados();"/>
                        No Autorizados
                    </label>
                                                </h1>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
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

                 <!-- *******************************FORMULARIO ENTREGA DE CELULARES AUTORIZADOS******************************** -->
                 <div id="form_autorizados" style="display:none;">

                    <div class="container">
                    
                        <div class="row">
                            
                            <div class="col-md-5" style="border-right:1px dashed #000;">

                                <div class="form-group col-md-12" >
                                    <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                                    <select class="form-control" id="mtxtdistribuidoracell" name="mtxtdistribuidoracell" > 
                                    <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-12" >
                                    <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
                                    <select class="form-control" id="mtxtcanalcell" name="mtxtcanalcell" >
                                    <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                    </select>
                                </div> 

                                <div class="form-group col-md-12" >
                                    <label for="exampleFormControlSelect1"><strong><h6>Ruta Asignada</h6></strong></label>
                                    <select class="form-control" id="mtxtrutacell" name="mtxtrutacell" >
                                    <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                    </select>
                                </div>    
                                
                                <div class="form-group col-md-14" >
                                    <label for="EMPLEDAO"><h6>Empleado</h6></label>
                                    <div for="EMPLEADO" id="NombreEmpleado">
                                    <input disabled="disabled" type="text" id="idEmpleado" class="form-control" style="display:none;" >
                                    </div>
                                </div> 
                                <br>

                                <div class="form-group col-md-14" style="">
                                            <label for="exampleFormControlSelect1"><strong><h6>Motivo de Entrega</h6></strong></label>
                                            <select class="form-control" id="mtxtmotivoentrega" name="mtxtmotivoentrega" > 
                                            <option disabled="disabled "value="" selected="selected">Seleccione una opcion</option>
                                            <option value="DAÑO" >DAÑO</option>
                                            <option value="ROBO" >ROBO</option>
                                            <option value="RENOVACION" >RENOVACION</option>
                                            <option value="PRIMERA VEZ" >PRIMERA VEZ</option>
                                            </select>             
                                </div>

                            </div>
                           
                                                    
                            <div class="col-md" >
                                <div class="form-row">                    
                                    <div class="form-group col-md-5" style="">
                                            <label for="exampleFormControlSelect1"><strong><h6>N Maquina</h6></strong></label>
                                            <select class="form-control" id="mtxtnmaquina" name="mtxtnmaquina" > 
                                            <option  disabled="disabled" value="" selected="selected">Seleccione El N Maquina</option>
                                            </select>             
                                    </div>

                                    <div class="form-group col-md-7" style="">
                                            <label for="exampleFormControlSelect1"><strong><h6>Imei</h6></strong></label>
                                            <input  class="form-control" type="text" disabled="disabled" id="mtxtimeiadd"></input>
                                            </select>             
                                    </div>
                                </div>

                                    
                                <input type="text" id="mtxtidtelefono" name="mtxtidtelefono" class="form-control" disabled="disabled" style="display:none;">

                                        <div class="input-group col-md-10">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text"   style="width:90px;">Marca</span>
                                            </div>
                                             <input type="text" id="mtxtmarca" name="mtxtmarca" class="form-control" disabled="disabled">
                                         </div>

                                        <div class="input-group col-md-10">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text"   style="width:90px;">Modelo</span>
                                            </div>
                                            <input type="text" id="mtxtmodelo" name="mtxtmodelo" class="form-control" disabled="disabled">
                                        </div>

                                        <div class="input-group col-md-10">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text"   style="width:90px;">Color</span>
                                            </div>
                                            <input type="text" id="mtxtcoloradd" name="mtxtcoloradd" class="form-control" disabled="disabled">
                                        </div>
                                        <div class="input-group col-md-10">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text"   style="width:90px;">Zona</span>
                                            </div>
                                            <input type="text" id="mtxtzona" name="mtxtzona" class="form-control" disabled="disabled">
                                        </div>
                                                    <br>
                                        <div class="input-group col-md-10">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text"   style="width:90px;">Serie A</span>
                                            </div>
                                            <input type="text" id="mtxtserieautorizada" name="mtxtserieautorizada" class="form-control" disabled="disabled">
                                        </div>
                                               
                                        <div class="input-group col-md-11">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text"   style="">Resolucion</span>
                                            </div>
                                            <input type="text" id="mtxtresolucion" name="mtxtresolucion" class="form-control" disabled="disabled">
                                        </div>
           
                                        <div class="input-group col-md-12">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text" >Fecha Autorizacion</span>
                                            </div>
                                            <input type="date" id="mtxtfechaautorizacion" name="mtxtfechaautorizacion" class="form-control" disabled="disabled">
                                        </div>

                                        <div class="input-group col-md-12">
                                            <div class="input-group-prepend">
                                                    <span class="input-group-text" >Fecha Habilitacion</span>
                                            </div>
                                            <input type="date" id="mtxtfechahabilitacion" name="mtxtfechahabilitacion" class="form-control" >
                                        </div>

                                        
                                    

                                   
                            </div>
                           

                        </div>
                    </div>
    
                  <!-- <h1>AQUI VA A IR EL FORMULARIO DE ENTREGA DE TELEFONOS AUTORIZADOS</h1> -->
                 </div>
                 <!-- *******************************FINISH,FORMULARIO ENTREGA DE CELULARES AUTORIZADOS******************************** -->


                 <!-- *******************************FORMULARIO ENTREGA DE CELULARES NO AUTORIZADOS******************************** -->
                 <div id="form_no_autorizados" style="display:none;">
                 <div class="container">
                    
                    <div class="row">
                   
                        <div class="col-md-5" style="border-right:1px dashed #000;">

                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                                <select class="form-control" id="mtxtdistribuidoranocell" name="mtxtdistribuidoranocell" > 
                                <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
                                <select class="form-control" id="mtxtcanalnocell" name="mtxtcanalnocell" >
                                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                </select>
                            </div> 

                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Ruta Asignada</h6></strong></label>
                                <select class="form-control" id="mtxtrutanocell" name="mtxtrutanocell" >
                                <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                </select>
                            </div>    
                          
                            <div class="form-group col-md-12" >
                                <label for="exampleFormControlSelect1"><strong><h6>Empleado</h6></strong></label>
                                <select class="form-control" id="NombreEmpleadono" name="NombreEmpleadono" >
                                <option selected="true" disabled="disabled" value="">Seleccione el empleado</option>
                                </select>
                            </div> 
                                                    <br>
                           

                        </div>
                       
                        <div class="col-md" >
                            <div class="form-row">                    
                                <div class="form-group col-md-5" style="">
                                        <label for="exampleFormControlSelect1"><strong><h6>Imei</h6></strong></label>
                                        <select class="form-control" id="mtxtimeitelefono" name="mtxtimeitelefono" > 
                                        <option  disabled="disabled" value="" selected="selected" >Seleccione un imei</option>
                                        </select>             
                                </div>

                               
                            </div>

                                
                            <input type="text" id="mtxtidtelefonono" name="mtxtidtelefonono" class="form-control" disabled="disabled" style="display:none;">

                                    <div class="input-group col-md-10">
                                        <div class="input-group-prepend">
                                                <span class="input-group-text"   style="width:90px;">Marca</span>
                                        </div>
                                         <input type="text" id="mtxtmarcano" name="mtxtmarcano" class="form-control" disabled="disabled">
                                     </div>

                                    <div class="input-group col-md-10">
                                        <div class="input-group-prepend">
                                                <span class="input-group-text"   style="width:90px;">Modelo</span>
                                        </div>
                                        <input type="text" id="mtxtmodelono" name="mtxtmodelono" class="form-control" disabled="disabled">
                                    </div>

                                    <div class="input-group col-md-10">
                                        <div class="input-group-prepend">
                                                <span class="input-group-text"   style="width:90px;">Color</span>
                                        </div>
                                        <input type="text" id="mtxtcoloraddno" name="mtxtcoloraddno" class="form-control" disabled="disabled">
                                    </div>
                                    <div class="input-group col-md-10">
                                        <div class="input-group-prepend">
                                                <span class="input-group-text"   style="width:auto;">Distribuidora</span>
                                        </div>
                                        <input type="text" id="mtxtdistribuidorano" name="mtxtdistribuidorano" class="form-control" disabled="disabled">
                                    </div>
                                                <br>
                                  

                                    <div class="input-group col-md-12">
                                        <div class="input-group-prepend">
                                                <span class="input-group-text" >Fecha Habilitacion</span>
                                        </div>
                                        <input type="date" id="mtxtfechahabilitacionno" name="mtxtfechahabilitacionno" class="form-control" >
                                    </div>
                                                    <br>
                                    <div class="form-group col-md-9" style="">
                                            <label for="exampleFormControlSelect1"><strong><h6>Motivo de Entrega</h6></strong></label>
                                            <select class="form-control" id="mtxtmotivoentregano" name="mtxtmotivoentregano" > 
                                            <option disabled="disabled "value="" selected="selected">Seleccione una opcion</option>
                                            <option value="DAÑO" >DAÑO</option>
                                            <option value="ROBO" >ROBO</option>
                                            <option value="RENOVACION" >RENOVACION</option>
                                            <option value="PRIMERA VEZ" >PRIMERA VEZ</option>
                                            </select>             
                                </div>
                                   
                                

                               
                        </div>
                       

                    </div>
                </div>
                 </div>
                 <!-- *******************************FORMULARIO ENTREGA DE CELULARES NO AUTORIZADOS******************************** -->                                    


                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"  >Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btnguardarautorizados" style="display:none;">Guardar</button>
                    <button type="button" class="btn btn-success" id="btnguardarnoautorizados" style="display:none;">Guardar</button>
                </div>
                </div>
            </div>
            </div>
            <!-- End, Modal Asignar Telefono -->

      
           


    </section>  
                
            <input type="radio" id="mostrar-modal" name="modal"/>
            <label  class="PdfDispositivos" for="mostrar-modal"><span style="font-size:22px;"><i class="fas fa-file-pdf"></i></span></label>
            <input type="radio" id="cerrar-modal" name="modal"/>
            <label for="cerrar-modal">X</label>
            
            <div id="modal">
            <h1 style="color:white; margin-left:15vw;"> Historico De Entrega </hr>
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
    </main>

    
            
</body>


     <!-- Codigo Javascript -->
    <SCRIPT>

        // Efecto Botones De Telefono 
          function MostrarFormAddCell(){
            // FORMULARIO REGISTRO TELEFONOS
            document.getElementById('FormAddCell').style.display = 'block';

            // VISUALIZACION DE TELEFONOS
            document.getElementById('Imagen').style.display = 'none';

            // BOTONES PARA MOSTRAR FORMULARIO
            document.getElementById('MostrarForm').style.display = 'none';
            document.getElementById('OcultarForm').style.display = 'block';

            // BOTONES PARA VISUALIZACION DE TELEFONOS
            document.getElementById('MostrarForm1').style.display = 'block';
            document.getElementById('OcultarForm1').style.display = 'none';

          }

          function OcultarFormAddCell(){
            // FORMULARIO DE TELEFONOS
            document.getElementById('FormAddCell').style.display = 'none';
            // VISUALIZACION DE TELEFONOS
            document.getElementById('Imagen').style.display = 'none';
            // BOTONES PARA OCULTAR FORMULARIO DE TELEFONOS
            document.getElementById('OcultarForm').style.display = 'none';
            document.getElementById('MostrarForm').style.display = 'block';
          }

          function MostrarImagen(){
            document.getElementById('FormAddCell').style.display = 'none';
            document.getElementById('Imagen').style.display = 'block';

            document.getElementById('MostrarForm1').style.display = 'none';
            document.getElementById('OcultarForm1').style.display = 'block';

            document.getElementById('MostrarForm').style.display = 'Block';
            document.getElementById('OcultarForm').style.display = 'None';

          }

          function OcultarImagen(){
            document.getElementById('FormAddCell').style.display = 'none';
            document.getElementById('Imagen').style.display = 'none';
            document.getElementById('OcultarForm1').style.display = 'none';
            document.getElementById('MostrarForm1').style.display = 'block';
          }
            //   End , Efecto Botones De Telefono
            // Efecto Botones De formularios de entrega de  Telefono 
          function autorizados(){
           document.getElementById('Inflar_pelota').style.display = 'none';
            document.getElementById('form_autorizados').style.display = 'block';
            document.getElementById('form_no_autorizados').style.display = 'none';
            document.getElementById('btnguardarautorizados').style.display = 'block';
            document.getElementById('btnguardarnoautorizados').style.display = 'none';
        
          }

          function no_autorizados(){
            document.getElementById('Inflar_pelota').style.display = 'none';
            document.getElementById('form_autorizados').style.display = 'none';
            document.getElementById('form_no_autorizados').style.display = 'block';
            document.getElementById('btnguardarautorizados').style.display = 'none';
            document.getElementById('btnguardarnoautorizados').style.display = 'block';
          }


         
/*==================Registrar Marca de Celular==================================*/
$(document).ready(function(){
    $('#btnmarcacell').click(function(){

        Marca = document.getElementById("txtmarcacell").value;

            if(Marca ==''){
                swal.fire({title:'El Campo Marca de Telefono Esta Vacio', type: 'error'});
                return false;
            }else{ 
                var Marca = $('#txtmarcacell').val();
                    $.post("<?php echo base_url(); ?>index.php/Dispositivos/Registrar_Marca",	
                    {
                        txtmarcacell:Marca

                    },			
                    function(data){
                        if (data == 1) {
                    $('#mbtncerrarmodal').click();
                    let timerInterval
                        Swal.fire({
                        title: 'Marca '+Marca+' Correctamente Registrada',
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
        
    });
});
/*==================End, Registrar Marca Celular==================================*/



/*==================Registrar Modelo de Celular==================================*/
$('#btnmodelocell').click(function(){

    Marca = document.getElementById("mtxtmarcacell").value;
    Modelo = document.getElementById("mtxtmodelocell").value;
    MarcaT= mtxtmarcacell.options[mtxtmarcacell.selectedIndex].text;

    if(Marca =='' || Modelo==''){
        swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
        return false;
    }else{ 

        var Marca = $('#mtxtmarcacell').val();
        var Modelo = $('#mtxtmodelocell').val();

            $.post("<?php echo base_url(); ?>index.php/Dispositivos/Registrar_Modelo",	
            {
                mtxtmarcacell:Marca,
                mtxtmodelocell:Modelo

            },			
            function(data){
                if (data == 1) {
            $('#mbtnCerrarModal').click();
            let timerInterval
                Swal.fire({
                title: 'Telefono '+MarcaT+' Modelo '+Modelo+' Correctamente Registrado',
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

});
/*==================End, Registrar Modelo Celular==================================*/


       
/*==================Registrar Celular==================================*/
$('#btnregistrartelefono').click(function(){

    Marca = document.getElementById("ftxtmarcacell").value;
    Modelo = document.getElementById("ftxtmodeloAsignar").value;
    Año = document.getElementById("AñoCell").value;
    Color = document.getElementById("txtcolor").value;
    Imei = document.getElementById("txtimei").value;
    Serie = document.getElementById("txtserie").value;
    ActivoFijo = document.getElementById("txtactivof").value;
    Distribuidora = document.getElementById("mtxtdistribuidoraAsignar").value;
    Canal = document.getElementById("mtxtcanalAsignar").value;

    if(Marca =='' || Modelo=='' || Año=='' || Color=='' || Imei=='' || Serie=='' || ActivoFijo=='' || Distribuidora=='' || Canal==''){
        swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
        return false;

    }else{
        var Imeix = $('#txtimei').serialize();

        $.ajax({
            url:"<?php echo base_url();?>index.php/Dispositivos/Verificar_Imei",
            method:"POST", 
            data:Imeix,
            
        
            success:function(respuesta){

                if(respuesta ==''){
                    swal.fire({title:'Ingrese un Imei valido', type: 'error'});
                    return false;

                }else if(respuesta =='[]'){

                    $.post("<?php echo base_url(); ?>index.php/Dispositivos/Registrar_Telefono",	
                    {
                        ftxtmarcacell:Marca,
                        ftxtmodeloAsignar:Modelo,
                        AñoCell:Año,
                        txtcolor:Color,
                        txtimei:Imei,
                        txtserie:Serie,
                        txtactivof:ActivoFijo,
                        mtxtdistribuidoraAsignar:Distribuidora,
                        mtxtcanalAsignar:Canal
                    },

                    function(data){

                        if (data == 1) {

                        // $('#mbtnCerrarModal').click();
                        let timerInterval

                            Swal.fire({
                            title: 'Telefono Correctamente Registrado',
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
                                    window.location="AutorizacionesMH";
                                    // location('');
                                }
                            });
                            
                            }
                    });

                }else{
                    swal.fire({ showConfirmButton: false, 
                              timer: 1500, 
                              position: 'top-end',
                              title:'Este IMEI Ya Fue Ingresado', 
                              type: 'info',
                              });
                              return false;   
                     }
                
            
                
                }
        });
              

    }

});
/*==================End, Registrar Celular==================================*/



// <!-- ========================== SELECT DINAMICOS MODELO TELEFONOS ========================= -->
$(document).ready(function(){


  $('#ftxtmarcacell').change(function(){
 var Id_Marca = $('#ftxtmarcacell').val();

 if(Id_Marca != '')
 {
   $.ajax({
     url:"<?php echo base_url();?>index.php/Dispositivos/fetch_Modelo",
     method:"POST",
     data:{Id_Marca:Id_Marca},

     success:function(data)
     {
      
       $('#ftxtmodeloAsignar').html(data);
     }
   });
 }
 else
 {
  $('#ftxtmodeloAsignar').html('<option value="">Selecccion el  producto</option>');
 }
  });
});
// <!-- ========================== FINISH SELECT DINAMICOS MODELO TELEFONOS ========================= -->


// <!-- ========================== SELECT DINAMICOS MODELO TELEFONOS ========================= -->
$('#mtxtmarcacellm').change(function(){
    var Id_Marca = $('#mtxtmarcacellm').val();

        if(Id_Marca != '')
        {
            $.ajax({
            url:"<?php echo base_url();?>index.php/Dispositivos/fetch_Modelo",
            method:"POST",
            data:{Id_Marca:Id_Marca},

            success:function(data)
            {
                
                $('#mtxtmodeloasignar').html(data);
               
            }
            
            });
        }
        else
        {
        $('#mtxtmodeloasignar').html('<option value="">Selecccione el Modelo</option>');
        }
});

// <!-- ========================== FINISH SELECT DINAMICOS MODELO TELEFONOS ========================= -->


// <!-- ========================== SELECT DINAMICOS AJAX MOSTRAR DISTRIBUIDORA Y CANAL CREAR========================= -->
$(document).ready(function(){
  
  $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/fetch_distribuidora",
      method:"POST",
     

      success:function(data)
      {
       
        $('#mtxtdistribuidoraAsignar').html(data);
        $('#mtxtcanalAsignar').html('<option value="">Seleccione El Canal</option>');
      }
    });

 $('#mtxtdistribuidoraAsignar').change(function(){
  var Id_Distribuidora = $('#mtxtdistribuidoraAsignar').val();

  if(Id_Distribuidora != '')
  {
    $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/fetch_canal",
      method:"POST",
      data:{Id_Distribuidora:Id_Distribuidora},

      success:function(data)
      {
       
        $('#mtxtcanalAsignar').html(data);

      }
    });
  }
  else
  {
   $('#mtxtcanalAsignar').html('<option value="">Selecccion el canal</option>');

  }
 });
 
});
// <!-- ========================== FINISH SELECT DINAMICOS REGISTRAR TELEFONO CREAR========================= -->


// <!-- ========================== SELECT DINAMICOS AJAX MOSTRAR DISTRIBUIDORA Y CANAL CREAR CONSULTAR ========================= -->
$(document).ready(function(){
  
  $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/fetch_distribuidora",
      method:"POST",
     

      success:function(data)
      {
       
        $('#Tdistribuidora').html(data);
        $('#Tcanal').html('<option value="">Seleccione El Canal</option>');
      }
    });

 $('#Tdistribuidora').change(function(){
  var Id_Distribuidora = $('#Tdistribuidora').val();

  if(Id_Distribuidora != '')
  {
    $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/fetch_canal",
      method:"POST",
      data:{Id_Distribuidora:Id_Distribuidora},

      success:function(data)
      {
       
        $('#Tcanal').html(data);

      }
    });
  }
  else
  {
   $('#Tcanal').html('<option value="">Selecccion el canal</option>');

  }
 });
 
});
// <!-- ========================== FINISH SELECT DINAMICOS REGISTRAR TELEFONO CONSULTAR========================= -->


// <!-- ========================== SELECT DINAMICOS AJAX MOSTRAR DISTRIBUIDORA Y CANAL MODIFICAR========================= -->
$(document).ready(function(){
  
  $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/fetch_distribuidora",
      method:"POST",
     

      success:function(data)
      {
       
        $('#Tdistribuidoram').html(data);
        $('#Tcanalm').html('<option value="">Seleccione El Canal</option>');
      }
    });

 $('#Tdistribuidoram').change(function(){
  var Id_Distribuidora = $('#Tdistribuidoram').val();

  if(Id_Distribuidora != '')
  {
    $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/fetch_canal",
      method:"POST",
      data:{Id_Distribuidora:Id_Distribuidora},

      success:function(data)
      {
       
        $('#Tcanalm').html(data);

      }
    });
  }
  else
  {
   $('#Tcanalm').html('<option value="">Selecccion el canal</option>');

  }
 });
 
});
// <!-- ========================== FINISH SELECT DINAMICOS REGISTRAR TELEFONO MODIFICAR========================= -->



<!-- ====================================== MOSTRAR DATOS CONSULTADOS TELEFONOS ============================ -->


  function mostrarTelefonos(){

    var datos = $('#form-vis').serialize();

    $.ajax({
      url:"<?php echo base_url();?>index.php/Dispositivos/Consultar_Telefonos",
      method:"POST", 
      data:datos,
   
      success:function(respuesta){
     
        var registros =eval(respuesta);


        html ="<table class='table  table-bordered' align='center'><thead>";
        html +="<th style='display:none; '>ID</th><th>Telefono</th><th style='display:none;'>Id Marca</th><th style='display:none;'>Id Modelo</th><th>Imei</th><th style='display:none;'>Año</th><th style='display:none;'>Color</th><th>Activo Fijo</th><th style='display:none;'>Id_Distribuidora</th><th> Distribuidora</th><th style='display:none;'>Id_Canal</th><th>Canal</th><th style='display:none;'>Estado</th><th width='90px'>Modificar</th><th width='90px'>Baja/alta</th></tr>";
        html +="</thead><tbody>"; 
        
        for (var i = 0; i <registros.length; i++) {
          html +="<tr><td style='display:none;'>"+registros[i]["Id_telefono"]+
          "</td><td>"+registros[i]["Nombre_marca"]+" "+registros[i]["nombre_modelo"]+" " +registros[i]["color_telefono"]+" "+registros[i]["año_telefono"]+
          "</td><td style='display:none;'>"+registros[i]["Id_marca_cell"]+
          "</td><td style='display:none;'>"+registros[i]["Id_modelo_cell"]+
          "</td><td>"+registros[i]["imei_telefono"]+
          "</td><td style='display:none;'>"+registros[i]["año_telefono"]+
          "</td><td style='display:none;'>"+registros[i]["color_telefono"]+
          "</td><td >"+registros[i]["activo_fijo"]+
          "</td><td style='display:none;'>"+registros[i]["Id_Distribuidora"]+
          "</td><td>"+registros[i]["nombre_distribuidora"]+
          "</td><td style='display:none;'>"+registros[i]["Id_Canal"]+
          "</td><td>"+registros[i]["nombre_canal"]+
          "</td><td style='display:none;'>"+registros[i]["estado_telefono"]+
          "</td>";

          if(registros[i]['estado_telefono']==0 || registros[i]['estado_telefono']==2){
            html+="<td><a href='#' data-toggle='modal' data-target='#ModificarTelefonos' onClick='Enviar_DatosTelefono_modal(\""+registros[i]["Id_telefono"]+
          "\",\""+registros[i]["Id_marca_cell"]+
          "\",\""+registros[i]["Id_modelo_cell"]+
          "\",\""+registros[i]["año_telefono"]+
          "\",\""+registros[i]["color_telefono"]+
          "\",\""+registros[i]["imei_telefono"]+
          "\",\""+registros[i]["N_serie_telefono"]+
          "\",\""+registros[i]["activo_fijo"]+
          "\",\""+registros[i]["Id_Distribuidora"]+
          "\",\""+registros[i]["Id_Canal"]+"\");'>"+
          "<span style='font-size: 30px; color: #0109FF; margin:22%;'><i class='fas fa-tools'></i></span></a></td>";
          }else{
              html+="<td></td>";
          }

          if(registros[i]['estado_telefono']==1){ 
            html+="<td style='width:200px;'><div class='form-row'>"+
                "<div class='col-md-9 mb-3'>"+
                    "<select value='' class='form-control' id='observacionbaja"+registros[i]["Id_telefono"]+"' name='year'>"+
                    "<option disabled='disabled' selected='true' value='' >Observacion</option>"+
                    "<option value='DAÑO' id=''>DAÑO</option>"+
                    "<option value='ROBO' id=''>ROBO</option>"+
                    "<option value='REVISION' id=''>REVISION</option>"+
                    "<option value='RENOVACION' id=''>RENOVACION</option>"+
                    "</select>"+
                "</div>";
           
            html+="<a href='#' class='InactivarTelefono' id='InactivarTelefono' onClick='InactivarTelefono(\""+registros[i]["Id_telefono"]+"\");'><span style='font-size: 25px; color:GREEN; margin-left:10px;'><i class='fas fa-level-down-alt'></i></span></a></div>"+
            "</td></tr>";
          }
          else if(registros[i]['estado_telefono']==0){
            html+="<td style='width:200px;'><div class='form-row'>"+
                "<div class='col-md-9 mb-3'>"+
                    "<select value='' class='form-control' id='observacionalta"+registros[i]["Id_telefono"]+"' name='year'>"+
                    "<option disabled='disabled' selected='true' value=''>Observacion</option>"+
                    "<option value='REPARADO' id=''>REPARADO</option>"+
                    "<option value='BACK UP' id=''>BACK UP</option>"+
                    "</select>"+
                "</div>";

                
            html+="<a href='#' class='ActivarTelefono' id='ActivarTelefono' onClick='ActivarTelefono(\""+registros[i]["Id_telefono"]+"\");'><span style='font-size: 25px; color:red; margin-left:10px;'><i class='fas fa-level-up-alt'></i></span></a></div>"+
            "</td></tr>";
        }else if(registros[i]['estado_telefono']==7){
            html+="<td ><div class='form-row'>"+
                "<div class='col-md-9 mb-3'>"+
                   "<p style='color: red; font-size: 20px;text-align: center; margin-left:5%;'>IRRECUPERABLE</hp>"
                "</div</td></tr>";
        }
     
        };
        html +="</tbody></table>";
        $("#listatelefonos").html(html);
      }
    });
  }

<!-- ======================================FINISH MOSTRAR DATOS CONSULTADOS TELEFONOS ============================ -->



/*============== ENVIA DATOS AL MODAL DE TELEFONOS================ */
    function Enviar_DatosTelefono_modal(Id_telefono,Id_marca_cell,Id_modelo_cell,año_telefono,color_telefono,imei_telefono,N_serie_telefono,activo_fijo,Id_Distribuidora,Id_Canal){
       
        $(document).ready(function(){
                
            $('#mtxtidcell').val(Id_telefono);

            $("#mtxtmarcacellm").val(Id_marca_cell);
            $('#mtxtmarcacellm').change();
            
            $("#Tdistribuidoram option[value='00"+Id_Distribuidora+"']").attr("selected",true);
            $("#Tdistribuidoram").change();

            $("#mAñoCell option[value='"+año_telefono+"']").attr("selected",true);
            $('#mtxtcolor').val(color_telefono);
            $('#mtxtimei').val(imei_telefono);
            $('#mtxtserie').val(N_serie_telefono);
            $('#mtxtactivof').val(activo_fijo);  

            
            
            setTimeout(function(){ 
                $("#mtxtmodeloasignar").val(Id_modelo_cell);
                $("#Tcanalm").val(Id_Canal);
                // $("#Tcanalm option[value='"+Id_Canal+"']").attr("selected",true);
            }, 300);

        
    

        });

    }
// <!-- ======================================FINISH DATOS AL MODAL============================ -->



/*==================METODO ACTUALIZAR DATOS TELEFONO MODAL==================================*/
$('#mbtnUpCell').click(function(){


    var Id_telefono,Id_marca_cell,Id_modelo_cell,año_telefono,color_telefono,imei_telefono,N_serie_telefono,activo_fijo,Id_Distribuidora,Id_Canal;

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


    if(Id_telefono.length == 0 || Id_marca_cell.length == 0 || Id_modelo_cell.length == 0 || año_telefono.length == 0 || color_telefono.length == 0 || imei_telefono.length == 0 || N_serie_telefono.length == 0 || activo_fijo.length == 0 || Id_Distribuidora.length == 0 || Id_Canal.length == 0 ){
    
    swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
    return false;
    }else{

    $.post("<?php echo base_url(); ?>index.php/Dispositivos/Actualizar_Telefonos",	
    {
        mtxtidcell:Id_telefono,
        mtxtmarcacellm :Id_marca_cell, 
        mtxtmodeloasignar:Id_modelo_cell,
        mAñoCell:año_telefono,
        mtxtcolor:color_telefono ,
        mtxtimei:imei_telefono,
        mtxtserie:N_serie_telefono,
        mtxtactivof:activo_fijo ,
        Tdistribuidoram:Id_Distribuidora ,
        Tcanalm:Id_Canal
    
    },function(data){
        
                if (data == 1) {
                    $('#ModificarTelefonos').click();
            
                        let timerInterval
                        const Toast = Swal.mixin({
                                toast: true,
                                position: 'top-end',
                                showConfirmButton: false,
                                timer: 2000,
                                background:'#000',
                                Color: '#FF0000',
                                showLoaderOnConfirm:false,
                                onBeforeOpen: () => {
                                Swal.showLoading()
                                timerInterval = setInterval(() => {
                                    
                                }, 100)
                                }, onClose: () => {
                                        clearInterval(timerInterval)
                                    }
                                });

                                Toast.fire({
                                    
                                type: 'success',
                                title: '<span style="color:#fff">Registro Completado Correctamente</span>',
                            
                            
                            }).then((result) => {
                                if (
                                    result.dismiss === Swal.DismissReason.timer
                                ){
                                
                                    $('#buscar').click();
                                //    location.reload();
                                }
                            });
                            
                            }
                            });
    }
});
/************************************************** */


// <!-- ======================================ACTUALIZAR ESTADO ACTIVO TELEFONO============================ -->
function ActivarTelefono(Id_Telefono){


  observacion = document.getElementById("observacionalta"+Id_Telefono).value;

  if(observacion.length == 0){
    
    swal.fire({title:'Seleccione una Observacion para dar de Alta', type: 'error'});
    return false;
    }else{
  $.post("<?php echo base_url(); ?>index.php/Dispositivos/Activar_Telefono",	
	{
        mtxtidcell:Id_Telefono,
        observacionalta:observacion
	},		function(data){	
    if (data == 1) {
                   
            
                        let timerInterval
                        const Toast = Swal.mixin({
                                toast: true,
                                position: 'top-end',
                                showConfirmButton: false,
                                timer: 2000,
                                background:'#000',
               
                                showLoaderOnConfirm:false,
                                onBeforeOpen: () => {
                                Swal.showLoading()
                                timerInterval = setInterval(() => {
                                    
                                }, 100)
                                }, onClose: () => {
                                        clearInterval(timerInterval)
                                    }
                                });

                                Toast.fire({
                                    
                                type: 'success',
                                title: '<span style="color:#fff">Telefono Activado Correctamente</span>',
                            
                            
                            }).then((result) => {
                                if (
                                    result.dismiss === Swal.DismissReason.timer
                                ){
                                
                                    $('#buscar').click();
                                //    location.reload();
                                }
                            });
                            
                            }
                            });
                        }
}


function InactivarTelefono(Id_Telefono){


  observacion = document.getElementById("observacionbaja"+Id_Telefono).value;
  if(observacion.length == 0){
    
    swal.fire({title:'Seleccione Una Observacion Para Dar De Baja', type: 'error'});
    return false;
    }else{
  $.post("<?php echo base_url(); ?>index.php/Dispositivos/Inactivar_Telefono",	
	{
        mtxtidcell:Id_Telefono,
        observacionbaja:observacion
	},			
    function(data){	
    if (data == 1) {
                   
            
                        let timerInterval
                        const Toast = Swal.mixin({
                                toast: true,
                                position: 'top-end',
                                showConfirmButton: false,
                                timer: 2000,
                                background:'#000',
                             
                                showLoaderOnConfirm:false,
                                onBeforeOpen: () => {
                                Swal.showLoading()
                                timerInterval = setInterval(() => {
                                    
                                }, 100)
                                }, onClose: () => {
                                        clearInterval(timerInterval)
                                    }
                                });

                                Toast.fire({
                                    
                                type: 'success',
                                title: '<span style="color:#fff">Telefono Inactivado Correctamente</span>',
                            
                            
                            }).then((result) => {
                                if (
                                    result.dismiss === Swal.DismissReason.timer
                                ){
                                
                                    $('#buscar').click();
                                //    location.reload();
                                }
                            });
                            
                            }
                            });
                        }

}

// <!-- ======================================END,ACTUALIZAR ESTADO ACTIVO TELEFONO============================ -->


// <!-- ======================================INFLAR BALON EN EL MODAL ASIGNAR TELEFONO============================ -->
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
        top: 310-(click*15),
        opacity: "0."+ opacity
    });
    $(".ball-shadow").css({
        background: "#454545",
        transform: "scaleX(" + click * 2 + ")",
    });
    $(".ball-shadow").show();
    opacity--;
    newopacity = opacity;
    console.log("0."+ opacity)
    if(opacity <= 0.2){
        $(".ball").text("BOOM!");
        $(".ball-shadow").hide();

    click = 0;
    opacity = 9;
    }
    else{
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
// <!-- ======================================END,INFLAR BALON EN EL MODAL ASIGNAR TELEFONO============================ -->


// <!-- ========================== SELECT DINAMICOS AJAX ASIGNAR TELEFONOS AUTORIZADOS========================= -->
    $(document).ready(function(){
        //   obtener n maquina a asignar.
       

        $('#mtxtcanalcell').change(function(){
            var Id_Canal=document.getElementById('mtxtcanalcell').value;

        $.ajax({
            url:"<?php echo base_url();?>index.php/Dispositivos/n_maquina",
            method:"POST",
            data:{Id_Canal:Id_Canal},
          

            success:function(data)
            {
            
              $('#mtxtnmaquina').html(data);
              
            }
          });
        });
        // obtener distribuidora
        $.ajax({
            url:"<?php echo base_url();?>index.php/Dispositivos/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#mtxtdistribuidoracell').html(data);
              $('#mtxtcanalcell').html('<option value="" >Seleccione El Canal</option>');
              $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');
            }
          });
        //   obtener canal segun distribuidora
        $('#mtxtdistribuidoracell').change(function(){
          var Id_Distribuidora = $('#mtxtdistribuidoracell').val();

          if(Id_Distribuidora != '')
          {
            $.ajax({
              url:"<?php echo base_url();?>index.php/Dispositivos/fetch_canal_cell",
              method:"POST",
              data:{Id_Distribuidora:Id_Distribuidora},

              success:function(data)
              {
              
                $('#mtxtcanalcell').html(data);
                $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');
              }
            });
          }
          else
          {
          $('#mtxtcanalcell').html('<option value="" >Selecccion el canal</option>');
          $('#mtxtrutacell').html('<option value="" >Selecccione la Ruta</option>');
          }
        });
        // obtener rutas segun canal
        $('#mtxtcanalcell').change(function(){
          var Id_Canal = $('#mtxtcanalcell').val();
          if(Id_Canal != '')
          {
          $.ajax({
            url:"<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
            method:"POST",
            data:{Id_Canal:Id_Canal},
            success:function(data)
            {
              
            $('#mtxtrutacell').html(data);
            }
          });
          }
          else
          {
          $('#mtxtrutacell').html('<option value="" >Selecccione la Ruta</option>');
          }
        });
        // obtener empleado segun ruta
        $('#mtxtrutacell').change(function(){
          var Id_Ruta = $('#mtxtrutacell').val();

          if(Id_Ruta != '')
          {
          $.ajax({
            url:"<?php echo base_url(); ?>index.php/Dispositivos/fetch_empleado",
            method:"POST",
            data:{Id_Ruta:Id_Ruta},
            success:function(data)
            {
              
            $('#NombreEmpleado').html(data);

            }
          });
          }
          else
          {
            $('#NombreEmpleado').html('NO ENCONTRADO');
          }
        });

      
    });
// <!-- ========================== FINISH SELECT DINAMICOS ASIGNAR TELEFONOS AUTORIZADOS========================= -->


// <!-- ========================== BUSCAR DATOS DE N MAQUINA ========================= -->
    $(document).ready(function(){
        $('#mtxtnmaquina').change(function(){
          var n_maquina = $('#mtxtnmaquina').val();

          if(n_maquina != '')
          {
            $.ajax({
              url:"<?php echo base_url();?>index.php/Dispositivos/datos_mh_cell",
              method:"POST",
              data:{n_maquina:n_maquina},
              dataType:"JSON",

              success:function(respuesta)
              {            
                    if( respuesta.length !=0){
                        $('#mtxtimeiadd').val(respuesta.imei_telefono);
                        $('#mtxtmarca').val(respuesta.Nombre_marca);
                        $('#mtxtmodelo').val(respuesta.Nombre_Modelo);
                        $('#mtxtcoloradd').val(respuesta.color_telefono);
                        $('#mtxtserieautorizada').val(respuesta.serie_autorizada);
                        $('#mtxtresolucion').val(respuesta.n_resolucion_rt);
                        $('#mtxtfechaautorizacion').val(respuesta.fecha_autorizacion);
                        $('#mtxtzona').val(respuesta.Nombre_Distribuidora);
                        $('#mtxtidtelefono').val(respuesta.Id_telefono);
                        
                        
                    }else{
                        
                        swal.fire({ showConfirmButton: false, 
                            timer: 1500, 
                            position: 'top-end',
                            title:'Datos No Encontrados', 
                            type: 'error',
                            });
                    }
              }
            });
          }
          else
          {
        
          }
        });
    });
// <!-- ========================== END,BUSCAR DATOS DE N MAQUINA ========================= -->



/*==================Registrar entrega de telefono autorizado==================================*/
$('#btnguardarautorizados').click(function(){
    
                            
    var Id_distribuidora = document.getElementById("mtxtdistribuidoracell").value;
    var Id_canal = document.getElementById("mtxtcanalcell").value;
    var Id_ruta = document.getElementById("mtxtrutacell").value;
    var Id_empleados = document.getElementById("idEmpleado").value;
    var Id_telefono = document.getElementById("mtxtidtelefono").value;
    var Id_autorizaciones = document.getElementById("mtxtnmaquina").value;
    var fecha_registro = document.getElementById("mtxtfechahabilitacion").value;
    var motivo_entrega = document.getElementById("mtxtmotivoentrega").value;
    var ruta = mtxtrutacell.options[mtxtrutacell.selectedIndex].text;


    if(Id_distribuidora =='' || motivo_entrega =='' || Id_canal=='' || Id_ruta=='' || Id_empleados=='' || Id_telefono=='' || Id_autorizaciones=='' || fecha_registro==''){
        swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
        return false;
    }else{ 


        $.post("<?php echo base_url(); ?>index.php/Dispositivos/Entrega_Cell_Autorizado",	
        {
            mtxtdistribuidoracell:Id_distribuidora,
            mtxtcanalcell:Id_canal,
            mtxtrutacell:Id_ruta,
            idEmpleado:Id_empleados,
            mtxtidtelefono:Id_telefono,
            mtxtnmaquina:Id_autorizaciones,
            mtxtfechahabilitacion:fecha_registro,
            mtxtmotivoentrega:motivo_entrega,
            mtxtruta:ruta,


        },			
        function(data){
            if (data == 1) {
        $('#mbtnCerrarModal').click();
        let timerInterval
            Swal.fire({
            title: 'Entrega Registrada Correctamente',
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

});
/*==================End, Registrar Modelo Celular==================================*/


// <!-- ========================== SELECT DINAMICOS AJAX ASIGNAR TELEFONOS NO AUTORIZADOS========================= -->
                          
$(document).ready(function(){
        //   obtener n maquina a asignar.
        $('#mtxtcanalnocell').change(function(){
            var Id_Canal=$('#mtxtcanalnocell').val();

            $.ajax({
                url:"<?php echo base_url();?>index.php/Dispositivos/imei_telefonos",
                method:"POST",
                data:{Id_Canal:Id_Canal},
            

                success:function(data)
                {
                
                $('#mtxtimeitelefono').html(data);
                
                }
            });
        });
        // obtener distribuidora
        $.ajax({
            url:"<?php echo base_url();?>index.php/Dispositivos/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#mtxtdistribuidoranocell').html(data);
              $('#mtxtcanalnocell').html('<option value="" >Seleccione El Canal</option>');
              $('#mtxtrutacell').html('<option value="" >Seleccione la Ruta</option>');
            }
          });
        //   obtener canal segun distribuidora
        $('#mtxtdistribuidoranocell').change(function(){
          var Id_Distribuidora = $('#mtxtdistribuidoranocell').val();

          if(Id_Distribuidora != '')
          {
            $.ajax({
              url:"<?php echo base_url();?>index.php/Dispositivos/fetch_canal_nocell",
              method:"POST",
              data:{Id_Distribuidora:Id_Distribuidora},

              success:function(data)
              {
              
                $('#mtxtcanalnocell').html(data);
                $('#mtxtrutanocell').html('<option value="" >Seleccione la Ruta</option>');
              }
            });
          }
          else
          {
          $('#mtxtcanalnocell').html('<option value="" >Selecccion el canal</option>');
          $('#mtxtrutanocell').html('<option value="" >Selecccione la Ruta</option>');
          }
        });
        // obtener rutas segun canal
        $('#mtxtcanalnocell').change(function(){
          var Id_Canal = $('#mtxtcanalnocell').val();
          if(Id_Canal != '')
          {
          $.ajax({
            url:"<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
            method:"POST",
            data:{Id_Canal:Id_Canal},
            success:function(data)
            {
              
            $('#mtxtrutanocell').html(data);
            }
          });
          }
          else
          {
          $('#mtxtrutanocell').html('<option value="" >Selecccione la Ruta</option>');
          }
        });
        // obtener empleado segun ruta
        $('#mtxtrutanocell').change(function(){
          var Id_Ruta = $('#mtxtrutanocell').val();

          if(Id_Ruta != '')
          {
          $.ajax({
            url:"<?php echo base_url(); ?>index.php/Dispositivos/fetch_noempleado",
            method:"POST",
            data:{Id_Ruta:Id_Ruta},
            success:function(data)
            {
              
            $('#NombreEmpleadono').html(data);

            }
          });
          }
          else
          {
            $('#NombreEmpleadono').html('<option value="" >Selecccione la Ruta</option>');
          }
        });

      
    });
// <!-- ========================== FINISH SELECT DINAMICOS ASIGNAR TELEFONOS NO AUTORIZADOS========================= -->



// <!-- ========================== BUSCAR DATOS DE DISPOSITIVOS NO AUTORIZADOS ========================= -->
$(document).ready(function(){
        $('#mtxtimeitelefono').change(function(){
          var imei_telefono = $('#mtxtimeitelefono').val();
            
          if(imei_telefono != '')
          {
            $.ajax({
              url:"<?php echo base_url();?>index.php/Dispositivos/datos_cell",
              method:"POST",
              data:{imei_telefono:imei_telefono},
              dataType:"JSON",

              success:function(respuesta)
              {            
                    if( respuesta.length !=0){
                     
                        $('#mtxtmarcano').val(respuesta.Nombre_marca);
                        $('#mtxtmodelono').val(respuesta.Nombre_Modelo);
                        $('#mtxtcoloraddno').val(respuesta.color_telefono);
                       
                        $('#mtxtdistribuidorano').val(respuesta.Nombre_Distribuidora);
                        $('#mtxtidtelefonono').val(respuesta.Id_telefono);
                        
                        
                    }else{
                        
                        swal.fire({ showConfirmButton: false, 
                            timer: 1500, 
                            position: 'top-end',
                            title:'Datos No Encontrados', 
                            type: 'error',
                            });
                    }
              }
            });
          }
          else
          {
        
          }
        });
    });
// <!-- ========================== END,BUSCAR DATOS DE  DISPOSITIVOS NO AUTORIZADOS ========================= -->



/*==================Registrar entrega de telefono autorizado==================================*/
$('#btnguardarnoautorizados').click(function(){


    
                    
                    
              
    
                            
    var Id_distribuidora = document.getElementById("mtxtdistribuidoranocell").value;
    var Id_canal = document.getElementById("mtxtcanalnocell").value;
    var Id_ruta = document.getElementById("mtxtrutanocell").value;
    var Id_empleados = document.getElementById("NombreEmpleadono").value;
    var Id_telefono = document.getElementById("mtxtidtelefonono").value;
    var fecha_registro = document.getElementById("mtxtfechahabilitacionno").value;
    var motivo_entrega = document.getElementById("mtxtmotivoentregano").value;



    if(Id_distribuidora =='' || Id_canal=='' || Id_ruta=='' || Id_empleados=='' || Id_telefono=='' || motivo_entrega=='' || fecha_registro==''){
        swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
        return false;
    }else{ 


        $.post("<?php echo base_url(); ?>index.php/Dispositivos/Entrega_Cell_NoAutorizado",	
        {
            mtxtdistribuidoranocell:Id_distribuidora,
            mtxtcanalnocell:Id_canal,
            mtxtrutacell:Id_ruta,
            NombreEmpleadono:Id_empleados,
            mtxtidtelefonono:Id_telefono,
            mtxtfechahabilitacion:fecha_registro,
            mtxtmotivoentregano:motivo_entrega,



        },			
        function(data){
            if (data == 1) {
        $('#mbtnCerrarModal').click();
        let timerInterval
            Swal.fire({
            title: 'Entrega Registrada Correctamente',
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

});
/*==================End, Registrar Modelo Celular==================================*/



/*==================MOSTRAR DISTRIBUIDORA , CANAL , RUTA , BITACORA PDF TELEFONOS==================================*/

    $.ajax({
                url:"<?php echo base_url();?>index.php/Dispositivos/fetch_distribuidora",
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
                url:"<?php echo base_url();?>index.php/Dispositivos/fetch_canal",
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
                url:"<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
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
/*==================END MOSTRAR DISTRIBUIDORA , CANAL , RUTA , BITACORA PDF TELEFONOS==================================*/

/*==================MOSTRAR REGISTROS PDF CON PARAMETROS ==================================*/

function ConsultarPDF(){
    alert("Realmente Funciona Pero No Funciona")
}

/*==================END MOSTRAR REGISTROS PDF CON PARAMETROS==================================*/


$.ajax({
            url:"<?php echo base_url();?>index.php/Dispositivos/Consultar_PDF",
            method:"POST",
          

            success:function(respuesta)
            {
                var registros =eval(respuesta);
            
            html ="<table class='table' style='margin: auto; border:white 2px solid; width:55%;   margin-bottom:5%;'>";
            html +="<tr><th class='th'>Ruta</th><th class='th'>Nombre</th><th class='th'>Telefono</th><th class='th'> Fecha Entrega</th><th class='th'>PDF</th></tr>";
            html +="<tbody>"; 
            
            for (var i = 0; i <registros.length; i++) {
              html +="<tr style='height:px;'><td style='display:none;'>"+registros[i]["Id_Ruta"]+
              "</td><td>"+registros[i]["Nombre_Ruta"]+
              "</td><td>"+registros[i]["Nombre"]+
              "</td><td>"+registros[i]["Nombre_Marca"]+" "+registros[i]["nombre_Modelo"]+" <BR>IMEI: "+registros[i]["Imei_telefono"]+
              "</td><td>"+registros[i]["fecha_registro"]+ 
              "</td><td style='display:none;'>"+registros[i]["Id_PDF"]+
              "</td><td><a href='<?php echo base_url();?>index.php/Dispositivos/pdfdetails/"+registros[i]["Id_pdf_cell"]+"' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>"+
              "</td></tr>";
              

            };


            html +="</tbody></table>";

            
            $(".tabla").html(html);
            }
          });

    </SCRIPT>
</html>