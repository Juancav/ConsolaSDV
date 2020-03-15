<!DOCTYPE html>
<html lang="en">
<head>

<style>

.table{   
             
              border-collapse: collapse;
              box-shadow: 2px 5px 12px #000DFD;
              overflow: hidden;
              text-align: center;
              border-radius:5px;
              font-size:11.5px;  
              font-weight:bold ;

  
        }
        .th {
              
              background-color:#000DFD;
              text-align: center;
              color: #fff;
        }
        .td {
            
              text-align: center;      
        }
   
</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <title>Empleado</title>
   <!--Icon page-->
   <link href="Public/Img/favicon.png" rel="icon">
</head>
<body>
<div class="page-wrapper chiller-theme toggled">
<main class="page-content">
  <!--=================================STAR TITULO============================ -->
  
    <section id="hero" class="wow fadeIn">
          <br>
          <h1 >Empleados Bocadeli</h1>
          <br>
    </section>

  <!--=================================END TITULO============================ -->


    <!--=================================STAR NAV TABS============================ -->
  <nav>
      <div class="nav nav-tabs" id="nav-tab" role="tablist">
        <a class="nav-item nav-link active" id="nav-visualizar-tab" data-toggle="tab" href="#nav-visualizar" role="tab" aria-controls="nav-visualizar" aria-selected="true">Visualizar</a>
        <a class="nav-item nav-link" id="nav-crear-tab" data-toggle="tab" href="#nav-crear" role="tab" aria-controls="nav-crear" aria-selected="false">Crear</a>
        <a class="nav-item nav-link" id="nav-asignar-tab" data-toggle="tab" href="#nav-asignar" role="tab" aria-controls="nav-asignar" aria-selected="false">Asignar</a>
      </div>
  </nav>
  <!--=================================CONTENT NAV TABS "VISUALIZAR"============================ -->
    <div class="tab-content" id="nav-tabContent">

        <div class="tab-pane fade show active" id="nav-visualizar" role="tabpanel" aria-labelledby="nav-visualizar-tab">

              <div>
              <form id="form-vis">
              
                <div style="width:25%; float:right; margin-top:10%; margin-right:-5%; ">
                  <div class="form-group " >

                          <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                          <select class="form-control" id="Cdistribuidora" name="Cdistribuidora" required>
                          <option selected="true" disabled="disabled" value="">Seleccione distribuidora</option>
                          <?php
                              foreach($arrDistribuidora as $row)
                              {
                              echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                              }
                              ?>
                          </select>
                  </div> 

                  <div class="form-group " >
                          <label for="exampleFormControlSelect1"><strong><h6>Tipo Empleado</h6></strong></label>
                          <select class="form-control" id="Ccargo" name="Ccargo" required>
                          <option selected="true" disabled="disabled" value="">Seleccione Tipo Empleado</option>
                            <option value='VENDEDOR'>VENDEDOR</option>
                            <option value='IMPULSADORA'>IMPULSADORA</option>
                            <option value='SUPERVISOR'>SUPERVISOR</option>
                            <option value='VENDEDOR JR'>VENDEDOR JR</option>
                            <option value='SUPERVISOR JR'>SUPERVISOR JR</option>
                            <option value='REPARTO'>REPARTO</option>
                            <option value='AUXILIAR DE REPARTO'>AUXILIAR DE REPARTO</option>
                            <option value='JEFE DE VENTA'>JEFE DE VENTA</option>
                            <option value='ANALISTA'>ANALISTA</option>


                          </select>
                  </div>
                               
                
                  <div>
                      <button type="button" name='buscar' id='buscar' class="btn btn-primary" OnClick="mostrarDatos();">Consultar</button>
                      <button type="button" class="btn btn-success " disabled="disabled">Exportar</button>
                  </div>
                </div> 
               

              </form>
              </div>

                <div id="listaEmpleados">
                  <input type="hidden" class="form-control" id="txtid"  name="txtid" >
                </div>
      
            
          
    </div><!--FINISH VISUALIZAR -->


  <!--=================================CONTENT NAV TABS "CREAR"============================ -->
  <div class="tab-pane fade" id="nav-crear" role="tabpanel" aria-labelledby="nav-crear-tab">

          <div style="float:right;  text-align:center; margin-right:100px; margin-top:50px;">
            <!-- <hr style="color:black; border:1px #000 solid; width:40%; float:right;"> -->
            <img style="border-radius:5px;  filter: drop-shadow(5px 5px 10px #444);" src="http://innovacion.uanl.mx/wp-content/uploads/2017/06/sin-perfil.jpg"  width="200px" height="250px" id="img" class="muestraimg" >
          <br><br><br><br>
            <h2 style=" color: #000; font-size:20px; text-align:center;">Previsualizacion De Foto De Empleado</h2>

          </div>  


      <div style='background-color:#DFDFDF; border-radius:10px; width:40%; padding:10px; height:auto; margin-bottom:5%;'>

          <div style="background:white;  border-radius:10px;  padding:40px; height:auto; ">
         <p style="font-size:25px; color:black;">  <i class="fas fa-user-tie"></i> Creacion De Empleado </p><br>
            <form style="font-size:16px;" method='POST' id='form_empleados' name='form_empleados' action='<?php echo base_url('index.php/Empleados/Ingresar_Empleados')?>' enctype="multipart/form-data">
            
                    <div class="form-group row ">
                      <label for="inputEmail4">Numero de Carnet</label>
                      <input type="number" class="form-control" id="txtcarnet"  name="txtcarnet" placeholder="Carnet" >
                    </div>

                    <div class="form-group  row ">
                      <label for="inputPassword4">Numero De Dui</label>
                      <input type="text" class="form-control" id="txtdui" name="txtdui" placeholder="00000000-0">
                    </div>   

              
                    <div class="form-group row ">
                      <label for="inputAddress">Nombre</label>
                      <input type="text" class="form-control" id="txtnombre" name="txtnombre" placeholder="" >
                    </div>
                
                    <div class="form-group row ">
                      <label for="inputState">Cargo</label>
                      <select id="txtcargo" name='txtcargo' class="form-control" >
                      <option selected="true" disabled="disabled" value="">Seleccione El Cargo</option>
                        <option value='VENDEDOR'>VENDEDOR</option>
                        <option value='IMPULSADORA'>IMPULSADORA</option>
                        <option value='SUPERVISOR'>SUPERVISOR</option>
                        <option value='VENDEDOR JR'>VENDEDOR JR</option>
                        <option value='SUPERVISOR JR'>SUPERVISOR JR</option>
                        <option value='REPARTO'>REPARTO</option>
                        <option value='AUXILIAR DE REPARTO'>AUXILIAR DE REPARTO</option>
                        <option value='JEFE DE VENTA'>JEFE DE VENTA</option>
                        <option value='ANALISTA'>ANALISTA</option>
                      </select>
                    </div>

                    <div class="form-group row ">
                        <label for="inputAddress2">Fecha Ingreso</label>
                        <input type="date" class="form-control" id="txtfecha" name="txtfecha"  >
                    </div>
                
            
                    <div class="form-group row " >
                      <label for="exampleFormControlSelect1">Distribuidora</label>
                      <select class="form-control" id="distribuidora" name="distribuidora" > 
                      <option selected="true" disabled="disabled" value="">Seleccione Distribuidora</option>
                      
                      <?php
                          foreach($arrDistribuidora as $row)
                          {
                          echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                          }
                          ?>
                      </select>
                    </div>

                    <div class="form-group  row " >
                      <label for="exampleFormControlSelect1">Canal</label>
                      <select class="form-control" id="canal" name="canal" >
                      <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                    
                      </select>
                    </div> 

                    <div class="form-group  row " >
                      <label for="exampleFormControlSelect1">Ruta Asignada</label>
                      <select class="form-control" id="ruta" name="ruta" >
                      <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                      </select>
                    </div>

                
                    <label for="exampleFormControlSelect1">Foto Empleado</label>  
                    <div class="custom-file " style="margin-left:20px;">
                    
                      <input type="file" class="custom-file-input" id="foto_empleado" name="foto_empleado" lang="es">
                      <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
                    </div>

              <div class="form-row" style='padding-top: 40px; padding-left: 100px;'>
                <button type="submit" name='guardar'  id="btnguardarempleado" class="btn btn-primary" style="display: none;">Guardar</button>
                <button type="button" name='comprobar'  id="btncomprobar" class="btn btn-primary" OnClick="validar()" >Guardar</button>
                <button type="reset" name='limpiar' class="btn btn-danger">Limpiar</button>
              </div>

            </form>

          </div>
      </div>
           
    
  </div><!--FINISH CREAR -->

 <!--=================================CONTENT NAV TABS ASIGNA============================ -->
    <div class="tab-pane fade" id="nav-asignar" role="tabpanel" aria-labelledby="nav-asignar-tab">
      SE ASIGNARA RUTA UNA VEZ INGRESADO EL EMPLEADOS
    </div><!--FINISH ASIGNAR-->

</main>
 <!--=================================FINISH NAV TABS============================ -->

  <!--=================================MODAL ACTUALIZAR EMPLEADOS============================ -->
  
<!-- Modal -->
<div class="modal fade" id="ModalEdithPersona" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content modal-lg">

      <div class="modal-header bg-red">
        <h2 class="modal-title" id="exampleModalLabel">Actualizar Datos</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>


<!-- ========================== SELECT DINAMICOS AJAX ACTUALIZAR========================= -->
<script>
$(document).ready(function(){

 $('#mtxtdistribuidora').change(function(){
  var Id_Distribuidora = $('#mtxtdistribuidora').val();

  if(Id_Distribuidora != '')
  {
    $.ajax({
      url:"<?php echo base_url();?>index.php/Empleados/fetch_canal",
      method:"POST",
      data:{Id_Distribuidora:Id_Distribuidora},

      success:function(data)
      {
       
        $('#mtxtcanal').html(data);
        $('#mtxtruta').html('<option value="">Seleccione la Ruta</option>');
      }
    });
  }
  else
  {
   $('#mtxtcanal').html('<option value="">Selecccion el canal</option>');
   $('#mtxtruta').html('<option value="">Selecccione la Ruta</option>');
  }
 });

 $('#mtxtcanal').change(function(){
  var Id_Canal = $('#mtxtcanal').val();
  if(Id_Canal != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
    method:"POST",
    data:{Id_Canal:Id_Canal},
    success:function(data)
    {
      
     $('#mtxtruta').html(data);
    }
   });
  }
  else
  {
   $('#mtxtruta').html('<option value="">Selecccione la Ruta</option>');
  }
 });
});
</script>
      </div>
      <div class="modal-body">
        
      <form method='POST' id='form_empleados' name='form_empleados'>
      
      <input type="hidden" class="form-control" id="mtxtid" name="mtxtid"hiden>
        <div class="form-row">
            <div class="form-group col-md-2">
              <label for="inputEmail4">Numero de Carnet</label>
              <input type="number" class="form-control" id="mtxtcarnet"  name="mtxtcarnet" placeholder="Carnet" >
            </div>
            <div class="form-group col-md-2">
              <label for="inputPassword4">Numero De Dui</label>
              <input type="text" class="form-control" id="mtxtdui" name="mtxtdui"placeholder="00000000-0">
            </div>     
            <div class="form-group col-md-6">
              <label for="inputAddress">Nombre</label>
              <input type="text" class="form-control" id="mtxtnombre" name="mtxtnombre" placeholder="" >
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-2">
              <label for="inputState">Cargo</label>
              
              <select id="mtxtcargo" name='mtxtcargo' class="form-control" >
              <option selected="true" disabled="disabled" value="">Seleccione El Cargo</option>
                <option value='VENDEDOR'>VENDEDOR</option>
                <option value='IMPULSADORA'>IMPULSADORA</option>
                <option value='SUPERVISOR'>SUPERVISOR</option>
                <option value='VENDEDOR JR'>VENDEDOR JR</option>
                <option value='SUPERVISOR JR'>SUPERVISOR JR</option>
                <option value='REPARTO'>REPARTO</option>
                <option value='AUXILIAR DE REPARTO'>AUXILIAR DE REPARTO</option>
                <option value='JEFE DE VENTA'>JEFE DE VENTA</option>
                <option value='ANALISTA'>ANALISTA</option>
              </select>
            </div>
              <div class="form-group">
                <label for="inputAddress2">Fecha Ingreso</label>
                <input type="date" class="form-control" id="mtxtfecha" name="mtxtfecha"  >
              </div>
            </div>
      <div class="form-row">
            <div class="form-group col-md-3" >
              <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
              <select class="form-control" id="mtxtdistribuidora" name="mtxtdistribuidora" > 
              <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
              <?php
                  foreach($arrDistribuidora as $row)
                  {
                   echo '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
                  }
              ?>
              </select>
            </div>
            <div class="form-group col-md-2" >
              <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
              <select class="form-control" id="mtxtcanal" name="mtxtcanal" >
              <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
              </select>
            </div> 

            <div class="form-group col-md-2" >
              <label for="exampleFormControlSelect1"><strong><h6>Ruta Asignada</h6></strong></label>
              <select class="form-control" id="mtxtruta" name="mtxtruta" >
              <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
              </select>
            </div>
            

      </div>
     
                </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='mbtnUpdPerona' >Guardar</button>
        <button type="button" class="btn btn-danger" id='mbtnCerrarModal'data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
</body>

<!-- ======================================VALIDACION FORMULARIO============================ -->
<script>
  /**************************VALIDAR SI SE PULSA LA TECLA ENTER*********************************/
  $(document).ready(function() {
    $("form").keypress(function(e) {
        if (e.which == 13) {
            return false;
        }
    });
});

  /**************************FINISH ,VALIDAR SI SE PULSA LA TECLA ENTER*********************************/

function validar(){
  
            var carnet,dui,nombre,cargo,fecha,distribuidora,canal,ruta;
            
            carnet = document.getElementById('txtcarnet').value;
            dui = document.getElementById('txtdui').value;
            nombre = document.getElementById('txtnombre').value;
            cargo = document.getElementById('txtcargo').value;
            fecha = document.getElementById('txtfecha').value;
            distribuidora = document.getElementById('distribuidora').value;
            canal = document.getElementById('canal').value;
            ruta = document.getElementById('ruta').value;
 

      if(document.getElementById("foto_empleado").files.length == 0 || carnet.length == 0 || dui.length == 0 || nombre.length == 0 || cargo.length == 0 || fecha.length == 0 || distribuidora.length == 0 || canal.length == 0 || ruta.length == 0 ){
                      swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                      return false; 
      }else{

        var rutav = $('#ruta').serialize(); 
       
        if(cargo!='VENDEDOR'){
          swal.fire({ showConfirmButton: false, timer: 1500, position: 'top-end',title:'Se Envio Correctamente el registro', type: 'success'});
            
                  $('#btnguardarempleado').click();
        }else{
          $.ajax({
              url:"<?php echo base_url();?>index.php/Empleados/Verificacion_Empleado",
              method:"POST", 
              data:rutav,
              dataType:"JSON",
              success:function(respuesta){        

                  if(respuesta.CantidadActivos>0){

                    swal.fire({ showConfirmButton: false, 
                              timer: 1500, 
                              position: 'top-end',
                              title:'La ruta Ya Tiene 1 Empleado Activo', 
                              type: 'warning',
                              });

                    return flag=1;
                              
                  }else{
              
                    swal.fire({ showConfirmButton: false, timer: 1500, position: 'top-end',title:'Se Envio Correctamente el registro', type: 'success'});
              
                    $('#btnguardarempleado').click();
                  }    
              }      
          }); 
        }
      }   
}


</script>

<!-- ====================================== FINISH VALIDACION FORMULARIO============================ -->


<!-- ========================== SELECT DINAMICOS AJAX CREAR========================= -->
<script>
$(document).ready(function(){

 $('#distribuidora').change(function(){
  var Id_Distribuidora = $('#distribuidora').val();

  if(Id_Distribuidora != '')
  {
    $.ajax({
      url:"<?php echo base_url();?>index.php/Empleados/fetch_canal",
      method:"POST",
      data:{Id_Distribuidora:Id_Distribuidora},

      success:function(data)
      {
       
        $('#canal').html(data);
        $('#ruta').html('<option value="" disabled="disabled" selected="true">Seleccione la Ruta</option>');
      }
    });
  }
  else
  {
   $('#canal').html('<option value="" disabled="disabled" selected="true">Selecccion el canal</option>');
   $('#ruta').html('<option value="" disabled="disabled" selected="true">Selecccione la Ruta</option>');
  }
 });

 $('#canal').change(function(){
  var Id_Canal = $('#canal').val();
  if(Id_Canal != '')
  {
   $.ajax({
    url:"<?php echo base_url(); ?>index.php/Empleados/fetch_ruta",
    method:"POST",
    data:{Id_Canal:Id_Canal},
    success:function(data)
    {
      
     $('#ruta').html(data);
    }
   });
  }
  else
  {
   $('#ruta').html('<option value=""disabled="disabled" selected="true">Selecccione la Ruta</option>');
  }
 });
});

<!-- ========================== FINISH SELECT DINAMICOS AJAX========================= -->


<!-- ====================================== MOSTRAR DATOS CONSULTADOS EMPLEADOS============================ -->


  function mostrarDatos(){

    var datos = $('#form-vis').serialize();

    $.ajax({
      url:"<?php echo base_url();?>index.php/Empleados/Consultar_Empleados",
      method:"POST", 
      data:datos,
   
      success:function(respuesta){
     
        var registros =eval(respuesta);

        html='';
        html +="<table class='table' style='float:left; margin-left:-3%; border:white 2px solid; width:55%; margin-top:2%; margin-bottom:5%;'>";
        html +="<tr style=' filter: drop-shadow(5px 5px 10px #444); margin-bottom:50px;'>"+
        "<th class='th' style='display:none; '>ID</th>"+
        "<th class='th' >Foto Empleado</th>"+
        "<th class='th' >Carnet</th>"+
        "<th class='th' >Dui</th>"+
        "<th class='th' >Nombre</th>"+
        "<th class='th' >Cargo</th>"+
        "<th class='th' >Fecha</th>"+
        "<th class='th' >Nombre Distribuidora</th>"+
        "<th class='th' >Nombre Canal</th>"+
        "<th class='th' >Nombre Ruta</th>"+
        "<th class='th' style='display:none;'>Estado</th>"+
        "<th class='th' >Accion</th>"+
        "</tr>";


        html +="</thead><tbody>"; 
        
        for (var i = 0; i <registros.length; i++) {
          html +="<tr><td class='td' style='display:none; '>"+registros[i]["Id_Empleados"]+
          "</td><td class='td' style='padding: 5px;' ><img  width='90px' height='90px' src='"+registros[i]["foto_empleado"]+
          "'></td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Carnet"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Dui"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Cargo"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Fecha"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Distribuidora"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Canal"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+registros[i]["Nombre_Ruta"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center; display:none;'>"+registros[i]["Estado"]+
          "</td><td class='td' style='vertical-align : middle;text-align:center;'>"+
          "<a href='#' data-toggle='modal' class='editar' data-target='#ModalEdithPersona' onClick='Enviar_Datos_modal(\""+registros[i]["Id_Empleados"]+
          "\",\""+registros[i]["Carnet"]+
          "\",\""+registros[i]["Dui"]+
          "\",\""+registros[i]["Nombre"]+
          "\",\""+registros[i]["Cargo"]+
          "\",\""+registros[i]["Fecha"]+
          "\",\""+registros[i]["Id_Distribuidora"]+
          "\",\""+registros[i]["Id_Canal"]+
          "\",\""+registros[i]["Id_Ruta"]+"\");'>"+
          "<span style='font-size: 25px; color: #0109FF;'><i class='fas fa-user-edit'></a></i></span>";

          if(registros[i]['Estado']==1){ 

            html+="<a href='#' class='InactivarEmpleado' id='InactivarEmpleado' onClick='InactivarEmpleado(\""+registros[i]["Id_Empleados"]+"\");'><span style='font-size: 25px; color:green;'><i class='fas fa-user-check'></i></span></a>"+"</td></tr>";
          }
          else{
            html+="<a href='#' class='ActivarEmpleado' id='ActivarEmpleado' onClick='ActivarEmpleado(\""+registros[i]["Id_Empleados"]+"\");'><span style='font-size: 25px; color:red;'><i class='fas fa-user-slash'></i></span></a>"+"</td></tr>";
          }
        };
        html +="</tbody></table>";
        $("#listaEmpleados").html(html);
      }
    });
  }

<!-- ======================================FINISH MOSTRAR DATOS CONSULTADOS EMPLEADOS ============================ -->


// <!-- ======================================ACTUALIZAR ESTADO ACTIVO EMPLEADO============================ -->
function ActivarEmpleado(Id_Empleados){
  // alert("Empleado Activado "+Id_Empleados);
  $.post("<?php echo base_url(); ?>index.php/Empleados/Activar_Empleado",	
	{
		txtid:Id_Empleados,
	},			
	function(data){
		if (data == 1) {
    
      let timerInterval
        Swal.fire({
        title: 'Empleado Activado Correctamente',
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
              $('#buscar').click();
            }
        });
		
		}
	});
}
function InactivarEmpleado(Id_Empleados){
  // alert("Empleado Desactivado "+Id_Empleados);
  $.post("<?php echo base_url(); ?>index.php/Empleados/Inactivar_Empleado",	
	{
		txtid:Id_Empleados,
	},			
	function(data){
		if (data == 1) {
    
      let timerInterval
        Swal.fire({
        title: 'Empleado Desactivado Correctamente',
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
              $('#buscar').click();
            }
        });
		
		}
	});

}


/*============== ENVIA DATOS AL MODAL================ */
function Enviar_Datos_modal(Id_Empleado,Carnet,Dui,Nombre,Cargo,Fecha,Id_Distribuidora,Id_Canal,Id_Ruta){
      
    $('#mtxtid').val(Id_Empleado);
    $('#mtxtcarnet').val(Carnet);
    $('#mtxtdui').val(Dui);
    $('#mtxtnombre').val(Nombre);
    $('#mtxtcargo').val(Cargo);
    $('#mtxtfecha').val(Fecha);

    $("#mtxtdistribuidora option[value='00"+Id_Distribuidora+"']").attr("selected",true);
    $("#mtxtdistribuidora").change();
    
    
    setTimeout(function(){ 
      $("#mtxtcanal").val(Id_Canal);
      $("#mtxtcanal").change();

    }, 200);


    setTimeout(function(){ 
      
      $("#mtxtruta").val('00'+Id_Ruta);

      
    }, 400);
    
    
    
    // $("#mtxtruta option[value='"+Id_Ruta+"']").attr("selected",true);
    // $("#mtxtruta").change();
 
    

}
// <!-- ======================================FINISH DATOS AL MODAL============================ -->
  
/*==================METODO ACTUALIZAR DATOS  MODAL==================================*/
$('#mbtnUpdPerona').click(function(){


  var carnet,dui,nombre, cargo ,fecha, distribuidora, canal ,ruta;
  carnet = document.getElementById("mtxtcarnet").value;
  dui = document.getElementById("mtxtdui").value;
  nombre = document.getElementById("mtxtnombre").value;
  cargo = document.getElementById("mtxtcargo").value;
  fecha = document.getElementById("mtxtfecha").value;
  distribuidora = document.getElementById("mtxtdistribuidora").value;
  canal = document.getElementById("mtxtcanal").value;
  ruta = document.getElementById("mtxtruta").value;


  if(carnet.length == 0 || dui.length == 0 || nombre.length == 0 || cargo.length == 0 || fecha.length == 0 || distribuidora.length == 0 || canal.length == 0 || ruta.length == 0 ){
    
    swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
    return false;
  }else{


	var idE = $('#mtxtid').val();
	var cat = $('#mtxtcarnet').val();
	var dui = $('#mtxtdui').val();
	var nom = $('#mtxtnombre').val();
  var cag = $('#mtxtcargo').val();
  var fec = $('#mtxtfecha').val();
  var dist = $('#mtxtdistribuidora').val();
  var can = $('#mtxtcanal').val();
  var rut = $('#mtxtruta').val();

	$.post("<?php echo base_url(); ?>index.php/Empleados/Actualizar_Empleados",	
	{
		mtxtid:idE,
		mtxtcarnet:cat,
		mtxtdui:dui,
		mtxtnombre:nom,
    mtxtcargo:cag,
    mtxtfecha:fec,
    mtxtdistribuidora:dist,
    mtxtcanal:can,
    mtxtruta:rut
    
	},			
	function(data){
		if (data == 1) {
     $('#mbtnCerrarModal').click();
      let timerInterval
        Swal.fire({
        title: 'Registro Actualizado Correctamente',
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
             
              $('#buscar').click();
              $('#mtxtdistribuidora').val('');
              $('#mtxtproductoAsignar').val('');
              $('#mtxtruta').val('');
            }
        });
		
		}
	});
  }
});
/************************************************** */



/********************** PREVISUALIZACION DE IMAGENES ************************* */
function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      // Asignamos el atributo src a la tag de imagen
      $('#img').attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
  }
}

// El listener va asignado al input
$("#foto_empleado").change(function() {
  readURL(this);
});
/********************** END, PREVISUALIZACION DE IMAGENES ************************* */

/***VERIFICACION TAMA;;O DE IMAGEN*** */
$(document).on('change','input[type="file"]',function(){
	// this.files[0].size recupera el tamaño del archivo
	// alert(this.files[0].size);
	
	var fileName = this.files[0].name;
	var fileSize = this.files[0].size;

	if(fileSize > 2000000){
    swal.fire({title:'La Imagen No debe superar los 2 MG', type: 'error'});
		this.value = '';
		this.files[0].name = '';
	}
});
/***VERIFICACION TAMA;;O DE IMAGEN*** */



</script>


</html>