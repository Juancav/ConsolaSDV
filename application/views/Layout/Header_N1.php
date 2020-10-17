<!DOCTYPE html>
<html lang="en">

<head name="Header Menu">

    <title>Consola SDV</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <!--Icon page-->
     <link href="<?php echo base_url('Public/Img/favicon.png')?>" rel="icon">

    
      
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

  <!--sweet Alert-->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

  <!--jsPDF-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>

  <!-- Echarts Graficas -->
  <script src="https://cdn.jsdelivr.net/npm/echarts@4.7.0/dist/echarts.min.js"></script>

  <!-- Tema Echarts -->
  <script  rel="stylesheet" type="text/javascript" src="<?php echo base_url('Public/js/macarons.js')?>"></script>



  <!--Font Awesome-->
  <script src="https://kit.fontawesome.com/74f9e3337a.js" ></script>

  <!--Jquery And Bootstrap-->
  <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



  <!-- Main Stylesheet File -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/style.css')?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Css.css')?>">

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
          <img class="img-responsive img-rounded" src="https://sistemas.com/termino/wp-content/uploads/Usuario-Icono.jpg"
            alt="User picture">
        </div>
        <div class="user-info">
          <span id='UsuarioLogueado' name='UsuarioLogueado' class="user-name"><strong><?php echo $this->session->userdata('Nombre');  ?></strong></span>
          <span class="user-role"><?php echo $this->session->userdata('Rol');?></span>
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
          <li class="sidebar-dropdow">
            <a href="#">
                <i class="fas fa-id-badge"></i>
              <span>Estructura</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li> <a href="#"><i class="fab fa-creative-commons-by"></i>Clientes</a></li>
                <li><a href="Empleados"><i class="fas fa-users"></i>Empleados</a></li>
                <li> <a href="#"><i class="fas fa-clipboard-list"></i>Itinerario Impulso</a> </li>
                <li> <a href="#"><i class="fas fa-shoe-prints"></i></i>Rutas</a> </li>
                <li><a href="#"><i class="fas fa-truck"></i>Vehiculos</a></li>
              </ul>
            </div>
          </li>

          <!-- Catalogos-->
          <!--Para que funcione el dropwon es de agregarle la letra n-->
          <li class="sidebar-dropdow">
            <a href="#">
                <i class="fas fa-copy"></i>
              <span>Catalogos</span> </a> 
             <div class="sidebar-submenu">
              <ul>
                <li><a href="#"><i class="fas fa-camera-retro"></i>Exhibidores</a></li>
                <li><a href="#"><i class="fas fa-mobile-alt"></i>Dispositivos</a></li>
                <li><a href="#"><i class="fas fa-headphones-alt"></i>Accesorios</a></li>
                <li><a href="#"><i class="far fa-list-alt"></i>Autorizaciones MH</a></li>
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

    <!-- sidebar-menu Finish -->
    </div>

    <!-- sidebar-content Footer -->
    <div class="sidebar-footer">
      <a href="#"><i class="fa fa-bell"></i></a> <!--Notificaciones-->
      <a href="http://gmail.com" target="_blank"><i class="fa fa-envelope"></i></a> <!--Mensajes-->
      <a href="#"><i class="fa fa-cog"></i></a> <!--Configuracion-->
      <a href="Logout"><i class="fa fa-power-off"></i></a> <!--Cerrar Sesion-->
    </div>
  </nav>
  <!-- sidebar-wrapper finish footer -->
</div>


<!--Effect Dropdown jquery-->
<script type="text/javascript">
jQuery(function ($) {

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
</script>

</header>


