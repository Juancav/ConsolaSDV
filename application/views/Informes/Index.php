<!-- Echarts -->

    <!-- myChart : Variable que se utiliza para colocar un grafico en cualquier div atravez del Id del DIV -->
    <!-- var myChart = echarts.init(document.getElementById('main')); -->

    <!-- MyChart.setOption : se utiliza para darle todas las opciones al grafico -->
    <!-- myChart.setOption(option); -->

<!--  -->
<!DOCTYPE html>
<html lang="es">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
        <title>Estadistica De Venta</title>
        <!--Icon page-->
        <link href="Public/Img/favicon.png" rel="icon">
            <!-- Estilos CSS  -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Informes.css')?>">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/javascript.util/0.12.12/javascript.util.min.js"></script>

        <!-- Tema Echarts -->
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/macarons.js')?>"></script>
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/ThemeJC.js')?>"></script>
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/purple-passion.js')?>"></script>
        
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/roma.js')?>"></script>
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/westeros.js')?>"></script>
        <!-- Tema Echarts -->
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/shine.js')?>"></script>

        <!-- Tema Echarts -->
        <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/dark.js')?>"></script>


 </head>
 <body>

    <div class="page-wrapper chiller-theme toggled">
        
        <main class="page-content">

            <section id="hero" class="wow fadeIn">
                        
                <h1> Informes</h1><br>
                <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">
                
                <!-- Botones-->
                <div class="field">

                    <div class="content-field">
                        <fieldset class="border p-2">
                            <legend  class="w-auto"> Informe de Ventas</legend>
                            <button class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter" >Actualizar</button>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#VentaDiaria">Consultar</button>
                            
                        </fieldset>
                    </div>

                    <div class="content-field">
                        <fieldset class="border p-2">
                            <legend  class="w-auto"> Informe de Exhibidores</legend>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#ActualizacionExhibidores">Consultar</button>
                            
                        </fieldset>
                    </div>

                    <div class="content-field">
                    <fieldset class="border p-2">
                        <legend  class="w-auto"> Importacion de clientes</legend>
                        <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#agregarclientes">Actualizar </button>
                    </fieldset>
                    </div>
                    
                    <div class="content-field">
                    <fieldset class="border p-2">
                        <legend  class="w-auto">Facturacion exhibidores</legend>
                        <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#addfacturacionexhibidor"> Actualizar </button>
                    </fieldset>
                    </div>

                    <div class="content-field">
                    <fieldset class="border p-2">
                        <legend  class="w-auto"> Formularios</legend>
                        <a type="button" href="cell_form" target="_blank" class="btn btn-outline-info" > Verificacion dispositivos </a>
                    </fieldset>
                    </div>
                
                </div>
            
            </section>
                
            <!-- Modal  Informe De Venta-->
            <div class="modal fade" id="VentaDiaria" tabindex="-1" role="dialog" style="background:#202338;" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered ">
                    <div class="modal-content " style="background:#202338; border:0px;">

                        <div class="modal-header" style="border:0px;">
                            <h2 class="modal-title " id="exampleModalLabel" style="font-size:26px; margin-top:5px; color:#fff;"><i class="far fa-chart-bar"></i> Estadisticas de Venta</h2>
                        </div>

                        <div class="modal-body " style="background:#202338;">
                            <div class="form-row">

                                            <!-- Grafico 1 -->
                                            <div id="grafico1" class="form-group row" style="height:500px; width:1300px" ></div>
                                            <!-- Grafico 3 -->
                                            <div id="grafico3" class="form-group row" style="height:500px; width:600px; margin-left:20px;" ></div>
                                            <!-- Grafico 2 -->
                                            <div id="grafico2" class="form-group row" style="height:500px; width:700px "></div>
                                            <!-- Grafico 5 -->
                                            <div id="grafico5" class="form-group row" style="height:500px; width:1300px; margin-left:20px;"></div>
                                            <!-- Grafico 6 -->
                                            <div id="grafico6" class="form-group row" style="height:500px; width:600px; margin-left:20px;"></div>
                                            <!-- Grafico 4 -->
                                            <div id="grafico4" style="height:500px; width:700px; margin-left:20px;"></div>
                                            <!-- Grafico 7 -->
                                            <div id="grafico7" style="height:500px; width:1050px; margin-left:20px;"></div>
                                            <!-- Grafico 8 -->
                                            <div id="grafico8" style="height:500px; width:1300px; margin-left:20px;"></div>
                                       
                                    
                            </div>
                        </div>

                        <div class="modal-footer" style="border:0px;">
                            <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Cerrar</button>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Modal  Informe de exhibidores Actualizados-->
            <div class="modal fade" id="ActualizacionExhibidores" tabindex="-1" role="dialog" style="background:#202338;" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered ">
                    <div class="modal-content " style="background:#202338; border:0px;">

                        <div class="modal-header" style="border:0px;">
                            <h2 class="modal-title " id="exampleModalLabel" style="font-size:26px; margin-top:5px; color:#fff;"><i class="far fa-chart-bar"></i> Estadisticas censo exhibidores</h2>
                            <div id="cargando" style="display:none;">
                                <img src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/f1055231234507.564a1d234bfb6.gif" width="90px" alt="Cargando Datos Por Favor Espere...">
                            </div>
                            <button id="censoexhibidores" onclick="GenerarInformeCensoexhibidores()"class="btn btn-outline-success"> DATA </button>
                            <a href="<?php echo base_url('Uploads/Informes/Plantillas/Data.csv')?>" type="button" class="btn btn-success" style="display:none;" id="plantillacensoexhibidores" name="plantillacensoexhibidores"> Descargar Archivo </a>
                        </div>

                        <div class="modal-body " style="background:#202338;">
                            <div class="exhibidores" style="display:flex; flex-wrap:wrap;">

                                            <!-- Grafico 1 Exhibidores-->
                                            <div>
                                                <div style="display:flex; justify-content:flex-end;">
                                                    <button class="btn btn-outline-info" data-toggle="modal" data-target="#DesgloseExhibidoresClientes"> VER MAS </button>
                                                </div>

                                               
                                                <div id="graficoexhi1" class="form-group row" style="height:500px; width:650px; margin-right:10px;" ></div >
                                            </div>  
                                            <!-- Grafico 2 Exhibidores-->
                                            <div>
                                                <div style="display:flex; justify-content:flex-end;">
                                                    <button class="btn btn-outline-info" data-toggle="modal" data-target="#" disabled="disabled"> VER MAS </button>
                                                </div>
                                                
                                                <div id="graficoexhi2" class="form-group row" style="height:500px; width:680px" ></div >
                                              
                                            </div>     
                                             <!-- Grafico 3 Exhibidores-->
                                             <div>
                                                <div style="display:flex; justify-content:flex-end;">
                                                    <button class="btn btn-outline-info" data-toggle="modal" data-target="#Desglosetotalexhibidores"> VER MAS </button>
                                                </div>
                                                
                                                <div style="display:flex; justify-content: space-around;">
                                                    <div id="graficoexhi3" class="form-group row" style="height:600px; width:1300px" ></div >
                                                        <div style="margin-left:40px;"> 
                                                
                                                        <label style="font-size: 16px; color:white;">Filtro</label>
                                                                <select class="form-control" Id="txtfiltroobservacion" name="txtfiltrocensados">
                                                                    <option  selected value="" disabled="disabled">Filtro</option> 
                                                                    <option value="p.Nombre_pais">Pais</option>   
                                                                    <option value="d.Division">Division</option>    
                                                                    <option value="d.Nombre_distribuidora">Distribuidora</option>    
                                                                </select><br>

                                                    </div>
                                                </div>
                                            </div>   
                                            <div>
                                                <!-- <div style="display:flex; justify-content:flex-end;">
                                                    <button class="btn btn-outline-info" data-toggle="modal" data-target="#Desglosetotalexhibidores"> VER MAS </button>
                                                </div> -->
                                                
                                                
                                              
                                            </div>                                            
                                            
                                            
                                    
                            </div>
                        </div>

                        <div class="modal-footer" style="border:0px;">
                            <button type="button" class="btn btn-outline-warning" data-dismiss="modal">Cerrar</button>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Modal , Informe Desglozado de clientes actualizados-->
            <div class="modal fade" id="DesgloseExhibidoresClientes" tabindex="-1" role="dialog" aria-labelledby="agregarclientes" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header"  style="background:#202338; border:yellow solid 1px;">
                            <h4 class="modal-title" style="color:yellow;" id="exampleModalCenterTitle"><i class="far fa-edit"></i> Desglose clientes actualizados </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body" style="background:#202338; border:yellow solid 1px;">
                    
                               
                                    <div class="form-group">

                                        <div style="display:flex; justify-content: space-around;">
                                        
                                            <div id="subgraficoexhi1" class="form-group row" style="height:500px; width:1000px" ></div >

                                            <div > 
                                            
                                                <label style="font-size: 16px; color:white;">Filtro</label>
                                                        <select class="form-control" Id="txtfiltrocensados" name="txtfiltrocensados">
                                                            <option  selected value="" disabled="disabled">Filtro</option>  
                                                            <option value="d.Division">Division</option>    
                                                            <option value="d.Nombre_distribuidora">Distribuidora</option>    
                                                        </select><br>

                                            </div>
                                        </div>

                                        <div style="display:flex; justify-content: space-around;">
                                        
                                            <div id="subgraficoexhi2" class="form-group row" style="height:500px; width:1000px" ></div >
                                                
                                                <div > 
                                                
                                                <label style="font-size: 16px; color:white;">Filtro</label>
                                                        <select class="form-control" Id="txtfiltronoencuestados" name="txtfiltrocensados">
                                                            <option  selected value="" disabled="disabled">Filtro</option> 
                                                            <option value="p.Nombre_pais">Pais</option>   
                                                            <option value="d.Division">Division</option>    
                                                            <option value="d.Nombre_distribuidora">Distribuidora</option>    
                                                        </select><br>

                                                </div>
                                        </div>
                                   
                                    </div>            
                                
                        
                        </div>

                        <div class="modal-footer"  style="background:#202338; border:yellow solid 1px;">
                 
                            <button type="button" id="agregar_clientes" class="btn btn-outline-danger"data-dismiss="modal" >Cerrar</button>
                        </div> 
                    </div>
                </div>
            </div>

            <!-- Modal , Informe Desglozado de total exhibidore-->
            <div class="modal fade" id="Desglosetotalexhibidores" tabindex="-1" role="dialog" aria-labelledby="agregarclientes" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header"  style="background:#202338; border:yellow solid 1px;">
                            <h4 class="modal-title" style="color:yellow;" id="exampleModalCenterTitle"><i class="far fa-edit"></i> Desglose total exhibidores</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body" style="background:#202338; border:yellow solid 1px;">
                        
                            <div style="display:flex; justify-content: space-around;">

                                <div id="graficoexhi4" class="form-group row" style="height:1000px; width:1200px" ></div >
                                    <div style="margin-left:40px;"> 
                                                
                                        <label style="font-size: 16px; color:white;">Filtro x pais</label>
                                            <select class="form-control" Id="txtfiltrooexhibidorestotal" name="txtfiltrooexhibidorestotal">
                                                <option  selected value="" disabled="disabled">Filtro</option> 
                                                <option value="1">EL SALVADOR</option>   
                                                <option value="2">GUATEMALA</option>    
                                                <option value="3">HONDURAS</option>    
                                            </select><br>
                                            <label style="font-size: 16px; color:white;">Filtro x division</label>
                                            <select class="form-control" Id="txtfiltrooexhibidorestotalxdivision" name="txtfiltrooexhibidorestotalxdivision">
                                                <option  selected value="" disabled="disabled">Filtro</option> 
                                                <option value="GT_CENTRO">GT_CENTRO</option>   
                                                <option value="GT_NORTE">GT_NORTE</option>    
                                                <option value="GT_SUR">GT_SUR</option>  
                                                <option value="HN_CENTRO">HN_CENTRO</option>   
                                                <option value="HN_NORTE">HN_NORTE</option>   
                                                <option value="RDO">RDO</option>   
                                                <option value="SV_CENTRO">SV_CENTRO</option>   
                                                <option value="SV_OCCIDENTE">SV_OCCIDENTE</option>   
                                                <option value="SV_ORIENTE">SV_ORIENTE</option>

                                            </select><br>
                                

                                </div>
                            </div>      
                                
                        
                        </div>

                        <div class="modal-footer"  style="background:#202338; border:yellow solid 1px;">
                 
                            <button type="button" id="agregar_clientes" class="btn btn-outline-danger"data-dismiss="modal" >Cerrar</button>
                        </div> 
                    </div>
                </div>
            </div>

            <!-- Modal Actualizacion de datos venta -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalCenterTitle"><i class="far fa-edit"></i> Actualizacion de venta</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body">
                            <form  id='form_Informes' name='form_Informes' >
                                            
                                <div class="container">

                                    <div class="form-group">

                                            <label style="font-size: 16px;">Informe</label>
                                                <select class="form-control" Id="txtinforme" name="txtinforme">
                                                    <option  selected value="">Selecionar Informe</option>
                                                    <option value="VENTA_DIARIA">VENTA DIARIA</option>    
                                                </select><br>

                                            <label style="font-size: 16px;">Seleccionar Archivo</label>
                                                <div class="">
                                                    <input type="file" name="excel_file" id="excel_file" class="input-file">
                                                        <div class="input-group col-xs-12">
                                                            <input type="text" class="form-control" disabled placeholder="SUBIR ARCHIVO .CSV">
                                                            <span class="input-group-btn"><button class="upload-field btn btn-primary" type="button"><i class="fa fa-search"></i> Seleccionar </button></span>
                                                        </div>
                                                </div>

                                                <br>

                                            <div class="form-row" id="barra_estado" style="text-align:left; display:none;">

                                                <div class="loader" id="loader">
                                                    <div class="inner one"></div>
                                                    <div class="inner two"></div>
                                                    <div class="inner three"></div>
                                                </div>
                                                    
                                                <progress id="progressBar"  value="0" max="100" style="width:300px; height:25px;" > </progress>
                                                <p class="status" id="status"></p>
                                                <p id="loaded_n_total"></p>
                                                        

                                                    
                                            </div>
    
                                    </div>

                                </div>

                            </form>
                        </div>

                        <div class="modal-footer">
                            <a href="#"  OnClick="reload();" data-dismiss="modal" >Cerrar</a>
                            <button type="button" id="actualizar" class="btn btn-outline-primary" OnClick="subir_datos()">Actualizar</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Agregar Clientes -->
            <div class="modal fade" id="agregarclientes" tabindex="-1" role="dialog" aria-labelledby="agregarclientes" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalCenterTitle"><i class="far fa-edit"></i> Agregar Clientes </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body">
                        <a href="<?php echo base_url('Uploads\Informes\Plantillas\Plantilla_creacion_clientes.csv')?>" type="button" class="btn btn-success"> Plantilla Clientes </a><br><br>
                            <form  id='form_clientes' name='form_clientes' >
                                <div class="container">
                                    <div class="form-group">

                                        <div class="">

                                            <label style="font-size: 16px;">Seleccionar Archivo</label>
                                            <div class="">
                                                <input type="file" name="excel_file_client" id="excel_file_client" class="input-file">
                                                    <div class="input-group col-xs-12">
                                                        <input type="text" class="form-control" disabled placeholder="Subir Archivo .csv">
                                                            <span class="input-group-btn"><button class="upload-field btn btn-primary" type="button"><i class="fa fa-search"></i> Seleccionar </button></span>
                                                    </div>
                                            </div>

                                        </div><br>

                                        <div class="form-row" id="barra_estado_cliente" style="text-align:left; display:none;">
                                            <!-- Spinner -->
                                            <div class="loader" id="loader_clientes">
                                                <div class="inner one"></div>
                                                <div class="inner two"></div>
                                                <div class="inner three"></div>
                                            </div>
                                            <!-- Barra De Progreso -->
                                            <progress id="progressBar_Cliente"  value="0" max="100" style="width:300px; height:25px;" > </progress>
                                            <p class="status" id="status_Clientes"></p>
                                            <p id="loaded_n_total_Clientes"></p>
                                                        

                                                    
                                        </div>

                                    </div>            
                                </div>
                            </form>  
                        </div>

                        <div class="modal-footer">
                            <a href="#"  OnClick="reload();" id="abortar" data-dismiss="modal" >Cerrar</a>
                            <button type="button" id="agregar_clientes" class="btn btn-outline-primary" OnClick="agregar_clientes()">Actualizar</button>
                        </div> 
                    </div>
                </div>
            </div>

             <!-- Modal agregar facturacion exhibidores-->
             <div class="modal fade" id="addfacturacionexhibidor" tabindex="-1" role="dialog" aria-labelledby="addfacturacionexhibidor" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id=""><i class="far fa-edit"></i> Facturacion Exhibidores </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body">
                        <a href="<?php echo base_url('Uploads\Informes\Plantillas\Plantilla_Carga_Exhibidores.csv')?>" type="button" class="btn btn-success"> Plantilla Exhibidores </a><br><br>
                            <form  id='form_exhibidores' name='form_exhibidores' >
                                <div class="container">
                                    <div class="form-group">
                                        
                                        <div class="">

                                            <label style="font-size: 16px;">Seleccionar Archivo</label>
                                            <div class="">
                                                <input type="file" name="excel_file_exhibidores" id="excel_file_exhibidores" class="input-file">
                                                    <div class="input-group col-xs-12">
                                                        <input type="text" class="form-control" disabled placeholder="Subir Archivo .csv">
                                                            <span class="input-group-btn"><button class="upload-field btn btn-primary" type="button"><i class="fa fa-search"></i> Seleccionar </button></span>
                                                    </div>
                                            </div>

                                        </div><br>

                                        <div class="form-row" id="barra_estado_exhibidores" style="text-align:left; display:none;">
                                            <!-- Spinner -->
                                            <div class="loader" id="loader_exhibidores">
                                                <div class="inner one"></div>
                                                <div class="inner two"></div>
                                                <div class="inner three"></div>
                                            </div>
                                            <!-- Barra De Progreso -->
                                            <progress id="progressBar_exhibidores"  value="0" max="100" style="width:300px; height:25px;" > </progress>
                                            <p class="status" id="status_exhibidores"></p>
                                            <p id="loaded_n_total_exhibidores"></p>
                                                        

                                                    
                                        </div>

                                    </div>            
                                </div>
                            </form>  
                        </div>

                        <div class="modal-footer">
                            <a href="#"  OnClick="reload();" id="abortar" data-dismiss="modal" >Cerrar</a>
                            <button type="button" id="addexhibidores" class="btn btn-outline-primary" OnClick="ValidacionExhibidores()">Actualizar</button>
                        </div> 
                    </div>
                </div>
            </div>

        </main>
    </div>

 </body>


<!-- Javascript -->
<script type="text/javascript">
$( document ).ready(function() {

    // Fecha actualizacion
    $.ajax({
            url:"<?php echo base_url();?>index.php/Informes/Fecha_Informe",
            method:"POST",
            dataType:"JSON",

            success:function(data)
            {
                
                
              $('#fecha_actualizacion').html("<small>Ultima Actualizacion <br>"+data.fecha_actualizacion+" HORAS</small>");
            }
    });

    /**************************DATOS ESTADISTICOS DE VENTA NIVEL EL SALVADOR****************************/
    // Grafico De Barras Venta Por Dia
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaXDia",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
       
        var grafico1 = echarts.init(document.getElementById('grafico1'), 'ThemeJC');
        
        option = {
       
            title: {
                text: 'Venta Por Dia ',
                subtext: 'Venta representada en dolares',
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {           
                    type: 'shadow'        
                }
            },
            legend: {},
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: data.Fecha,
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                {
                    name: 'Venta Total',
                    type: 'bar',
                    barWidth: '60%',
                    data: data.Total
                }
            ]
        };
            
          
        grafico1.setOption(option);
  
        }
    });

    // Graficos De Barras Horizontal Top 10
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/Top_Productos",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
       
        var grafico2 = echarts.init(document.getElementById('grafico2'),'ThemeJC');
        
      option = {
  
            title: {
                text: 'Top 10 ',
                subtext: 'Productos Mas Vendidos'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            legend: {  },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: {
                type: 'value',
            },
            yAxis: {
                type: 'category',
                data: data.Descripcion
            },
            series: [
                {
                    name: 'Producto',
                    type: 'bar',
                    data: data.Total.sort()
                },
        
            ]
        };

            
          
        grafico2.setOption(option);

      
        
        }
    });

    //Grafico De Pastel venta por familia
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaFamilia",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
 
        var grafico3 = echarts.init(document.getElementById('grafico4'),'ThemeJC');
        
        option = {
                title: {
                    text: 'Venta Por Familia',
                    subtext: 'Venta representada en dolares',
                    left: 'Left',
                },
                tooltip: {
                    trigger: 'item',
                    formatter: '{b}: <br/>${c}<br/> ({d}%)',
            
                    padding:[12, 12, 12, 12]
                },
                legend: {
                    top: '10%',
                    orient: 'vertical',
                    left:0
                 
                    
                },
                series: [
                    {
                        name: 'Venta SubFamilia',
                        type: 'pie',
                        radius: ['50%', '70%'],
                        avoidLabelOverlap: false,
                        label: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            label: {
                                formatter:'{d}%',
                                show: true,
                                fontSize: '50',
                                fontWeight: 'bold'
                            }
                        },
                        labelLine: {
                            show: false
                        },
                        data: data
                    },
                    
                ]
            };

            
          
        grafico3.setOption(option);

      
        
        }
    });

    //Grafico De Pastel venta por distribuidora
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaDistribuidora",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
 
        var grafico4 = echarts.init(document.getElementById('grafico3') ,'ThemeJC');

        option = {
         
            title: {
                text: 'Venta Por Distribuidora',
                subtext: 'Venta representada en dolares',
                left: 'Left'
            },
            legend: {},
            tooltip: {},
            dataset: {
                source: data
            },
            xAxis: {type: 'category'},
            yAxis: {},
            // Declare several bar series, each will be mapped
            // to a column of dataset.source by default.
            series: [
                {type: 'bar'},
          
            ]
        };           
          
        grafico4.setOption(option);

        
        
        }
    });

    //Venta por canal y por distribuidora 
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaXCanal",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var grafico5 = echarts.init(document.getElementById('grafico5') ,'ThemeJC');
        
        option = {
                title: {
                    text: 'Venta Por Canal y Distribuidora ',
                    subtext: 'Venta representada en dolares'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data:  data.Distribuidora
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value',
                    boundaryGap: [0, 0.01]
                  
                },
                yAxis: {
                    type: 'category',
                    data: data.Canal
                },
                series: [
                    {
                        name: 'San Miguel',
                        type: 'bar',
                        data: data.SM
                    },
                    {
                        name: 'Santa Ana',
                        type: 'bar',
                        data: data.SA
                    },
                    {
                        name: 'San Salvador',
                        type: 'bar',
                        data: data.SS
                    },
                    {
                        name: 'Sonsonate',
                        type: 'bar',
                        data: data.SO
                    },
                    {
                        name: 'Chalatenango',
                        type: 'bar',
                        data: data.CH
                    },
                ]
            };


            grafico5.setOption(option);

        }
    });

    //Venta por distribuidora y por categoria 
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaXCCategoria",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var grafico6 = echarts.init(document.getElementById('grafico6') ,'ThemeJC');
        
        option = {
                title: {
                    // top:'5%',
                    text: 'Venta Por Categoria y Distribuidora ',
                    subtext: 'Venta representada en dolares'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    top:'10%',
                    data:  data.Distribuidora
                },
                grid: {
                    top:'20%',
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'category',
                    data: data.Categoria
                },
                yAxis: {
                    type: 'value',
                    boundaryGap: [0, 0.01]
              
                    
                },
                series: [
                    {
                        name: 'San Miguel',
                        type: 'bar',
                        data: data.SM
                    },
                    {
                        name: 'Santa Ana',
                        type: 'bar',
                        data: data.SA
                    },
                    {
                        name: 'San Salvador',
                        type: 'bar',
                        data: data.SS
                    },
                    {
                        name: 'Sonsonate',
                        type: 'bar',
                        data: data.SO
                    },
                    {
                        name: 'Chalatenango',
                        type: 'bar',
                        data: data.CH
                    },
                ]
            };


            grafico6.setOption(option);

        }
    });

    //Venta por subfamilia
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaSubFamilia",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var grafico7 = echarts.init(document.getElementById('grafico7') ,'ThemeJC');
        
        option = {
                title: {
                    text: 'Venta Por Sub Familia',
                    subtext: 'Venta representada en dolares',
                    left: 'Left',
                },
                tooltip: {
                    trigger: 'item',
                    formatter: '{b}: <br/>${c}<br/> ({d}%)',
            
                    padding:[12, 12, 12, 12]
                },
                legend: {
                    top: '10%',
                    orient: 'vertical',
                    left: 0
                
                    
                },
                series: [
                    {
                        name: 'Venta SubFamilia',
                        type: 'pie',
                        radius: ['50%', '70%'],
                        avoidLabelOverlap: false,
                        label: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            label: {
                                formatter:'{d}%',
                                show: true,
                                fontSize: '50',
                                fontWeight: 'bold'
                            }
                        },
                        labelLine: {
                            show: false
                        },
                        data: data
                    }
                ]
            };



            grafico7.setOption(option);

        }
    });

    //Venta por grupo  Y distribuidora
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaxGrupo_Distribuidora",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var grafico8 = echarts.init(document.getElementById('grafico8') ,'ThemeJC');
        
        option = {
                title: {
                    text: 'Venta Por Grupo'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    top:'5%',
                    left: '15%',
         
                    data: ['GRUPO 1', 'GRUPO 2', 'GRUPO 3', 'GRUPO 4', 'GRUPO 5', 'GRUPO 6', 'GRUPO 7', 'GRUPO 8', 'GRUPO 9' ,'GRUPO 10']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                toolbox: {
                    feature: {
                        dataZoom: {
                            title: 'Data',
                            yAxisIndex: "none"
                            
                        },
                        saveAsImage: {title: 'Guardar'}
                    }
                },
                xAxis: {
                    type: 'category',
                    boundaryGap: false,
                    data: data.Distribuidora
                },
                yAxis: {
                    type: 'value'
                },
                series: [
                    {
                        name: 'GRUPO 1',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G1
                    },
                    {
                        name: 'GRUPO 2',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G2
                    },
                    {
                        name: 'GRUPO 3',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G3
                    },
                    {
                        name: 'GRUPO 4',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G4
                    },
                    {
                        name: 'GRUPO 5',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G5
                    }
                    ,
                    {
                        name: 'GRUPO 6',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G6
                    },
                    {
                        name: 'GRUPO 7',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G7
                    }
                    ,
                    {
                        name: 'GRUPO 8',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G8
                    }
                    ,
                    {
                        name: 'GRUPO 9',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G9
                    }
                    ,
                    {
                        name: 'GRUPO 10',
                        type: 'line',
                        stack: 'TOTAL',
                        data: data.G10
                    }
                ]
            };




            grafico8.setOption(option);

        }
    });


    /**************************DATOS ESTADISTICOS DE EXHIBIDORES NIVEL REGIONAL****************************/

     //grafico de barras y pastel total clientes censados y no censados y sin exhibidor
     $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/AvanceExhibidores",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
       
        setTimeout(function () {
        
        var graficoexhi1 = echarts.init(document.getElementById('graficoexhi1'), 'ThemeJC');
                option = {
                    toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                    },
                    legend: {
                        left: "58%"
                    },
                    title: {
                        text: 'Total Cliente actualizado Por Pais ',
                        subtext: '% de Avance',
                        
                    },
                    tooltip: {
                      
                        trigger: 'axis',
                        showContent: true
                      
                    },
                    dataset: {
                        
                        source: 
                           data
                            
                    },
                    xAxis: {type: 'category'},
                    yAxis: {gridIndex: 0},
                    grid: {top: '50%'},
                    series: [
                        {
                            label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                                }
                            },
                            type: 'bar', smooth: true, seriesLayoutBy: 'row' 
                        },
                        {
                            label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#F0FF33'
                                }
                            },
                            type: 'bar', smooth: true, seriesLayoutBy: 'row' 
                            },
                        {
                            type: 'pie',
                            id: 'pie',
                            radius:  ['20%', '30%'],
                            avoidLabelOverlap: false,
                            center: ['50%', '30%'],
                            tooltip: {
                                trigger: 'axis',
                                showContent: true
                            },
                            data: [

                                {value: parseInt(data[1][1])+parseInt(data[1][2])+parseInt(data[1][3]) , name:'CLIENTES NO ACTUALIZADOS'},
                                {value: parseInt(data[2][1])+parseInt(data[2][2])+parseInt(data[2][3]) , name:'CLIENTES ACTUALIZADOS'}, 
                            
                            ],
                            label: {
                                formatter: '{b}: {@PAIS} ({d}%)'
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontWeight: 'bold'
                                }
                            },
                            encode: {
                                itemName: 'pais',
                                value: 'EL SALVADOR',
                                tooltip: 'EL SALVADOR'
                            }
                        }
                    ]
                };
    
                graficoexhi1.on('updateAxisPointer', function (event) {
                    var xAxisInfo = event.axesInfo[0];
                    if (xAxisInfo) {
                        var dimension = xAxisInfo.value + 1;
                        graficoexhi1.setOption({
                            series: {
                                id: 'pie',
                                label: {
                                    formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                                },
                                encode: {
                                    value: dimension,
                                    tooltip: dimension
                                }
                            }
                        });
                    }
                });
                graficoexhi1.setOption(option);
                
    
                });

        }
    });

    //grafico de barras y pastel total clientes con y sin exhibidor 
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/Totalclientesconysinexhibidor",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
       
        setTimeout(function () {
        
        var graficoexhi2 = echarts.init(document.getElementById('graficoexhi2'), 'ThemeJC');
                option = {
                    toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                     },
                    legend: {
                        left: "68%"
                    },
                    title: {
                        text: 'Clientes encuestados',
                        subtext: '% de cobertura',
                        
                    },
                    tooltip: {
                      
                        trigger: 'axis',
                        showContent: true
                      
                    },
                    dataset: {
                        source: 
                           data
                            
                    },
                    xAxis: {type: 'category'},
                    yAxis: {gridIndex: 0},
                    grid: {top: '50%'},
                    series: [
                        {  
                            label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                                }
                            },
                            type: 'bar', smooth: true, seriesLayoutBy: 'row' 
                            },
                        {
                            label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#F0FF33'
                                }
                            },
                            type: 'bar', smooth: true, seriesLayoutBy: 'row' 
                            },
                        {
                            type: 'pie',
                            id: 'pie',
                            radius:  ['20%', '30%'],
                            avoidLabelOverlap: false,
                            center: ['50%', '30%'],
                            tooltip: {
                                trigger: 'axis',
                                showContent: true
                            },
                            data: [

                                {value: parseInt(data[1][1])+parseInt(data[1][2])+parseInt(data[1][3]) , name:'CON EXHIBIDOR'},
                                {value: parseInt(data[2][1])+parseInt(data[2][2])+parseInt(data[2][3]) , name:'SIN EXHIBIDOR'}, 
                            
                            ],
                            label: {
                                formatter: '{b}: {@PAIS} ({d}%)'
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontWeight: 'bold'
                                }
                            },
                            encode: {
                                itemName: 'pais',
                                value: 'EL SALVADOR',
                                tooltip: 'EL SALVADOR'
                            }
                        }
                    ]
                };
    
                graficoexhi2.on('updateAxisPointer', function (event) {
                    var xAxisInfo = event.axesInfo[0];
                    if (xAxisInfo) {
                        var dimension = xAxisInfo.value + 1;
                        graficoexhi2.setOption({
                            series: {
                                id: 'pie',
                                label: {
                                    formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                                },
                                encode: {
                                    value: dimension,
                                    tooltip: dimension
                                }
                            }
                        });
                    }
                });
                graficoexhi2.setOption(option);
                
    
                });

        }
    });

    // grafico de barras horizontales Observacion de exhibidores
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/PosicionExhibidor",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var graficoexhi3 = echarts.init(document.getElementById('graficoexhi3') ,'ThemeJC');
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            magicType: {
                                title: {
                                    line: "Linea",
                                    bar: "Barras"
                                },
                                
                                type: ["line", "bar"]
                            },
                            
                        }
                },
          
            title: {
                    text: 'Observacion Exhibidor',
                    subtext: 'a nivel regional',
                },
            tooltip: {
                trigger: 'axis',
                axisPointer: {            
                    type: 'shadow'
                }
            },
            legend: {
                left: "58%",
                data: ['VISIBLE Y ACCESIBLE','MAL UBICADO','INVADIDO','NECESITA REPARACION','DESECHADO O GUARDADO POR EL CLIENTE','RETIRADO DEL NEGOCIO']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'value'
                }
            ],
            yAxis: [
                {
                    type: 'category',
                    data: data[0],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
              
            ],
            series: [
                
                {
                    label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'VISIBLE Y ACCESIBLE',
                    type: 'bar',
                   
                    data: data[1]
                },
                {
                    label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'MAL UBICADO',
                    type: 'bar',
                  
                    data: data[2]
                },
                {
                    label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#A82FAA'
                            }
                        },
                    name: 'INVADIDO',
                    type: 'bar',
                  
                    data: data[3]
                },
                {
                    label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'NECESITA REPARACION',
                    type: 'bar',
                   
                    data: data[4]
                },
                {
                    label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'DESECHADO O GUARDADO POR EL CLIENTE',
                    type: 'bar',
                  
                    data: data[5]
                },
                {
                    label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#A82FAA'
                            }
                        },
                    name: 'RETIRADO DEL NEGOCIO',
                    type: 'bar',
                  
                    data: data[6]
                }
                
            ]
        };



            graficoexhi3.setOption(option);

     }

    });

     //grafico de barras y lineal clientes censados por distribuidora
     $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/ClientesCensadosXDistribuidora",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var subgraficoexhi1 = echarts.init(document.getElementById('subgraficoexhi1'),'ThemeJC' );
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                },
            title: {
                    text: 'Clientes censados por division',
                    subtext: 'a nivel regional',
                },
            tooltip: {
                trigger: 'axis',
                axisPointer: {            
                    type: 'shadow'
                }
            },
            legend: {
                data: ['No Censados','Censados','% Avance']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: data[0],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value'
                },
                {
                   
                    type: 'value',
                    name: '% Avance',
                    min: 0,
                    max: 100,
                    interval: 10,
                    axisLabel: {
                        formatter: '{value} %'
                    }
                }
            ],
            series: [
                
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'Censados',
                    type: 'bar',
                   
                    data: data[1]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'No Censados',
                    type: 'bar',
                  
                    data: data[2]
                },
                {
                   
                    name: '% Avance',
                    type: 'line',
                    yAxisIndex: 1,
                    data: data[3]
                }
                
            ]
        };





            subgraficoexhi1.setOption(option);

        }
    });

    //Grafico De barras total exhibidores colocados
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/SumatoriaExhibidor",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
 
        var graficoexhi4 = echarts.init(document.getElementById('graficoexhi4'),'ThemeJC');
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                },
                
                title: {
                    text: 'Total Exhibidores colocados',
                    subtext: 'a nivel regional'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data: ['Total']
                  },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value',
                },
                yAxis: {
                    type: 'category',
                    data: data.NombreExhibidor
                },
                series: [
                    {
                        label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                        name: 'Total',
                        type: 'bar',
                        data: data.Total
                    },

                ]
                };

            
          
            graficoexhi4.setOption(option);

      
        
        }
    });

    //grafico de barras y CLIENTES NO ENCONTRADOS CERRADOS Y NO DEJO ENTRAR nivel regional
     $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/ClientesCensadosNDE_NSET_EC",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
        var subgraficoexhi2 = echarts.init(document.getElementById('subgraficoexhi2'),'ThemeJC' );
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                },
          
            title: {
                    text: 'Clientes  no encuestados',
                    subtext: 'a nivel regional',
                },
            tooltip: {
                trigger: 'axis',
                axisPointer: {            
                    type: 'shadow'
                }
            },
            legend: {
                left: "58%",
                data: ['CLIENTE NO DEJO ENTRAR','NO SE ENCONTRO TIENDA/PULPERIA','ESTABA CERRADO']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: data[0],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'CLIENTE NO DEJO ENTRAR',
                    type: 'bar',
                   
                    data: data[1]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'NO SE ENCONTRO TIENDA/PULPERIA',
                    type: 'bar',
                  
                    data: data[2]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#A82FAA'
                            }
                        },
                    name: 'ESTABA CERRADO',
                    type: 'bar',
                  
                    data: data[3]
                }
                
            ]
        };

        subgraficoexhi2.setOption(option);

        }
    });

   

                    
});

$("#txtfiltrocensados").change( function (){

    var parametro=$("#txtfiltrocensados").val();
        //grafico de barras y lineal clientes censados por distribuidora
        $.ajax({
            url:"<?php echo base_url();?>index.php/Informes/ClientesCensadosXDistribuidoraChange",
            method:"POST", 
            data:{parametro:parametro},
            dataType:"JSON",
            
                
        
            success:function(data){
                var subgraficoexhi1 = echarts.init(document.getElementById('subgraficoexhi1'),'ThemeJC' );
                
                option = {
                    toolbox: {
                            show: true,
                                feature: {
                                    dataView: {
                                        title: 'Datos',
                                        readOnly: false
                                    },
                                    saveAsImage: {
                                    title: 'Descargar'
                                    },
                                    
                                }
                        },
                    title: {
                            text: 'Clientes censados por division',
                            subtext: 'a nivel regional',
                        },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {            
                            type: 'shadow'
                        }
                    },
                    legend: {
                        data: ['No Censados','Censados','% Avance']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: [
                        {
                            type: 'category',
                            data: data[0],
                            axisTick: {
                                alignWithLabel: true
                            }
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value'
                        },
                        {
                        
                            type: 'value',
                            name: '% Avance',
                            min: 0,
                            max: 100,
                            interval: 10,
                            axisLabel: {
                                formatter: '{value} %'
                            }
                        }
                    ],
                    series: [
                        
                        {
                            label: {
                                    normal: {
                                        position: 'top',
                                        show: true,
                                        color: '#3346FF'
                                    }
                                },
                            name: 'Censados',
                            type: 'bar',
                        
                            data: data[1]
                        },
                        {
                            label: {
                                    normal: {
                                        position: 'top',
                                        show: true,
                                        color: '#FFF333'
                                    }
                                },
                            name: 'No Censados',
                            type: 'bar',
                        
                            data: data[2]
                        },
                        {
                        
                            name: '% Avance',
                            type: 'line',
                            yAxisIndex: 1,
                            data: data[3]
                        }
                        
                    ]
                };
                subgraficoexhi1.setOption(option);

                }
            });
});

$("#txtfiltronoencuestados").change(function (){

    var parametro=$("#txtfiltronoencuestados").val();
   
     //grafico de barras y CLIENTES NO ENCONTRADOS CERRADOS Y NO DEJO ENTRAR nivel regional
     $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/ClientesCensadosNDE_NSET_ECxDivisionchange",
      method:"POST", 
      data:{parametro:parametro},
      dataType:"JSON",
      
        
   
      success:function(data){
        var subgraficoexhi3 = echarts.init(document.getElementById('subgraficoexhi2'),'ThemeJC' );
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                },
          
            title: {
                    text: 'Clientes  no encuestados',
                    subtext: 'a nivel regional',
                },
            tooltip: {
                trigger: 'axis',
                axisPointer: {            
                    type: 'shadow'
                }
            },
            legend: {
                left: "58%",
                data: ['CLIENTE NO DEJO ENTRAR','NO SE ENCONTRO TIENDA/PULPERIA','ESTABA CERRADO']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: data[0],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'CLIENTE NO DEJO ENTRAR',
                    type: 'bar',
                   
                    data: data[1]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'NO SE ENCONTRO TIENDA/PULPERIA',
                    type: 'bar',
                  
                    data: data[2]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#A82FAA'
                            }
                        },
                    name: 'ESTABA CERRADO',
                    type: 'bar',
                  
                    data: data[3]
                }
                
            ]
        };

        subgraficoexhi3.setOption(option);

        }
    });
});

$("#txtfiltroobservacion").change(function (){

    var parametro = $("#txtfiltroobservacion").val();
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/PosicionExhibidorChange",
      method:"POST", 
      data: {parametro:parametro},
      dataType:"JSON",
      
        
   
      success:function(data){
        var graficoexhi3 = echarts.init(document.getElementById('graficoexhi3') ,'ThemeJC');
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            magicType: {
                                title: {
                                    line: "Linea",
                                    bar: "Barras"
                                },
                                
                                type: ["line", "bar"]
                            },
                            
                        }
                },
          
            title: {
                    text: 'Observacion Exhibidor',
                    subtext: 'a nivel regional',
                },
            tooltip: {
                trigger: 'axis',
                axisPointer: {            
                    type: 'shadow'
                }
            },
            legend: {
                left: "58%",
                data: ['VISIBLE Y ACCESIBLE','MAL UBICADO','INVADIDO','NECESITA REPARACION','DESECHADO O GUARDADO POR EL CLIENTE','RETIRADO DEL NEGOCIO']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: data[0],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
               
            ],
            yAxis: [
               
                {
                    type: 'value'
                }
            ],
            series: [
                
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'VISIBLE Y ACCESIBLE',
                    type: 'bar',
                   
                    data: data[1]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'MAL UBICADO',
                    type: 'bar',
                   
                  
                    data: data[2]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#A82FAA'
                            }
                        },
                    name: 'INVADIDO',
                    type: 'bar',
                
                  
                    data: data[3]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#3346FF'
                            }
                        },
                    name: 'NECESITA REPARACION',
                    type: 'bar',
                  
                   
                    data: data[4]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                    name: 'DESECHADO O GUARDADO POR EL CLIENTE',
                    type: 'bar',
            
                  
                    data: data[5]
                },
                {
                    label: {
                            normal: {
                                position: 'top',
                                show: true,
                                color: '#A82FAA'
                            }
                        },
                    name: 'RETIRADO DEL NEGOCIO',
                    type: 'bar',
                  
                  
                    data: data[6]
                }
                
            ]
        };



            graficoexhi3.setOption(option);

     }

    });


});

$("#txtfiltrooexhibidorestotal").change(function(){

    var parametro = $("#txtfiltrooexhibidorestotal").val();
    //Grafico De barras total exhibidores colocados
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/SumatoriaExhibidorfiltro",
      method:"POST", 
      data: {parametro:parametro},
      dataType:"JSON",

      success:function(data){
 
        var graficoexhi4 = echarts.init(document.getElementById('graficoexhi4'),'ThemeJC');
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                },
                
                title: {
                    text: 'Total Exhibidores colocados',
                    subtext: 'a nivel regional'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data: ['Total']
                  },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value',
                },
                yAxis: {
                    type: 'category',
                    data: data.NombreExhibidor
                },
                series: [
                    {
                        label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                        name: 'Total',
                        type: 'bar',
                        data: data.Total
                    },

                ]
                };

            
          
            graficoexhi4.setOption(option);

      
        
        }
    });
});

$("#txtfiltrooexhibidorestotalxdivision").change(function(){

    var parametro = $("#txtfiltrooexhibidorestotalxdivision").val();

    //Grafico De barras total exhibidores colocados
    $.ajax({
    url:"<?php echo base_url();?>index.php/Informes/SumatoriaExhibidorfiltroxDivision",
    method:"POST", 
    data: {parametro:parametro},
    dataType:"JSON",

    success:function(data){

        var graficoexhi4 = echarts.init(document.getElementById('graficoexhi4'),'ThemeJC');
        
        option = {
            toolbox: {
                    show: true,
                        feature: {
                            dataView: {
                                title: 'Datos',
                                readOnly: false
                            },
                            saveAsImage: {
                            title: 'Descargar'
                            },
                            
                        }
                },
                
                title: {
                    text: 'Total Exhibidores colocados',
                    subtext: 'a nivel regional'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data: ['Total']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value',
                },
                yAxis: {
                    type: 'category',
                    data: data.NombreExhibidor
                },
                series: [
                    {
                        label: {
                            normal: {
                                position: 'right',
                                show: true,
                                color: '#FFF333'
                            }
                        },
                        name: 'Total',
                        type: 'bar',
                        data: data.Total
                    },

                ]
                };

            
        
            graficoexhi4.setOption(option);

    
        
        }
    });
});


function GenerarInformeCensoexhibidores(){
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/GenerarInformeCensoexhibidores",
      method:"POST", 
      dataType:"JSON",
      beforeSend: function(){
        $("#cargando").css("display", "flex");
        $('#censoexhibidores').attr("disabled","disabled");

      },
      success:function(data){
        $("#cargando").css("display", "none");
          if(data==1){
            window.open('<?php echo base_url('Uploads/Informes/Plantillas/Data.csv')?>');
            $('#plantillacensoexhibidores').click();


          }else{
              alert("Algo salio mal");
          }
      
      }
    });

}

        //Recargar Pagina
    function reload(){
        setTimeout(function() { location.reload();  }, 1000);
    }

    // Funcion para cargar datos.
    function _(el){
        return document.getElementById(el);
    }

    /************************Actualizar Datos de Venta************************/

        //Verificacion de campos 
        function subir_datos(){
                    
            var Informe;
                                    
                Informe = document.getElementById('txtinforme').value;
                        
            
                if(document.getElementById("excel_file").files.length == 0 || Informe.length == 1 ){
                    swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                    return false; 
            
                                                
                }else{
            
                    uploadFile();
                            
                }
                            
        }

        //subir archivo de datos de venta
        function uploadFile(){

            document.getElementById('barra_estado').style.display = 'block';

            var file = _("excel_file").files[0];

            formdata = new FormData();

            formdata.append("txtinforme", $("#txtinforme").val());
            formdata.append("excel_file", file);

            var ajax = new XMLHttpRequest();

            ajax.upload.addEventListener("progress", progressHandler, false);
            ajax.addEventListener("load", completeHandler, false);
            ajax.addEventListener("error", errorHandler, false);
            ajax.addEventListener("abort", abortHandler, false);
            ajax.open("POST", '<?php echo base_url('index.php/Informes/Actualizar_Informe')?>');
            ajax.send(formdata);
        }
        //barra de progreso
        function progressHandler(event){
                            
            if(event.loaded==event.total){
                _("loaded_n_total").innerHTML = "Registrando Datos.... Por Favor Espere";
            }else{
                _("loaded_n_total").innerHTML = "Subiendo "+event.loaded+"  de "+event.total + " bytes";
            }
            var percent = (event.loaded / event.total) * 100;
            _("progressBar").value = Math.round(percent);
            _("status").innerHTML = Math.round(percent)+"%";
        }
        // al completar la subida de datos
        function completeHandler(event){

            _("status").innerHTML = event.target.responseText;
            _("progressBar").value = 100;

            document.getElementById('loaded_n_total').style.display = 'none';
            document.getElementById('loader').style.display = 'none';
            document.getElementById('actualizar').style.display = 'none';

            document.getElementById("form_Informes").reset();
            document.ready = document.getElementById("txtinforme").value = '';

        }
        //si da error al cargar datos
        function errorHandler(event){
        
            _("status").innerHTML = "Algo salio mal...";
        }
        //si se aborta la carga de datos
        function abortHandler(event){
            _("status").innerHTML = "Operacion Cancelada";
        }

    /**************************************************************************/


    /************************Realizar carga de clientes************************/

        //Validacion de campos , que no esten vacios
        function agregar_clientes(){

                    
            if(document.getElementById("excel_file_client").files.length == 0 ){
                swal.fire({title:'Adjunte un archivo para cargar', type: 'error'});
                return false; 

                                                
            }else{
            
                UploadClientes();
                            
            }
                        
        }
        //Realizar carga de clientes y guardar archivo
        function UploadClientes(){

            document.getElementById('barra_estado_cliente').style.display = 'block';

            var file = _("excel_file_client").files[0];

            formdata = new FormData();


            formdata.append("excel_file_client", file);

            var ajax = new XMLHttpRequest();

            ajax.upload.addEventListener("progress", progressHandlerCliente, false);
            ajax.addEventListener("load", completeHandlerCliente, false);
            ajax.addEventListener("error", errorHandlerClientes, false);
            ajax.addEventListener("abort", abortHandlerClientes, false);
            ajax.open("POST", '<?php echo base_url('index.php/Informes/Agregar_clientes')?>');
            ajax.send(formdata);
            


        }

        //progreso de barra de estado
        function progressHandlerCliente(event){
                            
            if(event.loaded==event.total){
                _("loaded_n_total_Clientes").innerHTML = "Registrando Datos.... Por Favor Espere";
            }else{
                _("loaded_n_total_Clientes").innerHTML = "Subiendo "+event.loaded+"  de "+event.total + " bytes";
            }

            var percent = (event.loaded / event.total) * 100;

            _("progressBar_Cliente").value = Math.round(percent);
            _("status_Clientes").innerHTML = Math.round(percent)+"%";
        }

        //al finalizar la subida de datos
        function completeHandlerCliente(event){

            _("status_Clientes").innerHTML = event.target.responseText;
            _("progressBar_Cliente").value = 100;

            document.getElementById('loaded_n_total_Clientes').style.display = 'none';
            document.getElementById('loader_clientes').style.display = 'none';
            document.getElementById('agregar_clientes').style.display = 'none';

            document.getElementById("form_clientes").reset();

        }
        //si da error al cargar los datos
        function errorHandlerClientes(event){
        
            _("status_Clientes").innerHTML = "Algo salio mal...";
        }
        //si se cancela el proceso
        function abortHandlerClientes(event){
            _("status_Clientes").innerHTML = "Operacion Cancelada";
        }

   

    /**************************************************************************/

    
    /************************Realizar carga de exhibidores facturados************************/

        //Validacion de campos , que no esten vacios de exhibidores
        function ValidacionExhibidores(){

                            
            if(document.getElementById("excel_file_exhibidores").files.length == 0 ){
                swal.fire({title:'Adjunte un archivo para cargar', type: 'error'});
                return false; 

                                                
            }else{

                UploadExhibidores();
                            
            }
                    
        }
                
        //Realizar carga de exhibidores y guardar archivo
        function UploadExhibidores(){

            document.getElementById('barra_estado_exhibidores').style.display = 'block';

            var file = _("excel_file_exhibidores").files[0];

            formdata = new FormData();


            formdata.append("excel_file_exhibidores", file);

            var ajax = new XMLHttpRequest();

            ajax.upload.addEventListener("progress", progressHandlerExhibidores, false);
            ajax.addEventListener("load", completeHandlerExhibidores, false);
            ajax.addEventListener("error", errorHandlerExhibidores, false);
            ajax.addEventListener("abort", abortHandlerExhibidores, false);
            ajax.open("POST", '<?php echo base_url('index.php/Informes/addExhibidores')?>');
            ajax.send(formdata);

        }

        //progreso de barra de estado
        function progressHandlerExhibidores(event){
                        
            if(event.loaded==event.total){
                _("loaded_n_total_exhibidores").innerHTML = "Registrando Datos.... Por Favor Espere";
            }else{
                _("loaded_n_total_exhibidores").innerHTML = "Subiendo "+event.loaded+"  de "+event.total + " bytes";
            }

            var percent = (event.loaded / event.total) * 100;

            _("progressBar_exhibidores").value = Math.round(percent);
            _("status_exhibidores").innerHTML = Math.round(percent)+"%";
        }

        //al finalizar la subida de datos
        function completeHandlerExhibidores(event){

            _("status_exhibidores").innerHTML = event.target.responseText;
            _("progressBar_exhibidores").value = 100;

            document.getElementById('loaded_n_total_exhibidores').style.display = 'none';
            document.getElementById('loader_exhibidores').style.display = 'none';
            document.getElementById('addexhibidores').style.display = 'none';

            document.getElementById("form_exhibidores").reset();

        }

        //si da error al cargar los datos
        function errorHandlerExhibidores(event){
            _("status_exhibidores").innerHTML = "Algo salio mal...";
        }
                
        //si se cancela el proceso
        function abortHandlerExhibidores(event){
            _("status_exhibidores").innerHTML = "Operacion Cancelada";
        }



/**************************************************************************/

    

        $(document).on('click', '.upload-field', function(){
            var file = $(this).parent().parent().parent().find('.input-file');
            file.trigger('click');
        });

        $(document).on('change', '.input-file', function(){
            $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
        });




</script>
</html>