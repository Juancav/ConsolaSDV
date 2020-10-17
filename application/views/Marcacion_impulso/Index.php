<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/MarcacionesImp.css') ?>">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


  <!-- Manifest JS -->
  <link rel="manifest" href="<?php echo base_url('Public/Manifest/manifest.json') ?>">
  <script src="<?php echo base_url('Public/js/App.js') ?>"></script>

  <!--Icon page-->
  <link href="<?php echo base_url('Public/Img/favicon.png') ?>" rel="icon">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">


  <!--sweet Alert-->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

  <!--jsPDF-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>

  <!-- Echarts Graficas -->
  <script src="https://cdn.jsdelivr.net/npm/echarts@4.7.0/dist/echarts.min.js"></script>

  <!--Font Awesome-->
  <script src="https://kit.fontawesome.com/74f9e3337a.js"></script>

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
      <?php echo strtoupper($this->session->userdata('Nombre')) ?>

    </div>
    <div class="spinner-border" role="status" style="display:none;" id="esperando">
      <span class="sr-only">Cargando...</span>
    </div>
    <div style="display:flex;">
      <button type="button" class="btn btn-primary" style="display:none; margin-right:3px; " id="btnalmuerzoinicio" onclick="ClientesComodin('1077','14','INICIADA')"><i class="fas fa-utensils"></i></button> <!-- BOTON PARA INCIAR HORA DE ALMUERZO-->
      <button type="button" class="btn btn-light" style="display:none; margin-right:3px;" id="btnalmuerzofin" onclick="ClientesComodin('1077','14','FINALIZADA')"><i class="fas fa-utensils"></i></button><!-- BOTON PARA FINALIZAR HORA DE ALMUERZO-->

      <button type="button" class="btn btn-primary" style="display:none; margin-right:3px;" id="btnausenciainicio" onclick="ClientesComodin('1078','15','INICIADA')"><i class="fas fa-walking"></i></button><!-- BOTON PARA INCIAR AUSENCIA TEMPORAL-->
      <button type="button" class="btn btn-light" style="display:none; margin-right:3px;" id="btnausenciafin" onclick="ClientesComodin('1078','15','FINALIZADA')"><i class="fas fa-walking"></i></button><!-- BOTON PARA FINALIZAR AUSENCIA TEMPORAL-->

      <button type="button" class="btn btn-primary" style="display:none; margin-right:3px;" id="btndesplazamientoinicio" onclick="ClientesComodin('1079','16','INICIADA')"><i class="fas fa-shipping-fast"></i> </button><!-- BOTON PARA INCIAR DESPLAZAMIENTO-->
      <button type="button" class="btn btn-light" style="display:none; margin-right:3px;" id="btndesplazamientofin" onclick="ClientesComodin('1079','16','FINALIZADA')"><i class="fas fa-shipping-fast"></i> </button><!-- BOTON PARA FINALIZAR DESPLAZAMIENTO-->

      <button type="button" class="btn btn-primary" style="display:none; margin-right:3px;" id="btnclientesapoyo" onclick="ClientesApoyo()"><i class="fas fa-exchange-alt"></i> </button><!-- BOTON PARA INCIAR APOYO A OTRA RUTA-->
      <a type="button" class="btn btn-danger" href="Logout"><i class="fa fa-power-off"></i></a>

    </div>


  </div>



  <div class="section">



    <div id="formularioinicio" style="display:none">
      <form id="form-impulso" enctype="multipart/form-data" style="margin-top:75px;">

        <div style="display:flex; justify-content:space-between;">
          <h5> <i class="fas fa-pencil-alt"></i> Inicio de actividades</h5>

          <div class="btn-group dropleft">
            <button type="button" class="btn btn-outline-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              ...
            </button>
            <div class="dropdown-menu">
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Lunes');">Lunes</button>
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Martes');">Martes</button>
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Miercoles');">Miercoles</button>
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Jueves');">Jueves</button>
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Viernes');">Viernes</button>
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Sabado');">Sabado</button>
              <button class="dropdown-item" type="button" onclick="Filtro_clientes('Domingo');">Domingo</button>
            </div>
          </div>

        </div>

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

        <div class="form-row" style="display:none; justify-content:space-around; align-items:flex-end;">
          <div class="col">
            <label for="exampleFormControlSelect1">Latitud</label>
            <input type="text" class="form-control" id="txtlat" name="txtlat">
          </div>

          <div class="col">
            <label for="exampleFormControlSelect1">Longitud</label>
            <input type="text" class="form-control" id="txtlong" name="txtlong">
          </div>

          <button type="button" class="btn btn-primary" id="btn-geo"><i class="fas fa-map-marker-alt"></i></button>
        </div>

        <br><br>
        <div style="text-align:center; display:block;"><br><br>
          <img src="https://traigotucompra.com/img/no-image.png" alt="" width="250px" height="250px" id="Img"><br><br>

          <label for="foto_frontal"> Fotografia </label>
          <div class="form-group custom-file">
            <input type="file" class="custom-file-input" id="Img_inicio" name="Img_inicio" accept="image/*" capture="camera">
            <label class="custom-file-label" for="customFile">Fotografia </label>
          </div><br><br>
        </div>

        <button type="submit" class="btn btn-primary col-md-12" id="btnregistrarimp" name="btnregistrarimp">Iniciar Actividad</button>
      </form>
    </div>

    <div id="formulariofin" style="display:none">
      <form id="form-impulso-fin" enctype="multipart/form-data" style="margin-top:75px;">

        <h5> <i class="fas fa-pencil-alt"></i> Finalizacion de actividades</h5><br>

        <div class="">
          <div class="form-group ">

            <div style="display:flex; justify-content:space-between;">
              <label for="exampleFormControlSelect1">Cliente </label>
              <a href="#" type="button" id="btn_anularmarcacion"> Anular</a>
            </div>

            <select class="form-control" id="txtclientesfin" name="txtclientesfin">

            </select>
          </div>

        </div>
        <div class="form-row" style="display:none; justify-content:space-around; align-items:flex-end; ">
          <div class="col">
            <label for="exampleFormControlSelect1">Latitud</label>
            <input type="text" class="form-control" id="txtlatfin" name="txtlatfin">
          </div>

          <div class="col">
            <label for="exampleFormControlSelect1">Longitud</label>
            <input type="text" class="form-control" id="txtlongfin" name="txtlongfin">
          </div>
          <button type="button" class="btn btn-primary" id="btn-geofin"><i class="fas fa-map-marker-alt"></i></button>
        </div>

        <div style="text-align:center; "><br><br>
          <img src="https://traigotucompra.com/img/no-image.png" alt="" width="250px" height="250px" id="Imgfin"><br><br>

          <label for="foto_frontal"> Fotografia </label>
          <div class="form-group custom-file">
            <input type="file" class="custom-file-input" id="Img_fin" name="Img_fin" accept="image/*" capture="camera">
            <label class="custom-file-label" for="customFile">Fotografia </label>
          </div><br><br>
        </div>

        <button type="submit" class="btn btn-warning col-md-12" id="btnfinalizaractividad" name="btnfinalizaractividad">Finalizar Actividad</button>
      </form>
    </div>


    <div id="FormularioApoyo" style="display:none; margin-top:75px; max-width:458px; width:100%;">


      <h5> <i class="fas fa-pencil-alt"></i> Actividad extraordinaria</h5>

      <div class="form-group">
        <label for="z">Apoyo Solicitado</label>
        <select class="form-control" id="txttipoapoyo" name="txttipoapoyo">
          <option value="" selected disabled> Seleccione una opcion </option>
          <option value="1"> APOYO A OTRA RUTA</option>
          <option value="2"> APOYO EN DISTRIBUIDORA</option>
        </select>
      </div>



    </div>

    <div id="Form-apoyoruta" style="display:none;">
      <form id="form-apoyoruta" enctype="multipart/form-data">

        <div class=>

          <div class="form-group ">
            <label for="exampleFormControlSelect1">Ruta</label>
            <select class="form-control" id="txtrutaapoyo" name="txtrutaapoyo">

            </select>
          </div>

          <div class="form-group ">
            <label for="exampleFormControlSelect1">Cliente</label>
            <input type="text" class="form-control" value="" id="txtclienteautocomplete" name="txtclienteautocomplete" placeholder="Escriba el codigo o nombre y seleccione">
          </div>

          <div class="form-group " style="display:none;">
            <label for="exampleFormControlSelect1">Cliente id</label>
            <input type="text" class="form-control" value="" id="txtidcliente" name="txtidcliente">
          </div>

          <div class="form-group ">
            <label for="exampleFormControlSelect1">Actividad</label>
            <select class="form-control" id="txtactividadapoyo" name="txtactividadapoyo">

            </select>
          </div>

          <div class="form-row" style="display:none;">
            <div class="col">
              <label for="exampleFormControlSelect1">Latitud</label>
              <input type="text" class="form-control" id="txtlatapoyo" name="txtlatapoyo">
            </div>

            <div class="col">
              <label for="exampleFormControlSelect1">Longitud</label>
              <input type="text" class="form-control" id="txtlongapoyo" name="txtlongapoyo">
            </div>

            <button type="button" class="btn btn-primary" id="btn-geoapoyo"><i class="fas fa-map-marker-alt"></i></button>
          </div>

          <button type="submit" class="btn btn-primary col-md-12" id="btninicioapoyo" name="btninicioapoyo">Iniciar apoyo a ruta</button>


        </div>
      </form>
    </div>

    <div id="Form-apoyodistribuidora" style="display:none;">

      <form id="form-apoyodistribuidora" enctype="multipart/form-data">

        <div>

          <div class="form-row" style="display:none;">
            <div class="col">
              <label for="exampleFormControlSelect1">Latitud</label>
              <input type="text" class="form-control" id="txtlatapoyodistri" name="txtlatapoyodistri">
            </div>

            <div class="col">
              <label for="exampleFormControlSelect1">Longitud</label>
              <input type="text" class="form-control" id="txtlongapoyodistri" name="txtlongapoyodistri">
            </div>

            <button type="button" class="btn btn-primary" id="btn-geoapoyodistri"><i class="fas fa-map-marker-alt"></i></button>
          </div>

          <button type="submit" class="btn btn-info col-md-12" id="btninicioapoyodistribuidora" name="btninicioapoyodistribuidora">INICIAR APOYO EN DISTRIBUIDORA</button>


        </div>
      </form>
    </div>

    <div id="Form-apoyodistribuidorafin" style="display:none; margin-top:75px; max-width:458px; width:100%;">
      <form id="form-apoyodistribuidorafin" enctype="multipart/form-data">
        <h5> <i class="fas fa-pencil-alt"></i> Finalizar apoyo en distribuidora</h5>
        <div>

          <div class="form-group">
            <label for="x">Observaciones</label>
            <textarea class="form-control" id="txtobservaciondistribuidora" name="txtobservaciondistribuidora" rows="3" placeholder="Colocar las actividades que se realizaron dentro de la distribuidora"></textarea>
          </div>

          <div class="form-row" style="display:none;">
            <div class="col">
              <label for="exampleFormControlSelect1">Latitud</label>
              <input type="text" class="form-control" id="txtlatapoyodistrifin" name="txtlatapoyodistrifin">
            </div>

            <div class="col">
              <label for="exampleFormControlSelect1">Longitud</label>
              <input type="text" class="form-control" id="txtlongapoyodistrifin" name="txtlongapoyodistrifin">
            </div>

            <button type="button" class="btn btn-primary" id="btn-geoapoyodistrifin"><i class="fas fa-map-marker-alt"></i></button>
          </div>

          <button type="submit" class="btn btn-info col-md-12" id="btbfinapoyodistribuidora" name="btbfinapoyodistribuidora">FINALIZAR APOYO EN DISTRIBUIDORA</button>


        </div>
      </form>
    </div>

  </div>


  <div style="display:flex; flex-flow: column wrap; justify-content:center; align-content:center;">
    <img src="<?php echo base_url('Public/Img/almuerzo.gif') ?>" alt="" width="300px" height="300px" id="almuerzoimg" style="display:none;">
    <img src="<?php echo base_url('Public/Img/ausencia.gif') ?>" alt="" width="300px" height="300px" id="ausenciaimg" style="display:none; margin-top:75px;">
    <img src="<?php echo base_url('Public/Img/desplazamiento.gif') ?>" alt="" width="300px" height="300px" id="desplazamientoimg" style="display:none;">
  </div>

</body>
<footer>
  <button class="btn btn-info btn-lg sub-menu" id="btn_sincronizar"><span style="color:#fff;"><i class="fas fa-download"></i></span></button>
</footer>
<br>
<!--<button type="button" class="btn btn-warning col-md-12" onclick="pruebaimpresion()" id="impresion">Prueba Impresion</button>-->
<script type="text/javascript">
  function pruebaimpresion() {

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

  function Clienteiniciado() {
    //cargar clientes iniciado
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Get_clientes_iniciado",
      method: "POST",


      success: function(data) {

        $('#txtclientesfin').html(data);

      }
    });
  }

  function ClientesComodin(Id_cliente, Id_actividad, estado_marcacion) {
    var lat;
    var long, data;



    if ("geolocation" in navigator) {

      navigator.geolocation.getCurrentPosition(function(position) {

        lat = position.coords.latitude;
        long = position.coords.longitude;

        $.ajax({
          type: "POST",
          url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/ClientesComodin",
          data: {
            Id_cliente: Id_cliente,
            estado_marcacion: estado_marcacion,
            Id_actividad: Id_actividad,
            lat: lat,
            long: long

          },
          beforeSend: function() {
            $("#btnclientesapoyo").attr("disabled", "disabled");
            $("#esperando").css("display", "block")
            $('#btnalmuerzoinicio').attr("disabled", "disabled");
            $('#btnalmuerzofin').attr("disabled", "disabled");
            $('#btnausenciainicio').attr("disabled", "disabled");
            $('#btnausenciafin').attr("disabled", "disabled");
            $('#btndesplazamientoinicio').attr("disabled", "disabled");
            $('#btndesplazamientofin').attr("disabled", "disabled");

          },
          success: function(data) {

            $("#esperando").css("display", "none");

            if (data == 1) {

              Swal.fire({
                icon: 'success',
                title: 'Registro guardado con exito',
                showConfirmButton: false,
                timer: 2000
              }).then((result) => {
                /* Read more about handling dismissals below */
                if (result.dismiss === Swal.DismissReason.timer) {


                  location.reload();
                }
              });


            } else {
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

      });


    } else {
      console.log("Browser doesn't support geolocation!");
    }





  }

  function Filtro_clientes(Dia) {
    $.ajax({
      type: "POST",
      url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Filtro_clientes",
      data: {
        Dia: Dia
      },
      beforeSend: function() {
        $("#esperando").css("display", "block")

      },
      success: function(data) {
        $("#esperando").css("display", "none");
        $('#txtclientes').html(data);
      }
    })

  }

  function ClientesApoyo() {
    $("#formularioinicio").css("display", "none")
    $("#FormularioApoyo").css("display", "block")
  }



  $(document).ready(function() {


    //Verificacion de actividades
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Verificacion_Actividades",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css("display", "block")

      },
      success: function(data) {
        $("#esperando").css("display", "none")
        if (data == 0) {
          //Valida que no alla clientes activos en marcadas
          $("#formularioinicio").css("display", "block")
          $("#btnclientesapoyo").css("display", "block");
          $("#btnalmuerzoinicio").css("display", "block");
          $("#btnalmuerzofin").css("display", "none");
          $("#btnausenciainicio").css("display", "block");
          $("#btnausenciafin").css("display", "none");
          $("#btndesplazamientoinicio").css("display", "block");
          $("#btndesplazamientofin").css("display", "none");

        } else if (data == 1) {
          //valida si hay clientes activos en marcadas
          $("#formulariofin").css("display", "block")
          Clienteiniciado();

          $("#btnclientesapoyo").css("display", "none");
          $("#btnalmuerzoinicio").css("display", "none");
          $("#btnalmuerzofin").css("display", "none");
          $("#btnausenciainicio").css("display", "none");
          $("#btnausenciafin").css("display", "none");
          $("#btndesplazamientoinicio").css("display", "none");
          $("#btndesplazamientofin").css("display", "none");


        } else if (data == 2) {

          //Valida si la hora de almuerzo esta activa
          $("#almuerzoimg").css("display", "block")
          $("#btnclientesapoyo").css("display", "none");
          $("#btnalmuerzoinicio").css("display", "none");
          $("#btnalmuerzofin").css("display", "block");
          $("#btnausenciainicio").css("display", "none");
          $("#btnausenciafin").css("display", "none");
          $("#btndesplazamientoinicio").css("display", "none");
          $("#btndesplazamientofin").css("display", "none");

        } else if (data == 3) {
          //valida si se ha hecho una ausencia temporal
          $("#ausenciaimg").css("display", "block")
          $("#btnclientesapoyo").css("display", "none");
          $("#btnalmuerzoinicio").css("display", "none");
          $("#btnalmuerzofin").css("display", "none");
          $("#btnausenciainicio").css("display", "none");
          $("#btnausenciafin").css("display", "block");
          $("#btndesplazamientoinicio").css("display", "none");
          $("#btndesplazamientofin").css("display", "none");

        } else if (data == 4) {
          //valida si se ha empezado un desplazamiento
          $("#desplazamientoimg").css("display", "block")
          $("#btnclientesapoyo").css("display", "none");
          $("#btnalmuerzoinicio").css("display", "none");
          $("#btnalmuerzofin").css("display", "none");
          $("#btnausenciainicio").css("display", "none");
          $("#btnausenciafin").css("display", "none");
          $("#btndesplazamientoinicio").css("display", "none");
          $("#btndesplazamientofin").css("display", "block");

        } else if (data == 5) {
          //valida si se ha empezado una actividad dentro de la distribuidora
          $("#desplazamientoimg").css("display", "none")
          $("#btnclientesapoyo").css("display", "none");
          $("#btnalmuerzoinicio").css("display", "none");
          $("#btnalmuerzofin").css("display", "none");
          $("#btnausenciainicio").css("display", "none");
          $("#btnausenciafin").css("display", "none");
          $("#btndesplazamientoinicio").css("display", "none");
          $("#btndesplazamientofin").css("display", "none");
          $("#Form-apoyodistribuidorafin").css("display", "block");



        } else {
          Swal.fire({
            icon: 'error',
            title: 'Algo salio mal , contactese con el administrador',
            showConfirmButton: true
          });
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

    // Coloca la imagen insertada frontal
    $("#txttipoapoyo").change(function() {
      var Tipo_actividad = $("#txttipoapoyo").val();

      if (Tipo_actividad == 1) {
        $("#Form-apoyoruta").css("display", "block")
        $("#Form-apoyodistribuidora").css("display", "none")
      } else if (Tipo_actividad == 2) {
        $("#Form-apoyoruta").css("display", "none")
        $("#Form-apoyodistribuidora").css("display", "block")
      } else {

      }
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

    //realizar "Sincronizacion" actualizar estado de los clientes en visitado igual a cero
    $("#btn_sincronizar").click(function() { //user clicks button
      $.ajax({
        type: "POST",
        url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Sincronizacion_inicial",
        beforeSend: function() {
          $("#esperando").css("display", "block")

        },
        success: function(data) {
          $("#esperando").css("display", "none");
          if (data == 1) {
            Swal.fire({
              icon: 'success',
              title: 'Sincronizacion realizada con exito',
              showConfirmButton: true
            }).then((result) => {

              location.reload();

            });

          } else {
            Swal.fire({
              icon: 'error',
              title: 'Sincronizacion Fallo',
              showConfirmButton: true
            });
          }



        }
      })
    });

    //Obtener geolocalizacion para formulario de inicio de actividades
    $("#btn-geo").click(function() { //user clicks button
      if ("geolocation" in navigator) { //check geolocation available 
        //try to get user current location using getCurrentPosition() method
        navigator.geolocation.getCurrentPosition(function(position) {
          $("#txtlat").val(position.coords.latitude);
          $("#txtlong").val(position.coords.longitude);
        });
      } else {
        console.log("Browser doesn't support geolocation!");
      }
    });

    //Obtener geolocalizacion para formulario de fin de actividades
    $("#btn-geofin").click(function() { //user clicks button
      if ("geolocation" in navigator) { //check geolocation available 
        //try to get user current location using getCurrentPosition() method
        navigator.geolocation.getCurrentPosition(function(position) {
          $("#txtlatfin").val(position.coords.latitude);
          $("#txtlongfin").val(position.coords.longitude);
        });
      } else {
        console.log("Browser doesn't support geolocation!");
      }
    });

    //Obtener geolocalizacion para formulario apoyo de ruta
    $("#btn-geoapoyo").click(function() { //user clicks button
      if ("geolocation" in navigator) { //check geolocation available 
        //try to get user current location using getCurrentPosition() method
        navigator.geolocation.getCurrentPosition(function(position) {
          $("#txtlatapoyo").val(position.coords.latitude);
          $("#txtlongapoyo").val(position.coords.longitude);
        });
      } else {
        console.log("Browser doesn't support geolocation!");
      }
    });

    //Obtener geolocalizacion para apoyo de distribuidora
    $("#btn-geoapoyodistri").click(function() { //user clicks button
      if ("geolocation" in navigator) { //check geolocation available 
        //try to get user current location using getCurrentPosition() method
        navigator.geolocation.getCurrentPosition(function(position) {
          $("#txtlatapoyodistri").val(position.coords.latitude);
          $("#txtlongapoyodistri").val(position.coords.longitude);
        });
      } else {
        console.log("Browser doesn't support geolocation!");
      }
    });

    //Obtener geolocalizacion para apoyo de distribuidora
    $("#btn-geoapoyodistrifin").click(function() { //user clicks button
      if ("geolocation" in navigator) { //check geolocation available 
        //try to get user current location using getCurrentPosition() method
        navigator.geolocation.getCurrentPosition(function(position) {
          $("#txtlatapoyodistrifin").val(position.coords.latitude);
          $("#txtlongapoyodistrifin").val(position.coords.longitude);
        });
      } else {
        console.log("Browser doesn't support geolocation!");
      }
    });

    //Anular marcacion
    $("#btn_anularmarcacion").click(function() { //user clicks button

      $.ajax({
        type: "POST",
        url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Anular_marcacion",
        beforeSend: function() {
          $("#esperando").css("display", "block")

        },
        success: function(data) {
          $("#esperando").css("display", "none");
          if (data == 1) {
            Swal.fire({
              icon: 'success',
              title: 'Marcacion anulada correctamente',
              showConfirmButton: true
            }).then((result) => {

              location.reload();

            });

          } else {
            Swal.fire({
              icon: 'error',
              title: 'Marcacion no pudo ser anulada',
              showConfirmButton: true
            });
          }



        }
      })
    });

    //cargar actividades
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Get_actividades",
      method: "POST",


      success: function(data) {

        $('#txtactividades').html(data);
        $('#txtactividadapoyo').html(data);

      }
    });

    //cargar clientes
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/Get_clientes",
      method: "POST",


      success: function(data) {

        $('#txtclientes').html(data);

      }
    });

    //cargar rutas de mayoreo segun distribuidora
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/rutasmayoreo",
      method: "POST",
      success: function(data) {

        $('#txtrutaapoyo').html(data);


      }
    });

    //Inicio de actividades impulsadoras
    $("#form-impulso").on("submit", function(e) {

      $("#btn-geo").click();


      setTimeout(function() {

        var data1 = document.getElementById("txtclientes").value;
        var data2 = document.getElementById("txtactividades").value;
        var data3 = document.getElementById("txtlat").value;
        var data4 = document.getElementById("txtlong").value;
        var data5 = document.getElementById("Img_inicio").value;



        if (data1.length == 0 || data2.length == 0 || data3.length == 0 || data4.length == 0 || data5.length == 0) {

          Swal.fire({
            icon: 'error',
            title: 'Todos los campos son obligatorios',
            showConfirmButton: true
          });

          return false;

        } else {
          var rform = $('form')[0];
          var data = $("#form-impulso").serialize();

          $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/registrar_actividad",
            data: new FormData(rform),
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function() {
              $("#esperando").css("display", "block")
              $('#btnregistrarimp').attr("disabled", "disabled");
              $('#form-impulso').css("opacity", "0.2");
            },
            success: function(data) {

              $("#esperando").css("display", "none");

              if (data == 1) {

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
                });


              } else {
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
        }

      }, 900);

      return false;
    });


    //finalizacion de actividades impulsadoras
    $("#form-impulso-fin").on("submit", function(e) {


      $("#btn-geofin").click();

      setTimeout(function() {
        var data1 = document.getElementById("txtclientesfin").value;
        var data2 = document.getElementById("txtlatfin").value;
        var data3 = document.getElementById("txtlongfin").value;
        var data4 = document.getElementById("Img_fin").value;




        if (data1.length == 0 || data2.length == 0 || data3.length == 0 || data4.length == 0) {

          Swal.fire({
            icon: 'error',
            title: 'Todos los campos son obligatorios',
            showConfirmButton: true
          });

          return false;

        } else {
          var rform1 = $('form')[1];
          var data = $("#form-impulso-fin").serialize();
          $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/finalizar_actividad",
            data: new FormData(rform1),
            dataType: "JSON",
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function() {
              $("#esperando").css("display", "block")
              $('#btnfinalizaractividad').attr("disabled", "disabled");
              $('#form-impulso-fin').css("opacity", "0.2");
            },
            success: function(data) {

              $("#esperando").css("display", "none")
              if (data == 1) {

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


              } else {
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
        }
      }, 900);
      return false;

    });


    // cuando cambie la ruta cargar datos de clientes de la ruta
    $("#txtrutaapoyo").change(function() {

      var id_ruta = $("#txtrutaapoyo").val();
      //cargar clientes segun ruta de mayoreo segun distribuidora
      $.ajax({
        url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/ClientesAutocomplete",
        method: "POST",
        data: {
          Id_ruta: id_ruta
        },
        beforeSend: function() {
          $("#esperando").css("display", "block")

        },
        success: function(data) {
          $("#esperando").css("display", "none")
          let datos = JSON.parse(data);

          $('#txtclienteautocomplete').autocomplete({

            source: datos,
            select: function(event, ui) {
              $("#txtclienteautocomplete").val(ui.item.label); // display the selected text
              $("#txtidcliente").val(ui.item.value); // save selected id to hidden input
              return false;
            },
            change: function(event, ui) {
              $("#txtidcliente").val(ui.item ? ui.item.value : '');
            }
          });
        }
      });
    });


    //Inicio de actividades  extraordinarias  apoyo ruta impulsadoras
    $("#form-apoyoruta").on("submit", function(e) {

      $("#btn-geoapoyo").click();

      setTimeout(function() {

        var data1 = document.getElementById("txtrutaapoyo").value;
        var data2 = document.getElementById("txtclienteautocomplete").value;
        var data3 = document.getElementById("txtidcliente").value;
        var data4 = document.getElementById("txtactividadapoyo").value;
        var data5 = document.getElementById("txtlatapoyo").value;
        var data6 = document.getElementById("txtlongapoyo").value;
        //var data5 = document.getElementById("Img_inicio").value; || data5.length == 0



        if (data1.length == 0 || data2.length == 0 || data3.length == 0 || data4.length == 0 || data5.length == 0 || data6.length == 0) {

          Swal.fire({
            icon: 'error',
            title: 'Todos los campos son obligatorios',
            showConfirmButton: true
          });

          return false;

        } else {
          var rform = $('form')[2];
          var data = $("#form-apoyoruta").serialize();

          $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/registrar_actividadextraordinaria",
            data: new FormData(rform),
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function() {
              $("#esperando").css("display", "block")
              $('#btninicioapoyo').attr("disabled", "disabled");
              $('#form-apoyoruta').css("opacity", "0.2");
            },
            success: function(data) {

              $("#esperando").css("display", "none");

              if (data == 1) {

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
                });


              } else {
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
        }

      }, 1000);

      return false;
    });

    //Inicio de actividades  extraordinarias  apoyo en distribuidora 
    $("#form-apoyodistribuidora").on("submit", function(e) {

      $("#btn-geoapoyodistri").click();

      setTimeout(function() {


        var data1 = document.getElementById("txtlatapoyodistri").value;
        var data2 = document.getElementById("txtlongapoyodistri").value;
        //var data5 = document.getElementById("Img_inicio").value; || data5.length == 0



        if (data1.length == 0 || data2.length == 0) {

          Swal.fire({
            icon: 'error',
            title: 'Todos los campos son obligatorios',
            showConfirmButton: true
          });

          return false;

        } else {
          var rform = $('form')[3];
          var data = $("#form-apoyodistribuidora").serialize();

          $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/registrar_apoyodistribuidora",
            data: new FormData(rform),
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function() {
              $("#esperando").css("display", "block")
              $('#btninicioapoyo').attr("disabled", "disabled");
              $('#form-apoyoruta').css("opacity", "0.2");
            },
            success: function(data) {

              $("#esperando").css("display", "none");

              if (data == 1) {

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
                });


              } else {
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
        }

      }, 1000);

      return false;
    });


    //finalizacion de actividades distribuidora impulsadora
    $("#form-apoyodistribuidorafin").on("submit", function(e) {


      $("#btn-geoapoyodistrifin").click();

      setTimeout(function() {
        var data1 = document.getElementById("txtobservaciondistribuidora").value;
        var data2 = document.getElementById("txtlatapoyodistrifin").value;
        var data3 = document.getElementById("txtlongapoyodistrifin").value;





        if (data1.length == 0 || data2.length == 0 || data3.length == 0) {

          Swal.fire({
            icon: 'error',
            title: 'Todos los campos son obligatorios',
            showConfirmButton: true
          });

          return false;

        } else {
          var rform1 = $('form')[4];
          var data = $("#form-apoyodistribuidorafin").serialize();
          $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Marcacion_impulso/finalizar_apoyodistribuidora",
            data: new FormData(rform1),
            dataType: "JSON",
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function() {
              $("#esperando").css("display", "block")
              $('#btbfinapoyodistribuidora').attr("disabled", "disabled");
              $('#form-apoyodistribuidorafin').css("opacity", "0.2");
            },
            success: function(data) {

              $("#esperando").css("display", "none")
              if (data == 1) {

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


              } else {
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
        }
      }, 900);
      return false;

    });

  });
</script>

</html>