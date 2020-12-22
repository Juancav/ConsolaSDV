<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
  <title>Accesorios</title>

  <!--Icon page-->
  <link href="Public/Img/favicon.png" rel="icon">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Accesorios.css') ?>">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


</head>

<body>
  <div class="page-wrapper chiller-theme toggled">
    <main class="page-content">
      <section id="hero" class="wow fadeIn">
        <h1>Inventario Accesorios</h1>

        <!-- Before Send Ajax -->
        <div class="load-7" style="display: none;" id="esperando">
          <div class="square-holder">
            <div class="square"></div>
          </div>
        </div><br>

        <hr color="blue" width="90%" size="10px" style="margin-top:-10px; margin-left:80px;">

        <div class="row row-cols-1 row-cols-md-3">
          <div class="col mb-4">
            <div class="card h-100">
              <div class="card-body">
                <h5 class="card-title">Crear categorias y accesorios</h5>
                <p class="card-text">Agregar nuevas categorias y nuevos accesorios x distribuidora. </p> <br>
              </div>
              <div class="card-footer text-muted">
                <button class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#RegistrarCategoria"> <i class="far fa-check-circle"></i> Categoria</button>
                <button class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#RegistrarProducto"><i class="far fa-check-circle"></i> Accesorio</button>
              </div>
            </div>
          </div>
          <div class="col mb-4">
            <div class="card h-100">
              <div class="card-body">
                <h5 class="card-title"> Ver Categorias y accesorios</h5>
                <p class="card-text">Consultar modificar y/o inactivar categorias o accesorios</p> <br>
                <div class=" ">
                  <div class="form-row">
                    <select name="txtdistribuidora" id="txtdistribuidora" class="form-control btn-sm" style="margin-right: 15px;">
                    </select><br>
                  </div>
                </div>
              </div>
              <div class="card-footer text-muted">
                <button class="btn btn-outline-primary btn-sm" OnClick="CCategoria();" id="btnbuscarcategoria"> <i class="far fa-bookmark"></i> Categorias</button>
                <button class="btn btn-outline-primary btn-sm" OnClick="CAccesorios();" id="btnbuscaraccesorios"><i class="far fa-bookmark"></i> Accesorios</button>

              </div>
            </div>
          </div>
          <div class="col mb-4">
            <div class="card h-100">
              <div class="card-body">
                <h5 class="card-title">Nuevos Ingresos Accesorios</h5>
                <p class="card-text">Registro de cantidades de nuevos ingresos de accesorios para equipo de facturacion</p> <br>
              </div>
              <div class="card-footer c-white">
                <button class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#AñadirProducto"> <i class="fas fa-plus"></i> Añadir</button>

              </div>
            </div>
          </div>

          <div class="col mb-4">
            <div class="card h-100">
              <div class="card-body">
                <h5 class="card-title">Inventario y entrega de accesorios</h5>
                <p class="card-text">Visualizar inventario de accesorios y realizar entrega de equipo</p> <br>
                <button class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="#AsignarAccesorioVendedor"><i class="fas fa-child"></i> Vendedores</button>
                <button class="btn btn-outline-danger btn-sm" data-toggle="modal" data-target="#AsignarAccesorioImpulsadoras"><i class="fas fa-female"></i> Impulsadoras</button>

              </div>
              <div class="card-footer text-muted">

                <button class="btn btn-outline-primary btn-sm" OnClick="Mostrar_Stock();"> <i class="fas fa-binoculars"></i> Consultar</button>
                <?php
                if ($this->session->userdata('Id_Distribuidora') == 1) {
                  echo "<button  class='btn btn-outline-primary btn-sm'  OnClick='All_Stock();'> <i class='fas fa-binoculars'></i> Consultar Todo</button>";
                } else {
                }
                ?>

              </div>
            </div>
          </div>
        </div>

        <hr>
        <br><br>


        <!-- TABLA DE DATOS ACCESORIOS -->
        <div id="ContenidoAcce_Cat">

        </div>

        <div>


    </main>
    <input type="radio" id="mostrar-modal" name="modal" />
    <label class="PdfDispositivos" for="mostrar-modal"><span style="font-size:22px;"><i class="fas fa-file-pdf"></i></span></label>
    <input type="radio" id="cerrar-modal" name="modal" />
    <label for="cerrar-modal">X</label>

    <div id="modal">
      <h4> <i class="fas fa-list-ul"></i> Historial de entrega </h4><br>

      <div id="tablapdf">

        <div class="form-row">
          <div class="form-group col-md-4">
            <label for="exampleFormControlSelect1">
              <h6>Distribuidora</h6>
            </label>
            <select class="form-control" id="bdistribuidora" name="bdistribuidora">
              <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
              <?php
              foreach ($arrDistribuidora as $row) {
                echo '<option value="' . $row->Id_Distribuidora . '">' . $row->Nombre_Distribuidora . '</option>';
              }
              ?>
            </select>
          </div>

          <div class="form-group col-md-3">
            <label for="exampleFormControlSelect1"><strong>
                <h6>Canal</h6>
              </strong></label>
            <select class="form-control" id="bcanal" name="bcanal">
              <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
            </select>
          </div>

          <div class="form-group col-md-3">
            <label for="exampleFormControlSelect1"><strong>
                <h6>Ruta</h6>
              </strong></label>
            <select class="form-control" id="bruta" name="bruta">
              <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
            </select>
          </div>

          <div class="col-md-2 p-4">
            <button class="btn btn-primary " id="btn_searchdispositivos" onclick="ConsultarPDF()" style="margin-top:3px;"> <i class="fas fa-search"></i></button>
          </div>

        </div>

        <div class="tablaentrega">



        </div>

      </div>

    </div>

  </div>
</body>

<!-- Modal, Entrega de accesorios vendedores -->
<div class="modal fade" id="AsignarAccesorioVendedor" tabindex="-1" role="dialog" aria-labelledby="AsignarAccesorioVendedor" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">

    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title" id="AsignarAccesorioVendedor"> <i class="far fa-plus-square"></i> Entrega accesorios vendedores </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">

        <div class="form-row">


          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Distribuidora</label>
            <select class="form-control" id="mtxtdistribuidoraAsignar" name="mtxtdistribuidoraAsignar">
              <option disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Canal</label>
            <select class="form-control" id="mtxtcanalAsignar" name="mtxtcanalAsignar">
              <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Ruta</label>
            <select class="form-control" id="mtxtrutaAsignar" name="mtxtrutaAsignar">
              <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Empleado</label>
            <div for="inputEmail4" id="NombreEmpleado">
            </div>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Fecha asignacion</label>
            <input type="date" class="form-control" id="mtxtfechaVendedor" name="mtxtfechaVendedor">
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Categoria</label>
            <select class="form-control" id="mtxtcategoriaprodAsignar" name="mtxtcategoriaprod">
              <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
              <?php
              foreach ($arrCategoria as $row) {
                echo '<option value="' . $row->Id_Categoria . '">' . $row->Nombre . '</option>';
              }
              ?>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Accesorio</label>
            <select class="form-control" id="mtxtproductoAsignar" name="mtxtproductoAsignar">
              <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Existencias</label>
            <input type="number" class="form-control" id="existenciasprod" disabled="disabled">
          </div>

        </div>

        <h3 style="text-align:center; font-size:20px;"> Motivo De Entrega</h3>

        <div class="form-row" style="margin-left:185px;">


          <div class="radio">
            <input type="radio" id="radio1" name="radio" value="ROBO">
            <label for="radio1">
              <div class="checker"></div>
              Robo
            </label>
          </div>

          <div class="radio">
            <input type="radio" id="radio2" name="radio" value="HURTO">
            <label for="radio2">
              <div class="checker"></div>
              Hurto
            </label>
          </div>

          <div class="radio">
            <input type="radio" id="radio3" name="radio" value="DAÑO">
            <label for="radio3">
              <div class="checker"></div>
              Daño
            </label>
          </div>

          <div class="radio">
            <input type="radio" id="radio4" name="radio" value="PRIMERA VEZ">
            <label for="radio4">
              <div class="checker"></div>
              Primera Vez
            </label>
          </div>


        </div>

        <button class="btn btn-success" OnClick="addTable();" style="margin-left: 85%;"> <i class="fas fa-plus"></i> Añadir</button><br>
        <hr color="black">
        <form action="" id="Form-table">

          <div id="metric_results">

            <h3 style="text-align:center; font-size:20px; font-weight:bold;"> Detalle De Accesorios </h3><br>

            <table class="table" id="TableVendedores">
              <thead>
                <tr>
                  <th style="display: none">Id_Accesorio</th>
                  <th style="display: none">Id_distribuidora</th>
                  <th style="display: none">Id_Canal</th>
                  <th style="display: none">Id_Ruta</th>
                  <th style="display: none">Id_Empleado</th>
                  <th style="display: none">Fecha</th>
                  <th>Ruta</th>
                  <th>Nombre Empleado</th>
                  <th>Nombre Accesorio</th>
                  <th>Cantidad </th>
                  <th>Motivo Entrega </th>
                  <th>Accion </th>

                </tr>
              </thead>
              <tbody id="tablita">

              </tbody>
            </table>

          </div>

        </form>
        <hr color="black">

      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtnsalidaproductoVendedores">Guardar</button>

      </div>

    </div>

  </div>

</div>


<!-- Modal, Entrega de accesorios impulsadoras -->
<div class="modal fade" id="AsignarAccesorioImpulsadoras" tabindex="-1" role="dialog" aria-labelledby="AsignarAccesorioImpulsadoras" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">

    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title" id="AsignarAccesorioImpulsadoras"> <i class="far fa-plus-square"></i> Entrega accesorios impulso </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">

        <div class="form-row">

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Canal</label>
            <select class="form-control" id="mtxtcanalAsignarImpulso" name="mtxtcanalAsignarImpulso">
              <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Ruta</label>
            <select class="form-control" id="mtxtrutaAsignarImpulso" name="mtxtrutaAsignarImpulso">
              <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Empleado</label>
            <select class="form-control" id="mtxtEmpleadoImpulso" name="mtxtEmpleadoImpulso">
              <option selected="true" disabled="disabled" value="">Seleccione La Impulsadora</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Categoria</label>
            <select class="form-control" id="mtxtcategoriaprodAsignarImpulsadora" name="mtxtcategoriaprodAsignarImpulsadora" required>
              <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
              <?php
              foreach ($arrCategoria as $row) {
                echo '<option value="' . $row->Id_Categoria . '">' . $row->Nombre . '</option>';
              }
              ?>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Accesorio</label>
            <select class="form-control" id="mtxtproductoAsignarImpulso" name="mtxtproductoAsignarImpulso">
              <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Existencias</label>
            <input type="text" class="form-control" id="existenciasprodimpulso" disabled="disabled">
          </div>

          <div class="form-group col-md-6">
            <label for="exampleFormControlSelect1">Fecha asignacion</label>
            <input type="date" class="form-control" id="mtxtfechaImpulsadora" name="mtxtfechaImpulsadora">
          </div>
        </div>

        <h3 style="font-size:20px; text-align:center;"> Motivo De Entrega</h3>

        <div class="form-row" style="margin-left:185px;">

          <div class="radio">
            <input type="radio" id="radio5" name="radioimp" value="ROBO">
            <label for="radio5">
              <div class="checker"></div>
              Robo
            </label>
          </div>

          <div class="radio">
            <input type="radio" id="radio6" name="radioimp" value="HURTO">
            <label for="radio6">
              <div class="checker"></div>
              Hurto
            </label>
          </div>

          <div class="radio">
            <input type="radio" id="radio7" name="radioimp" value="DAÑO">
            <label for="radio7">
              <div class="checker"></div>
              Daño
            </label>
          </div>

          <div class="radio">
            <input type="radio" id="radio8" name="radioimp" value="PRIMERA VEZ">
            <label for="radio8">
              <div class="checker"></div>
              Primera Vez
            </label>
          </div>

        </div>

        <button class="btn btn-success" OnClick="addTableImpul();" style="margin-left:85%;"> <i class="fas fa-plus"></i> Añadir</button>

        <form action="" id="Form-table">

          <div id="metric_results">
            <hr color="black">
            <h3 style="color: black; font-weight: bold; font-size:20px; text-align:center;"> Detalle De Accesorios </h3><br>
            <table class="table" id="TableImpulso">
              <thead>
                <tr>
                  <th class="th" style="display: none">Id_Accesorio</th>
                  <th class="th" style="display: none">Id_distribuidora</th>
                  <th class="th" style="display: none">Id_Canal</th>
                  <th class="th" style="display: none">Id_Ruta</th>
                  <th class="th" style="display: none">Id_Empleado</th>
                  <th class="th" style="display: none">Fecha</th>
                  <th class="th">Ruta</th>
                  <th class="th">Nombre Empleado</th>
                  <th class="th">Nombre Accesorio</th>
                  <th class="th">Cantidad </th>
                  <th class="th">Motivo Entrega </th>
                  <th class="th">Accion </th>

                </tr>
              </thead>

              <tbody id="tablita-impul">
              </tbody>

            </table>
            <hr color="black">
          </div>


        </form>

      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtnsalidaproductoImpulsadoras">Guardar</button>

      </div>

    </div>

  </div>
</div>


<!-- Modal , registrar categorias de accesorios -->
<div class="modal fade" id="RegistrarCategoria" tabindex="-1" role="dialog" aria-labelledby="RegistrarCategoria" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="RegistrarCategoria"> <i class="fas fa-plus"></i> Registrar Categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method='POST' id='form_CatAccesorios' name='form_CatAccesorios'>

          <div class="form-group" style="margin:0 auto;">

            <label for="input">Nombre Categoria</label>
            <input type="text" class="form-control " id="mtxtnombre" name="mtxtnombre" placeholder="Nombre Categoria">
            <br>
            <label for="input"> Fecha Registro</label>
            <input type="date" id="fechacat" name="fechacat" class="form-control ">
            <br>
            <label for="input">Descripcion Categoria</label>
            <textarea type="textarea" class="form-control " id="mtxtdescripcion" name="mtxtdescripcion" placeholder="Descripcion Categoria" rows="3"></textarea>
          </div>
        </FORM>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtnRegistrarCategoria">Guardar</button>


      </div>
    </div>
  </div>
</div>

<!-- Modal , registrar nuevos accesorios -->
<div class="modal fade" id="RegistrarProducto" tabindex="-1" role="dialog" aria-labelledby="RegistrarProducto" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <h5 class="modal-title" id="RegistrarProducto"> <i class="fas fa-plus"></i> Crear Accesorio</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-row">
          <div class="form-group col-md-10">
            <label for="input">Nombre Accesorio</label>
            <input type="text" class="form-control" id="mtxtnombreprod" name="mtxtnombreprod" placeholder="Nombre Producto">
          </div>

          <div class="form-group col-md-2">
            <label for="input">Precio $</label>
            <input type="text" class="form-control" id="mtxtprecio" name="mtxtprecio" placeholder="0.00">
          </div>


          <div class="form-group col-md-6">
            <label for="input">Marca</label>
            <input type="text" class="form-control" id="mtxtmarca" name="mtxtmarca" placeholder="Marca">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Tipo</label>
            <input type="text" class="form-control " id="mtxttipo" name="mtxttipo" placeholder="Tipo">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Modelo</label>
            <input type="text" class="form-control" id="mtxtmodelo" name="mtxtmodelo" placeholder="Modelo">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Color</label>
            <input type="text" class="form-control" id="mtxtcolor" name="mtxtcolor" placeholder="Negro">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Vida Util</label>
            <input type="text" class="form-control" id="mtxtvidautil" name="mtxtvidautil" placeholder=" 1 Año">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Caracteristicas</label>
            <input type="text" class="form-control" id="mtxtcaracteristicas" name="mtxtcaracteristicas" placeholder="Caracteristicas">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Fecha Registro</label>
            <input type="date" class="form-control" id="mtxtfecha" name="mtxtfecha">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Categoria</label>
            <select class="form-control" id="mtxtcategoria" name="mtxtcategoria">
              <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
              <?php
              foreach ($arrCategoria as $row) {
                echo '<option value="' . $row->Id_Categoria . '">' . $row->Nombre . '</option>';
              }
              ?>
            </select>
          </div>

        </div>




      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtnRegistrarProducto">Guardar</button>


      </div>
    </div>
  </div>
</div>

<!-- Modal , Agregar productos al stock -->
<div class="modal fade" id="AñadirProducto" tabindex="-1" role="dialog" aria-labelledby="AñadirProducto" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">

      <div class="modal-header">

        <h5 class="modal-title" id="AñadirProducto"><i class="fas fa-plus"></i> Añadir Producto</h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">

        <div class="form-group">

          <label for="exampleFormControlSelect1">Categoria</label>
          <select class="form-control" id="mtxtcategoriaprodñ" name="mtxtcategoriaprodñ" required>
            <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
            <?php
            foreach ($arrCategoria as $row) {
              echo '<option value="' . $row->Id_Categoria . '">' . $row->Nombre . '</option>';
            }
            ?>
          </select>

        </div>

        <div class="form-group ">
          <label for="exampleFormControlSelect1">Categoria</label>
          <select class="form-control" id="mtxtproducto" name="mtxtproducto">
            <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
          </select>
        </div>

        <div class="form-group">
          <label for="exampleFormControlSelect1"># Orden de compra</label>
          <input type="text" class="form-control" id="mtxtn_o_compra" name="mtxtn_o_compra">
        </div>

        <div class="form-group">
          <label for="exampleFormControlSelect1">Ingreso de equipo</label>
          <input type="date" class="form-control" id="mtxtfechaproducto" name="mtxtfechaproducto">
        </div>

        <div class="form-group ">
          <label for="exampleFormControlSelect1">Cantidad</label>
          <input type="number" class="form-control" id="mtxtcantidad" name="mtxtcantidad">
        </div>


      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" name="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtncantidadproducto" name="mbtncantidadproducto">Guardar</button>

      </div>

    </div>
  </div>
</div>

<!-- Modal , editar accesorios -->
<div class="modal fade" id="EditarProducto" tabindex="-1" role="dialog" aria-labelledby="EditarProducto" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditarProducto"><i class="far fa-edit"></i> Editar Accesorios</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-row">

          <!-- Id accesorios -->
          <input type="text" class="form-control" id="mtxtidaccesorioedith" name="mtxtidaccesorioedith" style="display:none;">

          <div class="form-group col-md-10">
            <label for="input">Nombre Accesorio</label>
            <input type="text" class="form-control" id="mtxtnombreprodedith" name="mtxtnombreprodedith" placeholder="Nombre Producto">
          </div>

          <div class="form-group col-md-2">
            <label for="input">Precio $</label>
            <input type="text" class="form-control" id="mtxtprecioedith" name="mtxtprecioedith" placeholder="0.00">
          </div>


          <div class="form-group col-md-6">
            <label for="input">Marca</label>
            <input type="text" class="form-control" id="mtxtmarcaedith" name="mtxtmarcaedith" placeholder="Marca">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Tipo</label>
            <input type="text" class="form-control " id="mtxttipoedith" name="mtxttipoedith" placeholder="Tipo">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Modelo</label>
            <input type="text" class="form-control" id="mtxtmodeloedith" name="mtxtmodeloedith" placeholder="Modelo">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Color</label>
            <input type="text" class="form-control" id="mtxtcoloredith" name="mtxtcoloredith" placeholder="Negro">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Vida Util</label>
            <input type="text" class="form-control" id="mtxtvidautiledith" name="mtxtvidautiledith" placeholder=" 1 Año">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Caracteristicas</label>
            <input type="text" class="form-control" id="mtxtcaracteristicasedith" name="mtxtcaracteristicasedith" placeholder="Caracteristicas">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Fecha Registro</label>
            <input type="date" class="form-control" id="mtxtfechaedith" name="mtxtfechaedith">
          </div>

          <div class="form-group col-md-6">
            <label for="input">Categoria</label>
            <select class="form-control" id="mtxtcategoriaedith" name="mtxtcategoriaedith">
              <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
              <?php
              foreach ($arrCategoria as $row) {
                echo '<option value="' . $row->Id_Categoria . '">' . $row->Nombre . '</option>';
              }
              ?>
            </select>
          </div>

        </div>




      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtnEditarProducto">Guardar</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal , editar Categoria -->
<div class="modal fade" id="EditarCategoria" tabindex="-1" role="dialog" aria-labelledby="EditarCategoria" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="EditarCategoria"><i class="far fa-edit"></i> Editar Categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method='POST' id='form_CatAccesoriosedith' name='form_CatAccesoriosedith'>


          <div class="form-group ">
            <!-- Id_categoria -->
            <input type="text" class="form-control " id="mtxtidcategoriaedith" name="mtxtidcategoriaedith" style="display:none;">

            <label for="input">Nombre Categoria</label>
            <input type="text" class="form-control " id="mtxtnombrecategoriaedith" name="mtxtnombrecategoriaedith" placeholder="Nombre Categoria">
            <br>
            <label for="input"> Fecha Registro</label>
            <input type="date" id="fechacatedith" name="fechacatedith" class="form-control">
            <br>
            <label for="input">Descripcion Categoria</label>
            <textarea type="textarea" class="form-control " id="mtxtdescripcionedith" name="mtxtdescripcionedith" placeholder="Descripcion Categoria" rows="3"></textarea>
          </div>
        </FORM>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="mbtnEditarCategoria">Guardar</button>


      </div>
    </div>
  </div>
</div>


<!-- JAVASCRIPT -->
<script>
  $(document).ready(function() {

    //Obtener existencias de productos para impulso
    $("#mtxtproductoAsignarImpulso").change(function() {

      var Id_Accesorio = document.getElementById("mtxtproductoAsignarImpulso").value;
      var acumulador = 0;
      var id_producto = $('#mtxtproductoAsignarImpulso').serialize();

      $.ajax({
        url: "<?php echo base_url(); ?>index.php/Accesorios/Existencia_Producto_Impulso",
        method: "POST",
        data: id_producto,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {

          $("#esperando").css('display', 'none');

          var registros = eval(respuesta);

          if (respuesta == '[]') {
            $('#existenciasprodimpulso').val('0');
          } else {
            for (var i = 0; i < registros.length; i++) {
              $('#existenciasprodimpulso').val(registros[i]["Stock"]);

            }
          }
          $("#TableImpulso tbody tr").each(function() {
            var existencias = document.getElementById("existenciasprodimpulso").value;
            if ($(this).children('td').slice(0, 1).text() == Id_Accesorio) {

              acumulador = acumulador + 1

              $('#existenciasprodimpulso').val(existencias - acumulador);

            } else {

            }

            acumulador = 0;

          });

        }
      });

    });

    //Consultar accesorios entregados
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Accesorios/Consultar_PDF",
      method: "POST",

      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {

        $("#esperando").css('display', 'none');

        var registros = eval(respuesta);


        html = "<table class='table'>";
        html += "<tr><th style='display:none;'>ID</th><th>Ruta</th><th>Nombre</th><th>Descripcion</th><th>Fecha Salida</th><th>Archivo PDF</th></tr>";
        html += "<tbody>";

        for (var i = 0; i < registros.length; i++) {
          html += "<tr><td style='display:none;'>" + registros[i]["Id_Ruta"] +
            "</td><td>" + registros[i]["Nombre_Ruta"] +
            "</td><td>" + registros[i]["Nombre"] +
            "</td><td>" + registros[i]["nombre_accesorio"] + " " + registros[i]["marca_accesorio"] + " " + registros[i]["tipo_accesorio"] +
            "</td><td>" + registros[i]["fecha_salida"] +
            "</td><td style='display:none;'>" + registros[i]["Id_PDF"] +
            "</td><td class='td'><a href='<?php echo base_url(); ?>index.php/Accesorios/pdfdetails/" + registros[i]["Id_PDF"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>" +
            "</td></tr>";


        };


        html += "</tbody></table>";


        $(".tablaentrega").html(html);


      }
    });

    //Obtener distribuidoras
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_distribuidora",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(data) {

        $("#esperando").css('display', 'none');


        $("#esperando").css('display', 'none');
        //Distribuidora en historial entrega
        $('#bdistribuidora').html(data);
        //Distribuidora en asignar accesorios
        $('#mtxtdistribuidoraAsignar').html(data);
        //Distribuidora en consultar accesorios y categorias
        $('#txtdistribuidora').html(data);

        $('#mtxtcanalAsignar').html('<option value="">Seleccione El Canal</option>');
        $('#mtxtrutaAsignar').html('<option value="">Seleccione la Ruta</option>');
      }
    });

    //Existencias de productos para vendedores.
    $("#mtxtproductoAsignar").change(function() {
      var Id_Accesorio = document.getElementById("mtxtproductoAsignar").value;
      var acumulador = 0;
      var id_producto = $('#mtxtproductoAsignar').serialize();

      $.ajax({
        url: "<?php echo base_url(); ?>index.php/Accesorios/Existencia_Producto",
        method: "POST",
        data: id_producto,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {

          $("#esperando").css('display', 'none');

          var registros = eval(respuesta);

          if (respuesta == '[]') {

            $('#existenciasprod').val('0');

          } else {

            for (var i = 0; i < registros.length; i++) {

              $('#existenciasprod').val(registros[i]["Stock"]);



            }


          }

          $("#TableVendedores tbody tr").each(function() {
            var existencias = document.getElementById("existenciasprod").value;
            if ($(this).children('td').slice(0, 1).text() == Id_Accesorio) {

              acumulador = acumulador + 1

              $('#existenciasprod').val(existencias - acumulador);

            } else {

            }

            acumulador = 0;

          });


        }

      });





    });

    //Obtener canal en asignar accesorios vendedores
    $('#mtxtdistribuidoraAsignar').change(function() {
      var Id_Distribuidora = $('#mtxtdistribuidoraAsignar').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },

          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(data) {

            $("#esperando").css('display', 'none');

            $('#mtxtcanalAsignar').html(data);
            $('#mtxtrutaAsignar').html('<option value="">Seleccione la Ruta</option>');
          }
        });
      } else {
        $('#mtxtcanalAsignar').html('<option value="">Selecccion el canal</option>');
        $('#mtxtrutaAsignar').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    //Obtener rutas segun canal en entrega de accesorios vendedores
    $('#mtxtcanalAsignar').change(function() {
      var Id_Canal = $('#mtxtcanalAsignar').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_ruta",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(data) {

            $("#esperando").css('display', 'none');

            $('#mtxtrutaAsignar').html(data);
          }
        });
      } else {
        $('#mtxtrutaAsignar').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    //Obtener empleado en asignar accesorios vendedores
    $('#mtxtrutaAsignar').change(function() {
      var Id_Ruta = $('#mtxtrutaAsignar').val();

      if (Id_Ruta != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_empleado",
          method: "POST",
          data: {
            Id_Ruta: Id_Ruta
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(data) {

            $("#esperando").css('display', 'none');
            $('#NombreEmpleado').html(data);

          }
        });
      } else {
        $('#NombreEmpleado').html('NO ENCONTRADO');
      }
    });

    //Obtener canal para impulso en entrega de accesorios
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_canal_Impulso",
      method: "POST",


      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(data) {

        $("#esperando").css('display', 'none');
        $('#mtxtcanalAsignarImpulso').html(data);

      }
    });

    //Consultar productos en asignar accesorios impulso
    $('#mtxtcategoriaprodAsignarImpulsadora').change(function() {
      var Id_Categoria = $('#mtxtcategoriaprodAsignarImpulsadora').val();

      if (Id_Categoria != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_producto",
          method: "POST",
          data: {
            Id_Categoria: Id_Categoria
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(respuesta) {

            $("#esperando").css('display', 'none');


            $('#mtxtproductoAsignarImpulso').html(data);
          }
        });
      } else {
        $('#mtxtproductoAsignarImpulso').html('<option value="">Selecccion el  OPCIONAL</option>');
      }
    });

    //Consultar rutas en asignar accesorios impulso
    $('#mtxtcanalAsignarImpulso').change(function() {
      var Id_Canal = $('#mtxtcanalAsignarImpulso').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_ruta",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(respuesta) {

            $("#esperando").css('display', 'none');

            $('#mtxtrutaAsignarImpulso').html(data);
          }
        });
      } else {
        $('#mtxtrutaAsignarImpulso').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    //Buscar empleados impulso en entrega de accesorios para impulso
    $('#mtxtrutaAsignarImpulso').change(function() {

      var Id_Ruta = $('#mtxtrutaAsignarImpulso').val();
      if (Id_Ruta != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_empleado_Impulso",
          method: "POST",
          data: {
            Id_Ruta: Id_Ruta
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(respuesta) {

            $("#esperando").css('display', 'none');


            $('#mtxtEmpleadoImpulso').html(data);

          }
        });
      } else {
        $('#mtxtEmpleadoImpulso').html('<option value="">Selecccione la Ruta</option>');
      }
    });

    //consultar productos por categoria en ...
    $('#mtxtcategoriaprodAsignar').change(function() {
      var Id_Categoria = $('#mtxtcategoriaprodAsignar').val();

      if (Id_Categoria != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_producto",
          method: "POST",
          data: {
            Id_Categoria: Id_Categoria
          },

          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(data) {

            $("#esperando").css('display', 'none');

            $('#mtxtproductoAsignar').html(data);
          }
        });
      } else {
        $('#mtxtproductoAsignar').html('<option value="">Selecccion el  OPCIONAL</option>');
      }
    });

    //Obtener canal segun distribuidora de historial de entrega
    $('#bdistribuidora').change(function() {
      var Id_Distribuidora = $('#bdistribuidora').val();

      if (Id_Distribuidora != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_canal",
          method: "POST",
          data: {
            Id_Distribuidora: Id_Distribuidora
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(data) {
            $("#esperando").css('display', 'none');

            $('#bcanal').html(data);
            $('#bruta').html('<option value="" >Seleccione la Ruta</option>');
          }
        });
      } else {
        $('#bcanal').html('<option value="" >Selecccion el canal</option>');
        $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
      }
    });

    // obtener rutas segun canal de historial de entrega
    $('#bcanal').change(function() {
      var Id_Canal = $('#bcanal').val();
      if (Id_Canal != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Dispositivos/fetch_ruta_cell",
          method: "POST",
          data: {
            Id_Canal: Id_Canal
          },
          beforeSend: function() {
            $("#esperando").css('display', 'block');
          },
          success: function(data) {
            $("#esperando").css('display', 'none');

            $('#bruta').html(data);
          }
        });
      } else {
        $('#bruta').html('<option value="" >Selecccione la Ruta</option>');
      }
    });

    //Consultar productos por categoria en ....
    $('#mtxtcategoriaprodñ').change(function() {
      var Id_Categoria = $('#mtxtcategoriaprodñ').val();

      if (Id_Categoria != '') {
        $.ajax({
          url: "<?php echo base_url(); ?>index.php/Accesorios/fetch_producto",
          method: "POST",
          data: {
            Id_Categoria: Id_Categoria
          },

          success: function(data) {

            $('#mtxtproducto').html(data);
          }
        });
      } else {
        $('#mtxtproducto').html('<option value="">Selecccion el  OPCIONAL</option>');
      }
    });

  });

  //Registrar salidas de accesorios para vendedores
  $('#mbtnsalidaproductoVendedores').click(function() {

    var Id_Accesorio = document.getElementById("mtxtproductoAsignar").value;
    var Id_distribuidora = document.getElementById("mtxtdistribuidoraAsignar").value;
    var Id_Canal = document.getElementById("mtxtcanalAsignar").value;
    var Id_Ruta = document.getElementById("mtxtrutaAsignar").value;
    var filasTabla = document.getElementById("TableVendedores").rows.length;
    var producto = mtxtproductoAsignar.options[mtxtproductoAsignar.selectedIndex].text;
    var Ruta = mtxtrutaAsignar.options[mtxtrutaAsignar.selectedIndex].text;
    var Fecha_Salida = document.getElementById("mtxtfechaVendedor").value;
    var Cantidad = 1;
    var existencias = document.getElementById("existenciasprod").value;

    if ($("input[name='radio']").is(':checked')) {
      var motivo_entrega = $('input[name="radio"]:checked').val();
    } else {
      var motivo_entrega = '';
    }

    filasTabla = filasTabla - 1;

    if (Id_Accesorio.length == 0 || motivo_entrega.length == 0 || Id_distribuidora.length == 0 || Id_Canal.length == 0 || Id_Ruta.length == 0 || Fecha_Salida.length == 0 || filasTabla == 0) {
      swal.fire({
        title: 'Oppss...',
        text: 'Agregue productos a la tabla y/o rellene todos los campos',
        icon: 'error'
      });
      return false;

    } else {
      var table_data = [];
      var sub = [];

      $('#tablita tr').each(function(row, tr) {


        if ($(tr).find('td:eq(0)').text() == "") {

        } else {

          sub = {
            'Id_Accesorios': $(tr).find('td:eq(0)').text(),
            'Id_Distribuidora': $(tr).find('td:eq(1)').text(),
            'Id_Canal': $(tr).find('td:eq(2)').text(),
            'Id_Ruta': $(tr).find('td:eq(3)').text(),
            'Id_Empleados': $(tr).find('td:eq(4)').text(),
            'Fecha_Salida': $(tr).find('td:eq(5)').text(),
            'motivo_entrega': $(tr).find('td:eq(10)').text(),

          };

          table_data.push(sub);

        }

      });

      swal.fire({
        text: 'Desea asignar los accesorios?',
        icon: 'question',
        showLoaderOnConfirm: true,
        showCancelButton: true,
        confirmButtonText: 'Si',
        preConfirm: () => {
          var data = {
            'Datos': table_data
          };

          $.ajax({
            data: data,
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Accesorios/Salida_Accesorios",
            crossOrigin: false,
            datatype: 'json',
            beforeSend: function() {
              $("#esperando").css('display', 'block');
            },
            success: function(result) {

              $("#esperando").css('display', 'none');

              if (result.Status == 'success') {
                let timerInterval
                Swal.fire({
                  title: 'Excelente!',
                  text: 'Entrega de equipo registrada correctamente',
                  icon: 'success',
                  timer: 2000,
                  timerProgressBar: true,
                  showConfirmButton: false
                }).then((result) => {
                  if (
                    result.dismiss === Swal.DismissReason.timer
                  ) {
                    location.reload();
                  }
                });
              } else {
                let timerInterval
                Swal.fire({
                  title: 'Oppsss.',
                  text: 'Error al enviar registro',
                  icon: 'warning',
                  timer: 2000,
                  timerProgressBar: true,
                  showConfirmButton: false
                }).then((result) => {
                  if (
                    result.dismiss === Swal.DismissReason.timer
                  ) {
                    location.reload();
                  }
                });
              }
            }

          });

        }
      }, );

    }

  });

  //Registrar salidas de accesorios para impulso
  $('#mbtnsalidaproductoImpulsadoras').click(function() {
    var Id_Accesorio = document.getElementById("mtxtproductoAsignarImpulso").value;
    var Id_distribuidora = <?PHP echo $this->session->userdata('Id_Distribuidora'); ?>;
    var Id_Canal = document.getElementById("mtxtcanalAsignarImpulso").value;
    var Id_Ruta = document.getElementById("mtxtrutaAsignarImpulso").value;
    var producto = mtxtproductoAsignarImpulso.options[mtxtproductoAsignarImpulso.selectedIndex].text;
    var Ruta = mtxtrutaAsignarImpulso.options[mtxtrutaAsignarImpulso.selectedIndex].text;
    var Fecha_Salida = document.getElementById("mtxtfechaImpulsadora").value;
    var Cantidad = 1;
    var existencias = document.getElementById("existenciasprodimpulso").value;
    var NombreEmpleado = mtxtEmpleadoImpulso.options[mtxtEmpleadoImpulso.selectedIndex].text;
    var Id_Empleado = document.getElementById("mtxtEmpleadoImpulso").value;
    var filasTabla = document.getElementById("TableImpulso").rows.length;

    if ($("input[name='radioimp']").is(':checked')) {
      var motivo_entrega = $('input[name="radioimp"]:checked').val();
    } else {
      var motivo_entrega = '';
    }

    filasTabla = filasTabla - 1;

    if (Id_Accesorio.length == 0 || motivo_entrega.length == 0 || Id_distribuidora.length == 0 || Id_Canal.length == 0 || Id_Ruta.length == 0 || Fecha_Salida.length == 0 || Id_Empleado.length == 0 || filasTabla == 0) {
      swal.fire({
        title: 'Opps',
        text: 'Agregar accesorios y llenar todos campos es obligatorio',
        icon: 'error'
      });
      return false;

    } else {
      var table_data = [];
      var sub = [];

      $('#tablita-impul tr').each(function(row, tr) {


        if ($(tr).find('td:eq(0)').text() == "") {

        } else {

          sub = {
            'Id_Accesorios': $(tr).find('td:eq(0)').text(),
            'Id_Distribuidora': $(tr).find('td:eq(1)').text(),
            'Id_Canal': $(tr).find('td:eq(2)').text(),
            'Id_Ruta': $(tr).find('td:eq(3)').text(),
            'Id_Empleados': $(tr).find('td:eq(4)').text(),
            'Fecha_Salida': $(tr).find('td:eq(5)').text(),
            'motivo_entrega': $(tr).find('td:eq(10)').text(),


          };
          console.log(sub);
          table_data.push(sub);

        }

      });
      swal.fire({
        title: 'Asignacion...',
        text: 'Desea Asignar los Accesorios',
        icon: 'question',
        showLoaderOnConfirm: true,
        showCancelButton: true,
        confirmButtonText: 'Si',
        preConfirm: () => {
          var data = {
            'Datos': table_data
          };
          $.ajax({
            data: data,
            type: "POST",
            url: "<?php echo base_url(); ?>index.php/Accesorios/Salida_Accesorios",
            crossOrigin: false,
            datatype: 'json',
            beforeSend: function() {
              $("#esperando").css('display', 'block');
            },
            success: function(result) {

              $("#esperando").css('display', 'none');
              if (result.Status == 'success') {
                let timerInterval
                Swal.fire({
                  title: 'Excelente!',
                  text: 'Entregada de equipo registrada correctamente',
                  icon: 'success',
                  timer: 2000,
                  timerProgressBar: true,
                  showConfirmButton: false
                }).then((result) => {
                  if (
                    result.dismiss === Swal.DismissReason.timer
                  ) {
                    location.reload();
                  }
                });
              } else {
                let timerInterval
                Swal.fire({
                  title: 'Oppsss..',
                  text: 'Error al enviar registro',
                  icon: 'warning',
                  timer: 2000,
                  timerProgressBar: true,
                  showConfirmButton: false
                }).then((result) => {
                  if (
                    result.dismiss === Swal.DismissReason.timer
                  ) {
                    location.reload();
                  }
                });
              }
            }

          });

        }
      }, );

    }

  });

  //Actualizar datos de categorias
  $('#mbtnEditarCategoria').click(function() {
    var Id_Categoria, nombre_categoria, fecha_registro, descripcion;

    Id_Categoria = document.getElementById("mtxtidcategoriaedith").value;
    nombre_categoria = document.getElementById("mtxtnombrecategoriaedith").value;
    fecha_registro = document.getElementById("fechacatedith").value;
    descripcion = document.getElementById("mtxtdescripcionedith").value;

    if (Id_Categoria.length == 0 || nombre_categoria.length == 0 || fecha_registro.length == 0 || descripcion.length == 0) {

      swal.fire({
        title: 'Oppss',
        text: 'Todos los campos son obligatorios',
        icon: 'error'
      });
      return false;

    } else {


      $.ajax({
        method: 'POST',
        url: "<?php echo base_url(); ?>index.php/Accesorios/Actualizar_Categoria",
        data: {
          mtxtidcategoriaedith: Id_Categoria,
          mtxtnombrecategoriaedith: nombre_categoria,
          fechacatedith: fecha_registro,
          mtxtdescripcionedith: descripcion,

        },

        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(data) {

          $("#esperando").css('display', 'none');
          if (data == 1) {
            $('#EditarCategoria').modal('hide');
            let timerInterval
            Swal.fire({
              title: 'Excelente!',
              text: 'Registro actualizado correctamente',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {
                location.reload();
              }
            });

          }
        }
      });
    }
  });

  //Actualizar datos de accesorios
  $('#mbtnEditarProducto').click(function() {

    var Id_Accesorio, nombre_accesorio, precio_accesorio, marca_accesorio, modelo_accesorio, tipo_accesorio, color_accesorio, caracteristicas_accesorio, vida_util_accesorio, fecha_registro, Id_Categoria;
    Id_Accesorio = document.getElementById("mtxtidaccesorioedith").value;
    nombre_accesorio = document.getElementById("mtxtnombreprodedith").value;
    precio_u = document.getElementById("mtxtprecioedith").value;
    marca_accesorio = document.getElementById("mtxtmarcaedith").value;
    modelo_accesorio = document.getElementById("mtxtmodeloedith").value;
    tipo_accesorio = document.getElementById("mtxttipoedith").value;
    color_accesorio = document.getElementById("mtxtcoloredith").value;
    caracteristicas_accesorio = document.getElementById("mtxtcaracteristicasedith").value;
    vida_util_accesorio = document.getElementById("mtxtvidautiledith").value;
    fecha_registro = document.getElementById("mtxtfechaedith").value;
    Id_Categoria = document.getElementById("mtxtcategoriaedith").value;

    if (Id_Accesorio.length == 0 || nombre_accesorio.length == 0 || precio_u.length == 0 || marca_accesorio.length == 0 || modelo_accesorio.length == 0 || tipo_accesorio.length == 0 || color_accesorio.length == 0 || caracteristicas_accesorio.length == 0 || vida_util_accesorio.length == 0 || fecha_registro.length == 0 || Id_Categoria.length == 0) {

      swal.fire({
        title: 'Opppss.',
        text: 'Todos los campos son obligatorios',
        icon: 'error'
      });
      return false;

    } else {


      $.ajax({
        method: 'POST',
        url: "<?php echo base_url(); ?>index.php/Accesorios/Actualizar_Accesorios",
        data: {
          mtxtidaccesorioedith: Id_Accesorio,
          mtxtnombreprodedith: nombre_accesorio,
          mtxtprecioedith: precio_u,
          mtxtmarcaedith: marca_accesorio,
          mtxtmodeloedith: modelo_accesorio,
          mtxttipoedith: tipo_accesorio,
          mtxtcoloredith: color_accesorio,
          mtxtcaracteristicasedith: caracteristicas_accesorio,
          mtxtvidautiledith: vida_util_accesorio,
          mtxtfechaedith: fecha_registro,
          mtxtcategoriaedith: Id_Categoria
        },
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(data) {

          $("#esperando").css('display', 'none');
          if (data == 1) {
            $('#EditarProducto').modal('hide');
            let timerInterval
            Swal.fire({
              title: 'Excelente!',
              text: 'Registro actualizado correctamente',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {
                location.reload();
              }
            });

          }
        }
      });
    }
  });

  //Registrar categorias
  $('#mbtnRegistrarCategoria').click(function() {

    nombre = document.getElementById("mtxtnombre").value;
    descripcion = document.getElementById("mtxtdescripcion").value;
    fecha = document.getElementById("fechacat").value;


    if (nombre.length == 0 || descripcion.length == 0 || fecha.length == 0) {

      swal.fire({
        title: 'Oppsss...',
        text: 'Todos Los Campos Son Obligatorios',
        icon: 'error'
      });
      return false;

    } else {

      // inhabilitar boton al hacer click
      $(this).attr('disabled', 'disabled');
      // //////////////////////////////////

      var Nombre = $('#mtxtnombre').val();
      var Descripcion = $('#mtxtdescripcion').val();
      var Fecha = $('#fechacat').val();

      $.ajax({
        method: 'POST',
        url: "<?php echo base_url(); ?>index.php/Accesorios/Ingresar_Categoria",
        data: {
          mtxtnombre: Nombre,
          mtxtdescripcion: Descripcion,
          fechacat: Fecha

        },
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(data) {

          $("#esperando").css('display', 'none');
          if (data == 1) {
            $('#RegistrarCategoria').hide();
            let timerInterval
            Swal.fire({
              title: 'Excelente',
              text: 'Categoria correctamente registrada',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {
                location.reload();
              }
            });
          }
        }
      });
    }

  });

  //Registrar nuevo producto/accesorio
  $('#mbtnRegistrarProducto').click(function() {

    nombre = document.getElementById("mtxtnombreprod").value;
    marca = document.getElementById("mtxtmarca").value;
    tipo = document.getElementById("mtxttipo").value;
    modelo = document.getElementById("mtxtmodelo").value;
    color = document.getElementById("mtxtcolor").value;
    vidautil = document.getElementById("mtxtvidautil").value;
    caracteristicas = document.getElementById("mtxtcaracteristicas").value;
    fecha = document.getElementById("mtxtfecha").value;
    categoria = document.getElementById("mtxtcategoria").value;
    precio = document.getElementById("mtxtprecio").value;



    if (nombre.length == 0 || precio.length == 0 || marca.length == 0 || tipo.length == 0 || categoria.length == 0 || modelo.length == 0 || color.length == 0 || vidautil.length == 0 || caracteristicas.length == 0 || fecha.length == 0) {

      swal.fire({
        title: 'Opppsss...',
        title: 'Todos Los Campos Son Obligatorios',
        type: 'error'
      });
      return false;

    } else {
      // inhabilitar boton al hacer click
      $(this).attr('disabled', 'disabled');

      $.ajax({
        method: 'POST',
        url: "<?php echo base_url(); ?>index.php/Accesorios/Ingresar_Producto",
        data: {
          mtxtnombreprod: nombre,
          mtxtmarca: marca,
          mtxttipo: tipo,
          mtxtmodelo: modelo,
          mtxtcolor: color,
          mtxtvidautil: vidautil,
          mtxtcaracteristicas: caracteristicas,
          mtxtfecha: fecha,
          mtxtcategoria: categoria,
          mtxtprecio: precio,

        },
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(data) {

          $("#esperando").css('display', 'none');
          if (data == 1) {

            $('#RegistrarProducto').hide();

            let timerInterval
            Swal.fire({
              title: 'Excelente!',
              text: 'Accesorio correctamente registrado',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {
                location.reload();
              }
            });
          }
        }
      });
    }
  });

  //Registrar existencias de productos
  $('#mbtncantidadproducto').click(function() {

    Id_Producto = document.getElementById("mtxtproducto").value;
    cantidad = document.getElementById("mtxtcantidad").value;
    N_o_compra = document.getElementById("mtxtn_o_compra").value;
    fecha_entrada = document.getElementById("mtxtfechaproducto").value;

    if (Id_Producto.length == 0 || cantidad.length == 0 || N_o_compra.length == 0 || fecha_entrada.length == 0) {

      swal.fire({
        title: 'Opppsss..',
        text: 'Todos Los Campos Son Obligatorios',
        icon: 'error'
      });
      return false;

    } else {

      // inhabilitar boton al hacer click
      $(this).attr('disabled', 'disabled');

      var Id_Producto = $('#mtxtproducto').val();
      var cantidad = $('#mtxtcantidad').val();
      var Nombre = mtxtproducto.options[mtxtproducto.selectedIndex].text;
      var N_o_compra = $('#mtxtn_o_compra').val();
      var fecha_entrada = $('#mtxtfechaproducto').val();

      $.ajax({
        method: 'POST',
        url: "<?php echo base_url(); ?>index.php/Accesorios/Cantidad_Producto",
        data: {
          mtxtproducto: Id_Producto,
          mtxtn_o_compra: N_o_compra,
          mtxtcantidad: cantidad,
          mtxtfechaproducto: fecha_entrada
        },
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(data) {

          $("#esperando").css('display', 'none');

          if (data == 1) {
            $('#AñadirProducto').hide();
            let timerInterval
            Swal.fire({
              title: 'Excelente!',
              text: cantidad + ' ' + Nombre + ', AGREGADOS CORRECTAMENTE',
              icon: 'success',
              timer: 2000,
              timerProgressBar: true,
              showConfirmButton: false
            }).then((result) => {
              if (
                result.dismiss === Swal.DismissReason.timer
              ) {
                location.reload();
              }
            });
          }
        }
      });
    }
  });

  //Entrega de accesorios por ruta
  function ConsultarPDF() {

    var ruta = $('#bruta').val();

     //Consultar accesorios entregados x ruta
     $.ajax({
      url: "<?php echo base_url(); ?>index.php/Accesorios/Consultar_PDF_ruta",
      method: "POST",
      data: {
        Ruta : ruta
      },
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {

        $("#esperando").css('display', 'none');

        var registros = eval(respuesta);


        html = "<table class='table'>";
        html += "<tr><th style='display:none;'>ID</th><th>Ruta</th><th>Nombre</th><th>Descripcion</th><th>Fecha Salida</th><th>Archivo PDF</th></tr>";
        html += "<tbody>";

        for (var i = 0; i < registros.length; i++) {
          html += "<tr><td style='display:none;'>" + registros[i]["Id_Ruta"] +
            "</td><td>" + registros[i]["Nombre_Ruta"] +
            "</td><td>" + registros[i]["Nombre"] +
            "</td><td>" + registros[i]["nombre_accesorio"] + " " + registros[i]["marca_accesorio"] + " " + registros[i]["tipo_accesorio"] +
            "</td><td>" + registros[i]["fecha_salida"] +
            "</td><td style='display:none;'>" + registros[i]["Id_PDF"] +
            "</td><td class='td'><a href='<?php echo base_url(); ?>index.php/Accesorios/pdfdetails/" + registros[i]["Id_PDF"] + "' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>" +
            "</td></tr>";


        };


        html += "</tbody></table>";


        $(".tablaentrega").html(html);


      }
    });
  }

  //Mostar stock por sucursal
  function Mostrar_Stock() {
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Accesorios/Mostrar_Stock",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {

        $("#esperando").css('display', 'none');

        var registros = eval(respuesta);
        var equals = 4;
        html = "<h5><i class='fas fa-list'></i> Inventario Actual</h5><br>"
        html += "<table class='table' id='tbl_stock_accesorios'>"

        html += "<tr><thead><th>Descripcion Accesorio</th><th>Stock</th></thead></tr>";

        for (var i = 0; i < registros.length; i++) {

          html += "<tr><td> " + registros[i]["nombre_accesorio"] + " " + registros[i]["marca_accesorio"] + " " + registros[i]["modelo_accesorio"] + " " + registros[i]["caracteristica_accesorio"] + " </td><td>" + registros[i]["Stock"] + "</td></tr>";

        };

        html += "</table>";
        $("#ContenidoAcce_Cat").html(html);
      }
    })

   


  }

  //Mostrar todo el inventario de las sucursales
  function All_Stock() {
    $.ajax({
      url: "<?php echo base_url(); ?>index.php/Accesorios/All_Stock",
      method: "POST",
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {

        $("#esperando").css('display', 'none'); // alert(respuesta);
        var registros = eval(respuesta);
        var equals = 4;

        html = "<table  class='table' id='tbl2'> <thead> ";
        html += "<h5><i class='fas fa-list'> </i> Inventario";
        <?php
        if ($this->session->userdata('Id_pais') == 1) {
          echo "html +=\" El Salvador</h5><br>\";";
        } else if ($this->session->userdata('Id_pais') == 2) {
          echo "html +=\" Guatemala</h5><br>\";";
        } else if ($this->session->userdata('Id_pais') == 3) {
          echo "html +=\" Honduras</h5><br>\";";
        } else {
          echo "html += '</h5>';";
        }
        ?>

        html += "<th>Categoria</th><th>Nombre Accesorio</th><th>Distribuidora</th><th>Estado</th><th>Stock</th>";
        html += "</thead><tbody>";

        html += "</thead><tbody>";

        for (var i = 0; i < registros.length; i++) {

          if (registros[i]["Estado_categoria"] == 0) {

            html += "<td style='color:red;'>" + registros[i]["Categoria"] + "</td>";

          } else if (registros[i]["Estado_categoria"] == 1) {

            html += "<td>" + registros[i]["Categoria"] + "</td>";

          }
          html += "<td>" + registros[i]["nombre_accesorio"] + " " + registros[i]["marca_accesorio"] + " " + registros[i]["modelo_accesorio"] + "</td>";


          html += "<td>" + registros[i]["Nombre_Distribuidora"] + "</td>";

          if (registros[i]["estado"] == 1) {
            html += "<td>Activo</td>";
          } else if (registros[i]["estado"] == 0) {
            html += "<td style='color:red;'>Inactivo</td>";
          }

          html += "<td style='text-align:center;'>" + registros[i]["Stock"] + "</td></tr>";

          if (i == equals) {
            html += "</tr>";

            equals = equals + 5;
          }



        };
        html += "</tbody></table><br>";

        $("#ContenidoAcce_Cat").html(html);
      }
    })


  }

  //Consultar categorias
  function CCategoria() {

    var distribuidora = $('#txtdistribuidora').serialize();
    if (distribuidora != '') {

      $.ajax({

        url: "<?php echo base_url(); ?>index.php/Accesorios/MostrarCategoria",
        method: "POST",
        data: distribuidora,

        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {

          $("#esperando").css('display', 'none');
          var registros = eval(respuesta);

          html = "<h5><i class='fas fa-list'></i> Categoria Accesorios</h5><br>"
          html += "<table class='table'><thead>";
          html += "<tr><th style='display:none;'>ID</th><th>Nombre Categoria</th><th>Descripcion</th><th>Fecha Registro</th><th>Accion</th><tr>"
          html += "</thead><tbody>";

          for (var i = 0; i < registros.length; i++) {
            html += "<tr><td class='td' style='display:none;'>" + registros[i]["Id_Categoria"] + "</td>" +
              "<td class='td'>" + registros[i]["Nombre"] + "</td>" +
              "<td class='td'>" + registros[i]["Descripcion"] + "</td>" +
              "<td class='td'>" + registros[i]["fecha_registro"] + "</td>" +
              "<td class='td'><button type='button' class='btn btn-outline-primary'  data-toggle='modal' data-target='#EditarCategoria' OnClick='EnviarDatos_Categoria(\"" + registros[i]["Id_Categoria"] +
              "\",\"" + registros[i]["Nombre"] +
              "\",\"" + registros[i]["fecha_registro"] +
              "\",\"" + registros[i]["Descripcion"] + "\");'><i class='fas fa-edit'></i></button>";

            if (registros[i]["estado"] == 1) {
              html += "<button type='button' class='btn btn-outline-success' style='margin-left:10px;' Onclick='InactivarCategoria(\"" + registros[i]["Id_Categoria"] + "\");'><i class='fas fa-angle-double-down'></i></button></td></tr>";
            } else if (registros[i]["estado"] == 0) {
              html += "<button type='button' class='btn btn-outline-danger'  style='margin-left:10px;' Onclick='ActivarCategoria(\"" + registros[i]["Id_Categoria"] + "\");'><i class='fas fa-angle-double-up'></i></button></td></tr>";

            }
          };

          html += "</tbody></table>";
          $("#ContenidoAcce_Cat").html(html);
        }

      });
    } else {
      swal.fire({
        showConfirmButton: false,
        timer: 1500,
        timerProgressBar: true,
        position: 'top-end',
        text: 'Seleccione una Distribuidora',
        icon: 'info',
      });
      return false;

    }
  }

  //Activar categorias
  function ActivarCategoria(Id_Categoria) {
    // alert("Empleado Activado "+Id_Empleados);
    $.ajax({
      method: 'POST',
      url: "<?php echo base_url(); ?>index.php/Accesorios/Activar_Categoria",
      data: {
        mtxtidcategoriaedith: Id_Categoria,
      },
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(data) {

        $("#esperando").css('display', 'none');
        if (data == 1) {

          let timerInterval
          Swal.fire({
            title: 'Excelente!',
            text: 'Categoria Activada Correctamente',
            icon: 'success',
            timer: 2000,
            timerProgressBar: true,
            showConfirmButton: false
          }).then((result) => {
            if (
              result.dismiss === Swal.DismissReason.timer
            ) {
              location.reload();
            }
          });
        }
      }
    });
  }

  //Inactivar categorias
  function InactivarCategoria(Id_Categoria) {
    // alert("Empleado Desactivado "+Id_Empleados);
    $.ajax({
      method: 'POST',
      url: "<?php echo base_url(); ?>index.php/Accesorios/Inactivar_Categoria",
      data: {
        mtxtidcategoriaedith: Id_Categoria,
      },
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(respuesta) {

        $("#esperando").css('display', 'none');
        if (data == 1) {

          let timerInterval
          Swal.fire({
            title: 'Excelente!',
            text: 'Categoria desactivada correctamente',
            icon: 'success',
            timer: 2000,
            timerProgressBar: true,
            showConfirmButton: false
          }).then((result) => {
            if (
              result.dismiss === Swal.DismissReason.timer
            ) {
              location.reload();
            }
          });
        }
      }
    });

  }

  //Enviar datos al modal para editar categorias
  function EnviarDatos_Categoria(id_categoria, nombre_categoria, fecha_registro, descripcion) {

    $('#mtxtidcategoriaedith').val(id_categoria);
    $('#mtxtnombrecategoriaedith').val(nombre_categoria);
    $('#fechacatedith').val(fecha_registro);
    $('#mtxtdescripcionedith').val(descripcion);


  }

  //Consultar accesorios
  function CAccesorios() {

    var distribuidora = $('#txtdistribuidora').serialize();
    if (distribuidora != '') {
      $.ajax({

        url: "<?php echo base_url(); ?>index.php/Accesorios/MostrarAccesorios",
        method: "POST",
        data: distribuidora,
        beforeSend: function() {
          $("#esperando").css('display', 'block');
        },
        success: function(respuesta) {

          $("#esperando").css('display', 'none');
          var registros = eval(respuesta);
          html = "<h5><i class='fas fa-list'></i> Accesorios</h5><br>"

          html += "<table class='table'>";
          html += "<th style='display:none;'>ID</th><th>Nombre</th><th>Marca</th><th>Modelo</th><th>Tipo</th><th>Color</th><th>Caracteristicas</th></th><th>Vida Util</th><th>Fecha Registro</th><th>Editar</th><th>Estado</th>"
          html += "<tbody>";

          for (var i = 0; i < registros.length; i++) {
            html += "<tr><td style='display:none;'>" + registros[i]["Id_Accesorios"] + "</td>" +
              "<td>" + registros[i]["nombre_accesorio"] + "</td>" +
              "<td>" + registros[i]["marca_accesorio"] + "</td>" +
              "<td>" + registros[i]["modelo_accesorio"] + "</td>" +
              "<td>" + registros[i]["tipo_accesorio"] + "</td>" +
              "<td>" + registros[i]["color_accesorio"] + "</td>" +
              "<td>" + registros[i]["caracteristica_accesorio"] + "</td>" +
              "<td>" + registros[i]["vida_util_accesorio"] + "</td>" +
              "<td>" + registros[i]["fecha_registro"] + "</td>" +
              "<td><button type='button' class='btn btn-outline-primary'  data-toggle='modal' data-target='#EditarProducto' Onclick='EnviarDatos_Accesorios(\"" + registros[i]["Id_Accesorios"] +
              "\",\"" + registros[i]["nombre_accesorio"] +
              "\",\"" + registros[i]["precio_u"] +
              "\",\"" + registros[i]["marca_accesorio"] +
              "\",\"" + registros[i]["modelo_accesorio"] +
              "\",\"" + registros[i]["tipo_accesorio"] +
              "\",\"" + registros[i]["color_accesorio"] +
              "\",\"" + registros[i]["caracteristica_accesorio"] +
              "\",\"" + registros[i]["vida_util_accesorio"] +
              "\",\"" + registros[i]["fecha_registro"] +
              "\",\"" + registros[i]["Id_Categoria"] + "\");'><i class='fas fa-edit'></i> </button></td>";

            if (registros[i]["estado"] == 1) {
              html += "<td><button type='button' class='btn btn-outline-success' Onclick='InactivarAccesorio(\"" + registros[i]["Id_Accesorios"] + "\");'><i class='fas fa-angle-double-down'></i></button>";
            } else if (registros[i]["estado"] == 0) {
              html += "<td><button type='button' class='btn btn-outline-danger' Onclick='ActivarAccesorio(\"" + registros[i]["Id_Accesorios"] + "\");'><i class='fas fa-angle-double-up'></i></button>";

            }

          };

          html += "</td></tr></tbody></table>";
          $("#ContenidoAcce_Cat").html(html);
        }

      });
    } else {
      swal.fire({
        showConfirmButton: false,
        timer: 1500,
        position: 'top-end',
        timerProgressBar: true,
        text: 'Seleccione una Distribuidora',
        icon: 'info',
      });
      return false;

    }
  }

  //Activar accesorios
  function ActivarAccesorio(Id_Accesorio) {

    $.ajax({
      method: 'POST',
      url: "<?php echo base_url(); ?>index.php/Accesorios/Activar_Accesorio",
      data: {
        mtxtidaccesorioedith: Id_Accesorio,
      },
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(data) {

        $("#esperando").css('display', 'none');
        if (data == 1) {

          let timerInterval
          Swal.fire({
            title: 'Excelente!',
            text: 'Accesorio activado correctamente',
            icon: 'success',
            timer: 2000,
            timerProgressBar: true,
            showConfirmButton: false
          }).then((result) => {
            if (
              result.dismiss === Swal.DismissReason.timer
            ) {
              location.reload();
            }
          });
        }
      }
    });
  }

  //Inactivar accesorios
  function InactivarAccesorio(Id_Accesorio) {

    $.ajax({
      method: 'POST',
      url: "<?php echo base_url(); ?>index.php/Accesorios/Inactivar_Accesorios",
      data: {
        mtxtidaccesorioedith: Id_Accesorio,
      },
      beforeSend: function() {
        $("#esperando").css('display', 'block');
      },
      success: function(data) {

        $("#esperando").css('display', 'none');
        if (data == 1) {

          let timerInterval
          Swal.fire({
            title: 'Excelente!',
            text: 'Accesorio Desactivado Correctamente',
            icon: 'success',
            timer: 2000,
            timerProgressBar: true,
            showConfirmButton: false
          }).then((result) => {
            if (
              result.dismiss === Swal.DismissReason.timer
            ) {
              location.reload();
            }
          });
        }
      }
    });

  }

  //Enviar datos al modal de editar accesorios
  function EnviarDatos_Accesorios(Id_Accesorio, nombre_accesorio, precio_accesorio, marca_accesorio, modelo_accesorio, tipo_accesorio, color_accesorio, caracteristicas_accesorio, vida_util_accesorio, fecha_registro, Id_Categoria) {

    $('#mtxtidaccesorioedith').val(Id_Accesorio);
    $('#mtxtnombreprodedith').val(nombre_accesorio);
    $('#mtxtprecioedith').val(precio_accesorio);
    $('#mtxtmarcaedith').val(marca_accesorio);
    $('#mtxttipoedith').val(tipo_accesorio);
    $('#mtxtmodeloedith').val(modelo_accesorio);
    $('#mtxtcoloredith').val(color_accesorio);
    $('#mtxtvidautiledith').val(vida_util_accesorio);
    $('#mtxtcaracteristicasedith').val(caracteristicas_accesorio);
    $('#mtxtfechaedith').val(fecha_registro);
    $("#mtxtcategoriaedith").val(Id_Categoria);



  }

  //Agregar fila a tabla de vendedores de accesorios
  function addTable() {


    var Id_Accesorio = document.getElementById("mtxtproductoAsignar").value;
    var Id_distribuidora = document.getElementById("mtxtdistribuidoraAsignar").value;
    var Id_Canal = document.getElementById("mtxtcanalAsignar").value;
    var Id_Ruta = document.getElementById("mtxtrutaAsignar").value;

    var producto = mtxtproductoAsignar.options[mtxtproductoAsignar.selectedIndex].text;
    var Ruta = mtxtrutaAsignar.options[mtxtrutaAsignar.selectedIndex].text;
    var Fecha_Salida = document.getElementById("mtxtfechaVendedor").value;
    var Cantidad = 1;
    var existencias = document.getElementById("existenciasprod").value;
    if ($("input[name='radio']").is(':checked')) {
      var motivo_entrega = $('input[name="radio"]:checked').val();
    } else {
      var motivo_entrega = '';
    }


    if (Id_Accesorio.length == 0 || motivo_entrega.length == 0 || Id_distribuidora.length == 0 || Id_Canal.length == 0 || Id_Ruta.length == 0 || Fecha_Salida.length == 0) {
      swal.fire({
        title: 'Oppsss...',
        text: 'Todos los campos son obligatorios',
        icon: 'error'
      });
      return false;

    } else {
      var Id_Empleado = document.getElementById("idEmpleado").value;
      var NombreEmpleado = document.getElementById("NombreEmpleados").value;
      var fila = "<tr><td style='display: none;'>" + Id_Accesorio +
        "</td><td style='display: none;'>" + Id_distribuidora +
        "</td><td style='display: none;'>" + Id_Canal +
        "</td><td style='display: none;'>" + Id_Ruta +
        "</td><td style='display: none;'>" + Id_Empleado +
        "</td><td  style='display: none;'>" + Fecha_Salida +
        "</td><td class='td' >" + Ruta +
        "</td><td class='td'>" + NombreEmpleado +
        "</td><td class='td'>" + producto +
        "</td><td class='td'>" + Cantidad +
        "</td><td class='td'>" + motivo_entrega +
        "</td><td><span style='font-size: 20px;  margin-left:25px; color: black;' value='Delete' onclick='deleteRow(this)'><i class='fas fa-trash' ></i></span>" +
        "</td></tr>";
      if (existencias > 0) {
        var btn = document.createElement("TR");
        btn.innerHTML = fila;
        document.getElementById("tablita").appendChild(btn);


        var acumulador = 0;
        $("#TableVendedores tbody tr").each(function() {

          if ($(this).children('td').slice(0, 1).text() == Id_Accesorio) {
            acumulador = acumulador + 1

            $('#existenciasprod').val(existencias - acumulador);

          } else {

          }

          acumulador = 0;

        });


      } else {
        swal.fire({
          showConfirmButton: false,
          timer: 1500,
          position: 'top-end',
          timerProgressBar: true,
          text: 'Este Accesorio No Tiene Existencias Disponibles',
          icon: 'info',
        });
        return false;
      }
    }
  }

  //Agregar fila a tabla de impulsadoreas de accesorios
  function addTableImpul() {
    var NombreEmpleado = mtxtEmpleadoImpulso.options[mtxtEmpleadoImpulso.selectedIndex].text;
    var Id_Empleado = document.getElementById("mtxtEmpleadoImpulso").value;
    var Id_Accesorio = document.getElementById("mtxtproductoAsignarImpulso").value;
    var Id_distribuidora = <?PHP echo $this->session->userdata('Id_Distribuidora'); ?>;
    var Id_Canal = document.getElementById("mtxtcanalAsignarImpulso").value;
    var Id_Ruta = document.getElementById("mtxtrutaAsignarImpulso").value;
    var producto = mtxtproductoAsignarImpulso.options[mtxtproductoAsignarImpulso.selectedIndex].text;
    var Ruta = mtxtrutaAsignarImpulso.options[mtxtrutaAsignarImpulso.selectedIndex].text;
    var Fecha_Salida = document.getElementById("mtxtfechaImpulsadora").value;
    var Cantidad = 1;
    var existencias = document.getElementById("existenciasprodimpulso").value;

    if ($("input[name='radioimp']").is(':checked')) {
      var motivo_entrega = $('input[name="radioimp"]:checked').val();
    } else {
      var motivo_entrega = '';
    }
    if (Id_Accesorio.length == 0 || motivo_entrega.length == 0 || Id_distribuidora.length == 0 || Id_Canal.length == 0 || Id_Ruta.length == 0 || Fecha_Salida.length == 0) {
      swal.fire({
        title: 'Opppss.',
        text: 'Todos los campos son obligatorios',
        icon: 'error'
      });
      return false;

    } else {
      var fila = "<tr><td style='display: none;'>" + Id_Accesorio +
        "</td><td style='display: none;'>" + Id_distribuidora +
        "</td><td style='display: none;'>" + Id_Canal +
        "</td><td style='display: none;'>" + Id_Ruta +
        "</td><td style='display: none;'>" + Id_Empleado +
        "</td><td  style='display: none;'>" + Fecha_Salida +
        "</td><td class='td' >" + Ruta +
        "</td><td class='td'>" + NombreEmpleado +
        "</td><td class='td'>" + producto +
        "</td><td class='td'>" + Cantidad +
        "</td><td class='td'>" + motivo_entrega +
        "</td><td><span style='font-size: 20px;  margin-left:25px; color: black;' value='Delete' onclick='deleteRowimp(this)'><i class='fas fa-trash' ></i></span></td></tr>";

      if (existencias > 0) {
        var btn = document.createElement("TR");
        btn.innerHTML = fila;
        document.getElementById("tablita-impul").appendChild(btn);
        var acumulador = 0;

        $("#TableImpulso tbody tr").each(function() {

          if ($(this).children('td').slice(0, 1).text() == Id_Accesorio) {
            acumulador = acumulador + 1

            $('#existenciasprodimpulso').val(existencias - acumulador);

          } else {

          }

          acumulador = 0;

        });


      } else {
        swal.fire({
          showConfirmButton: false,
          timer: 1500,
          position: 'top-end',
          timerProgressBar: true,
          text: 'Este Accesorio No Tiene Existencias Disponibles',
          icon: 'info',
        });
        return false;
      }
    }

  }

  //Borrar filas de la tabla de vendedores
  function deleteRow(btn) {


    var Id_Accesorio = document.getElementById("mtxtproductoAsignar").value;
    var acumulador = 0;
    var existencias = document.getElementById("existenciasprod").value;

    $("#TableVendedores tbody tr").each(function() {

      if ($(this).children('td').slice(0, 1).text() == Id_Accesorio) {

        acumulador = acumulador + 1

        $('#existenciasprod').val(Number(existencias) + acumulador);

      } else {

      }

      acumulador = 0;

    });

    var row = btn.parentNode.parentNode;
    row.parentNode.removeChild(row);


  }

  //Borrar filas de la tabla de impulso
  function deleteRowimp(btn) {


    var Id_Accesorio = document.getElementById("mtxtproductoAsignarImpulso").value;
    var acumulador = 0;
    var existencias = document.getElementById("existenciasprodimpulso").value;

    $("#TableImpulso tbody tr").each(function() {

      if ($(this).children('td').slice(0, 1).text() == Id_Accesorio) {

        acumulador = acumulador + 1

        $('#existenciasprodimpulso').val(Number(existencias) + acumulador);

      } else {

      }

      acumulador = 0;

    });

    var row = btn.parentNode.parentNode;
    row.parentNode.removeChild(row);


  }
</script>

</html>