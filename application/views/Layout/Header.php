<!DOCTYPE html>
<html lang="en">

<head name="Header Menu">

  <title>Consola SDV</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!--Icon page-->
  <link href="<?php echo base_url('Public/Img/favicon.png') ?>" rel="icon">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

  <!--sweet Alert-->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

  <!--jsPDF-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>

  <!-- Echarts Graficas -->
  <script src="https://cdn.jsdelivr.net/npm/echarts@4.7.0/dist/echarts.min.js"></script>

  <!-- Tema Echarts -->
  <script rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/macarons.js') ?>"></script>

  <!--Font Awesome-->
  <script src="https://kit.fontawesome.com/74f9e3337a.js"></script>

  <!--Jquery And Bootstrap-->
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <!-- Main Stylesheet File -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/style.css') ?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Css.css') ?>">


</head>

<body>
  <header>
    <div class="page-wrapper chiller-theme toggled">

      <!--Body -->

      <!--Menu Lateral-->
      <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
        <i class="fas fa-bars"></i>
      </a>
      <nav id="sidebar" class="sidebar-wrapper">
        <div class="sidebar-content">
          <div class="sidebar-brand">
            <a href="Main">Consola SDV</a>
            <div id="close-sidebar">
              <div id="close-sidebar">
                <i class="fas fa-times"></i>
              </div>
            </div>
          </div>
          <div class="sidebar-header">
            <div class="user-pic">
              <img class="img-responsive img-rounded" src="https://sistemas.com/termino/wp-content/uploads/Usuario-Icono.jpg" alt="User picture">
            </div>
            <div class="user-info">
              <span id='UsuarioLogueado' name='UsuarioLogueado' class="user-name"><strong><?php echo $this->session->userdata('Nombre');  ?></strong></span>
              <span class="user-role"><?php echo $this->session->userdata('Rol'); ?></span>
              <span class="user-status"><i class="fa fa-circle"></i><span>Online</span><br>
            </div>
          </div>

          <!-- sidebar-header  -->
          <div class="sidebar-menu">
            <ul>
              <li class="header-menu">

                <!--Datos Generales-->

                <span>General</span>
              </li>
              <!--Para que funcione el dropwon es de agregarle la letra n-->
              <li class="sidebar-dropdown">
                <a href="#">
                  <i class="fas fa-id-badge"></i>
                  <span>Estructura</span>
                </a>
                <div class="sidebar-submenu">
                  <ul>
                    <li> <a href="Clientes"><i class="fab fa-creative-commons-by"></i>Clientes</a></li>
                    <li><a href="Empleados"><i class="fas fa-users"></i>Empleados</a></li>
                    <li> <a href="Itinerario_impulsadoras"><i class="fas fa-clipboard-list"></i>Itinerario Impulso</a> </li>
                    <li> <a href="#"><i class="fas fa-shoe-prints"></i></i>Rutas</a> </li>
                    <li><a href="#"><i class="fas fa-truck"></i>Vehiculos</a></li>
                  </ul>
                </div>
              </li>

              <!-- Catalogos-->
              <!--Para que funcione el dropwon es de agregarle la letra n-->
              <li class="sidebar-dropdown">

                <a href="#"><i class="fas fa-copy"></i>

                  <span>Catalogos</span> </a>
                <div class="sidebar-submenu">
                  <ul>

                    <li><a href="Dispositivos"><i class="fas fa-mobile-alt"></i>Dispositivos</a></li>
                    <li><a href="AutorizacionesMH"><i class="far fa-list-alt"></i>Autorizaciones MH</a></li>
                    <li><a href="Accesorios"><i class="fas fa-headphones-alt"></i>Accesorios</a></li>
                    <li><a href="Impresoras"><i class="fas fa-print"></i>Impresoras</a></li>
                    <li><a href="#"><i class="fas fa-camera-retro"></i>Exhibidores</a></li>
                    <li><a href="#"><i class="fas fa-hand-holding-usd"></i>Credito por ruta</a></li>
                    <li><a href="#"><i class="fas fa-box"></i>Productos</a></li>
                    <li><a href="#"><i class="fas fa-comments-dollar"></i>Seguimiento KPI </a></li>
                    <li><a href="#"><i class="fab fa-android"></i>Historial APK</a> </li>
                    <li><a href="#"><i class="fas fa-list-ol"></i>Inventarios SKU</a></li>
                    <li><a href="#"><i class="fas fa-map-marked-alt"></i>Sitios Base</a></li>
                </div>
              </li>

              <li class="header-menu">
                <span>Extra</span>
              </li>

              <li class="sidebar-dropdown">
                <a href="Informes"><i class="fas fa-binoculars"></i>
                  <span>Informes</span>
                </a>
              </li>

            </ul>


          </div>

          <img class="img-responsive img-rounded" style="width:70%; margin-left:50px;" src="">

          <!-- sidebar-menu Finish -->
        </div>




        <!-- sidebar-content Footer -->
        <div class="sidebar-footer">

          <div id="noti_Counter"></div>
          <!--SHOW NOTIFICATIONS COUNT.-->


          <!--THE NOTIFICAIONS DROPDOWN BOX.-->
          <div id="notifications">
            <h2 style="font-size:20px; padding:2%; color:#000;"> <span><i class="fas fa-envelope-open-text"></i></span> Notificaciones</h2>
            <div id="js" style="display:none;">

            </div>
            <div style="max-height:400px; overflow:auto;" id="ContentNoti">






            </div>
            <div class="seeAll"><a href="#" Onclick="Actualizar_todas()"> Ver Todas</a></div>
          </div>

          <!--Notificaciones-->
          <a href="#" id="recontar" style="display:none;" Onclick="recontar_notificaciones();"></a>
          <a href="#" id="renotificacion" style="display:none;" Onclick="notificaciones();"></a>

          <a href="#" id="noti_Button"><i class="fas fa-bell"></i></a>
          <a href="http://gmail.com" target="_blank"><i class="fa fa-envelope"></i></a>
          <!--Mensajes-->
          <a href="#"><i class="fa fa-cog"></i></a>
          <!--Configuracion-->
          <a href="Logout"><i class="fa fa-power-off"></i></a>
          <!--Cerrar Sesion-->

        </div>

      </nav>
      <!-- sidebar-wrapper finish footer -->
    </div>


    <!--Effect Dropdown jquery-->
    <script type="text/javascript">
      jQuery(function($) {

        $(".sidebar-dropdown > a").click(function() {
          $(".sidebar-submenu").slideUp(200);
          if (
            $(this)
            .parent()
            .hasClass("active")
          ) {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
              .parent()
              .removeClass("active");
          } else {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
              .next(".sidebar-submenu")
              .slideDown(200);
            $(this)
              .parent()
              .addClass("active");
          }
        });

        $("#close-sidebar").click(function() {
          $(".page-wrapper").removeClass("toggled");
        });
        $("#show-sidebar").click(function() {
          $(".page-wrapper").addClass("toggled");
        });
      });

      // *****************************************NOTIFICACIONES*****************************//
      $(document).ready(function() {

        // Al cargar la pagina el contador de notificaciones tendra efecto
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Header/Contador_Notificaciones",
          method: "POST",
          dataType: "JSON",


          success: function(respuesta) {

            if (respuesta.cantidad != 0) {
              // MOSTRAR ANIMADAMENTE EL CONTADOR DE NOTIFICACIONES.
              $('#noti_Counter')
                .css({
                  opacity: 0
                })
                .text(respuesta.cantidad) // AGREGAR VALOR DINÁMICO (PUEDE EXTRACER LOS DATOS DE LA BASE DE DATOS O XML).
                .css({
                  top: '-10px'
                })
                .animate({
                  top: '-2px',
                  opacity: 1
                }, 900);
            } else if (respuesta.cantidad == 0) {
              $('#noti_Counter').hide();
            }
          }
        });


        //  al cargar la pagina mostrar notificaciones dentro del div
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Header/Notificaciones",
          method: "POST",
          dataType: "JSON",


          success: function(respuesta) {
            var registros = eval(respuesta);


            html = "";
            htmla = "";
            for (var i = 0; i < registros.length; i++) {



              html += "<div class='notificacion " + registros[i]["descripcion_notificacion"] + "' id='notificacion" + i + "'>"
              html += "<a  class='ui-state-default ui-corner-all'><i  id='button" + i + "' Onclick='Borrar_Noti(\"" + registros[i]["Id_notificacion"] + "\");' class='fas fa-times iconx'></i></a>" +
                "<p class='title'>" + registros[i]["titulo"] + "</p>" + registros[i]["descripcion_noti"] +
                "<b style='float:right; margin-top:5px;'>" + registros[i]["Nombre"] + "</b>";
              html += "</div>";

            }

            for (var i = 0; i < registros.length; i++) {
              htmla += "<script>" +
                "$( '#button" + i + "' ).on( 'click', function() {" +
                "$( '#notificacion" + i + "' ).effect( 'drop', {}, 500 );" +
                "return false;" +
                "});";
              htmla += "<\/script>";

            }




            $("#ContentNoti").html(html);
            $("#js").html(htmla);
          }

        });



        // efecto al mostrar div, se oculta contador
        $('#noti_Button').click(function() {

          //CAMBIO (MOSTRAR O OCULTAR) VENTANA DE NOTIFICACIÓN.
          $('#notifications').fadeToggle('fast', 'linear', function() {

            if ($('#notifications').is(':hidden')) {
              $('#noti_Counter').fadeIn('slow');
              $("#recontar").click();
              $("#renotificacion").click();

            }

          });

          $('#noti_Counter').fadeOut('slow'); // OCULTAR EL CONTADOR.

          return false;
        });


        $('#notifications').click(function() {
          return false;
          // NO HAGA NADA CUANDO SE HAGA CLIC EN EL CONTENEDOR.

        });



      });



      function Borrar_Noti(Id_Notificacion) {

        $.post("<?php echo base_url(); ?>index.php/Header/Borrar_Noti", {
            txtid: Id_Notificacion,
          },

          function(data) {
            if (data == 1) {
              // $("#recontar").click();
            }

          });
      }

      // Despues de  1 minuto se volvera a consultar si hay nuevas notificaciones
      function recontar_notificaciones() {

        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Header/Contador_Notificaciones",
          method: "POST",
          dataType: "JSON",


          success: function(respuesta) {

            if (respuesta.cantidad != 0) {
              // MOSTRAR ANIMADAMENTE EL CONTADOR DE NOTIFICACIONES.
              $('#noti_Counter')
                .text(respuesta.cantidad) // AGREGAR VALOR DINÁMICO (PUEDE EXTRACER LOS DATOS DE LA BASE DE DATOS O XML).
                .animate({
                  opacity: 1
                });
            } else if (respuesta.cantidad == 0) {
              $('#noti_Counter').hide();
            }
          }
        });

      }

      // Despues de  1 minuto se volvera a cargar las notificaciones
      function notificaciones() {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Header/Notificaciones",
          method: "POST",
          dataType: "JSON",


          success: function(respuesta) {
            var registros = eval(respuesta);


            html = "";
            htmla = "";
            for (var i = 0; i < registros.length; i++) {



              html += "<div class='notificacion " + registros[i]["descripcion_notificacion"] + "' id='notificacion" + i + "'>"
              html += "<a  class='ui-state-default ui-corner-all'><i  id='button" + i + "' Onclick='Borrar_Noti(\"" + registros[i]["Id_notificacion"] + "\");' class='fas fa-times iconx'></i></a>" +
                "<p class='title'>" + registros[i]["titulo"] + "</p>" + registros[i]["descripcion_noti"] +
                "<b style='float:right; margin-top:5px;'>" + registros[i]["Nombre"] + "</b>";
              html += "</div>";

            }

            for (var i = 0; i < registros.length; i++) {
              htmla += "<script>" +
                "$( '#button" + i + "' ).on( 'click', function() {" +
                "$( '#notificacion" + i + "' ).effect( 'drop', {}, 500 );" +
                "return false;" +
                "});";
              htmla += "<\/script>";

            }




            $("#ContentNoti").html(html);
            $("#js").html(htmla);
          }

        });

      }

      function Actualizar_todas() {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Header/Actualizar_todas",
          method: "POST",
          dataType: "JSON",


          success: function(data) {
            if (data == 1) {

              $(".notificacion:last-child").hide("slow", function() {
                // Use arguments.callee so we don't need a named function
                $(this).prev().hide("slow", arguments.callee);
              });
              $('#recontar').click();

            }

          }

        });
      }
    </script>

  </header>