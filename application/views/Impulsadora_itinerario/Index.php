<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Accesorios</title>
  <!--Icon page-->
  <link href="Public/Img/favicon.png" rel="icon">
  <!-- Js itinerario impulso -->
  <script src="<?php echo base_url('Public/js/Itinerario_impulso.js') ?>"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>

<body>

  <div class="page-wrapper chiller-theme toggled">
    <main class="page-content">
      <section id="hero" class="wow fadeIn">

        <h1>Itinerario Impulsadoras</h1><br>
        <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">
        <div style="display: flex; flex-wrap:wrap;">

          <div class="content-field">
            <fieldset class="border p-2">
              <legend class="w-auto"> Itinerario Impulso</legend>
              <div class="form-row">
                <div class="form-group col-md-10">
                  <label for="exampleFormControlInput1">Carnet Impulsador</label>
                  <input type="text" class="form-control" id="txt_carnet_i" name="txt_carnet_i">

                </div>
                <div class="form-group " style="display:flex; align-items:center; margin-top:25px;">
                  <button class="btn btn-primary" type="button" id="btn_buscar_i"> <i class="fas fa-search"></i></button>
                </div>
                <div class="form-group col-md-10" style="display:none;">
                  <label for="exampleFormControlInput1">Id Impulsador</label>
                  <input type="text" class="form-control" id="txt_id_imp" name="txt_id_imp" disabled>
                </div>
                <div class="form-group col-md-10">
                  <label for="exampleFormControlInput1">Nombre Impulsador</label>
                  <input type="text" class="form-control" id="txt_n_impulsadora" name="txt_n_impulsadora" disabled>
                </div>
                <div class="form-group col-md-10">
                  <label for="exampleFormControlInput1">Distribuidora</label>
                  <input type="text" class="form-control" id="txt_distribuidora_i" name="txt_distribuidora_i" disabled>
                </div>
                <div class="form-group col-md-10" style="display:flex; align-items:center; margin-top:25px;">
                  <button class="btn btn-success" type="button" id="btn_añadir_i" data-toggle="modal" data-target="#add_clientes_i"> <i class="fas fa-plus"> Añadir Cliente</i></button>
                </div>
              </div>
            </fieldset>
          </div>

        </div>


        <div style="display:flex; justify-content:space-between; width:100%;">
          <div>
            <h2>Clientes de Itinerario</h2>
          </div>
          <div class="form-group">
            <button class="btn btn-primary" type="button" id="btn_guardar_itinerario"> <i class="fas fa-plus"> Guardar cambios</i></button>
          </div>
        </div>




        <table class="table" id="tbl_itinerario_impulso">
          <thead>
            <tr>
              <th style="display:none;">ItinerarioId</th>
              <th>Activo</th>
              <th style="display:none;">Id Cliente </th>
              <th>Codigo Cliente</th>
              <th>Nombre Cliente</th>
              <th>Direccion Cliente</th>
              <th>Lunes</th>
              <Th>Martes</Th>
              <th>Miercoles</th>
              <th>Jueves</th>
              <th>Viernes</th>
              <th>Sabado</th>
              <th>Domingo</th>
            </tr>
          </thead>
          <tbody id="tbl_body_itinerario">

          </tbody>
          <tfoot>
            <tr>
              <th style="display:none;">ItinerarioId</th>
              <th>Activo</th>
              <th style="display:none;">Id Cliente </th>
              <th>Codigo Cliente</th>
              <th>Nombre Cliente</th>
              <th>Direccion Cliente</th>
              <th>Lunes</th>
              <Th>Martes</Th>
              <th>Miercoles</th>
              <th>Jueves</th>
              <th>Viernes</th>
              <th>Sabado</th>
              <th>Domingo</th>
            </tr>
          </tfoot>
        </table>


      </section>
    </main>
  </div>

  <!-- Modal add clientes itinerario impulso-->
  <div class="modal fade" id="add_clientes_i" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus"></i> Nueva Visita</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" style="display: flex;  width:100%;">
         
            <div style="width: 50%;">
            <form action="" id="form-r-visitas"> 
              <div class="form-group ">
                <label for="exampleFormControlSelect1">Pais *</label>
                <select class="form-control" value="0" id="txt_pais_i" name="txt_pais_i">

                </select>
              </div>
              <div class="form-group ">
                <label for="exampleFormControlSelect1">Distribuidora *</label>
                <select class="form-control" id="txt_dist_i" name="txt_dist_i">
                  <option value="" disabled  value="0" selected>Seleccione una distribuidora</option>
                </select>
              </div>
              <div class="form-group ">
                <label for="exampleFormControlSelect1">Ruta *</label>
                <select class="form-control" id="txt_rutas_i" name="txt_rutas_i">
                  <option value="" disabled  value="0" selected>Seleccione una ruta</option>
                </select>
              </div>
              <div class="form-group ui-front">
                <label for="exampleFormControlSelect1">Cliente *</label>
                <input type="text" class="form-control" value="" id="txtclienteautocomplete" name="txtclienteautocomplete" placeholder="Escriba el codigo o nombre y seleccione">
              </div>

              <div class="form-group " style="display:none;">
                <label for="exampleFormControlSelect1">Cliente id</label>
                <input type="text" class="form-control" value="" id="txtidcliente" name="txtidcliente">
                <input type="text" class="form-control" value="" id="cod_cliente" name="cod_cliente">
                <input type="text" class="form-control" value="" id="nombre_cli" name="nombre_cli">
                <input type="text" class="form-control" value="" id="direc_cli" name="direc_cli">
              </div>
            </div>

            <div style="width: 50%; display:flex; align-content:center; justify-content:space-around; flex-flow:column wrap;">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="L_V" id="L_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Lunes
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="M_V" id="M_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Martes
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="X_V" id="X_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Miercoles
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="J_V" id="J_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Jueves
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="V_V" id="V_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Viernes
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="S_V" id="S_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Sabado
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="checkbox" name="D_V" id="D_V" value="option1">
                <label class="form-check-label" for="exampleRadios1">
                  Domingo
                </label>
              </div>
            </div>
          </form>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-primary" id="btn_crear_v">Registrar</button>
        </div>
      </div>
    </div>
  </div>

</body>

</html>