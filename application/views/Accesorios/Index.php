<!DOCTYPE html>
  <html lang="en">

  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Accesorios</title>
      <!--Icon page-->
      <link href="Public/Img/favicon.png" rel="icon">
    
      <style>

        .show-menu {
          cursor: pointer;
        }

        input.checkbox-menu[type="checkbox"] {
          display: none;
          -webkit-appearance: none;
        }

        input.checkbox-menu[type="checkbox"]:checked ~ div.menu-block {
          opacity: 1;
          visibility: visible;
        }

        .nav-icon {
          display: inline-block;
          font-size: 1.5em;
          padding: 0.5em;
          vertical-align: middle;
        }

        .menu-block {
          display: inline-block;
          opacity: 0;
          vertical-align: middle;
          visibility: hidden;
          -webkit-transition: all 0.25s;
          -moz-transition: all 0.25s;
          -ms-transition: all 0.25s;
          -o-transition: all 0.25s;
          transition: all 0.25s;
        }

        ul.navUL {
          list-style: none;
          margin: 0;
          padding: 0;
        }

        ul.navUL li {
          display: inline-block;
          padding: 0px 5px;
        }

        ul.navUL li a {
          color: black;
          display: block;
          padding: 3px;
          text-decoration: none;
          
        }

        ul.navUL li a:hover {
          color: #55FF00;
          text-decoration: none;
          font-size:20px;
        }


        @import url(https://fonts.googleapis.com/css?family=Open+Sans);
        .card-container{
        
          margin-left: 50x;
          perspective: 900px;
          margin-right: 20px;
        }

        .card{
          position: relative;
          width: 160px;
          height: 150px;
          transition: all 0.6s ease;
          transform-style: preserve-3d;
        }

        .front,.back{
          position: absolute;
          top: 0;
          left: 0;
          width: 160px;
          height: 150px;
          border-radius: 5px;
          color: white;
          box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.3), 0 10px 10px 0 rgba(0, 0, 0, 0.15);
          backface-visibility: hidden;
        }

        .front{
          /* background: linear-gradient(to top, #090CDE , black); */
          display: flex;
          align-items: center;
          justify-content: center;
          font-size: 16px;
        }

        .back{
            background: linear-gradient(to bottom, #090CDE , black);
          display: flex;
          align-items: center;
          justify-content: center;
          font-size: 18px;
        }

        .card-container:hover .card{
          transform: rotateY(180deg);
        }

        .back{
          transform: rotateY(180deg);
        }

        .btn-circle.btn-lg {
          width: 50px;
          height: 50px;
          padding: 10px 16px;
          font-size: 18px;
          line-height: 1.33;
          border-radius: 25px;
        }

      

        .radios {
        
          display: flex;
          font-size:17px;
        }
        @media (max-width: 640px) {
          .radios {
            flex-direction: column;
          }
        }
        .radio input {
        
          pointer-events: none;
          visibility: hidden;
        }
        .radio input:focus + label {
          background: #eeeeff;
        }
        .radio input:focus + label .checker {
          border-color: #6666ff;
        }
        .radio input:checked + label .checker {
          box-shadow: inset 0 0 0 6px #3371FF;
        }
        .radio label {
          display: flex;
          align-items: center;
          height: 28px;
          border-radius: 14px;
          padding: 0 8px 0 6px;
          cursor: pointer;
          transition: background-color 0.3s ease;
          font-size:16px;
        }
        .radio label:hover {
          background: #eeeeff;
        }
        .radio label:hover .checker {
          box-shadow: inset 0 0 0 2px #3371FF;
        }
        .radio .checker {
          width: 18px;
          height: 18px;
          border-radius: 50%;
          margin-right: 8px;
          box-shadow: inset 0 0 0 2px #ccc;
          transition: box-shadow 0.3s ease;
        }
      </style>

  </head>

  <body>

    <div class="page-wrapper chiller-theme toggled">
      <main class="page-content">

      <section id="hero" class="wow fadeIn">
          <br>
          <h1>Accesorios</h1>
          <br>

          <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
              <a class="nav-item nav-link active" id="nav-Add-tab" data-toggle="tab" href="#nav-Add" role="tab" aria-controls="nav-Add" aria-selected="true">Registrar</a> 
              <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Bitacora Entrega Equipo</a> 
            </div>
          </nav>

         
          <div class="tab-content" id="nav-tabContent" >
        
            <!-- STAR REGISTRO ACCESORIOS-->
            <div class="tab-pane fade show active" id="nav-Add" role="tabpanel" aria-labelledby="nav-Add-tab"><br>
       
          
            <div>
            
            
                          <div style="float:right; width:200px;">
                                <!-- ENTREGA DE ACCESORIOS A IMPULSADORAS Y VENDEDORES -->
                                <div class="form-group" style="text-align:center;">      
                                        <button class="btn btn-outline-success col-md-5"  data-toggle="modal" data-target="#AsignarAccesorioVendedor"><i class="fas fa-child"></i></button>
                                        <button class="btn btn-outline-danger col-md-5"  data-toggle="modal" data-target="#AsignarAccesorioImpulsadoras"><i class="fas fa-female"></i></button>
                                </div>
                            
                                <div class="form-group">
                                  <button class="btn btn-outline-primary col-md-12" data-toggle="modal" data-target="#RegistrarCategoria">Registrar Categoria</button> 
                                </div>
                            
                                <div class="form-group">
                                  <button class="btn btn-outline-primary col-md-12" data-toggle="modal" data-target="#RegistrarProducto">Registrar Accesorio</button>
                                </div>
                            
                                <div class="form-group">
                                  <button class="btn btn-outline-primary col-md-12" data-toggle="modal" data-target="#AñadirProducto">Añadir</button>
                                </div>
                            
                                <div class="form-group">
                                  <button class="btn btn-outline-primary col-md-12"    OnClick="Mostrar_Stock();">Mostrar</button>
                                </div>
                            
                                <div class="form-group">
                                
                                  <?php 
                                    if($this->session->userdata('Id_Distribuidora')==1){
                                      echo "<button  class='btn btn-outline-primary col-md-12'  OnClick='All_Stock();'>Mostrar Todo</button>";
                                    }else{
                                    }
                                  ?>  
                                </div>
                          </div>
                          
                          <div style="float:left; width:850px; margin-bottom:50px;">
                          
                          
                            <div class="form-group">                 
                              <label for="input" style="font-size: 20px;">Distribuidora</label>
                                <select name="txtdistribuidora" id="txtdistribuidora" class="form-control col-md-8" >       
                                </select>
                            </div>

                      
                            <button  class="btn btn-outline-primary " OnClick="CCategoria();" id="btnbuscarcategoria">Consultar Categorias</button>
                            <button  class="btn btn-outline-primary " OnClick="CAccesorios();" id="btnbuscaraccesorios" style="margin-left:1px;">Consultar Accesorios</button>
                     
                          </div>
                          <br>
      
            
                    <!-- TABLA DE DATOS ACCESORIOS -->
                    <div id="ContenidoAcce_Cat" style="width:900px; margin-bottom:5%;">

                    </div>
                   

                    <!-- FINISH TABLA DE DATOS ACCESORIOS -->
      
            </div>    

              <!--============= MODAL ASIGNAR ACCESORIO VENDEDORES========= -->
              <div class="modal fade" id="AsignarAccesorioVendedor" tabindex="-1" role="dialog" aria-labelledby="AsignarAccesorioVendedor" aria-hidden="true">
                  <div class="modal-dialog modal-lg" role="document">

                    <div class="modal-content">

                      <div class="modal-header">
                        <h3 class="modal-title" id="AsignarAccesorioVendedor"> <i class="fas fa-male"></i> Entrega De Accesorios </h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>

                      <div class="modal-body">

                            <div class="form-row">
                        
                        
                              <div class="form-group col-md-6" >
                                <label for="exampleFormControlSelect1"><strong><h6>Distribuidora</h6></strong></label>
                                <select class="form-control" id="mtxtdistribuidoraAsignar" name="mtxtdistribuidoraAsignar" > 
                                <option  disabled="disabled" value="" selected="selected">Seleccione Distribuidora</option>
                                </select>
                              </div>

                              <div class="form-group col-md-6" >
                                <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
                                <select class="form-control" id="mtxtcanalAsignar" name="mtxtcanalAsignar" >
                                <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                </select>
                              </div> 

                              <div class="form-group col-md-6" >
                                <label for="exampleFormControlSelect1"><strong><h6>Ruta Asignada</h6></strong></label>
                                <select class="form-control" id="mtxtrutaAsignar" name="mtxtrutaAsignar" >
                                <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                </select>
                              </div>

                              <div class="form-group col-md-6" >
                                <label for="inputEmail4"><h6>Empleado</h6></label>
                                <div for="inputEmail4" id="NombreEmpleado">
                                </div>
                              </div>

                              <div class="form-group col-md-6">
                                <label for="inputAddress2"><strong><h6>Fecha Registro</h6></strong></label>
                                <input type="date" class="form-control" id="mtxtfechaVendedor" name="mtxtfechaVendedor"  >
                              </div>

                              <div class="form-group col-md-6" >
                                <label for="exampleFormControlSelect1"><strong><h6>Categoria</h6></strong></label>
                                <select class="form-control" id="mtxtcategoriaprodAsignar" name="mtxtcategoriaprod" >
                                <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                <?php
                                    foreach($arrCategoria as $row)
                                    {
                                    echo '<option value="'.$row->Id_Categoria.'">'.$row->Nombre.'</option>';
                                    }
                                    ?>
                                </select>
                              </div>
                                    
                              <div class="form-group col-md-6" >
                                  <label for="exampleFormControlSelect1"><strong><h6>Producto</h6></strong></label>
                                  <select class="form-control" id="mtxtproductoAsignar" name="mtxtproductoAsignar" >
                                  <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                                  </select>
                              </div> 

                              <div class="form-group col-md-6" >
                                <label for="input"><strong><h6>Existencia</h6></strong></label>
                                <input type="number" class="form-control"  id="existenciasprod" disabled="disabled">
                              </div> 
                          
                            </div>

                            <h3 style="text-align:center; font-size:20px;"> Motivo De Entrega</h3>
                         
                            <div class="form-row" style="margin-left:185px;">
                                 
                                  
                                  <div class="radio">
                                    <input type="radio" id="radio1" name="radio" value="ROBO" >
                                    <label for="radio1">
                                      <div class="checker"></div>
                                      Robo
                                    </label>
                                  </div>
                                  
                                  <div class="radio">
                                    <input type="radio" id="radio2" name="radio" value="HURTO" >
                                    <label for="radio2">
                                      <div class="checker"></div>
                                      Hurto
                                    </label>
                                  </div>
                                  
                                  <div class="radio">
                                    <input type="radio" id="radio3" name="radio" value="DAÑO" >
                                    <label for="radio3">
                                      <div class="checker"></div>
                                      Daño
                                    </label>
                                  </div>
                                  
                                  <div class="radio">
                                    <input type="radio" id="radio4" name="radio" value="PRIMERA VEZ" >
                                    <label for="radio4">
                                      <div class="checker"></div>
                                      Primera Vez
                                    </label>
                                  </div>
                                  
                                  
                            </div>

                              <button class="btn btn-success"OnClick="addTable();" style="margin-left: 85%;"> <i class="fas fa-plus"></i> Añadir</button><br>
                              <hr color="black">
                                <form action="" id="Form-table">

                                  <div id="metric_results" >

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
                        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal" >Cerrar</button>
                        <button type="button" class="btn btn-primary" id="mbtnsalidaproductoVendedores" >Guardar</button>
                        
                      </div>

                    </div>

                  </div>

              </div>
              <!--============= FINISH MODAL ASIGNAR ACCESORIOS VENDEDORES========= -->
              

              <!--============= MODAL ASIGNAR ACCESORIO IMPULSADORAS========= -->
              <div class="modal fade" id="AsignarAccesorioImpulsadoras" tabindex="-1" role="dialog" aria-labelledby="AsignarAccesorioImpulsadoras" aria-hidden="true">
                  <div class="modal-dialog modal-lg" role="document">

                    <div class="modal-content">

                      <div class="modal-header">
                          <h3 class="modal-title" id="AsignarAccesorioImpulsadoras"><i class="fas fa-female"></i> Entrega De Accesorio</h3>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                          </button>
                      </div>

                      <div class="modal-body">

                              <div class="form-row">

                                <div class="form-group col-md-6" >
                                  <label for="exampleFormControlSelect1"><strong><h6>Canal</h6></strong></label>
                                  <select class="form-control" id="mtxtcanalAsignarImpulso" name="mtxtcanalAsignarImpulso" >
                                  <option selected="true" disabled="disabled" value="">Seleccione Canal</option>
                                  </select>
                                </div>

                                <div class="form-group col-md-6" >
                                  <label for="exampleFormControlSelect1"><strong><h6>Ruta</h6></strong></label>
                                  <select class="form-control" id="mtxtrutaAsignarImpulso" name="mtxtrutaAsignarImpulso" >
                                  <option selected="true" disabled="disabled" value="">Seleccione La Ruta</option>
                                  </select>
                                </div>

                                <div class="form-group col-md-6" >
                                  <label for="exampleFormControlSelect1"><strong><h6>Empleado</h6></strong></label>
                                  <select class="form-control" id="mtxtEmpleadoImpulso" name="mtxtEmpleadoImpulso" >
                                  <option selected="true" disabled="disabled" value="">Seleccione La Impulsadora</option>
                                  </select>
                                </div>

                                <div class="form-group col-md-6" >
                                    <label for="exampleFormControlSelect1"><strong><h6>Categoria</h6></strong></label>
                                    <select class="form-control" id="mtxtcategoriaprodAsignarImpulsadora" name="mtxtcategoriaprodAsignarImpulsadora" required>
                                    <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                    <?php
                                        foreach($arrCategoria as $row)
                                        {
                                        echo '<option value="'.$row->Id_Categoria.'">'.$row->Nombre.'</option>';
                                        }
                                        ?>
                                    </select>
                                </div> 
                            
                                <div class="form-group col-md-6" >
                                    <label for="exampleFormControlSelect1"><strong><h6>Producto</h6></strong></label>
                                    <select class="form-control" id="mtxtproductoAsignarImpulso" name="mtxtproductoAsignarImpulso" >
                                    <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                                    </select>
                                </div> 

                                <div class="form-group col-md-6" >
                                  <label for="input"><strong><h6>Existencia</h6></strong></label>
                                  <input type="text" class="form-control"  id="existenciasprodimpulso" disabled="disabled">
                                </div>

                                <div class="form-group col-md-6">
                                  <label for="inputAddress2"><strong><h6>Fecha Entrega</h6></strong></label>
                                  <input type="date" class="form-control" id="mtxtfechaImpulsadora" name="mtxtfechaImpulsadora"  >
                                </div>
                              </div>

                              <h3 style="font-size:20px; text-align:center;"> Motivo De Entrega</h3>
                              
                              <div class="form-row" style="margin-left:185px;">
                              
                                <div class="radio">
                                  <input type="radio" id="radio5" name="radioimp" value="ROBO" >
                                  <label for="radio5">
                                    <div class="checker"></div>
                                    Robo
                                  </label>
                                </div>
                                
                                <div class="radio">
                                    <input type="radio" id="radio6" name="radioimp" value="HURTO" >
                                    <label for="radio6">
                                    <div class="checker"></div>
                                    Hurto
                                    </label>
                                </div>
                                
                                <div class="radio">
                                    <input type="radio" id="radio7" name="radioimp" value="DAÑO" >
                                    <label for="radio7">
                                    <div class="checker"></div>
                                    Daño
                                    </label>
                                </div>
                                
                                <div class="radio">
                                    <input type="radio" id="radio8" name="radioimp" value="PRIMERA VEZ" >
                                    <label for="radio8">
                                    <div class="checker"></div>
                                    Primera Vez
                                    </label>
                                </div>

                              </div>

                              <button class="btn btn-success" OnClick="addTableImpul();"  style="margin-left:85%;"> <i class="fas fa-plus"></i> Añadir</button>  
                    
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
                        <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal" >Cerrar</button> 
                        <button type="button" class="btn btn-primary" id="mbtnsalidaproductoImpulsadoras" >Guardar</button>
                        
                      </div>

                    </div>

                  </div>
              </div>
              <!--============= FINISH MODAL ASIGNAR ACCESORIOS IMPULSADORAS========= -->
              


              <!--============= MODAL REGISTRAR CATEGORIA========= -->
              <div class="modal fade" id="RegistrarCategoria" tabindex="-1" role="dialog" aria-labelledby="RegistrarCategoria" aria-hidden="true">
                <div class="modal-dialog modal-md" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <strong><h3 class="modal-title" id="RegistrarCategoria"> <i class="fas fa-pencil-alt"></i> Registrar Categoria</h3></strong>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                    <form method='POST' id='form_CatAccesorios' name='form_CatAccesorios'>
                  
                      <div class="form-group" style="margin:0 auto;">

                          <label for="input" style="font-size: 20px;">Nombre Categoria</label>
                          <input type="text" class="form-control "  id="mtxtnombre" name="mtxtnombre"placeholder="Nombre Categoria" >
                          <br>
                          <label for="input" style="font-size: 20px;"> Fecha Registro</label>
                          <input type="date" id="fechacat" name="fechacat" class="form-control ">
                          <br>
                          <label for="input" style="font-size: 20px;" >Descripcion Categoria</label>
                          <textarea type="textarea" class="form-control " id="mtxtdescripcion" name="mtxtdescripcion" placeholder="Descripcion Categoria" rows="3"></textarea>
                        </div>
                    </FORM>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal" >Cerrar</button>
                      <button type="button" class="btn btn-primary"id="mbtnRegistrarCategoria" >Guardar</button>
                      
                      
                    </div>
                  </div>
                </div>
              </div>
              <!--============= FINISH MODAL REGISTRAR CATEGORIA========= -->


              <!--============= MODAL REGISTRAR PRODUCTO========= -->
              <div class="modal fade" id="RegistrarProducto" tabindex="-1" role="dialog" aria-labelledby="RegistrarProducto" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <strong><h3 class="modal-title" id="RegistrarProducto"> <i class="fas fa-pencil-alt"></i> Registrar Accesorios</h3></strong>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="form-row"> 

                      
                        

                          <div class="form-group col-md-8">
                          <label for="input" style="font-size: 20px;">Nombre Accesorio</label>
                          <input type="text" class="form-control"  id="mtxtnombreprod" name="mtxtnombreprod" placeholder="Nombre Producto" >
                          </div>

                          <div class="form-group col-md-2" >
                          <label for="input" style="font-size: 20px;">Precio $</label>
                          <input type="text" class="form-control"  id="mtxtprecio" name="mtxtprecio" placeholder="0.00" >
                          </div>
                        
                      
                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Marca</label>
                          <input type="text" class="form-control"  id="mtxtmarca" name="mtxtmarca" placeholder="Marca" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Tipo</label>
                          <input type="text" class="form-control "  id="mtxttipo" name="mtxttipo" placeholder="Tipo" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Modelo</label>
                          <input type="text" class="form-control"  id="mtxtmodelo" name="mtxtmodelo" placeholder="Modelo" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Color</label>
                          <input type="text" class="form-control"  id="mtxtcolor" name="mtxtcolor" placeholder="Negro" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Vida Util</label>
                          <input type="text" class="form-control"  id="mtxtvidautil" name="mtxtvidautil" placeholder=" 1 Año" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Caracteristicas</label>
                          <input type="text" class="form-control"  id="mtxtcaracteristicas" name="mtxtcaracteristicas" placeholder="Caracteristicas" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Fecha Registro</label>
                          <input type="date" class="form-control"  id="mtxtfecha" name="mtxtfecha">
                          </div>
                                  
                          <div class="form-group col-md-5" >
                                  <label for="input" style="font-size: 20px;">Categoria</label>
                                  <select class="form-control" id="mtxtcategoria" name="mtxtcategoria" >
                                  <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                  <?php
                                      foreach($arrCategoria as $row)
                                      {
                                      echo '<option value="'.$row->Id_Categoria.'">'.$row->Nombre.'</option>';
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
              <!--============= FINISH MODAL REGISTRAR PRODUCTO========= -->


              <!--============= MODAL AÑADIR PRODUCTO========= -->
              <div class="modal fade" id="AñadirProducto" tabindex="-1" role="dialog" aria-labelledby="AñadirProducto" aria-hidden="true">
                <div class="modal-dialog modal-md" role="document">
                  <div class="modal-content">

                    <div class="modal-header">
                      <strong><h3 class="modal-title" id="AñadirProducto"><i class="fas fa-pencil-alt"></i>  Añadir Producto</h3></strong>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>

                    <div class="modal-body">

                        <div class="form-group" >

                          <label for="exampleFormControlSelect1"><strong><h6>Categoria</h6></strong></label>
                            <select class="form-control" id="mtxtcategoriaprodñ" name="mtxtcategoriaprodñ" required>
                              <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                <?php
                                    foreach($arrCategoria as $row)
                                    {
                                    echo '<option value="'.$row->Id_Categoria.'">'.$row->Nombre.'</option>';
                                    }
                                    ?>
                            </select>
                            
                        </div>

                        <div class="form-group " >
                            <label for="exampleFormControlSelect1"><strong><h6>Producto</h6></strong></label>
                              <select class="form-control" id="mtxtproducto" name="mtxtproducto" >
                              <option selected="true" disabled="disabled" value="">Seleccione Producto</option>
                              </select>
                        </div> 
            
                        <div class="form-group">
                          <label for="exampleFormControlSelect1"><strong><h6>N° Orden De Compra</h6></strong></label>
                          <input type="text" class="form-control" id="mtxtn_o_compra"  name="mtxtn_o_compra">
                        </div>

                        <div class="form-group" >
                          <label for="inputAddress2"><strong><h6>Fecha Ingreso Equipo</h6></strong></label>
                          <input type="date" class="form-control" id="mtxtfechaproducto" name="mtxtfechaproducto"  >
                        </div>

                        <div class="form-group ">
                          <label for="exampleFormControlSelect1"><strong><h6>Cantidad</h6></strong></label>
                          <input type="number" class="form-control" id="mtxtcantidad"  name="mtxtcantidad">
                        </div>

              
                    </div>  

                    <div class="modal-footer">
                      <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" name="mbtnCerrarModal" data-dismiss="modal">Cerrar</button>
                      <button type="button" class="btn btn-primary"  id="mbtncantidadproducto" name="mbtncantidadproducto">Guardar</button>
                      
                    </div>

                  </div>
                </div>
              </div>
              <!-- ============ FINISH MODAL AÑADIR PRODUCTO ============ -->
              
              <!--============= MODAL EDITAR PRODUCTO========= -->
              <div class="modal fade" id="EditarProducto" tabindex="-1" role="dialog" aria-labelledby="EditarProducto" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <strong><h3 class="modal-title" id="EditarProducto"><i class="fas fa-edit"></i> Editar Accesorios</h3></strong>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="form-row"> 

                      
                  
                          
                            <!-- <label for="input" style="font-size: 20px;" style="display:none;">Id Accesorio</label> -->
                            <input type="text" class="form-control"  id="mtxtidaccesorioedith" name="mtxtidaccesorioedith"  style="display:none;" >
                          
                     
                        

                          <div class="form-group col-md-8">
                          <label for="input" style="font-size: 20px;">Nombre Accesorio</label>
                          <input type="text" class="form-control"  id="mtxtnombreprodedith" name="mtxtnombreprodedith" placeholder="Nombre Producto" >
                          </div>

                          <div class="form-group col-md-2" >
                          <label for="input" style="font-size: 20px;">Precio $</label>
                          <input type="text" class="form-control"  id="mtxtprecioedith" name="mtxtprecioedith" placeholder="0.00" >
                          </div>
                        
                      
                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Marca</label>
                          <input type="text" class="form-control"  id="mtxtmarcaedith" name="mtxtmarcaedith" placeholder="Marca" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Tipo</label>
                          <input type="text" class="form-control "  id="mtxttipoedith" name="mtxttipoedith" placeholder="Tipo" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Modelo</label>
                          <input type="text" class="form-control"  id="mtxtmodeloedith" name="mtxtmodeloedith" placeholder="Modelo" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Color</label>
                          <input type="text" class="form-control"  id="mtxtcoloredith" name="mtxtcoloredith" placeholder="Negro" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Vida Util</label>
                          <input type="text" class="form-control"  id="mtxtvidautiledith" name="mtxtvidautiledith" placeholder=" 1 Año" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Caracteristicas</label>
                          <input type="text" class="form-control"  id="mtxtcaracteristicasedith"  name="mtxtcaracteristicasedith" placeholder="Caracteristicas" >
                          </div>

                          <div class="form-group col-md-5" >
                          <label for="input" style="font-size: 20px;">Fecha Registro</label>
                          <input type="date" class="form-control"  id="mtxtfechaedith"  name="mtxtfechaedith">
                          </div>
                                  
                          <div class="form-group col-md-5" >
                                  <label for="input" style="font-size: 20px;">Categoria</label>
                                  <select class="form-control" id="mtxtcategoriaedith" name="mtxtcategoriaedith" >
                                  <option selected="true" disabled="disabled" value="">Seleccione Categoria</option>
                                  <?php
                                      foreach($arrCategoria as $row)
                                      {
                                      echo '<option value="'.$row->Id_Categoria.'">'.$row->Nombre.'</option>';
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
              <!--============= FINISH EDITAR PRODUCTO========= -->
              

              <!--============= MODAL EDITAR CATEGORIA========= -->
              <div class="modal fade" id="EditarCategoria" tabindex="-1" role="dialog" aria-labelledby="EditarCategoria" aria-hidden="true">
                <div class="modal-dialog modal-md" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <strong><h3 class="modal-title" id="EditarCategoria"><i class="fas fa-edit"></i> Editar Categoria</h3></strong>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                    <form method='POST' id='form_CatAccesoriosedith' name='form_CatAccesoriosedith'>


                      <div class="form-group ">
                      <input type="text" class="form-control "  id="mtxtidcategoriaedith" name="mtxtidcategoriaedith" style="display:none;">

                          <label for="input" style="font-size: 20px;">Nombre Categoria</label>
                          <input type="text" class="form-control "  id="mtxtnombrecategoriaedith" name="mtxtnombrecategoriaedith"placeholder="Nombre Categoria" >
                          <br>
                          <label for="input" style="font-size: 20px;"> Fecha Registro</label>
                          <input type="date" id="fechacatedith" name="fechacatedith" class="form-control">
                          <br>
                          <label for="input" style="font-size: 20px;" >Descripcion Categoria</label>
                          <textarea type="textarea" class="form-control " id="mtxtdescripcionedith" name="mtxtdescripcionedith" placeholder="Descripcion Categoria" rows="3"></textarea>
                        </div>
                    </FORM>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-outline-danger" id="mbtnCerrarModal" data-dismiss="modal" >Cerrar</button>
                      <button type="button" class="btn btn-primary"id="mbtnEditarCategoria" >Guardar</button>
                      
                      
                    </div>
                  </div>
                </div>
              </div>
              <!--============= FINISH MODAL EDITAR CATEGORIA========= -->


            </div><!-- FINISH REGISTRO ACCESORIOS -->

            <!-- STAR BITACORA INVENTARIO -->
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                
                        
                <div class="informexruta" id="informexruta">
                      <br><br>
                      <h3 style="font-weight:bold; float:left; "> Entrega de Accesorios</h3>
                      
                      <div class="form-row" style="align-items:right; float:right;">

                        <div class="form-group col-md-6">
                        
                  
                            <input type="text" class="form-control"  id="txtruta" name="txtruta" placeholder="Ruta" >
                        </div>

                        <div class="form-group" style="">
                          <button type="button" class="btn btn-primary" id="btninformexruta"   OnClick="InformeXruta();"> Buscar</button>         
                        </div>

                      
                      </div>

                </div>      

                <div class="InformeEntrega" id="InformeEntrega" class="col-lg-16" style="margin-bottom:50px;">
                </div>
                
                
              
                
            </div> <!-- FINISH BITACORA INVENTARIO --> 
    
          </div>



      </main>
    </div>

  </body>

  <!-- JAVASCRIPT -->
    <script>

            // Efecto Botones De Telefono 
            function MostrarBtnModificar(){
                // DIV MODIFICAR ACCESORIOS
                document.getElementById('divmodificar').style.display = 'block';

                // DIV REGISTRAR ACCESORIOS
                document.getElementById('divregistrar').style.display = 'none';

                //  BOTONES PARA MOSTRAR FORMULARIO
                document.getElementById('btnocultar').style.display = 'block';


                // BOTONES PARA VISUALIZACION DE TELEFONOS
                document.getElementById('btnmostrar').style.display = 'none';

                //DIV MOSTRAR CANTIDADES DE INVENTARIO
                document.getElementById('MostrarStock').style.display = 'none';
                // DIV MOSTRAR CATEGORIAS Y ACCESORIOS
                document.getElementById('ContenidoAcce_Cat').style.display = 'block';

              
                
          

            }

            function OcultarbtnModificar(){
                // DIV MODIFICAR ACCESORIOS
                document.getElementById('divmodificar').style.display = 'none';

                  // DIV REGISTRAR ACCESORIOS
                  document.getElementById('divregistrar').style.display = 'block';

                  //  BOTONES PARA MOSTRAR FORMULARIO
                  document.getElementById('btnocultar').style.display = 'none';


                  // BOTONES PARA VISUALIZACION DE TELEFONOS
                  document.getElementById('btnmostrar').style.display = 'block';


                  //DIV MOSTRAR CANTIDADES DE INVENTARIO
                  document.getElementById('MostrarStock').style.display = 'block';
                  
                  // DIV MOSTRAR CATEGORIAS Y ACCESORIOS
                  document.getElementById('ContenidoAcce_Cat').style.display = 'none';
                
            }



            //   End , Efecto Botones De Telefono
              
      /*==================METODO REGISTRAR CATEGORIA DATOS  MODAL==================================*/
      $('#mbtnRegistrarCategoria').click(function(){
      

          nombre = document.getElementById("mtxtnombre").value;
          descripcion = document.getElementById("mtxtdescripcion").value;
          fecha = document.getElementById("fechacat").value;


        if(nombre.length == 0 || descripcion.length == 0 || fecha.length == 0 ){
          
          swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
          return false;

        }else{

          // inhabilitar boton al hacer click
          $(this).attr('disabled','disabled');
          // //////////////////////////////////

          var Nombre = $('#mtxtnombre').val();
          var Descripcion = $('#mtxtdescripcion').val();
          var Fecha =$('#fechacat').val();
          
          $.post("<?php echo base_url(); ?>index.php/Accesorios/Ingresar_Categoria",	
          {
            mtxtnombre:Nombre,
            mtxtdescripcion:Descripcion,
            fechacat:Fecha
            
          },			
          function(data){

            if (data == 1) {
            $('#mbtnCerrarModal').click();
              let timerInterval
                Swal.fire({
                title: 'Categoria Correctamente Registrada',
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
                      
                      location.reload();
                    }
                });
            
            }
          });
        }

      });
      /*==================METODO REGISTRAR CATEGORIA DATOS  MODAL==================================*/


      /*==================METODO REGISTRAR PRODUCTO DATOS  MODAL==================================*/
      $('#mbtnRegistrarProducto').click(function(){

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



        if(nombre.length == 0 || precio.length==0 || marca.length == 0 || tipo.length == 0 || categoria.length == 0|| modelo.length == 0|| color.length == 0|| vidautil.length == 0|| caracteristicas.length == 0|| fecha.length == 0 ){
          
          swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
          return false;

        }else{
        // inhabilitar boton al hacer click
        $(this).attr('disabled','disabled');

        $.post("<?php echo base_url(); ?>index.php/Accesorios/Ingresar_Producto",	
        {

          mtxtnombreprod:nombre,
          mtxtmarca:marca ,
          mtxttipo:tipo ,
          mtxtmodelo:modelo ,
          mtxtcolor:color,
          mtxtvidautil:vidautil ,
          mtxtcaracteristicas:caracteristicas,
          mtxtfecha:fecha ,
          mtxtcategoria:categoria,
          mtxtprecio:precio,
          
        },			
        function(data){
          if (data == 1) {
          $('#mbtnCerrarModal').click();
            let timerInterval
              Swal.fire({
              title: 'Accesorio Correctamente Registrado',
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
                    location.reload();
                  }
              });
          
          }
        });
        }
      });
      /*==================METODO REGISTRAR PRODUCTO DATOS  MODAL==================================*/


      /*==================METODO AÑADIR CANTIDAD DE PRODUCTO ==================================*/
      $('#mbtncantidadproducto').click(function(){

        Id_Producto = document.getElementById("mtxtproducto").value;
        cantidad = document.getElementById("mtxtcantidad").value;
        N_o_compra = document.getElementById("mtxtn_o_compra").value;
        fecha_entrada = document.getElementById("mtxtfechaproducto").value;

        if(Id_Producto.length == 0 || cantidad.length == 0 || N_o_compra.length == 0|| fecha_entrada.length == 0 ){
          
          swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
          return false;

        }else{

        // inhabilitar boton al hacer click
        $(this).attr('disabled','disabled');

        var Id_Producto = $('#mtxtproducto').val();
        var cantidad = $('#mtxtcantidad').val();
        var Nombre = mtxtproducto.options[mtxtproducto.selectedIndex].text;
        var N_o_compra = $('#mtxtn_o_compra').val();
        var fecha_entrada = $('#mtxtfechaproducto').val();

        $.post("<?php echo base_url(); ?>index.php/Accesorios/Cantidad_Producto",	
        {

          mtxtproducto:Id_Producto,
          mtxtn_o_compra:N_o_compra,
          mtxtcantidad:cantidad,
          mtxtfechaproducto:fecha_entrada
        },			
        function(data){

          if (data == 1) {
          $('#mbtnCerrarModal').click();
            let timerInterval
              Swal.fire({
              title: cantidad+' '+Nombre+', AGREGADOS CORRECTAMENTE',
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
                    location.reload();
                  }
              });
          
          }
        });
        }
      });
      /*==================FINISH METODO REGISTRAR PRODUCTO DATOS  MODAL==================================*/

      /*==================METODO MOSTRAR INFORME X RUTA ==================================*/
      function InformeXruta(){
        var ruta=$('#txtruta').serialize();

        $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/InformeXruta",
            method:"POST", 
            data:ruta,
            
        
            success:function(respuesta){
                // alert(respuesta);
              var registros =eval(respuesta);

              html ="<table class='table' style='margin-bottom:3%;'>";
              html +="<th class='th'>Ruta</th><th class='th'>Vendedor</th><th class='th'>Accesorio</th><th class='th'>Fecha Entrega</th><th class='th'>Cantidad</th><th class='th'>Motivo De Entrega</th></tr>";
              html +="</thead><tbody>"; 
              
              for (var i = 0; i <registros.length; i++) {
                html +="<tr'><td class='td'>"+registros[i]["Ruta"]+
                "</td><td class='td'>"+registros[i]["Vendedor"]+
                "</td><td class='td'>"+registros[i]["Accesorios"]+" "+registros[i]["marca_accesorio"]+" "+registros[i]["tipo_accesorio"]+
                "</td><td class='td'>"+registros[i]["fecha_salida"]+ 
                "</td><td class='td'>"+registros[i]["Cantidad"]+ 
                "</td><td class='td'>"+registros[i]["Motivo"]+
                "</td></tr>";
                

              };


              html +="</tbody></table>";

              
              $("#InformeEntrega").html(html);
              
            }
          });
      }
      /*==================FINISH, METODO MOSTRAR INFORME X RUTA ==================================*/

      // <!-- ========================== SELECT DINAMICOS AÑADIR CANTIDAD PRODUCTOS ========================= -->
      $(document).ready(function(){
        $('#mtxtcategoriaprodñ').change(function(){
          var Id_Categoria = $('#mtxtcategoriaprodñ').val();

          if(Id_Categoria != '')
          {
            $.ajax({
              url:"<?php echo base_url();?>index.php/Accesorios/fetch_producto",
              method:"POST",
              data:{Id_Categoria:Id_Categoria},

              success:function(data)
              {
              
                $('#mtxtproducto').html(data);
              }
            });
          }
          else
          {
          $('#mtxtproducto').html('<option value="">Selecccion el  OPCIONAL</option>');
          }
        });
      });
      // <!-- ========================== FINISH SELECT DINAMICOS AÑADIR PRODUCTOS ========================= -->


      // <!-- ========================== MOSTRAR STOCK INVENTARIO ========================= -->
      function Mostrar_Stock(){
        $.ajax({
          url:"<?php echo base_url();?>index.php/Accesorios/Mostrar_Stock",
          method:"POST", 
          success:function(respuesta){
            // alert(respuesta);
            var registros =eval(respuesta);
            var equals = 4;

            html ="<table  align='center'><thead>";
              html +="</thead><tbody>";

              for (var i = 0; i<registros.length; i++) {
                html +=""+
                "<td><div class='form-row' style='margin-top:10px;'>"+
                  "<div class='card-container'>"+
                    "<div class='card'>";

                    if(registros[i]["Stock"]<=5){
                      html+="<div class='front' style='text-align: center; padding:5px; background: linear-gradient(to top, #FF2D00  , black);'>";
                    }else if(registros[i]["Stock"]<=10 && registros[i]["Stock"]>5){
                      html+="<div class='front' style='text-align: center; padding:5px; background: linear-gradient(to top, #FF6C00  , black);'>";
                    }else{
                      html+= "<div class='front' style='text-align: center; padding:5px; background: linear-gradient(to top, #090CDE , black);'>";
                    };

                    html +=registros[i]["nombre_accesorio"]+" "+registros[i]["marca_accesorio"]+" "+registros[i]["modelo_accesorio"]+" "+registros[i]["caracteristica_accesorio"]+"</div>"+
                      "<div class='back'>"+registros[i]["Stock"]+"</div>"+
                    "</div>"+
                  "</div>"+
                "</div></td>";  

                if(i==equals){
                  html +="</tr style='margin-top: 10px;'>";

                  equals = equals +5;
                }
              };
              
              html +="</tbody></table>";
              $("#ContenidoAcce_Cat").html(html);
          }
        })


      }
      // <!-- ========================== FINISH MOSTRAR INVENTARIO ========================= -->


      //  <!-- ========================== MOSTRAR ALL STOCK INVENTARIO ========================= -->
      function All_Stock(){
        $.ajax({
          url:"<?php echo base_url();?>index.php/Accesorios/All_Stock",
          method:"POST", 
          success:function(respuesta){
            // alert(respuesta);
            var registros =eval(respuesta);
            var equals = 4;
            
            html ="<table  class='table' id='tbl2'> <thead> ";
            html +="<h3 style='text-align: center;'> Inventario";
            <?php
            if($this->session->userdata('Id_pais')==1){
              echo "html +=\" El Salvador</h3><br>\";";
            }else if($this->session->userdata('Id_pais')==2){
              echo "html +=\" Guatemala</h3><br>\";";
            }else if($this->session->userdata('Id_pais')==3){
              echo "html +=\" Honduras</h3><br>\";";
            }
            ?>
            // html +="<a href='<?php echo base_url(); ?>index.php/Accesorios/All_Stock_DExcel' style='margin-left:40%;  margin-bottom :20px;' class='btn btn-outline-success disabled' role='button'>Exportar</a>";

            html +="<th>Categoria</th><th>Nombre Accesorio</th><th>Distribuidora</th><th>Estado</th><th>Stock</th>";
              html +="</thead><tbody>";

              html +="</thead><tbody>";

              for (var i = 0; i<registros.length; i++) {

                if(registros[i]["Estado_categoria"]==0)
                {

                html+="<td style='color:red;'>"+registros[i]["Categoria"]+"</td>";

                }else if(registros[i]["Estado_categoria"]==1){

                html+="<td>"+registros[i]["Categoria"]+"</td>";

                }
                html+="<td>"+registros[i]["nombre_accesorio"]+" "+registros[i]["marca_accesorio"]+" "+registros[i]["modelo_accesorio"]+"</td>";
                

                html+="<td>"+registros[i]["Nombre_Distribuidora"]+"</td>";

                  if(registros[i]["estado"]==1){
                    html+="<td>Activo</td>";
                  }else if(registros[i]["estado"]==0){
                    html+="<td style='color:red;'>Inactivo</td>";
                  }
                      
                html+="<td style='text-align:center;'>"+registros[i]["Stock"]+"</td></tr>";

                if(i==equals){
                  html +="</tr>";

                  equals = equals +5;
                }
                
                

              };
              html +="</tbody></table><br>";

              $("#ContenidoAcce_Cat").html(html);
          }
        })


      }
      // <!-- ========================== FINISH MOSTRAR INVENTARIO ========================= -->


      // <!-- ==========================  MOSTRAR CATEGORIAS ========================= -->
      function CCategoria(){
        
        var distribuidora=$('#txtdistribuidora').serialize();
        if(distribuidora !=''){
        
        $.ajax({
          
          url:"<?php echo base_url();?>index.php/Accesorios/MostrarCategoria",
          method:"POST",
          data:distribuidora,

          success:function(respuesta){
          
            var registros =eval(respuesta);
            html ="<h3 style='text-align: center;'>Categoria Accesorios</h3><br>"
            html +="<table class='table' align='center'><thead>";
            html +="<tr><th style='display:none;'>ID</th><th>Nombre Categoria</th><th>Descripcion</th><th>Fecha Registro</th><th>Accion</th><tr>"
              html +="</thead><tbody>";

              for (var i = 0; i<registros.length; i++) {
              html+="<tr><td class='td' style='display:none;'>"+registros[i]["Id_Categoria"]+"</td>"+
              "<td class='td'>"+registros[i]["Nombre"]+"</td>"+
              "<td class='td'>"+registros[i]["Descripcion"]+"</td>"+
              "<td class='td'>"+registros[i]["fecha_registro"]+"</td>"+
              "<td class='td'><button type='button' class='btn btn-outline-primary'  data-toggle='modal' data-target='#EditarCategoria' OnClick='EnviarDatos_Categoria(\""+registros[i]["Id_Categoria"]+
              "\",\""+registros[i]["Nombre"]+
              "\",\""+registros[i]["fecha_registro"]+
              "\",\""+registros[i]["Descripcion"]+"\");'><i class='fas fa-edit'></i></button>";
              
              if(registros[i]["estado"]==1){
              html+="<button type='button' class='btn btn-outline-success' style='margin-left:10px;' Onclick='InactivarCategoria(\""+registros[i]["Id_Categoria"]+"\");'><i class='fas fa-angle-double-down'></i></button></td></tr>";
              }else if(registros[i]["estado"]==0){
              html+="<button type='button' class='btn btn-outline-danger'  style='margin-left:10px;' Onclick='ActivarCategoria(\""+registros[i]["Id_Categoria"]+"\");'><i class='fas fa-angle-double-up'></i></button></td></tr>";
 
              } 
              };
              
              html +="</tbody></table>";
              $("#ContenidoAcce_Cat").html(html);
          }
          
        });
        }else{
          swal.fire({ showConfirmButton: false, 
                                    timer: 1500, 
                                    position: 'top-end',
                                    title:'Seleccione una Distribuidora', 
                                    type: 'info',
                                    });
                      return false;
                      
        }
      }
      // <!-- ==========================  FINISH, MOSTRAR CATEGORIAS ========================= -->


       // <!-- ==========================  STAR,ACTIVAR INACTIVAR CATEGORIAS ========================= -->
      function ActivarCategoria(Id_Categoria){
        // alert("Empleado Activado "+Id_Empleados);
        $.post("<?php echo base_url(); ?>index.php/Accesorios/Activar_Categoria",	
        {
          mtxtidcategoriaedith:Id_Categoria,
        },			
        function(data){
          if (data == 1) {
          
            let timerInterval
              Swal.fire({
              title: 'Categoria Activada Correctamente',
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
                    location.reload();
                    $('#btnbuscarcategoria').click();
                  }
              });
          
          }
        });
      }

      function InactivarCategoria(Id_Categoria){
        // alert("Empleado Desactivado "+Id_Empleados);
        $.post("<?php echo base_url(); ?>index.php/Accesorios/Inactivar_Categoria",	
        {
          mtxtidcategoriaedith:Id_Categoria,
        },			
        function(data){
          if (data == 1) {
          
            let timerInterval
              Swal.fire({
              title: 'Categoria Desactivada Correctamente',
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
                    location.reload();
                    $('#btnbuscarcategoria').click();
                  }
              });
          
          }
        });

      }
       // <!-- ======================================FINISH ESTADO ACTIVO O INACTIVO ACCESORIO============================ -->


      // <!-- ==========================  STAR, ENVIAR DATOS MODAL EDITAR CATEGORIA========================= -->
      function EnviarDatos_Categoria(id_categoria,nombre_categoria,fecha_registro,descripcion){
        
        $('#mtxtidcategoriaedith').val(id_categoria);
        $('#mtxtnombrecategoriaedith').val(nombre_categoria);
        $('#fechacatedith').val(fecha_registro);
        $('#mtxtdescripcionedith').val(descripcion);

    
      }
      // <!-- ==========================  FINISH,ENVIAR DATOS MODAL EDITAR CATEGORIA ========================= -->
      
      // <!-- ==========================  ACTUALIZAR DATOS MODAL EDITAR CATEGORIA ========================= -->     
      $('#mbtnEditarCategoria').click(function(){
          var Id_Categoria,nombre_categoria,fecha_registro,descripcion;

          Id_Categoria = document.getElementById("mtxtidcategoriaedith").value;
          nombre_categoria = document.getElementById("mtxtnombrecategoriaedith").value;
          fecha_registro = document.getElementById("fechacatedith").value;
          descripcion = document.getElementById("mtxtdescripcionedith").value;
         
          if(Id_Categoria.length == 0 || nombre_categoria.length == 0 || fecha_registro.length == 0 || descripcion.length == 0){
            
            swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
            return false;
            
          }else{
          

          $.post("<?php echo base_url(); ?>index.php/Accesorios/Actualizar_Categoria",	
          {
            mtxtidcategoriaedith:Id_Categoria,
            mtxtnombrecategoriaedith:nombre_categoria,
            fechacatedith:fecha_registro,
            mtxtdescripcionedith:descripcion,
           
          },			
          function(data){
            if (data == 1) {
              $('#EditarCategoria').modal('hide');
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
                      location.reload();
                      $('#btnbuscarcategoria').click();
                    // location.reload();
                      
                      
                    }
                });
            
            }
          });
          }
      });
      // <!-- ==========================  FINISH,ACTUALIZAR DATOS MODAL EDITAR CATEGORIA ========================= -->

      // <!-- ==========================  MOSTRAR NOMBRES ACCESORIOS ========================= -->
      function CAccesorios(){
        
        var distribuidora=$('#txtdistribuidora').serialize();
        if(distribuidora !=''){
          $.ajax({
          
          url:"<?php echo base_url();?>index.php/Accesorios/MostrarAccesorios",
          method:"POST",
          data:distribuidora,
          
          success:function(respuesta){
          
            var registros =eval(respuesta);
            html ="<h3 style='text-align: center;'> Accesorios</h3><br>"

            html +="<table class='table'>";
            html +="<th style='display:none;'>ID</th><th>Descripcion Accesorio</th><th>Vida Util</th><th>Fecha Registro</th><th>Accion</th>"
              html +="<tbody>";

              for (var i = 0; i<registros.length; i++) {
              html+="<tr><td style='display:none;'>"+registros[i]["Id_Accesorios"]+"</td>"+
              "<td class='td' style='width:45%;'>"+registros[i]["nombre_accesorio"]+" "+registros[i]["marca_accesorio"]+" "+registros[i]["modelo_accesorio"]+" "+registros[i]["tipo_accesorio"]+" "+registros[i]["color_accesorio"]+" "+registros[i]["caracteristica_accesorio"]+"</td>"+
              "<td>"+registros[i]["vida_util_accesorio"]+"</td>"+
              "<td>"+registros[i]["fecha_registro"]+"</td>"+
              "<td class='td'><button type='button' class='btn btn-outline-primary'  data-toggle='modal' data-target='#EditarProducto' onClick='EnviarDatos_Accesorios(\""+registros[i]["Id_Accesorios"]+
                              "\",\""+registros[i]["nombre_accesorio"]+
                              "\",\""+registros[i]["precio_u"]+
                              "\",\""+registros[i]["marca_accesorio"]+
                              "\",\""+registros[i]["modelo_accesorio"]+
                              "\",\""+registros[i]["tipo_accesorio"]+
                              "\",\""+registros[i]["color_accesorio"]+
                              "\",\""+registros[i]["caracteristica_accesorio"]+
                              "\",\""+registros[i]["vida_util_accesorio"]+
                              "\",\""+registros[i]["fecha_registro"]+
                              "\",\""+registros[i]["Id_Categoria"]+"\");'><i class='fas fa-edit'></i></button>";
              if(registros[i]["estado"]==1){
              html+="<button type='button' style='margin-left: 10px;' class='btn btn-outline-success col-md-3' Onclick='InactivarAccesorio(\""+registros[i]["Id_Accesorios"]+"\");'><i class='fas fa-angle-double-down'></i></button>";
              }else if(registros[i]["estado"]==0){
              html+="<button type='button' style='margin-left: 10px;' class='btn btn-outline-danger col-md-3' Onclick='ActivarAccesorio(\""+registros[i]["Id_Accesorios"]+"\");'><i class='fas fa-angle-double-up'></i></button>";
 
              }
                
              };
              
              html +="</td></tr></tbody></table>";
              $("#ContenidoAcce_Cat").html(html);
          }
          
        });
        }else{
          swal.fire({ showConfirmButton: false, 
                                    timer: 1500, 
                                    position: 'top-end',
                                    title:'Seleccione una Distribuidora', 
                                    type: 'info',
                                    });
                      return false;
                      
        }
      }
      // <!-- ==========================  FINISH,MOSTRAR NOMBRES ACCESORIOS ========================= -->
      
      // <!-- ======================================ACTUALIZAR ESTADO ACTIVO O INACTIVO ACCESORIO============================ -->
      function ActivarAccesorio(Id_Accesorio){
        // alert("Empleado Activado "+Id_Empleados);
        $.post("<?php echo base_url(); ?>index.php/Accesorios/Activar_Accesorio",	
        {
          mtxtidaccesorioedith:Id_Accesorio,
        },			
        function(data){
          if (data == 1) {
          
            let timerInterval
              Swal.fire({
              title: 'Accesorio Activado Correctamente',
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
                    location.reload();
                    $('#btnbuscaraccesorios').click();
                  }
              });
          
          }
        });
      }

      function InactivarAccesorio(Id_Accesorio){
        // alert("Empleado Desactivado "+Id_Empleados);
        $.post("<?php echo base_url(); ?>index.php/Accesorios/Inactivar_Accesorios",	
        {
          mtxtidaccesorioedith:Id_Accesorio,
        },			
        function(data){
          if (data == 1) {
          
            let timerInterval
              Swal.fire({
              title: 'Accesorio Desactivado Correctamente',
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
                    location.reload();
                    $('#btnbuscaraccesorios').click();
                  }
              });
          
          }
        });

      }
       // <!-- ======================================FINISH ESTADO ACTIVO O INACTIVO ACCESORIO============================ -->


      // <!-- ==========================  STAR, ENVIAR DATOS MODAL EDITAR ACCESORIOS========================= -->
      function EnviarDatos_Accesorios(Id_Accesorio,nombre_accesorio,precio_accesorio,marca_accesorio,modelo_accesorio,tipo_accesorio,color_accesorio,caracteristicas_accesorio,vida_util_accesorio,fecha_registro,Id_Categoria){
          
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
      // <!-- ==========================  FINISH,ENVIAR DATOS MODAL EDITAR ACCESORIOS ========================= -->


      // <!-- ==========================  ACTUALIZAR DATOS MODAL EDITAR ACCESORIOS ========================= -->     
        $('#mbtnEditarProducto').click(function(){
          var Id_Accesorio,nombre_accesorio,precio_accesorio,marca_accesorio,modelo_accesorio,tipo_accesorio,color_accesorio,caracteristicas_accesorio,vida_util_accesorio,fecha_registro,Id_Categoria;
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

          if(Id_Accesorio.length == 0 || nombre_accesorio.length == 0 || precio_u.length == 0 || marca_accesorio.length == 0 || modelo_accesorio.length == 0 || tipo_accesorio.length == 0 || color_accesorio.length == 0 || caracteristicas_accesorio.length == 0 || vida_util_accesorio.length == 0 ||fecha_registro.length == 0 || Id_Categoria.length == 0 ){
            
            swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
            return false;
            
          }else{
           

          $.post("<?php echo base_url(); ?>index.php/Accesorios/Actualizar_Accesorios",	
          {
            mtxtidaccesorioedith:Id_Accesorio,
            mtxtnombreprodedith:nombre_accesorio,
            mtxtprecioedith:precio_u,
            mtxtmarcaedith:marca_accesorio,
            mtxtmodeloedith:modelo_accesorio,
            mtxttipoedith:tipo_accesorio,
            mtxtcoloredith:color_accesorio,
            mtxtcaracteristicasedith:caracteristicas_accesorio,
            mtxtvidautiledith:vida_util_accesorio,
            mtxtfechaedith:fecha_registro,
            mtxtcategoriaedith:Id_Categoria
          },			
          function(data){
            if (data==1) {
              $('#EditarProducto').modal('hide');
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
                      
                      $('#btnbuscaraccesorios').click();
                   
                      
                      
                    }
                });
            
            }
          });
          }
        });
      // <!-- ==========================  FINISH,ACTUALIZAR DATOS MODAL EDITAR ACCESORIOS ========================= -->

      // <!-- ========================== SELECT DINAMICOS AJAX ASIGNAR IMPULSADORA========================= -->
      $(document).ready(function(){

          $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/fetch_canal_Impulso",
            method:"POST",
          

            success:function(data)
            {
            
              $('#mtxtcanalAsignarImpulso').html(data);

            }
          });

        $('#mtxtcanalAsignarImpulso').change(function(){
            var Id_Canal = $('#mtxtcanalAsignarImpulso').val();
            if(Id_Canal != '')
            {
            $.ajax({
              url:"<?php echo base_url(); ?>index.php/Accesorios/fetch_ruta",
              method:"POST",
              data:{Id_Canal:Id_Canal},
              success:function(data)
              {
                
              $('#mtxtrutaAsignarImpulso').html(data);
              }
            });
            }
            else
            {
            $('#mtxtrutaAsignarImpulso').html('<option value="">Selecccione la Ruta</option>');
            }
          });

        $('#mtxtrutaAsignarImpulso').change(function(){

            var Id_Ruta = $('#mtxtrutaAsignarImpulso').val();
            if(Id_Ruta != ''){
            $.ajax({
              url:"<?php echo base_url(); ?>index.php/Accesorios/fetch_empleado_Impulso",
              method:"POST",
              data:{Id_Ruta:Id_Ruta},
              success:function(data)
              {
                
              $('#mtxtEmpleadoImpulso').html(data);

              }
            });
            }
            else
            {
            $('#mtxtEmpleadoImpulso').html('<option value="">Selecccione la Ruta</option>');
            }
        });

      });

      // <!-- ========================== FINISH MOSTRAR INVENTARIO ========================= -->


      // <!-- ========================== SELECT DINAMICOS AJAX ASIGNAR VENDEDORES========================= -->
      $(document).ready(function(){
        
        $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#mtxtdistribuidoraAsignar').html(data);
              $('#mtxtcanalAsignar').html('<option value="">Seleccione El Canal</option>');
              $('#mtxtrutaAsignar').html('<option value="">Seleccione la Ruta</option>');
            }
          });

        $('#mtxtdistribuidoraAsignar').change(function(){
          var Id_Distribuidora = $('#mtxtdistribuidoraAsignar').val();

          if(Id_Distribuidora != '')
          {
            $.ajax({
              url:"<?php echo base_url();?>index.php/Accesorios/fetch_canal",
              method:"POST",
              data:{Id_Distribuidora:Id_Distribuidora},

              success:function(data)
              {
              
                $('#mtxtcanalAsignar').html(data);
                $('#mtxtrutaAsignar').html('<option value="">Seleccione la Ruta</option>');
              }
            });
          }
          else
          {
          $('#mtxtcanalAsignar').html('<option value="">Selecccion el canal</option>');
          $('#mtxtrutaAsignar').html('<option value="">Selecccione la Ruta</option>');
          }
        });

        $('#mtxtcanalAsignar').change(function(){
          var Id_Canal = $('#mtxtcanalAsignar').val();
          if(Id_Canal != '')
          {
          $.ajax({
            url:"<?php echo base_url(); ?>index.php/Accesorios/fetch_ruta",
            method:"POST",
            data:{Id_Canal:Id_Canal},
            success:function(data)
            {
              
            $('#mtxtrutaAsignar').html(data);
            }
          });
          }
          else
          {
          $('#mtxtrutaAsignar').html('<option value="">Selecccione la Ruta</option>');
          }
        });
      
        $('#mtxtrutaAsignar').change(function(){
          var Id_Ruta = $('#mtxtrutaAsignar').val();

          if(Id_Ruta != '')
          {
          $.ajax({
            url:"<?php echo base_url(); ?>index.php/Accesorios/fetch_empleado",
            method:"POST",
            data:{Id_Ruta:Id_Ruta},
            success:function(data)
            {
              
            $('#NombreEmpleado').html(data);

            }
          });
          }
          else
          {
            $('#NombreEmpleado').html('NO ENCONTRADO');
          }
        });

      
      });
      // <!-- ========================== FINISH SELECT DINAMICOS ASIGNAR========================= -->


      // <!-- ========================== SELECT DINAMICOS AÑADIR CANTIDAD PRODUCTOS ========================= -->
      $(document).ready(function(){
        $('#mtxtcategoriaprodAsignar').change(function(){
        var Id_Categoria = $('#mtxtcategoriaprodAsignar').val();

        if(Id_Categoria != '')
        {
          $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/fetch_producto",
            method:"POST",
            data:{Id_Categoria:Id_Categoria},

            success:function(data)
            {
              
              $('#mtxtproductoAsignar').html(data);
            }
          });
        }
        else
        {
          $('#mtxtproductoAsignar').html('<option value="">Selecccion el  OPCIONAL</option>');
        }
          });
      });
      // <!-- ========================== FINISH SELECT DINAMICOS AÑADIR PRODUCTOS ========================= -->


      // <!-- ========================== SELECT DINAMICOS AÑADIR CANTIDAD PRODUCTOS IMPULSADORAS========================= -->
      $(document).ready(function(){
        $('#mtxtcategoriaprodAsignarImpulsadora').change(function(){
       var Id_Categoria = $('#mtxtcategoriaprodAsignarImpulsadora').val();

        if(Id_Categoria != '')
        {
          $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/fetch_producto",
            method:"POST",
            data:{Id_Categoria:Id_Categoria},

            success:function(data)
            {
              
              $('#mtxtproductoAsignarImpulso').html(data);
            }
          });
        }
        else
        {
          $('#mtxtproductoAsignarImpulso').html('<option value="">Selecccion el  OPCIONAL</option>');
        }
          });
      });
      // <!-- ========================== FINISH SELECT DINAMICOS AÑADIR PRODUCTOS IMPULSASDORAS========================= -->


      // <!-- ========================== ADD  ROW TABLA  VENDEDORES========================= -->
      function addTable(){

      
        var Id_Accesorio=document.getElementById("mtxtproductoAsignar").value;
        var Id_distribuidora=document.getElementById("mtxtdistribuidoraAsignar").value;
        var Id_Canal=document.getElementById("mtxtcanalAsignar").value;
        var Id_Ruta=document.getElementById("mtxtrutaAsignar").value;
        
        var producto = mtxtproductoAsignar.options[mtxtproductoAsignar.selectedIndex].text;
        var Ruta = mtxtrutaAsignar.options[mtxtrutaAsignar.selectedIndex].text;
        var Fecha_Salida = document.getElementById("mtxtfechaVendedor").value;
        var Cantidad = 1;
        var existencias =document.getElementById("existenciasprod").value;
        if( $("input[name='radio']").is(':checked')){
          var motivo_entrega=$('input[name="radio"]:checked').val();
        }else{
          var motivo_entrega='';
        }

      
        if(Id_Accesorio.length== 0|| motivo_entrega.length==0 || Id_distribuidora.length ==0 || Id_Canal.length ==0 ||Id_Ruta.length ==0 ||Fecha_Salida.length ==0 ){
              swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                  return false;

        }else{
        var Id_Empleado=document.getElementById("idEmpleado").value;
        var NombreEmpleado = document.getElementById("NombreEmpleados").value;
        var fila="<tr><td style='display: none;'>"+Id_Accesorio+
        "</td><td style='display: none;'>"+Id_distribuidora+
        "</td><td style='display: none;'>"+Id_Canal+
        "</td><td style='display: none;'>"+Id_Ruta+
        "</td><td style='display: none;'>"+Id_Empleado+
        "</td><td  style='display: none;'>"+Fecha_Salida+
        "</td><td class='td' >"+Ruta+
        "</td><td class='td'>"+NombreEmpleado+
        "</td><td class='td'>"+producto+
        "</td><td class='td'>"+Cantidad+
        "</td><td class='td'>"+motivo_entrega+
        "</td><td><span style='font-size: 20px;  margin-left:25px; color: black;' value='Delete' onclick='deleteRow(this)'><i class='fas fa-trash' ></i></span>"+
        "</td></tr>";
        if(existencias>0){
        var btn = document.createElement("TR");
        btn.innerHTML=fila;
        document.getElementById("tablita").appendChild(btn);

        
        var acumulador=0; 
          $("#TableVendedores tbody tr").each(function() {

              if($(this).children('td').slice(0, 1).text()==Id_Accesorio){
                acumulador = acumulador+1

                $('#existenciasprod').val(existencias-acumulador);
              
              }else{

              }

          acumulador=0;

          });
        

        }
        else{
          swal.fire({ showConfirmButton: false, 
                                    timer: 1500, 
                                    position: 'top-end',
                                    title:'Este Accesorio No Tiene Existencias Disponibles', 
                                    type: 'info',
                                    });
                      return false;
        }
        }
      }
      // <!-- ==========================FINISH   ADD  ROW TABLA  VENDEDORES========================= -->


      // <!-- ========================== ADD  ROW TABLA  IMPULSADORAS========================= -->
      function addTableImpul(){
        var NombreEmpleado = mtxtEmpleadoImpulso.options[mtxtEmpleadoImpulso.selectedIndex].text;
        var Id_Empleado=document.getElementById("mtxtEmpleadoImpulso").value;
        var Id_Accesorio=document.getElementById("mtxtproductoAsignarImpulso").value;
        var Id_distribuidora=<?PHP echo $this->session->userdata('Id_Distribuidora');?>;
        var Id_Canal=document.getElementById("mtxtcanalAsignarImpulso").value;
        var Id_Ruta=document.getElementById("mtxtrutaAsignarImpulso").value;
        var producto = mtxtproductoAsignarImpulso.options[mtxtproductoAsignarImpulso.selectedIndex].text;
        var Ruta = mtxtrutaAsignarImpulso.options[mtxtrutaAsignarImpulso.selectedIndex].text;
        var Fecha_Salida = document.getElementById("mtxtfechaImpulsadora").value;
        var Cantidad = 1;
        var existencias =document.getElementById("existenciasprodimpulso").value;

        if( $("input[name='radioimp']").is(':checked')){
          var motivo_entrega=$('input[name="radioimp"]:checked').val();
        }else{
          var motivo_entrega='';
        }
        if(Id_Accesorio.length== 0|| motivo_entrega.length==0 ||Id_distribuidora.length ==0 || Id_Canal.length ==0 ||Id_Ruta.length ==0 ||Fecha_Salida.length ==0 ){
                swal.fire({title:'Todos Los Campos Son Obligatorios', type: 'error'});
                    return false;

        }else{
          var fila="<tr><td style='display: none;'>"+Id_Accesorio+
          "</td><td style='display: none;'>"+Id_distribuidora+
          "</td><td style='display: none;'>"+Id_Canal+
          "</td><td style='display: none;'>"+Id_Ruta+
          "</td><td style='display: none;'>"+Id_Empleado+
          "</td><td  style='display: none;'>"+Fecha_Salida+
          "</td><td class='td' >"+Ruta+
          "</td><td class='td'>"+NombreEmpleado+
          "</td><td class='td'>"+producto+
          "</td><td class='td'>"+Cantidad+
          "</td><td class='td'>"+motivo_entrega+
          "</td><td><span style='font-size: 20px;  margin-left:25px; color: black;' value='Delete' onclick='deleteRowimp(this)'><i class='fas fa-trash' ></i></span></td></tr>";

        if(existencias>0){
            var btn = document.createElement("TR");
            btn.innerHTML=fila;
            document.getElementById("tablita-impul").appendChild(btn);
            var acumulador=0; 

          $("#TableImpulso tbody tr").each(function() {

              if($(this).children('td').slice(0, 1).text()==Id_Accesorio){
                acumulador = acumulador+1

                $('#existenciasprodimpulso').val(existencias-acumulador);
              
              }else{

              }

          acumulador=0;

          });
        

        }
        else{
          swal.fire({ showConfirmButton: false, 
                                    timer: 1500, 
                                    position: 'top-end',
                                    title:'Este Accesorio No Tiene Existencias Disponibles', 
                                    type: 'info',
                                    });
                      return false;
        }
        }

      }
      // <!-- ==========================FINISH   ADD  ROW TABLA  IMPULSDORAS========================= -->


      // <!-- ========================== DELETE ROW TABLA VENDEDORES========================= -->
      function deleteRow(btn) {


        var Id_Accesorio=document.getElementById("mtxtproductoAsignar").value;
        var acumulador=0; 
        var  existencias=document.getElementById("existenciasprod").value;

        $("#TableVendedores tbody tr").each(function() {
                        
                        if($(this).children('td').slice(0, 1).text()==Id_Accesorio){

                          acumulador = acumulador+1

                          $('#existenciasprod').val(Number(existencias)+acumulador);

                        }else{

                        }

                        acumulador=0;

                    });

          var row = btn.parentNode.parentNode;
          row.parentNode.removeChild(row);

      
      }
      // <!-- ========================== FINISH DELETE ROW TABLA ========================= -->


      // <!-- ========================== DELETE ROW TABLA IMPULSO ========================= -->
      function deleteRowimp(btn) {


        var Id_Accesorio=document.getElementById("mtxtproductoAsignarImpulso").value;
        var acumulador=0; 
        var  existencias=document.getElementById("existenciasprodimpulso").value;

        $("#TableImpulso tbody tr").each(function() {
                      
                      if($(this).children('td').slice(0, 1).text()==Id_Accesorio){

                        acumulador = acumulador+1

                        $('#existenciasprodimpulso').val(Number(existencias)+acumulador);

                      }else{

                      }

                      acumulador=0;

                  });

        var row = btn.parentNode.parentNode;
        row.parentNode.removeChild(row);


      }
      // <!-- ========================== FINISH DELETE ROW TABLA ========================= -->



      // <!-- ========================== ADD REGISTROS SALIDA DE PRODUCTO  VENDEDORES========================= -->
      $('#mbtnsalidaproductoVendedores').click(function(){
        var Id_Accesorio=document.getElementById("mtxtproductoAsignar").value;
        var Id_distribuidora=document.getElementById("mtxtdistribuidoraAsignar").value;
        var Id_Canal=document.getElementById("mtxtcanalAsignar").value;
        var Id_Ruta=document.getElementById("mtxtrutaAsignar").value;
        var filasTabla=document.getElementById("TableVendedores").rows.length;
        var producto = mtxtproductoAsignar.options[mtxtproductoAsignar.selectedIndex].text;
        var Ruta = mtxtrutaAsignar.options[mtxtrutaAsignar.selectedIndex].text;
        var Fecha_Salida = document.getElementById("mtxtfechaVendedor").value;
        var Cantidad = 1;
        var existencias =document.getElementById("existenciasprod").value;

        if( $("input[name='radio']").is(':checked')){
          var motivo_entrega=$('input[name="radio"]:checked').val();
        }else{
          var motivo_entrega='';
        }

        filasTabla=filasTabla-1;

        if(Id_Accesorio.length== 0|| motivo_entrega.length==0 || Id_distribuidora.length ==0 || Id_Canal.length ==0 ||Id_Ruta.length ==0 ||Fecha_Salida.length ==0  || filasTabla==0){
              swal.fire({title:'Agregar Accesorios y Llenar Todos Campos Es Obligatorio', type: 'error'});
                  return false;

        }else{
        var table_data= [];
        var sub=[];

        $('#tablita tr').each(function(row,tr){


          if( $(tr).find('td:eq(0)').text()==""){

          }else{
            
            sub ={
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
            title:'Desea Asignar los Accesorios',
            text: '',
            type:'',
            showLoaderOnConfirm: true, 
            showCancelButton: true,
            confirmButtonText:'Si',
            preConfirm: () => { 
              var data = { 'Datos': table_data};

            $.ajax({
              data:data,
                type: "POST",
                url:"<?php echo base_url();?>index.php/Accesorios/Salida_Accesorios",
                crossOrigin:false,
                datatype:'json',
                success: function(result){

                  if(result.Status=='success'){
                    let timerInterval
                      Swal.fire({
                      title: 'Entrega de Equipo Registrada Correctamente',
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
                            location.reload();
                          }
                      });
                  }else{
                    let timerInterval
                      Swal.fire({
                      title: 'Error Al Enviar Registro',
                      type: 'warning',
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
                            location.reload();
                          }
                      });
                  }
                }

              });

            }},
          );

        }

      });

      // <!-- ========================== FINISH ADD REGISTROS SALIDA DE PRODUCTO VENDEDORES========================= -->


      // <!-- ========================== ADD REGISTROS SALIDA DE PRODUCTO IMPULSADORAS========================= -->
      $('#mbtnsalidaproductoImpulsadoras').click(function(){
        var Id_Accesorio=document.getElementById("mtxtproductoAsignarImpulso").value;
        var Id_distribuidora=<?PHP echo $this->session->userdata('Id_Distribuidora');?>;
        var Id_Canal=document.getElementById("mtxtcanalAsignarImpulso").value;
        var Id_Ruta=document.getElementById("mtxtrutaAsignarImpulso").value;
        var producto = mtxtproductoAsignarImpulso.options[mtxtproductoAsignarImpulso.selectedIndex].text;
        var Ruta = mtxtrutaAsignarImpulso.options[mtxtrutaAsignarImpulso.selectedIndex].text;
        var Fecha_Salida = document.getElementById("mtxtfechaImpulsadora").value;
        var Cantidad = 1;
        var existencias =document.getElementById("existenciasprodimpulso").value;
        var NombreEmpleado = mtxtEmpleadoImpulso.options[mtxtEmpleadoImpulso.selectedIndex].text;
        var Id_Empleado=document.getElementById("mtxtEmpleadoImpulso").value;
        var filasTabla=document.getElementById("TableImpulso").rows.length;

        if( $("input[name='radioimp']").is(':checked')){
          var motivo_entrega=$('input[name="radioimp"]:checked').val();
        }else{
          var motivo_entrega='';
        }

        filasTabla=filasTabla-1;

        if(Id_Accesorio.length== 0|| motivo_entrega.length==0 ||Id_distribuidora.length ==0 || Id_Canal.length ==0 ||Id_Ruta.length ==0 || Fecha_Salida.length ==0 ||Id_Empleado.length ==0|| filasTabla==0 ){
                swal.fire({title:'Agregar Accesorios y Llenar Todos Campos Es Obligatorio', type: 'error'});
                    return false;

        }else{
        var table_data= [];
        var sub=[];

        $('#tablita-impul tr').each(function(row,tr){


          if( $(tr).find('td:eq(0)').text()==""){

          }else{
            
            sub ={
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
              title:'Desea Asignar los Accesorios',
              text: '',
              type:'',
              showLoaderOnConfirm: true, 
              showCancelButton: true,
              confirmButtonText:'Si',
              preConfirm: () => { 
                var data = { 'Datos': table_data};
              $.ajax({
                data:data,
                  type: "POST",
                  url:"<?php echo base_url();?>index.php/Accesorios/Salida_Accesorios",
                  crossOrigin:false,
                  datatype:'json',
                  success: function(result){

                    if(result.Status=='success'){
                      let timerInterval
                        Swal.fire({
                        title: 'Entregada de Equipo Registrada Correctamente',
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
                              location.reload();
                            }
                        });
                    }else{
                      let timerInterval
                        Swal.fire({
                        title: 'Error Al Enviar Registro',
                        type: 'warning',
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
                              location.reload();
                            }
                        });
                    }
                  }

                });

              }},
          );

        }

      });

        // <!-- ========================== FINISH ADD REGISTROS SALIDA DE PRODUCTO IMPULSADORAS========================= -->

        // DISTRIBUIDORA MODIFICAR CATEGORIAS Y ACCESORIOS
      $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/fetch_distribuidora",
            method:"POST",
          

            success:function(data)
            {
            
              $('#txtdistribuidora').html(data);
        
            }
          });
         // END, DISTRIBUIDORA MODIFICAR CATEGORIAS Y ACCESORIOS
        // <!-- ====================================== MOSTRAR DATOS CONSULTADOS EMPLEADOS============================ -->
          $.ajax({
            url:"<?php echo base_url();?>index.php/Accesorios/Consultar_PDF",
            method:"POST", 
            
        
            success:function(respuesta){
          
              var registros =eval(respuesta);
            
           
              html ="<table class='table' class='table table-responsive table-bordered' align='center'><thead>";
              html +="<th class='th' style='display:none;'>ID</th><th class='th'>Ruta</th><th class='th'>Nombre</th><th class='th'>Descripcion</th><th class='th'>Fecha Salida</th><th class='th'>Archivo PDF</th></tr>";
              html +="</thead><tbody>"; 
              
              for (var i = 0; i <registros.length; i++) {
                html +="<tr'><td style='display:none;'>"+registros[i]["Id_Ruta"]+
                "</td><td class='td'>"+registros[i]["Nombre_Ruta"]+
                "</td><td class='td'>"+registros[i]["Nombre"]+
                "</td><td class='td'>"+registros[i]["nombre_accesorio"]+" "+registros[i]["marca_accesorio"]+" "+registros[i]["tipo_accesorio"]+
                "</td><td class='td'>"+registros[i]["fecha_salida"]+ 
                "</td><td style='display:none;'>"+registros[i]["Id_PDF"]+
                "</td><td class='td'><a href='<?php echo base_url();?>index.php/Accesorios/pdfdetails/"+registros[i]["Id_PDF"]+"' target='_blank'><span style='color: red; font-size:30px;'><i class='fas fa-file-pdf'></i></span></a>"+
                "</td></tr>";
                

              };


              html +="</tbody></table>";

              
              $("#InformeEntrega").html(html);
              
              
            }
          });
          // <!-- ======================================FINISH MOSTRAR DATOS CONSULTADOS EMPLEADOS ============================ -->
     


      


      

      // CARGAR EXISTENCIAS AL ENTREGAR EQUIPO A VENDEDORES
      $(document).ready(function(){
        $("#mtxtproductoAsignar").change(function(){
          var Id_Accesorio=document.getElementById("mtxtproductoAsignar").value;
          var acumulador=0; 
          var id_producto=$('#mtxtproductoAsignar').serialize();

                $.ajax({
                  url:"<?php echo base_url();?>index.php/Accesorios/Existencia_Producto",
                  method:"POST",
                  data:id_producto,
                

                  success:function(respuesta){
                    
                var registros= eval(respuesta);

                  if(respuesta =='[]'){

                      $('#existenciasprod').val('0');
                      
                  }else{
                    
                    for (var i = 0; i<registros.length; i++) {

                      $('#existenciasprod').val(registros[i]["Stock"]);
                    


                    }

                    
                  }
                
                    $("#TableVendedores tbody tr").each(function() {
                      var existencias =document.getElementById("existenciasprod").value;
                      if($(this).children('td').slice(0, 1).text()==Id_Accesorio){

                        acumulador = acumulador+1

                        $('#existenciasprod').val(existencias-acumulador);

                      }else{

                      }

                      acumulador=0;

                  });
                  
                  
                  }

                });

                

              
            
              });

              

              
      });
      // END,CARGAR EXISTENCIAS AL ENTREGAR EQUIPO A VENDEDORES


      // CARGAR EXISTENCIAS AL ENTREGAR EQUIPO A VENDEDORES
      $(document).ready(function(){
        $("#mtxtproductoAsignarImpulso").change(function(){
          var Id_Accesorio=document.getElementById("mtxtproductoAsignarImpulso").value;
          var acumulador=0; 
          var id_producto=$('#mtxtproductoAsignarImpulso').serialize();
        
                $.ajax({
                  url:"<?php echo base_url();?>index.php/Accesorios/Existencia_Producto_Impulso",
                  method:"POST",
                  data:id_producto,
                

                  success:function(respuesta){
                var registros= eval(respuesta);

                  if(respuesta =='[]'){
                      $('#existenciasprodimpulso').val('0');
                  }else{
                    for (var i = 0; i<registros.length; i++) {
                      $('#existenciasprodimpulso').val(registros[i]["Stock"]);

                    }
                  }
                  $("#TableImpulso tbody tr").each(function() {
                      var existencias =document.getElementById("existenciasprodimpulso").value;
                      if($(this).children('td').slice(0, 1).text()==Id_Accesorio){

                        acumulador = acumulador+1

                        $('#existenciasprodimpulso').val(existencias-acumulador);

                      }else{

                      }

                      acumulador=0;

                  });
                  
                  }
                });
            
              });
      });
      // END,CARGAR EXISTENCIAS AL ENTREGAR EQUIPO A VENDEDORES


      



    </script>

</html>