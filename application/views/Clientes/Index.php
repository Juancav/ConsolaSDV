<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Accesorios</title>
   <!--Icon page-->
   <link href="Public/Img/favicon.png" rel="icon">

    <!--sweet Alert-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


</head>

<body>

<div class="page-wrapper chiller-theme toggled">
  <main class="page-content">
    <section id="hero" class="wow fadeIn">
      <h1>Clientes</h1><br>
    <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">

    <div style="display:flex;">
    <div>
    <button class="btn btn-primary" id="EscribirArchivo" onclick="EscribirDatos()"> Crear Archivo de Clientes</button>
    <button class="btn btn-primary" id="EscribirArchivo1" onclick="EscribirUsuarios()"> Crear Archivo de Usuarios</button>
    <button class="btn btn-primary" id="EscribirArchivo2" onclick="EscribirExhibidores()"> Crear Archivo de Exhibidores</button>
        <!-- Export Data --> 
      <a href="<?php echo base_url('Uploads/Informes/Plantillas/Data.csv')?>" type="button" class="btn btn-success" id='plantilla'> Descargar Archivo </a>
    </div>
   
      <div id="cargando" style="display:none;">
        <img src="https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_800,h_600/https://codigofuente.io/wp-content/uploads/2018/09/progress.gif" width="90px" alt="Cargando Datos Por Favor Espere...">
      </div>
    </div>
   

    <div style=" justify-content:center; display:none; width:100%;" id="cargando2">
    
      <img src="https://www.demilked.com/magazine/wp-content/uploads/2016/06/gif-animations-replace-loading-screen-14.gif" width="50%" alt="Cargando Datos Por Favor Espere...">
    </div>
    </section>
  </main>
</div>
 <script>

  //Escribir en excel datos de todos los clientes
   function EscribirDatos(){

            $.ajax({
                    type: 'POST',
                    url: '<?php echo base_url('index.php/Clientes/ExportarCSV')?>',
                    contentType: false,
                    cache: false,
                    processData:false,
                    beforeSend: function(){
                      $("#cargando").css("display", "flex");
                      $("#cargando2").css("display", "flex");
                    
                        $('#EscribirArchivo').attr("disabled","disabled");

                    },
                    success: function(msg){
                     
                        if(msg = 1){
                          $('#cargando').hide();
                          $('#cargando2').hide();
                        
                            Swal.fire({
                                icon: 'success',
                                title: 'Se creo el archivo con exito',
                                showConfirmButton: false,
                                timer: 2000
                                }).then((result) => {
                                /* Read more about handling dismissals below */
                                if (result.dismiss === Swal.DismissReason.timer) {
                                  $('#plantilla').click();
                                
                                }
                                })

                                
                        }else{
                            const Toast = Swal.mixin({
                                toast: true,
                                position: 'top-end',
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                                onOpen: (toast) => {
                                    toast.addEventListener('mouseenter', Swal.stopTimer)
                                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                                }
                                })

                                Toast.fire({
                                icon: 'error',
                                title: 'Algo salio mal'
                            
                                }).then((result) => {
                                /* Read more about handling dismissals below */
                                if (result.dismiss === Swal.DismissReason.timer) {
                                    location.reload();
                                }
                                })

                        
                        }
                    
                    }
                });
    }

    //Escribir en excel datos de todos los clientes
   function EscribirUsuarios(){

$.ajax({
        type: 'POST',
        url: '<?php echo base_url('index.php/Clientes/Getusuarios')?>',
        contentType: false,
        cache: false,
        processData:false,
        beforeSend: function(){
          $("#cargando").css("display", "flex");
          $("#cargando2").css("display", "flex");
        
            $('#EscribirArchivo1').attr("disabled","disabled");

        },
        success: function(msg){
         
            if(msg = 1){
              $('#cargando').hide();
              $('#cargando2').hide();
            
                Swal.fire({
                    icon: 'success',
                    title: 'Se creo el archivo con exito',
                    showConfirmButton: false,
                    timer: 2000
                    }).then((result) => {
                    /* Read more about handling dismissals below */
                    if (result.dismiss === Swal.DismissReason.timer) {
                      $('#plantilla').click();
                    
                    }
                    })

                    
            }else{
                const Toast = Swal.mixin({
                    toast: true,
                    position: 'top-end',
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    onOpen: (toast) => {
                        toast.addEventListener('mouseenter', Swal.stopTimer)
                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                    }
                    })

                    Toast.fire({
                    icon: 'error',
                    title: 'Algo salio mal'
                
                    }).then((result) => {
                    /* Read more about handling dismissals below */
                    if (result.dismiss === Swal.DismissReason.timer) {
                        location.reload();
                    }
                    })

            
            }
        
        }
    });

    
}

 //Escribir en excel datos de todos los clientes
 function EscribirExhibidores(){

$.ajax({
        type: 'POST',
        url: '<?php echo base_url('index.php/Clientes/Getexhibidores')?>',
        contentType: false,
        cache: false,
        processData:false,
        beforeSend: function(){
          $("#cargando").css("display", "flex");
          $("#cargando2").css("display", "flex");
        
            $('#EscribirArchivo2').attr("disabled","disabled");

        },
        success: function(msg){
         
            if(msg = 1){
              $('#cargando').hide();
              $('#cargando2').hide();
            
                Swal.fire({
                    icon: 'success',
                    title: 'Se creo el archivo con exito',
                    showConfirmButton: false,
                    timer: 2000
                    }).then((result) => {
                    /* Read more about handling dismissals below */
                    if (result.dismiss === Swal.DismissReason.timer) {
                      $('#plantilla').click();
                    
                    }
                    })

                    
            }else{
                const Toast = Swal.mixin({
                    toast: true,
                    position: 'top-end',
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    onOpen: (toast) => {
                        toast.addEventListener('mouseenter', Swal.stopTimer)
                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                    }
                    })

                    Toast.fire({
                    icon: 'error',
                    title: 'Algo salio mal'
                
                    }).then((result) => {
                    /* Read more about handling dismissals below */
                    if (result.dismiss === Swal.DismissReason.timer) {
                        location.reload();
                    }
                    })

            
            }
        
        }
    });

    
}
 </script>

</body>
</html>