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
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


</head>

<body>

  <div class="page-wrapper chiller-theme toggled">
    <main class="page-content">
      <section id="hero" class="wow fadeIn">
        <h1>Clientes</h1>
        <div class="load-7" style="display: none;" id="esperando">
          <div class="square-holder">
            <div class="square"></div>
          </div>
        </div><br>
        <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">

        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="<?php echo base_url('Public/Img/Vectores/Mod_clientes_1.jpg') ?>" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Catalogo de Clientes</h5>
                <p class="card-text">Generacion de archivo excel con todos los clientes existentes</p> <br>
                <button class="btn btn-primary btn-sm" id="EscribirArchivo" onclick="EscribirDatos()"> <i class="fas fa-sync"></i> Clientes</button>
                <!-- <a href="<?php echo base_url('Uploads/Informes/Plantillas/Data.csv') ?>" class="btn btn-success btn-small" id='plantilla'> <i class="fas fa-file-excel"></i> Descargar</a> -->
              </div>
            </div>
          </div>
        </div>

        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="<?php echo base_url('Public/Img/Vectores/Mod_clientes_2.jpg') ?>" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Catalogo de Usuarios</h5>
                <p class="card-text">Generacion de archivo excel con todos los usuarios existentes</p> <br>
                <button class="btn btn-primary btn-sm" id="EscribirArchivo1" onclick="EscribirUsuarios()"> <i class="fas fa-sync"></i> Usuarios</button>
                <!-- <a href="<?php echo base_url('Uploads/Informes/Plantillas/Data.csv') ?>" class="btn btn-success btn-small" id='plantilla'> <i class="fas fa-file-excel"></i> Descargar</a> -->
              </div>
            </div>
          </div>
        </div>

        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="<?php echo base_url('Public/Img/Vectores/Mod_clientes_3.jpg') ?>" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Catalogo de Exhibidores</h5>
                <p class="card-text">Generacion de archivo excel con todos los exhibidores</p> <br>
                <button class="btn btn-primary btn-sm" id="EscribirArchivo2" onclick="EscribirExhibidores()"> <i class="fas fa-sync"></i> Exhibidores</button>
                <!-- <a href="<?php echo base_url('Uploads/Informes/Plantillas/Data.csv') ?>" class="btn btn-success btn-small" id='plantilla'> <i class="fas fa-file-excel"></i> Descargar</a> -->
              </div>
            </div>
          </div>
        </div>

      </section>
    </main>
  </div>
  <script>
    //Escribir en excel datos de todos los clientes
    function EscribirDatos() {

      $.ajax({
        type: 'POST',
        url: '<?php echo base_url('index.php/Clientes/ExportarCSV') ?>',
        contentType: false,
        cache: false,
        processData: false,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
          $('#EscribirArchivo').attr("disabled", "disabled");

        },
        success: function(msg) {
          $("#esperando").css('display', 'none');
          $('#EscribirArchivo').attr("disabled", "false");

          if (msg = 1) {

            Swal.fire({
              icon: 'success',
              title: 'Excelente!',
              text: 'Se creo el archivo con exito',
              showConfirmButton: false,
              timerProgressBar: true,
              timer: 2000
            }).then((result) => {
              /* Read more about handling dismissals below */
              if (result.dismiss === Swal.DismissReason.timer) {
                window.location.href = '../Uploads/Informes/Plantillas/Data.csv';

              }
            })


          } else {
            const Toast = Swal.mixin({
              toast: true,
              position: 'top-end',
              showConfirmButton: false,
              timer: 2000,
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
    function EscribirUsuarios() {

      $.ajax({
        type: 'POST',
        url: '<?php echo base_url('index.php/Clientes/Getusuarios') ?>',
        contentType: false,
        cache: false,
        processData: false,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
          $('#EscribirArchivo1').attr("disabled", "disabled");

        },
        success: function(msg) {
          $("#esperando").css('display', 'none');
          if (msg = 1) {

            Swal.fire({
              icon: 'success',
              title: 'Excelente!',
              text: 'Se creo el archivo con exito',
              showConfirmButton: false,
              timerProgressBar: true,
              timer: 2000
            }).then((result) => {
              /* Read more about handling dismissals below */
              if (result.dismiss === Swal.DismissReason.timer) {

                window.location.href = '../Uploads/Informes/Plantillas/Data.csv';
              }
            })


          } else {
            const Toast = Swal.mixin({
              toast: true,
              position: 'top-end',
              showConfirmButton: false,
              timer: 2000,
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
    function EscribirExhibidores() {

      $.ajax({
        type: 'POST',
        url: '<?php echo base_url('index.php/Clientes/Getexhibidores') ?>',
        contentType: false,
        cache: false,
        processData: false,
        beforeSend: function() {
          $("#esperando").css('display', 'block');

          $('#EscribirArchivo2').attr("disabled", "disabled");

        },
        success: function(msg) {

          if (msg = 1) {
            $("#esperando").css('display', 'none');

            Swal.fire({
              icon: 'success',
              title: 'Excelente!',
              text: 'Se creo el archivo con exito',
              showConfirmButton: false,
              timerProgressBar: true,
              timer: 2000
            }).then((result) => {
              /* Read more about handling dismissals below */
              if (result.dismiss === Swal.DismissReason.timer) {

                window.location.href = '../Uploads/Informes/Plantillas/Data.csv';
              }
            })


          } else {
            const Toast = Swal.mixin({
              toast: true,
              position: 'top-end',
              showConfirmButton: false,
              timer: 2000,
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