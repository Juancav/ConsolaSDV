<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/MarcacionesImp.css')?>">

      <!-- Manifest JS-->
      <link rel="manifest" href="<?php echo base_url('Public/js/Marcaciones_impulso/manifest.json')?>">

        <!--Icon page-->
        <link href="<?php echo base_url('Public/Img/favicon.png')?>" rel="icon">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <!--sweet Alert-->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

        <!--jsPDF-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>

        <!-- Echarts Graficas -->
        <script src="https://cdn.jsdelivr.net/npm/echarts@4.7.0/dist/echarts.min.js"></script>

        <!--Font Awesome-->
        <script src="https://kit.fontawesome.com/74f9e3337a.js" ></script>

        <!--Jquery And Bootstrap-->
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Impulso</title>
</head>
<body>
  

<div class="header" style="position:fixed;">
    
    <div>
        <?php echo strtoupper($this->session->userdata('Nombre'))?>
       
    </div>
    <div class="spinner-border" role="status" style="display:none;" id="esperando">
          <span class="sr-only">Cargando...</span>
        </div>
    <div >
        <button type="button" class="btn btn-primary" style="display:none;"><i class="fas fa-utensils"></i></button>
        <button type="button" class="btn btn-light" style="display:"><i class="fas fa-utensils"></i></button>

        <button type="button" class="btn btn-primary" style="display:"><i class="fas fa-walking"></i></button>
        <button type="button" class="btn btn-light" style="display:none"><i class="fas fa-walking"></i></button>

        <button type="button" class="btn btn-primary" style="display:none"><i class="fas fa-shipping-fast"></i> </button>
        <button type="button" class="btn btn-light" style="display:"><i class="fas fa-shipping-fast"></i> </button>
        
        <a type="button" class="btn btn-danger" href="Logout" ><i class="fa fa-power-off"></i></a> 
        
    </div>
    
</div>

 <div class="section" >

  <div id="formularioinicio" style="display:none">

 
  <form  id="form-impulso"  enctype="multipart/form-data" style="margin-top:75px;">

      <h5> <i class="fas fa-pencil-alt"></i>  Inicio de actividades</h5>
      <div class="">
      
        <div class="form-group ">
          <label for="exampleFormControlSelect1">Cliente</label>
          <select class="form-control" id="txtclientes" name="txtclientes">

          </select>
        </div>

        <div class="form-group ">
          <label for="exampleFormControlSelect1">Actividades</label>
          <select class="form-control" id="txtactividades" name="txtactividades">
          
          </select>
        </div>
      </div>
      <div class="form-row" style="display:flex; justify-content:space-around; align-items:flex-end;">
        <div class="col">
          <label for="exampleFormControlSelect1">Latitud</label>
          <input type="text" class="form-control" id="txtlat" name="txtlat">
        </div>

        <div class="col">
          <label for="exampleFormControlSelect1">Longitud</label>
          <input type="text" class="form-control" id="txtlong" name="txtlong">
        </div>
        <button type="button" class="btn btn-primary" id="btn-geo" ><i class="fas fa-map-marker-alt"></i></button>
      </div>

      <div style="text-align:center;"><br><br>
        <img src="https://traigotucompra.com/img/no-image.png" alt="" width="250px" height="250px" id="Img"><br><br>

        <label for="foto_frontal"> Fotografia </label>
          <div class="form-group custom-file">
            <input type="file" class="custom-file-input" id="Img_inicio" name="Img_inicio" accept="image/*" capture="camera" >
            <label class="custom-file-label" for="customFile">Fotografia </label>
          </div><br><br>
      </div>

      <button type="submit" class="btn btn-primary col-md-12" id="btnregistrarimp" name="btnregistrarimp">Iniciar Actividad</button>
  </form>
  </div>

  <div id="formulariofin" style="display:none">
    <form  id="form-impulso-fin"  enctype="multipart/form-data" style="margin-top:75px;">

      <h5> <i class="fas fa-pencil-alt"></i> Finalizacion de actividades</h5>
      <div class="">

        <div class="form-group ">
          <label for="exampleFormControlSelect1">Cliente</label>
          <select class="form-control" id="txtclientesfin" name="txtclientesfin">

          </select>
        </div>

      </div>
      <div class="form-row" style="display:flex; justify-content:space-around; align-items:flex-end;">
        <div class="col">
          <label for="exampleFormControlSelect1">Latitud</label>
          <input type="text" class="form-control" id="txtlatfin" name="txtlatfin">
        </div>

        <div class="col">
          <label for="exampleFormControlSelect1">Longitud</label>
          <input type="text" class="form-control" id="txtlongfin" name="txtlongfin">
        </div>
        <button type="button" class="btn btn-primary" id="btn-geofin" ><i class="fas fa-map-marker-alt"></i></button>
      </div>

      <div style="text-align:center;"><br><br>
        <img src="https://traigotucompra.com/img/no-image.png" alt="" width="250px" height="250px" id="Imgfin"><br><br>

        <label for="foto_frontal"> Fotografia </label>
          <div class="form-group custom-file">
            <input type="file" class="custom-file-input" id="Img_fin" name="Img_fin" accept="image/*" capture="camera" >
            <label class="custom-file-label" for="customFile">Fotografia </label>
          </div><br><br>
      </div>

      <button type="submit" class="btn btn-warning col-md-12" id="btnfinalizaractividad" name="btnfinalizaractividad">Finalizar Actividad</button>
    </form>
  </div>

 </div>
</body>
<br>
  <!--<button type="button" class="btn btn-warning col-md-12" onclick="pruebaimpresion()" id="impresion">Prueba Impresion</button>-->
<script type="text/javascript">

      function pruebaimpresion(){
        
        let filters = [];

        let options = {};
       
          options.acceptAllDevices = true;
  

          console.log('Requesting Bluetooth Device...');
          console.log('with ' + JSON.stringify(options));
          navigator.bluetooth.requestDevice(options)
          .then(device => {
            console.log('> Name:             ' + device.name);
            console.log('> Id:               ' + device.id);
            console.log('> Connected:        ' + device.gatt.connected);
          })
          .catch(error => {
            console.log('Argh! ' + error);
          });
       
        window.print();
      }

      function Clienteiniciado(){
         //cargar clientes iniciado
         $.ajax({
            url:"<?php echo base_url();?>index.php/Marcacion_impulso/Get_clientes_iniciado",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtclientesfin').html(data);
        
            }
        });
      }

    $(document).ready(function() {

     
        //Verificacion de actividades
        $.ajax({
            url:"<?php echo base_url();?>index.php/Marcacion_impulso/Verificacion_Actividades",
            method:"POST",
            success:function(data)
            {
              if(data > 0){
                $("#formulariofin").css("display","block")
                Clienteiniciado();
              }else{
                $("#formularioinicio").css("display","block")
              }
               
              
            
        
            }
        });


      // Previsualizacion de imagen tomado inicio actividad
      function readURL1(input) {
              if (input.files && input.files[0]) {
              var reader = new FileReader();
              reader.onload = function(e) {
                  // Asignamos el atributo src a la tag de imagen
                  $('#Img').attr('src', e.target.result);
              }
              reader.readAsDataURL(input.files[0]);
              }
      }

          // Coloca la imagen insertada frontal
          $("#Img_inicio").change(function() {
              readURL1(this);
          });

       // Previsualizacion de imagen de finalizacion de actividad
       function readURL2(input) {
              if (input.files && input.files[0]) {
              var reader = new FileReader();
              reader.onload = function(e) {
                  // Asignamos el atributo src a la tag de imagen
                  $('#Imgfin').attr('src', e.target.result);
              }
              reader.readAsDataURL(input.files[0]);
              }
       }

          // Coloca la imagen insertada frontal
          $("#Img_fin").change(function() {
              readURL2(this);
         });

      //Obtener geolocalizacion
      $("#btn-geo").click(function () { //user clicks button
          if ("geolocation" in navigator){ //check geolocation available 
              //try to get user current location using getCurrentPosition() method
              navigator.geolocation.getCurrentPosition(function(position){ 
                      $("#txtlat").val(position.coords.latitude);
                      $("#txtlong").val(position.coords.longitude);
                  });
          }else{
              console.log("Browser doesn't support geolocation!");
          }
      });

      //Obtener geolocalizacion
      $("#btn-geofin").click(function () { //user clicks button
          if ("geolocation" in navigator){ //check geolocation available 
              //try to get user current location using getCurrentPosition() method
              navigator.geolocation.getCurrentPosition(function(position){ 
                      $("#txtlatfin").val(position.coords.latitude);
                      $("#txtlongfin").val(position.coords.longitude);
                  });
          }else{
              console.log("Browser doesn't support geolocation!");
          }
      });

        //cargar actividades
        $.ajax({
            url:"<?php echo base_url();?>index.php/Marcacion_impulso/Get_actividades",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtactividades').html(data);
        
            }
        });

        //cargar clientes
        $.ajax({
            url:"<?php echo base_url();?>index.php/Marcacion_impulso/Get_clientes",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtclientes').html(data);
        
            }
        });

        //Inicio de actividades impulsadoras
        $("#form-impulso").on("submit", function(e){

          var data = $("#form-impulso").serialize();
          $.ajax({
            type:"POST",
            url:"<?php echo base_url();?>index.php/Marcacion_impulso/registrar_actividad",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            beforeSend: function(){
                $("#esperando").css("display","block")
                $('#btnregistrarimp').attr("disabled","disabled");
                $('#form-impulso').css("opacity","0.2");
            },
            success:function(data)
            {
             
              $("#esperando").css("display","none");

              if(data == 1){
                
                            Swal.fire({
                                icon: 'success',
                                title: 'Actividad iniciada correctamente',
                                showConfirmButton: false,
                                timer: 2000
                                }).then((result) => {
                                /* Read more about handling dismissals below */
                                if (result.dismiss === Swal.DismissReason.timer) {
                                   

                                    location.reload();
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
          return false;

        });

        
        //Inicio de finalizacion de actividades impulsadoras
        $("#form-impulso-fin").on("submit", function(e){

          var data = $("#form-impulso-fin").serialize();
          $.ajax({
            type:"POST",
            url:"<?php echo base_url();?>index.php/Marcacion_impulso/finalizar_actividad",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            beforeSend: function(){
                $("#esperando").css("display","block")
                $('#btnfinalizaractividad').attr("disabled","disabled");
                $('#form-impulso-fin').css("opacity","0.2");
            },
            success:function(data)
            {
            
              $("#esperando").css("display","none")
              if(data == 1){
                
                            Swal.fire({
                                icon: 'success',
                                title: 'Registro completado correctamente',
                                showConfirmButton: false,
                                timer: 2000
                                }).then((result) => {
                                /* Read more about handling dismissals below */
                                if (result.dismiss === Swal.DismissReason.timer) {
                                  

                                    location.reload();
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
          return false;

          });

    });

   
</script>
</html>