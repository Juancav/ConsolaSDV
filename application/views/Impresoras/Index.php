<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accesorios</title>
   <!--Icon page-->
   <link href="Public/Img/favicon.png" rel="icon">
   <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Impresoras.css')?>">

</head>

<body>

<div class="page-wrapper chiller-theme toggled">
  <main class="page-content">
    <section id="hero" class="wow fadeIn">

        <h1 style="margin-top:1%">Impresoras</h1>
        <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">

        <!-- Botones lateral derecho -->
        <div class="colc_buttons">
            <button class="btn btn-outline-success button" data-toggle="modal" data-target="#Modal_Marca"><i class="fab fa-medium-m"></i></button><br><br>
            <button class="btn btn-outline-info button" data-toggle="modal" data-target="#Modal_Modelo"><i class="fab fa-modx" ></i></button><br><br>
            <button class="btn btn-outline-dark button" data-toggle="modal" data-target="#Modal_Entrega"><i class="fas fa-plane" ></i></button>

        </div>
        <!--  -->


        <!-- Formulario Agregar Impresora  -->
        <div class="fondo_form">
            <div class="form_impresoras">
                    <p style=" font-size:26px; font-weight:bold; color:#000; text-align:center;"> <i class="fas fa-print"></i>Añadir Impresora <i class="fas fa-plus" style="display:none; cursor:pointer;" id="btnrgt"></i></p><br>
                <form>
                    <div id="Form_Imp" style="font-size:16px;">

                            <div class="form-group " style="display:none;">
                            <label for="Marca">Id_Impresora</label>
                            <input type="text" class="form-control" id="txtidimpresora">

            
                            </select>
                            </div>

                           

                            <div class="form-group ">
                            <label for="Marca">Distribuidora</label>
                            <select id="txtdistribuidora" class="form-control">
            
                            </select>
                            </div>
                            

                            <div class="form-group ">
                            <label for="Marca">Marca</label>
                            <select id="txtmarca" class="form-control">
                             
                            </select>
                            </div>

                            <div class="form-group ">
                            <label for="Modelo">Modelo</label>
                            <select id="txtmodelo" class="form-control">
                       
                            </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="Activo">Activo Fijo</label>
                                <input type="number" class="form-control" id="txtactivofijo" >
                            </div>

                            <div class="form-group">
                                <label for="Activo">Numero De Serie</label>
                                <input type="text" class="form-control" id="txtn_serie"  value="" >
                            </div>

                            <div class="form-group">
                                <label for="Activo">Codigo Impresora</label>
                                <input type="text" class="form-control" id="txtcodigoimpresora" disabled="disabled">
                            </div>
                </form>

                            <div class="form-row" >
                        
                                    <button class="btn btn-primary form-control col-md-4" style="margin-left: 50px; " id="btningresarimpresora">Guardar</button>   
                                    <button class="btn btn-success form-control  col-md-4" style="margin-left: 50px; display:none;" id="btnmodificarimpresora">Modificar </button>
                                    <button class="btn btn-danger form-control  col-md-4" type="reset" id="limpiar">Limpiar</button>
                
                            </div>
                        
                    </div>
                    
            </div>

        </div>
        <!--  -->

        <!-- Tabla de datos de impresora -->
        <div class="datos">

            <h2 style="font-size:24px;"> <i class="fas fa-file-signature"></i> Datos Impresoras</h2>
            
            <button class="btn btn-outline-primary" style="float:right; margin-top:-38px; margin-right:-30px;" id="consult_impr"> <i class="fas fa-search"></i></button>
            
            <h2>
                        <div class="form-group col-md-7" style="float:right; margin-top:-70px">
                            <label for="Distribuidora">Distribuidora</label>
                            <select id="ctxtdistribuidora" class="form-control">
            
                            </select>
                        </div>
            </h2>
                      
                    
                <!-- Tabla consultar impresoras -->
                    <div class="tabla_impr"> 
                    </div>
            
        </div>
        <!--  -->

        
      
        <!-- Modal Agregar Marca Impresora-->
        <div class="modal fade" id="Modal_Marca" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title" id="exampleModalLabel" style="font-size:22px; color:black; margin:0 auto;"><i class="fab fa-accusoft"></i> Ingresar Marca de Impresora</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                            <div class="form-group">
                                <label for="Activo">Nombre Marca</label>
                                <input type="text" class="form-control" id="txtnombremarca" >
                            </div>

                            <div class="form-group">
                                <label for="Activo">Descripcion Marca</label>
                                <input type="text" class="form-control" id="txtdescripcionmarca" >
                            </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="mbtncerrarmodal" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="GMarca_Impresora">Guardar</button>
                </div>
                </div>
            </div>
        </div>
        <!--  -->

         <!-- Modal Agregar Modelo Impresora-->
         <div class="modal fade" id="Modal_Modelo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title" id="exampleModalLabel" style="font-size:22px; color:black; margin:0 auto;"><i class="fab fa-accusoft"></i> Ingresar Modelo de Impresora</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                <div class="form-group ">

                            <label for="Marca">Marca Impresora</label>
                            <select id="txtmarcaimpresora" class="form-control">
                               
                            </select>
                            </div>
                           

                            <div class="form-group">
                                <label for="Activo">Modelo Impresora</label>
                                <input type="text" class="form-control" id="txtmodeloimpresora" >
                            </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="GModelo_impresora">Guardar</button>
                </div>
                </div>
            </div>
         </div>
        <!--  -->


        <!-- Modal Alta Impresora-->
        <div class="modal fade" id="Modal_Alta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">

                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel" style="font-size:22px; color:black; margin:0 auto;"><i class="fab fa-accusoft"></i> Activar Impresora</h2>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                    </div>

                    <div class="modal-body">

                                <div class="form-group " style="display:none;">
                                    <label for="Malta">Id_Impresora</label>
                                    <input type="text" class="form-control" id="modtxtidimpresoraalta">
                                    </select>
                                </div>
                            

                                <div class="form-group ">
                                    <label for="Marca">Motivo De Alta</label>
                                    <select id="mtxtmotivoalta" class="form-control">
                                    <option value="" disabled="disabled" selected>Seleccione Motivo</option>
                                    <option value="REPARADA">Reparada</option>
                                    <option value="MAL DIAGNOSTICO">Mal Diagnotisco</option>
                                    </select>
                                </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cerraralta">Cerrar</button>
                        <button type="button" class="btn btn-primary" id="ModEstadoImprAlta">Guardar</button>
                    </div>

                </div>
            </div>
        </div>
        <!--  -->

        <!-- Modal Baja  Impresora-->
        <div class="modal fade" id="Modal_Baja" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            
            <div class="modal-dialog" role="document">

                <div class="modal-content">

                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel" style="font-size:22px; color:black; margin:0 auto;"><i class="fab fa-accusoft"></i> Inactivar Impresora</h2>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                    </div>

                    <div class="modal-body">


                                    <div class="form-group " style="display:none;">
                                        <label for="Impresora">Id_Impresora</label>
                                        <input type="text" class="form-control" id="modtxtidimpresorabaja">
                                        </select>
                                    </div>
                                

                                    <div class="form-group ">
                                        <label for="MBaja">Motivo De Baja</label>
                                        <select id="mtxtmotivobaja" class="form-control">
                                            <option value="" disabled="disabled" selected>Seleccione Motivo</option>
                                            <option value="DAÑO">Daño</option>
                                            <option value="HURTO">Hurto</option>
                                            <option value="ROBO">Robo</option>
                                            <option value="REVISION IT">Revision IT</option>
                                        </select>
                                    </div>
                    
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cerrarbaja">Cerrar</button>
                        <button type="button" class="btn btn-primary" id="ModestadoImpreBaja">Guardar</button>
                    </div>
                </div>

            </div>
        </div>
        <!--  -->

          <!-- Modal Entrega Impresora-->
          <div class="modal fade" id="Modal_Entrega" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                <h2 class="modal-title" id="exampleModalLabel" style="font-size:22px; color:black; margin:0 auto;"><i class="fas fa-plane"></i> Asignacion De Impresora </h2>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
                </div>
            </div>
        </div>
        <!--  -->




    </section>
  </main>
</div>

<script>

$(document).ready(function() {

    
    $('#txtn_serie').change(function(){
        var codigo = $('#txtn_serie').val();
        $('#txtcodigoimpresora').val('_'+codigo.substr(-6,6));
    });

    // Carga distribuidoras para formulario 
    $.ajax({
            url:"<?php echo base_url();?>index.php/Impresoras/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtdistribuidora').html(data);
              
            }
          });

     // Carga distribuidoras para consulta de impresoras 
     $.ajax({
            url:"<?php echo base_url();?>index.php/Impresoras/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#ctxtdistribuidora').html(data);
              
            }
          });

          

    // Carga marca impresora a formulario de creacion de impresora 
          $.ajax({
            url:"<?php echo base_url();?>index.php/Impresoras/fetch_marca_impresora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtmarca').html(data);
              
            }
          });

     // Carga marca impresora a formulario de creacion de modelo 
     $.ajax({
            url:"<?php echo base_url();?>index.php/Impresoras/fetch_marca_impresora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtmarcaimpresora').html(data);
              
            }
          });

     // Carga modelo impresora a formulario de creacion de impresoras 
     $.ajax({
            url:"<?php echo base_url();?>index.php/Impresoras/fetch_modelo_impresora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtmodelo').html(data);
              
            }
          });

    $("form").keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });
    

});

    // Ingresar Marca Impresora

    $('#GMarca_Impresora').click(function(){

     var Marca = document.getElementById("txtnombremarca").value;
     var Descripcion = document.getElementById("txtdescripcionmarca").value;

        if(Marca =='' || Descripcion ==''){
            swal.fire({title:'Todos los campos son obligatorios', type: 'error'});
            return false;
        }else{ 
            var Marca = $('#txtnombremarca').val();
            var Descripcion = $('#txtdescripcionmarca').val();
            
                $.post("<?php echo base_url(); ?>index.php/Impresoras/Registrar_Marca",	
                {
                    txtnombremarca:Marca,
                    txtdescripcionmarca:Descripcion

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

    // Ingresar Modelo Impresora

    $('#GModelo_impresora').click(function(){

        var Marca = document.getElementById("txtmarcaimpresora").value;
        var Modelo = document.getElementById("txtmodeloimpresora").value;

        if(Marca =='' || Modelo ==''){
            swal.fire({title:'Todos los campos son obligatorios', type: 'error'});
            return false;
        }else{ 
            var Marca = $('#txtmarcaimpresora').val();
            var Descripcion = $('#txtmodeloimpresora').val();
            
                $.post("<?php echo base_url(); ?>index.php/Impresoras/Registrar_Modelo",	
                {
                    txtmarcaimpresora:Marca,
                    txtmodeloimpresora:Modelo

                },			
                function(data){
                    if (data == 1) {
                $('#mbtncerrarmodal').click();
                let timerInterval
                    Swal.fire({
                    title: 'Modelo '+Modelo+' Correctamente Registrada',
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

    // Ingresar  Impresora

    $('#btningresarimpresora').click(function(){

        var Distribuidora = document.getElementById("txtdistribuidora").value;
        var Marca = document.getElementById("txtmarca").value;
        var Modelo = document.getElementById("txtmodelo").value;
        var ActivoFijo = document.getElementById("txtactivofijo").value;
        var N_serie = document.getElementById("txtn_serie").value;
        var Codigo = document.getElementById("txtcodigoimpresora").value;

        if(Distribuidora =='' || Marca =='' || Modelo =='' || ActivoFijo=='' || N_serie=='' || Codigo==''){
            swal.fire({title:'Todos los campos son obligatorios', type: 'error'});
            return false;
        }else{ 

                $.post("<?php echo base_url(); ?>index.php/Impresoras/Registrar_Impresora",	
                {
                    txtdistribuidora:Distribuidora,
                    txtmarca:Marca,
                    txtmodelo:Modelo,
                    txtactivofijo:ActivoFijo,
                    txtn_serie:N_serie,
                    txtcodigoimpresora:Codigo

                },			
                function(data){
                    if (data == 1) {
        
                let timerInterval
                    Swal.fire({
                    title: 'Impresora correctamente registrada',
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

    // Consultar impresoras
    $('#consult_impr').click(function(){

        var Id_Distribuidora=$('#ctxtdistribuidora').val();

        $.ajax({
            url:"<?php echo base_url();?>index.php/Impresoras/Consultar_Impresoras",
            method:"POST",
            data:{Id_Distribuidora:Id_Distribuidora},
          

            success:function(respuesta)
            {
                var registros =eval(respuesta);
            
            html ="<table class='table'>";
            html +="<tr><th>Distribuidora</th><th>Impresora</th><th>Activo Fijo</th><th> N de Serie</th><th >Codigo Impresora</th><th >Editar</th><th>Baja/Alta</th></tr>";
            html +="<tbody>"; 
            
            for (var i = 0; i <registros.length; i++) {
              html +="<tr><td style='display:none;'>"+registros[i]["Id_impresoras"]+
              "</td><td  style='display:none;'>"+registros[i]["Id_Distribuidora"]+
              "</td><td  style='display:none;'>"+registros[i]["Id_marca_impresoras"]+
              "</td><td  style='display:none;'>"+registros[i]["Id_modelo_impresoras"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Distribuidora"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["nombre_marca"]+" "+registros[i]["nombre_modelo"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["activo_fijo"]+
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["n_serie"]+ 
              "</td><td  style='vertical-align : middle;text-align:center;'>"+registros[i]["codigo_impresora"]+ 
              "</td>";
              
              if(registros[i]["estado"]==1 || registros[i]["estado"]==2){
                html+="<td style='vertical-align : middle;text-align:center;'><span style='color:blue; font-size:24px; cursor:pointer;'><i class='fas fa-pen-fancy' onClick='Enviar_Datos_modal(\""+registros[i]["Id_impresoras"]+
                "\",\""+registros[i]["Id_Distribuidora"]+
                "\",\""+registros[i]["Id_marca_impresoras"]+
                "\",\""+registros[i]["Id_modelo_impresoras"]+
                "\",\""+registros[i]["activo_fijo"]+
                "\",\""+registros[i]["n_serie"]+
                "\",\""+registros[i]["codigo_impresora"]+"\");'></i></span></td>";

                }else if(registros[i]["estado"]==0){
                    html+="<td><span style='color: #9A9A9A; font-size:30px;'><i class='fas fa-ban'></i></span></td>";
                }
                html+="<td style='display:none;'>"+registros[i]["estado"]+
                "</td>";
              
                if(registros[i]["estado"]==0){
                    html+="<td style='vertical-align : middle;text-align:center;'><span style='color: #9A9A9A; font-size:30px;'><i class='fas fa-ban'></i></span></td>";

                }else if(registros[i]["estado"]==1){
                    html+="<td style='vertical-align : middle;text-align:center;'>"+
                            "<span style='color: green; cursor:pointer; font-size:30px;'><i data-toggle='modal' data-target='#Modal_Baja' onClick='Inactivar_Impresora(\""+registros[i]["Id_impresoras"]+"\");' class='fas fa-sort-amount-down'></i></span></a>";
                }else if(registros[i]["estado"]==2){
                    html+="<td style='vertical-align : middle;text-align:center;'>"+
                            "<span style='color: red; cursor:pointer; font-size:30px;'><i data-toggle='modal' data-target='#Modal_Alta' onClick='Activar_Impresora(\""+registros[i]["Id_impresoras"]+"\");'class='fas fa-sort-amount-up'></i></span></a>";
                }
                    
                    html+="</td></tr>";
                

                };


            html +="</tbody></table>";

            
            $(".tabla_impr").html(html);
            }
    });


     // Mostrar boton de agregar
     $('#btnrgt').click(function(){

        document.getElementById('btningresarimpresora').style.display = 'block';
        document.getElementById('btnmodificarimpresora').style.display = 'none';
        document.getElementById('btnrgt').style.display = 'none';

        $('#limpiar').click();
    });

     // Modificar  Impresora
     $('#btnmodificarimpresora').click(function(){

        var Id_Impresoras=document.getElementById("txtidimpresora").value;
        var Distribuidora = document.getElementById("txtdistribuidora").value;
        var Marca = document.getElementById("txtmarca").value;
        var Modelo = document.getElementById("txtmodelo").value;
        var ActivoFijo = document.getElementById("txtactivofijo").value;
        var N_serie = document.getElementById("txtn_serie").value;
        var Codigo = document.getElementById("txtcodigoimpresora").value;

        if(Id_Impresoras=='' || Distribuidora =='' || Marca =='' || Modelo =='' || ActivoFijo=='' || N_serie=='' || Codigo==''){
            swal.fire({title:'Todos los campos son obligatorios', type: 'error'});
            return false;
        }else{ 

                $.post("<?php echo base_url(); ?>index.php/Impresoras/Modificar_Impresora",	
                {   
                    txtidimpresora:Id_Impresoras,
                    txtdistribuidora:Distribuidora,
                    txtmarca:Marca,
                    txtmodelo:Modelo,
                    txtactivofijo:ActivoFijo,
                    txtn_serie:N_serie,
                    txtcodigoimpresora:Codigo

                },			
                function(data){
                    if (data == 1) {

                let timerInterval
                    Swal.fire({
                    title: 'Impresora correctamente Modificada',
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
                            $('#btnrgt').click();
                            $('#limpiar').click();
                            $('#consult_impr').click();
                        // location.reload();
                        }
                    });
                    
                    }
                });
        }

    });

     // Modificar estado baja Impresora
     $('#ModestadoImpreBaja').click(function(){

        var Id_Impresoras=document.getElementById("modtxtidimpresorabaja").value;
        var Observacion = document.getElementById("mtxtmotivobaja").value;

        if(Id_Impresoras=='' || Observacion =='' ){
            swal.fire({title:'Todos los campos son obligatorios', type: 'error'});
            return false;
        }else{ 

                $.post("<?php echo base_url(); ?>index.php/Impresoras/Baja_Impresora",	
                {   
                    modtxtidimpresorabaja:Id_Impresoras,
                    mtxtmotivobaja:Observacion

                },			
                function(data){
                    if (data == 1) {

                let timerInterval
                    Swal.fire({
                    title: 'Impresora correctamente Modificada',
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
                            
                            $('#cerrarbaja').click();
                            $('#consult_impr').click();
                            $('#mtxtmotivobaja').val('');
                        // location.reload();
                        }
                    });
                    
                    }
                });
        }

    });

     // Modificar estado alta Impresora
     $('#ModEstadoImprAlta').click(function(){

        var Id_Impresoras=document.getElementById("modtxtidimpresoraalta").value;
        var Observacion = document.getElementById("mtxtmotivoalta").value;

        if(Id_Impresoras=='' || Observacion =='' ){
            swal.fire({title:'Todos los campos son obligatorios', type: 'error'});
            return false;
        }else{ 

                $.post("<?php echo base_url(); ?>index.php/Impresoras/Alta_Impresora",	
                {   
                    modtxtidimpresoraalta:Id_Impresoras,
                    mtxtmotivoalta:Observacion

                },			
                function(data){
                    if (data == 1) {

                let timerInterval
                    Swal.fire({
                    title: 'Impresora correctamente Modificada',
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
                            
                            $('#cerraralta').click();
                            $('#consult_impr').click();
                            $('#mtxtmotivoalta').val('');
                        // location.reload();
                        }
                    });
                    
                    }
                });
        }

    });

});

    // Click modificar impresora
    function Enviar_Datos_modal(Id_Impresora,Id_Distribuidora,Id_marca_impresoras,Id_modelo_impresoras,activofijo,NSerie,CodigoImpresora){
        
        document.getElementById('btningresarimpresora').style.display = 'none';
        document.getElementById('btnrgt').style.display = 'block';
        document.getElementById('btnmodificarimpresora').style.display = 'block';
        

        $('#txtidimpresora').val(Id_Impresora);
        $('#txtdistribuidora').val(Id_Distribuidora);
        $('#txtmarca').val(Id_marca_impresoras);
        $('#txtmodelo').val(Id_modelo_impresoras);
        $('#txtactivofijo').val(activofijo);
        $('#txtn_serie').val(NSerie);
        $('#txtcodigoimpresora').val(CodigoImpresora);


    }
    // Click inactivar impresora  (boton verde)
    function Inactivar_Impresora(Id_Impresora){
        $('#modtxtidimpresorabaja').val(Id_Impresora);
    }
    // Click activar impresora (boton rojo)
    function Activar_Impresora(Id_Impresora){
        $('#modtxtidimpresoraalta').val(Id_Impresora);
    }

</script>

</body>
</html>