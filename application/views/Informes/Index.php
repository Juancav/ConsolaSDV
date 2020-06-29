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

            <div class="form-row" style="margin-bottom:30px; margin-left:70px;">

                <!-- Card Informe venta diaria. -->
                <div class="card" style="width:320px; height:560px; margin-right:20px; margin-bottom:20px;">
                            <img src="https://3.bp.blogspot.com/-X24aRlnk89Q/Vg6xCpICQEI/AAAAAAAAFAU/Pqm7ua8Cm5k/s1600/estadistica2.jpg" class="card-img-top" alt="...">
                            
                            <div class="card-body">
                                <h4 class="card-title">Venta Diaria</h4>
                                <p class="card-text">Informacion contenida: Venta Bocadeli por distribuidora , Venta Bocadeli por dia , Productos Top ,Top ruta mayor venta</p>
                            </div>
                            
                            <div class="card-footer" style="bottom:0;">

                            <div class="card-text" style="float:left;  color: #818182;" id="fecha_actualizacion">

                            </div>

                            <div style="float:right; margin-right:-10px;">
                                    <span ><a href="#"  data-toggle="modal" data-target="#exampleModalCenter">Actualizar</a></span>
                                    <button class="btn btn-outline-primary" data-toggle="modal" data-target="#VentaDiaria">Ver</button>
                            </div>
                            </div> 

                </div>
                    <button class="btn btn-primary" data-toggle="modal" data-target="#agregarclientes">  Agregar Clientes  </button>
            </div>

        </section>
            
        <!-- Modal  Informe De Venta-->
        <div class="modal fade" id="VentaDiaria" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered ">
                            <div class="modal-content " >
                            <div class="modal-header" style="height: 75px;">
                                <h2 class="modal-title " id="exampleModalLabel" style="font-size:26px; margin-top:5px;"><i class="far fa-chart-bar"></i> Venta Diaria</h2>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body " style="">

                    
                                    <!-- Grafico 1 -->
                                    <div id="grafico1" class="mx-auto" style="height:500px; width:696px; float:left; " >

                                    </div>

                                    <!-- Grafico 2 -->
                                    <div id="grafico2" class="mx-auto" style="height:500px; width:650px; float:right; ">

                                    </div>
                                    <br>
                                    <!-- Grafico 3 -->
                                    <div id="grafico3" style="height:500px; width:1161px; margin-top:500px;" >
                                    
                                    </div>

                                    <!-- Grafico 4 -->
                                    <div id="grafico4" style="height:500px; width:1161px; ">

                                    </div>
                            

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cerrar</button>
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
                                    

                                    <form  id='form_Informes' name='form_Informes' >
                                        
                                        <div class="container">

                                            <div class="form-group">

                                                <div class="">

                                                    <label style="font-size: 16px;">Informe</label>
                                                        <select class="form-control" Id="txtinforme" name="txtinforme">
                                                            <option  selected value="">Selecionar Informe</option>
                                                            <option value="VENTA_DIARIA">Venta Diaria</option>
                                                            <option value="EXHIBIDORES">Exhibidores</option>
                                                        </select><br>

                                                        

                                                    <label style="font-size: 16px;">Seleccionar Archivo</label>
                                                    <div class="">
                                                        <input type="file" name="excel_file" id="excel_file" class="input-file">
                                                        <div class="input-group col-xs-12">
                                                            <input type="text" class="form-control" disabled placeholder="Subir Archivo .csv">
                                                            <span class="input-group-btn">
                                                            <button class="upload-field btn btn-primary" type="button"><i class="fa fa-search"></i> Seleccionar </button>
                                                            </span>
                                                        </div>
                                                    </div>

                                                </div><br>

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
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    

                                    <form  id='form_clientes' name='form_clientes' >
                                        
                                        <div class="container">

                                            <div class="form-group">

                                                <div class="">

                                                                                                      

                                                    <label style="font-size: 16px;">Seleccionar Archivo</label>
                                                    <div class="">
                                                        <input type="file" name="excel_file_client" id="excel_file_client" class="input-file">
                                                        <div class="input-group col-xs-12">
                                                            <input type="text" class="form-control" disabled placeholder="Subir Archivo .csv">
                                                            <span class="input-group-btn">
                                                            <button class="upload-field btn btn-primary" type="button"><i class="fa fa-search"></i> Seleccionar </button>
                                                            </span>
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
    
    // Grafico De Barras Venta Por Dia
    $.ajax({
      url:"<?php echo base_url();?>index.php/Informes/VentaXDia",
      method:"POST", 
      dataType:"JSON",
      
        
   
      success:function(data){
       
        var grafico1 = echarts.init(document.getElementById('grafico1'));
        
        option = {
            color: ['#3398DB'],
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
       
        var grafico2 = echarts.init(document.getElementById('grafico2'));
        
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
                    data: data.Total
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
 
        var grafico3 = echarts.init(document.getElementById('grafico4'));
        
        option = {
            title: {
                text: 'Venta Por Familia',
                subtext: 'Venta representada en dolares',
                left: 'Left'
            },
            
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                orient: 'vertical',
                left: 'right',
            },
            series: [
                {
                    name: 'Total',
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    data:data,
                    
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
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
 
        var grafico4 = echarts.init(document.getElementById('grafico3'));
        
        option = {
            title: {
                text: 'Venta Por Distribuidora',
                subtext: 'Venta representada en dolares',
                left: 'Left'
            },
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                orient: 'vertical',
                 left: 'right',
            },
            series: [
                {
                    name: 'Total',
                    
                    type: 'pie',
                    radius: '55%',
                    label: {
                        formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                        
                        backgroundColor: '#eee',
                        borderColor: '#aaa',
                        borderWidth: 1,
                        borderRadius: 4,
                        shadowBlur:3,
                        shadowOffsetX: 2,
                        shadowOffsetY: 2,
                        shadowColor: '#999',
                        padding: [0, 2],
                        rich: {
                            a: {
                                color: '#999',
                                lineHeight: 22,
                                align: 'center'
                            },
                            hr: {
                                borderColor: '#aaa',
                                width: '100%',
                                borderWidth: 0.5,
                                height: 0
                            },
                            b: {
                                fontSize: 16,
                                lineHeight: 33
                            },
                            per: {
                                color: '#eee',
                                backgroundColor: '#334455',
                                padding: [2, 4],
                                borderRadius: 2
                            }
                        }
                    },
                    center: ['50%', '60%'],
                    data:data,
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };

            
          
        grafico4.setOption(option);

      
        
        }
    });

 

                    
    });
            
    // Funcion para cargar datos.
    function _(el){
        return document.getElementById(el);
    }

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

    function completeHandler(event){

        _("status").innerHTML = event.target.responseText;
        _("progressBar").value = 100;

        document.getElementById('loaded_n_total').style.display = 'none';
        document.getElementById('loader').style.display = 'none';
        document.getElementById('actualizar').style.display = 'none';

        document.getElementById("form_Informes").reset();
        document.ready = document.getElementById("txtinforme").value = '';

    }

    function errorHandler(event){
       
        _("status").innerHTML = "Algo salio mal...";
    }
    
    function abortHandler(event){
        _("status").innerHTML = "Operacion Cancelada";
    }


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

    function completeHandlerCliente(event){

        _("status_Clientes").innerHTML = event.target.responseText;
        _("progressBar_Cliente").value = 100;

        document.getElementById('loaded_n_total_Clientes').style.display = 'none';
        document.getElementById('loader_clientes').style.display = 'none';
        document.getElementById('agregar_clientes').style.display = 'none';

        document.getElementById("form_clientes").reset();

    }

    function errorHandlerClientes(event){
       
       _("status_Clientes").innerHTML = "Algo salio mal...";
   }
   
   function abortHandlerClientes(event){
       _("status_Clientes").innerHTML = "Operacion Cancelada";
   }

    function agregar_clientes(){

        
        if(document.getElementById("excel_file_client").files.length == 0 ){
            swal.fire({title:'Adjunte un archivo para cargar', type: 'error'});
            return false; 
        
                                            
        }else{
         
            UploadClientes();
                        
        }
                        
    }

    function reload(){
        setTimeout(
     function() 
     {
        location.reload();
     }, 1000);
    }

    $(document).on('click', '.upload-field', function(){
        var file = $(this).parent().parent().parent().find('.input-file');
        file.trigger('click');
    });

    $(document).on('change', '.input-file', function(){
        $(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
    });




</script>
</html>