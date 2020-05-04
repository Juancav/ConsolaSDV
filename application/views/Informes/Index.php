<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Estadistica De Venta</title>
   <!--Icon page-->
   <link href="Public/Img/favicon.png" rel="icon">

   <style>
   .input-file { visibility: hidden; position: absolute;}
   </style>
</head>
<body>

    <div class="page-wrapper chiller-theme toggled">
        <main class="page-content">
            <section id="hero" class="wow fadeIn">

            <h1> Informes</h1><br>
            <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">
            <div class="form-row" style="margin-bottom:30px; margin-left:70px;">

                    <!--Modal Venta Diaria -->
                    <div  class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                        <div  class="modal-dialog" role="document" >
                            <div class="modal-content" style="margin-top:15px; width:1250px; margin-left:-360px;">
                            <div class="modal-header">
                                <h3 class="modal-title" id="exampleModalLabel">Venta Diaria</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                                <!-- Insertar graficos en un div -->
                                <!-- dataMap = echarts.init(document.getElementById('grafico1')); -->

                                <!-- Opciones del grafico -->
                                <!-- dataMap.setOption(option);-->

                            
                            <div class="modal-body">
                            
                                
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Cerrar</button>
                        
                            </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal Actualizacion Informacion -->
                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="exampleModalCenterTitle"><i class="far fa-edit"></i> Actualizacion de Informes</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                            <form method='POST' id='form_Informes' name='form_Informes' action='<?php echo base_url('index.php/Informes/Actualizar_Informe')?>' enctype="multipart/form-data">
                                    <div class="container">

                                                <div class="form-group">
                                                    <div class="">
                                                    <label style="font-size: 16px;">Informe</label>
                                                    <select class="form-control" Id="txtinforme" name="txtinforme">
                                                    <option disabled selected value="">Selecionar Informe</option>
                                                    <option value="VENTA_DIARIA">Venta Diaria</option>
                                                    <option value="EXHIBIDORES">Exhibidores</option>
                                                    </select>
                                                            <br>
                                                        <label style="font-size: 16px;">Seleccionar Archivo</label>
                                                        <div class="">
                                                            <input type="file" name="excel_file" id="excel_file" class="input-file">
                                                            <div class="input-group col-xs-12">



                                                                <input type="text" class="form-control" disabled placeholder="Subir Archivo .xlsx">
                                                                <span class="input-group-btn">
                                                                    <button class="upload-field btn btn-primary" type="button"><i class="fa fa-search"></i> Seleccionar </button>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>   
                                        
                                    </div>
                           

                            </div>

                            <div class="modal-footer">
                                <a href="#" data-dismiss="modal">Cerrar</a>
                                <button type="submit" id="btnactualizarinforme" class="btn btn-outline-primary"  style="display:none;">Actualizar</button>
                                <button type="button" id="validar_actualizacion" class="btn btn-outline-primary" OnClick="Validar();">Actualizar</button>
                            </div>
                            </form>
                            </div>
                        </div>
                    </div>
               

                <!-- Informe venta diaria. -->
            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Venta Diaria</h4>
                        <p class="card-text">Informacion contenida: Venta Bocadeli por distribuidora , Venta Bocadeli por dia , Productos Top ,Top ruta mayor venta</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                            <button class="btn btn-outline-primary" data-toggle="modal" data-target=".bd-example-modal-xl">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>

                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

            <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                    <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                    
                    <div class="card-body">
                        <h4 class="card-title">Card title</h4>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    
                    <div class="card-footer" style="bottom:0;">
                     <p class="card-text" style="float:left; margin-top:10px; font-size:12px; marign-left:-10px; color: #818182;"><small>Ultima Actualizacion <BR> 27/04/2020 18:20 HORAS</small></p>
                      <div style="float:right;">
                            <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>

                            <button class="btn btn-outline-primary">Ver</button>
                      </div>
                    </div> 

            </div>

           
            </div>
            </section>
        </main>
    </div>
<script>
                
                
        $(document).on('click', '.upload-field', function(){
        var file = $(this).parent().parent().parent().find('.input-file');
        file.trigger('click');
        });

        $(document).on('change', '.input-file', function(){
        $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
        });

        function Validar(){
            
            var Informe;
                    
            Informe = document.getElementById('txtinforme').value;
        

                if(document.getElementById("excel_file").files.length == 0 || Informe.length == 0 ){
                                swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                                return false; 

                                
                }else{
                   
                    swal.fire({ showConfirmButton: false, timer: 1500, position: 'top-end',title:'Se Envio Correctamente el registro', type: 'success'});
                    
                            $('#btnactualizarinforme').click();
               
                }
             
        }


</script>

</body>
</html>