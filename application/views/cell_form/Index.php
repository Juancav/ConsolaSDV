<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario revision celular</title>

    <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/cell_form.css')?>">

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




</head>
<body>
    <div class="content">
    
    <div class="cont-form"> 
    
        <div class="form">
            
         
            <form enctype="multipart/form-data" id="r_form">
                <h3> <i class="fas fa-mobile-alt"></i> Detalle Telefonos</h3>
                <br>

                <div class="form-group">
                    <label for="exampleFormControlSelect1">Distribuidora</label>
                    <select class="form-control" id="txtdistribuidora" name="txtdistribuidora">
                    <option value="" disabled selected>Seleccione Distribuidora </option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Canal</label>
                    <select  class="form-control" id="txtcanal" name="txtcanal">
                    <option value="" disabled selected>Seleccione Canal </option>
                
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Ruta</label>
                    <select  class="form-control" id="txtruta" name="txtruta">
                    <option value="" disabled selected>Seleccione Ruta </option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Marca Telefono</label>
                    <select  class="form-control" id="txtmarca" name="txtmarca">
                    <option value="" disabled selected>Seleccione Marca </option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Modelo Telefono</label>
                    <select  class="form-control" id="txtmodelo" name="txtmodelo">
                    <option value="" disabled selected>Seleccione Modelo </option>
                    </select>
                </div>
                <label>Daños presentados</label>
                    
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="PQ" name="PQ" >
                    <label class="form-check-label" for="PQ">
                        Pantalla Quebrada
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="ECD" name="ECD">
                    <label class="form-check-label" for="ECD">
                        Entrada de carga dañada
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="BAD" name="BAD">
                    <label class="form-check-label" for="BAD">
                        Bateria dañada
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="TVD" name="TVD">
                    <label class="form-check-label" for="TVD">
                        Teclas de volumen dañadas
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="THD" name="THD">
                    <label class="form-check-label" for="THD">
                        Tecla home dañada
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="BOD" name="BOD">
                    <label class="form-check-label" for="BOD">
                        Bocina dañada
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="MD" name="MD">
                    <label class="form-check-label" for="MD">
                        Microfono dañado
                    </label>
                    </div>
                    
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="CD" name="CD">
                    <label class="form-check-label" for="CD">
                       Carcasa dañada
                    </label>
                    </div>

                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="ACTIVO" id="FC" name="FC">
                    <label class="form-check-label" for="FC">
                       FUNCIONANDO CORRECTAMENTE
                    </label>
                    </div>
                    <div style="text-align:center;">

                    
                            <br><br>
                            <img src="https://traigotucompra.com/img/no-image.png" alt="" width="250px" height="250px" id="img1">

                            <br><br>
                        <label for="foto_frontal"> Fotografia Frontal</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="img_frontal" name="img_frontal" accept="image/*" capture="camera" >
                            <label class="custom-file-label" for="customFile">fotografia frontal</label>
                        </div>
                        <br><br>
                        <img src="https://traigotucompra.com/img/no-image.png" alt="" width="250px" height="250px" id="img2">
                        <br><br>
                        <label for="foto_frontal"> Fotografia Trasera</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="img_trasera" name="img_trasera" accept="image/*" capture="camera" >
                            <label class="custom-file-label" for="customFile">fotografia trasera</label>
                        </div>
                    </div>
                <br>
                <button type="submit" class="btn btn-success" style="border-radius:1%; width:100%;" id="btn_enviar"> Enviar Registro </button>
            </form>
               
 
    </div>
    </div>
  
</body>

<script>

$(document).ready(function(){
    
    //Carga Datos de distribuidora
    $.ajax({
      url:"<?php echo base_url();?>index.php/cell_form/fetch_distribuidora",
      method:"POST",
     

      success:function(data)
      {
       
        
        // $('#txtcanal').html('<option value="">Seleccione El Canal</option>');
        $('#txtdistribuidora').html(data);
      }
    });

    //Carga datos de canal segun distribuidora
    $('#txtdistribuidora').change(function(){
     var Id_Distribuidora = $('#txtdistribuidora').val();

        if(Id_Distribuidora != '')
        {
            $.ajax({
            url:"<?php echo base_url();?>index.php/cell_form/fetch_canal",
            method:"POST",
            data:{Id_Distribuidora:Id_Distribuidora},

            success:function(data)
            {
                $('#txtcanal').html('<option value="">Seleccione El Canal</option>');
                $('#txtruta').html('<option value="">Seleccione la ruta</option>');
                $('#txtmarca').html('<option value="">Seleccione la marca</option>');
                $('#txtmodelo').html('<option value="">Seleccione el modelo</option>');
            
            
                $('#txtcanal').html(data);

            }
            });
        }
        else
        {
        $('#txtcanal').html('<option value="">Selecccion el canal</option>');

        }
    });

    //Carga datos de ruta segun canal
    $('#txtcanal').change(function(){
        var Id_Canal = $('#txtcanal').val();

        if(Id_Canal != '')
        {
            $.ajax({
            url:"<?php echo base_url();?>index.php/cell_form/fetch_ruta",
            method:"POST",
            data:{Id_Canal:Id_Canal},

            success:function(data)
            {
            
                $('#txtruta').html(data);

            }
            });
        }
        else
        {
        $('#txtruta').html('<option value="">Selecccion el canal</option>');

        }
    });

    //Carga datos de marca segun distribuidora
    $('#txtruta').change(function(){
        var Id_Distribuidora = $('#txtdistribuidora').val();

        if(Id_Distribuidora != '')
        {
            $.ajax({
            url:"<?php echo base_url();?>index.php/cell_form/fetch_Marca",
            method:"POST",
            data:{Id_Distribuidora:Id_Distribuidora},

            success:function(data)
            {
            
                $('#txtmarca').html(data);

            }
            });
        }
        else
        {
        $('#txtmarca').html('<option value="">Selecccion el canal deseado</option>');

        }
    });

    //Carga datos de modelo segun marca
    $('#txtmarca').change(function(){
        var Id_marca = $('#txtmarca').val();

        if(Id_marca != '')
        {
            $.ajax({
            url:"<?php echo base_url();?>index.php/cell_form/fetch_Modelo",
            method:"POST",
            data:{Id_marca:Id_marca},

            success:function(data)
            {
            
                $('#txtmodelo').html(data);

            }
            });
        }
        else
        {
        $('#txtmodelo').html('<option value="">Selecccion el modelo</option>');

        }
    });

        
    // Previsualizacion de imagen insertada frontal
    function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            // Asignamos el atributo src a la tag de imagen
            $('#img1').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
    }

    // Coloca la imagen insertada frontal
    $("#img_frontal").change(function() {
        readURL(this);
    });

     // Previsualizacion de imagen insertada trasera
     function readURL2(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            // Asignamos el atributo src a la tag de imagen
            $('#img2').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
    }

    // Coloca la imagen insertada trasera
    $("#img_trasera").change(function() {
        readURL2(this);
    });

    $("#r_form").on('submit', function(e){

        var distribuidora=document.getElementById("txtdistribuidora").value
        var canal =document.getElementById("txtcanal").value
        var ruta=document.getElementById("txtruta").value
        var marca= document.getElementById("txtmarca").value
        var modelo= document.getElementById("txtmodelo").value
        
        if(
            distribuidora.length != 0 && 
            canal.length  != 0 && 
            ruta.length  != 0 && 
            marca.length  != 0 && 
            modelo.length != 0 && 
            document.getElementById("img_frontal").files.length != 0  && 
            document.getElementById("img_trasera").files.length != 0 
        ){
            if(
                $('#PQ').prop('checked') ||
                $('#ECD').prop('checked') ||
                $('#BAD').prop('checked') ||
                $('#TVD').prop('checked') ||
                $('#THD').prop('checked') ||
                $('#BOD').prop('checked') ||
                $('#CD').prop('checked') ||
                $('#FC').prop('checked')
            ){
                e.preventDefault();
                $.ajax({
                    type: 'POST',
                    url: '<?php echo base_url('index.php/cell_form/registrar_datos')?>',
                    data: new FormData(this),
                    contentType: false,
                    cache: false,
                    processData:false,
                    beforeSend: function(){
                        $('#btn_enviar').attr("disabled","disabled");
                        $('#r_form').css("opacity","0.2");
                    },
                    success: function(msg){

                        if(msg = 1){
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
                
            }else{

                
                Swal.fire({
                icon: 'error',
                title: 'Error...',
                text: 'Seleccione almenos una opcion de daño',
                })
                return false;

            }

        }else{
            
             Swal.fire({
                icon: 'error',
                title: 'Error...',
                text: 'Todos los campos son obligatorios',
                })
                return false;
        }
      
    });

 
});

</script>
</html>