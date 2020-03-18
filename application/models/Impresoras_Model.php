<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Impresoras_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }

    public function insertar_bitacora($Id_item,$nombre_tabla,$comentario,$tipo_accion){
      
      // ************** INSERTAR EN LA BITACORA LA ACCION ********************//
      $bitacora=array(
        'Id_bitacora'=>null,
        'Nombre_tabla'=>$nombre_tabla,
        'Id_item'=>$Id_item,
        'Id_tipo_accion'=>$tipo_accion,
        'comentario'=>$comentario,
        'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')

      );
      $this->db->insert('bitacora_procesos',$bitacora);
      // ***********************************************************************//

    }

    public function fetch_distribuidora(){

        $query = $this->db->get('distribuidora');

         $output = '<option value="" disabled="disabled" selected="selected">Seleccione Distribuidora</option>';
         
            foreach($query->result() as $row)
            {
            $output .= '<option value="'.$row->Id_Distribuidora.'">'.$row->Nombre_Distribuidora.'</option>';
            }

         return $output;
    }

    public function Registrar_Marca($param){

      $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

      $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
      $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

      $campos = array(
             'Id_marca_impresoras' => 0,
             'nombre_marca' => $param['Marca'],
             'descripcion_marca' =>$param['Descripcion'],
             'fecha_registro' =>$nuevafecha ,
             'Id_distribuidora' => $this->session->userdata('Id_Distribuidora'),
             'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),
      );
     
      $this->db->insert('Marca_Impresoras',$campos);
     
      return 1;
     }

    public function fetch_marca_impresora(){

      $query = $this->db->get('Marca_Impresoras');

       $output = '<option value="" disabled="disabled" selected="selected">Seleccione marca de impresora</option>';
       
          foreach($query->result() as $row)
          {
          $output .= '<option value="'.$row->Id_marca_impresoras.'">'.$row->nombre_marca.'</option>';
          }

       return $output;
    }

    public function Registrar_Modelo($param){

      $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

      $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
      $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

      $campos = array(
             'Id_modelo_impresoras' => 0,
             'nombre_modelo' => $param['Modelo'],
             'Id_marca_impresoras' =>$param['Marca'],
             'fecha_registro' =>$nuevafecha ,
             'Id_distribuidora' => $this->session->userdata('Id_Distribuidora'),
             'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),
      );
     
      $this->db->insert('Modelo_Impresoras',$campos);
     
      return 1;
     }

    public function fetch_modelo_impresora(){


      $query = $this->db->get('Modelo_Impresoras');

       $output = '<option value="" disabled="disabled" selected="selected">Seleccione Distribuidora</option>';
       
          foreach($query->result() as $row)
          {
          $output .= '<option value="'.$row->Id_modelo_impresoras.'">'.$row->nombre_modelo.'</option>';
          }

       return $output;
    }

    public function Registrar_Impresora($param){

      $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

      $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
      $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

      $campos = array(
             'Id_Impresoras' => 0,
             'Id_marca_impresoras' => $param['Marca'],
             'Id_modelo_impresoras' =>$param['Modelo'],
             'activo_fijo' =>$param['ActivoFijo'] ,
             'n_serie' => $param['N_serie'],
             'codigo_impresora' => $param['Codigo'],
             'fecha_registro' => $nuevafecha,
             'estado' =>1,
             'estado_entrega'=>0,
             'observacion' => "BACK UP",
             'Id_distribuidora' => $param['Distribuidora'],
             'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),

      );
     
      $this->db->insert('Impresoras',$campos);
     
      return 1;
     }

     public function Consultar_Impresoras($Distribuidora){

      $query='SELECT I.Id_Distribuidora,m_i.Id_marca_impresoras,M_o.Id_modelo_impresoras,I.Id_impresoras,d.Nombre_Distribuidora,m_i.nombre_marca,m_o.nombre_modelo,I.activo_fijo,I.n_serie,I.codigo_impresora,i.estado,i.estado_entrega from Impresoras as I
      inner join Marca_Impresoras as m_i on I.Id_marca_impresoras=m_i.Id_marca_impresoras
      inner join Modelo_Impresoras as m_o on I.Id_modelo_impresoras=m_o.Id_modelo_impresoras
      inner join distribuidora as d on I.Id_Distribuidora=d.Id_Distribuidora
      where I.Id_distribuidora="'.$Distribuidora.'"';

      $resultados = $this->db->query($query);
      return $resultados->result();
     }

     public function Modificar_Impresora($param){


      $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

      $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
      $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );


      $campos = array(

              'Id_marca_impresoras' => 	$param['Marca'],
              'Id_modelo_impresoras' => $param['Modelo'],
              'activo_fijo' => $param['ActivoFijo'],
              'n_serie' => $param['N_serie'],
              'codigo_impresora' => $param['Codigo'],
              'fecha_registro' => $nuevafecha,
              'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),
              'Id_distribuidora' => $param['Distribuidora']

      );
      $this->db->where('Id_Impresoras', $param['Id_Impresoras']);
      $this->db->update('Impresoras',$campos);

      //***********INSERTAR EN BITACORA *********/
      $Id_item=  $param['Id_Impresoras'];
      $nombre_tabla='IMPRESORAS';
      $comentario='MODIFICACION';
      $tipo_accion=1;

      $this->insertar_bitacora($Id_item,$nombre_tabla,$comentario,$tipo_accion);
      //***********END INSERTAR EN BITACORA *********/
      
      return 1;

    }

    public function Baja_Impresora($param){

      $campos = array(

              'estado'=>$param['estado'],
              'observacion' => $param['Observacion'],


      );
      $this->db->where('Id_Impresoras', $param['Id_Impresoras']);
      $this->db->update('Impresoras',$campos);

      return 1;

    }

    public function Alta_Impresora($param){

      $campos = array(

              'estado'=>1,
              'observacion' => $param['Observacion'],


      );
      $this->db->where('Id_Impresoras', $param['Id_Impresoras']);
      $this->db->update('Impresoras',$campos);

      return 1;

    }

    public function fetch_N_SerieImpresoras(){

      $query = $this->db->where('estado',1);
      $query = $this->db->where('estado_entrega',0);
      $query = $this->db->where('Id_Distribuidora',$this->session->userdata('Id_Distribuidora'));
      $query = $this->db->get('Impresoras');
      

       $output = '<option value="" disabled="disabled" selected="selected">Seleccione Impresora</option>';
       
          foreach($query->result() as $row)
          {
          $output .= '<option value="'.$row->Id_Impresoras.'">'.$row->n_serie.'</option>';
          }

       return $output;
    }

    public function fetch_canal($Id_Distribuidora){
      $this->db->where('Id_Distribuidora', $Id_Distribuidora);
      
      $query = $this->db->get('canal');
      $output = '<option value="" disabled="disabled" selected>Seleccione el Canal</option>';
      foreach($query->result() as $row)
      {
        $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
      }
      return $output;
    }

    public function fetch_ruta($Id_Canal)
    {
        $this->db->where('Id_Canal', $Id_Canal);
        
        $query = $this->db->get('rutas');
        $output = '<option value="" disabled="disabled" selected>Seleccione la Ruta</option>';
        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Ruta.'">'.$row->Nombre_Ruta.'</option>';
        }
        return $output;
    }

    public function fetch_empleado($Id_Ruta)
    {
        $estado=1;
        $Vendedor="VENDEDOR"; 
        $this->db->where('Cargo', $Vendedor);
        $this->db->where('Id_Ruta', $Id_Ruta);
        $this->db->where('Estado',$estado);
        
        $query = $this->db->get('Empleados');
        $output='';

        $resultado=$query->result();

        if(!empty($resultado))
        {
            foreach($resultado as $row)
            {
                
                    $output .= '<input disabled="disabled" type="text" id="idEmpleado" class="form-control" style="display:none;" value="'.$row->Id_Empleados.'"></input>';
                    $output .= '<input disabled="disabled" type="text" id="NombreEmpleados"  class="form-control" style="background:#E4FFE0;" value="'.$row->Nombre.'"></input>';
    
             
                
            }
        }else{
                    $output .= '<div class="alert alert-danger" style="height:40px;" role="alert">RUTA SIN EMPLEADO</div>';

        }
        return $output;

    }

    public function Entrega_Impresora($param){

      $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

      $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
      $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

      // Actualizar impresora anterior entregada a la ruta
      $query = 'UPDATE Impresoras SET estado="'.$param['estado'].'" , observacion="'.$param['Motivo'].'",estado_entrega=0 WHERE  Id_Impresoras=(select Id_Impresoras FROM Bitacora_entrega_impresora
      WHERE Id_Ruta ="'.$param['Id_Ruta'].'" AND estado =1);';

      $resultados = $this->db->query($query);

      // Actualiza estado de impresora anterior entregada a la ruta
      $camposbaja= array(
        'estado' => 0,
      );
  
  
      $this->db->where('Id_Ruta', $param['Id_Ruta']);
      $this->db->where('estado',1);
      $this->db->update('Bitacora_entrega_impresora',$camposbaja);
 
      
      //Actualiza estado de impresora a entregar en la tabla impresoras
      $camposbajaimpr= array(
        'estado_entrega'=>1,
        'observacion'=>"ENTREGADA",
      );
  
  
      $this->db->where('Id_Impresoras', $param['Id_Impresoras']);
      $this->db->where('estado',1);
      $this->db->update('Impresoras',$camposbajaimpr);     


      // Registra en bitacora la asignacion de impresora
      $campos = array(
             'Id_bit_entrega' => 0,
             'Id_Impresoras' => $param['Id_Impresoras'],
             'Id_Distribuidora' =>$param['Id_Distribuidora'],
             'Id_Canal' =>$param['Id_Canal'] ,
             'Id_Ruta' => $param['Id_Ruta'],
             'Id_Empleados' => $param['Id_Empleado'],
             'fecha_registro' => $nuevafecha,
             'estado' =>1,
             'motivo_entrega'=>$param['Motivo'],
             'Id_pdf_imp' => $nuevafecha."_".$param['Id_Impresoras'],
             'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),

      );
     
      $this->db->insert('Bitacora_entrega_impresora',$campos);
     
      return 1;
    }

    public function Consultar_PDF(){

      $query='SELECT r.Nombre_ruta , e.Nombre,mip.nombre_marca,mop.nombre_modelo,I.codigo_impresora, d.Nombre_Distribuidora,bei.motivo_entrega,bei.fecha_registro,bei.Id_pdf_imp 
      from bitacora_entrega_impresora as bei 
                inner join Impresoras as I on bei.Id_Impresoras=I.Id_Impresoras
                inner join marca_impresoras as mip on I.Id_marca_impresoras=mip.Id_marca_impresoras
                inner join modelo_impresoras as mop on I.Id_modelo_impresoras=mop.Id_modelo_impresoras
                inner join distribuidora as d on bei.Id_Distribuidora=d.Id_Distribuidora
                inner join canal as c on bei.Id_Canal=c.Id_Canal
                inner join rutas as r on bei.Id_Ruta=r.Id_Ruta
                inner join empleados as e on bei.Id_Empleados=e.Id_Empleados
                where bei.Id_distribuidora="'.$this->session->userdata('Id_Distribuidora').'"s
                limit 10;';
  
      $resultados = $this->db->query($query);
      return $resultados->result();

    }



    function fetch_single_details($Id_PDF)
    {
      // $data->row()->Nombre; "ASI SE ACCEDE A UNA COLUMNA DE LA CONSULTA"

       $data='SELECT r.Nombre_ruta , e.Dui,e.Nombre,e.Carnet,mip.nombre_marca,mop.nombre_modelo,I.codigo_impresora,r.cod_cc,r.descrip_cc, I.activo_fijo,I.n_serie,d.Nombre_Distribuidora,bei.motivo_entrega,dis.primera_ocasion,bei.fecha_registro,bei.Id_pdf_imp 
                    from bitacora_entrega_impresora as bei 
                    inner join Impresoras as I on bei.Id_Impresoras=I.Id_Impresoras
                    inner join marca_impresoras as mip on I.Id_marca_impresoras=mip.Id_marca_impresoras
                    inner join modelo_impresoras as mop on I.Id_modelo_impresoras=mop.Id_modelo_impresoras
                    inner join distribuidora as d on bei.Id_Distribuidora=I.Id_Distribuidora
                    inner join canal as c on bei.Id_Canal=c.Id_Canal
                    inner join rutas as r on bei.Id_Ruta=r.Id_Ruta
                    inner join empleados as e on bei.Id_Empleados=e.Id_Empleados
                    inner join deducibles_impresoras as dis on mop.Id_modelo_impresoras=dis.Id_modelo_impresoras
                    WHERE bei.Id_pdf_imp="'.$Id_PDF.'"
                    group by bei.Id_Distribuidora';
  
         
         
          $data = $this->db->query($data);
  
          $count=$data->num_rows();
        
          if ($count>0){
            
                        //*********************************HOJA DE ENTREGA IMPRESORA ***********************************//
    
                          $output='';
                            $output .=  '<div style="font-size:20px;">
                                    <img width="125px"  height="125px" style="margin-top:10px;" src="https://fotos.subefotos.com/1caca0253f02cfa9f52b2d2264004f28o.png">
                                          
                                    
                                          <h1 style="font-size:24px; position:fixed; text-align:center;">
    
                                                                  PRODUCTOS ALIMENTICIOS BOCADELI S.A DE C.V<br>
                                                              Formato para movimiento definitivo de activos fijos <br>
                                                                          Formulario ACF-01
                                          </h1>
                                          
                                          Fecha : <b>'.$data->row()->fecha_registro.'</b>  
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            Correlativo No. <table style="float:right; margin-right:300px;">
                                                                                              <td width="150px"  style="border: 1px #000 solid; ">&nbsp;</td>
                                                                                            </table>
                                                                                            <br><br>
                                          <b>Tipos de movimiento activos</b>
                                          
    
                                          <table style="margin-left:150px; margin-top:-30px; font-size:15px;" >
                                              <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Alta por entrega del activo fijo o contratacion de personal</td>
                                              </tr>
                                              <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:20px;">Alta por liquidacion de proyectos o adquisicion de maquinaria (Debera completar anexo 1)</td>
                                              </tr>
                                              <tr>
                                                <td style="border:1px #000 solid; text-align:center;" width="50px">X</td ><td style="font-size:23px;"> Traslado interno(dentro de la misma empresa o area)</td>
                                              </tr>
                                              <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Traslado externo (a otra distribuidora) o venta del activo</td>
                                              </tr>
                                              <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Bajas de activo fijo dañado</td>
                                              </tr>
                                              <tr>
                                                <td style="border:1px #000 solid;" width="50px">&nbsp;</td><td style="font-size:23px;">Retiro de Activos Fijos por obsolescencia o donacion</td>
                                              </tr>
                                          </table><br>
    
                                        
                                          <table style="float:right;">
                                          
                                              <tr>
                                              <td></td>
                                                <td></td>
                                                <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>RUTA</b></td>
                                                <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>'.$data->row()->Nombre_ruta.'</b></td>
                                                
                                              </tr>
    
                                              <tr>
                                                <td colspan="4" style="border:1px #000 solid; text-align:center; font-size:20px; width:500px;" ><b> Dependencia destino (Recibe)</b></td>
                                              </tr>
    
                                              <tr>
                                                
                                                <td style="border:1px #000 solid;  font-size:20px;"> Nuevo Responsable</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->Nombre.'</td>
                                                
                                              </tr>
    
                                              <tr>
                                              
                                                <td style="border:1px #000 solid;  font-size:20px;"> Codigo de Empleado</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->Carnet.'</td>
                                              </tr>
    
                                              <tr>
                                            
                                                <td style="border:1px #000 solid;  font-size:20px;"> Area </td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;">  VENTAS </td>
                                              </tr>
    
                                              <tr>
                                          
                                                <td style="border:1px #000 solid;  font-size:20px;"> Codigo Centro de Costos</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->cod_cc.'</td>
                                              </tr>
    
                                              <tr>
                                              
                                                <td style="border:1px #000 solid;  font-size:20px;">Nombre centro de costos</td>
                                                <td colspan="3" style="border:1px #000 solid;  font-size:20px;"> '.$data->row()->descrip_cc.'</td>
                                              </tr>
    
    
                                          </table>
    
                                        
                                          <table style="float:left; margin-top:2px;">
                                            
                                            <tr>
                                              <td width="75px">&nbsp;</td>
                                              <td width="75px">&nbsp;</td>
                                              <td width="75px">&nbsp;</td>
                                              <td width="75px">&nbsp;</td>
                                              <td width="75px">&nbsp;</td>
                                              <td style=" text-align:center; font-size:20px;" width="100px">&nbsp;</td>
                                              <td style=" text-align:center; font-size:20px;" width="100px">&nbsp;</td>
                                            </tr>
    
                                            <tr>
                                              <td colspan="6"style="border:1px #000 solid; text-align:center; font-size:20px;" width="100px"><b> Dependencia Origen (Entrega)</b></td>
                                            </tr>
    
                                            <tr>
                                              <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Responsable Actual </td>
                                              <td colspan="2" style="border:1px #000 solid; text-align:center; font-size:20px;"> IT </td>
                                            </tr>
    
                                            <tr>
                                              <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Codigo de Empleado </td>
                                              <td colspan="2" style="border:1px #000 solid;  font-size:20px;">  </td>
                                            </tr>
    
                                            <tr>
                                              <td colspan="2" style="border:1px #000 solid;  font-size:20px;"> Area </td>
                                              <td colspan="4" style="border:1px #000 solid; text-align:center; font-size:20px;"> IT </td>
                                            </tr>
    
                                            <tr>
                                              <td colspan="4" style="border:1px #000 solid;  font-size:20px;"> Codigo centro de costos </td>
                                              <td colspan="2" style="border:1px #000 solid;  font-size:20px;">  </td>
                                            </tr>
    
                                            <tr>
                                              <td colspan="4" style="border:1px #000 solid;   font-size:20px;"> Nombre centro de costos </td>
                                              <td colspan="2" style="border:1px #000 solid;   font-size:20px;"> </td>
                                            </tr>
    
                                          </table>
    
                                          <table style=" text-align:center; width:100%; position:absolute; margin-top:15%;">
                                            <tr>
                                              <th colspan="4" style="border:1px #000 solid;"> INFORMACION BASICA DE LOS ACTIVOS FIJOS</th>
                                            </tr>
    
                                            <tr>
                                              <th style="border:1px #000 solid;"> No.</th>
                                              <th style="border:1px #000 solid;"> Descripcion de los activos</th>
                                              <th style="border:1px #000 solid;"> Codigo De Activo</th>
                                              <th style="border:1px #000 solid;"> Marca y/o No. de Serie del Activo</th>
                                            </tr>  
                                            
                                            <tr>
                                              <td style="border:1px #000 solid;">1</td>
                                              <td style="border:1px #000 solid;">'.$data->row()->nombre_marca.' '.$data->row()->nombre_modelo.' '.$data->row()->codigo_impresora.' </td>
                                              <td style="border:1px #000 solid;">'.$data->row()->activo_fijo.'</td>
                                              <td style="border:1px #000 solid;">'.$data->row()->n_serie.'</td>
                                            </tr>
    
                                            <tr>
                                              <td style="border:1px #000 solid;">2</td>
                                              <td style="border:1px #000 solid;"></td>
                                              <td style="border:1px #000 solid;"></td>
                                              <td style="border:1px #000 solid;"></td>
                                            </tr>
    
                                            <tr>
                                              <td style="border:1px #000 solid;">3</td>
                                              <td style="border:1px #000 solid;"></td>
                                              <td style="border:1px #000 solid;"></td>
                                              <td style="border:1px #000 solid;"></td>
                                            </tr>
    
                                          </table>
    
                                          <table style=" text-align:center; width:100%; position:absolute; margin-top:26%;">
                                            <tr>
                                              <td style="border:1px #000 solid;"><B>Observaciones</B></td>
                                            </tr>
                                            <tr>
                                              <td rowspan="10" style="border:1px #000 solid;"><B>SE HACE ENTREGA DE EQUIPO PARA USO DE FACTURACION MOVIL EN LINEA</B></td>
                                            </tr>
    
                                          </table>
    
                                          <table style="float:right; margin-top:35%; text-align:center;  width:600px; margin-left:42px;">
                                              
                                              
                                                <tr>
                                                  <td colspan="3" style="border:1px #000 solid;"><b>Firmas Dependencia Origen(Entrega)</b></td>
                                                </tr>
    
                                                <tr>
                                                  <td colspan="3"  height="70px" style="border:1px #000 solid;">&nbsp;</td>
                                                </tr>
    
                                                <tr>
                                                  <td colspan="3" style="border:1px #000 solid;"><b>Firma y Sello responsable/dependencia actual</b></td>
                                                </tr>
    
                                                <tr>
                                                  <td  colspan="3" height="70px" style="border:1px #000 solid;">&nbsp;</td>
                                                </tr>
    
                                                <tr>
                                                  <td colspan="3" style="border:1px #000 solid;"><b>Firma y Sello de quien autorizo el traslado</b></td>
                                                </tr>
    
                                          </table>
    
                                          <table style="float:left; margin-top:35%;   width:620px; text-align:center; margin-right:90px;">
                                              <tr>
                                                <td colspan="2" style="border:1px #000 solid"><b>Firmas Dependencia Destino(Recibe)</b></td>
                                              </tr>
                                                <tr>
                                                  <td colspan="2" height="70px" style="border:1px #000 solid">&nbsp;</td>
                                                </tr>
                                                  <tr>
                                                    <td colspan="2" style="border:1px #000 solid"><b>Firma y Sello nuevo responsable/dependencia </b></td>
                                                  </tr>
                                                <tr>
                                                  <td height="70px" style="border:1px #000 solid">&nbsp;</td>
                                                  <td height="70px" style="border:1px #000 solid">&nbsp;</td>
                                                </tr>
                                              <tr>
                                                <td style="border:1px #000 solid"><b>V.B Auxiliar activos</b></td>
                                                <td style="border:1px #000 solid"><b>Captura Activos Fijos</b></td>
                                              </tr>
                                          </table>
    
                                          <table style="border:1px #000 solid; margin-top:53%; width:100.5%; ">
                                            <tr>
                                              <th style="border:1px #000 solid; text-align:center;">Clausula de Compromiso</th>
                                            </tr>
                                              <tr>
                                                <td style="font-size:17px;">
                                                Como funcionario de Productos Alimenticios Bocadeli, S.A. de C.V. declaro que los activos relacionados en el presente documento están  bajo  
                                                mi  responsabilidad,  por  lo  cual  les  daré un uso adecuado al  desempeño de mis funciones y a la destinación institucional prevista para cada 
                                                uno de ellos. En consecuencia, serán asumidos por mí el daño o la pérdida de los mismos debidos a mi negligencia o incumplimiento de los instructivos relacionados con su uso y conservación.
                                                <br><br>
                                                Me comprometo  a  informar  oportunamente  al encargado de Activos Fijos sobre cualquier desplazamiento, traslado temporal o definitivo  de 
                                                dichos activos mediante la tramitación de los formatos respectivos, y sobre cualquier situación que ponga en inminente riesgo los bienes 
                                                relacionados. Dado que  la omisión  de estas disposiciones es considerada como falta grave por el  reglamento interno de trabajo,  asumo  las  
                                                consecuencias  económicas  que   conlleven  el  daño  o   la   pérdida  de  los  bienes mencionados si ocurren por mi  negligencia o 
                                                incumplimiento  de los instructivos  correspondientes, y en tal evento autorizo a Productos Alimenticios Bocadeli a efectuar el descuento 
                                                correspondiente al valor de reposición del bien afectado, deduciéndolo de mis salarios, prestaciones sociales o eventuales indemnizaciones a mi 
                                                favor.
                                                </td>
                                              </tr>
                                          </table>
                                          <br>
                                          <p style="font-size:16px; margin-top:-7px; text-align:center;"><b> Se requiere original y dos copias distribuidas asi : Original , contabilidad 1a. Copia auditoria interna 2.a Copia Archivo</b></p>
    
    
                                          
                                  
                                        <div>'; 
    
    
                        //*********************************END, HOJA DE ENTREGA IMPRESORA ***********************************//
                      
    
                        //********************************* HOJA DE DESCUENTO ***********************************//
                              
                              
                              $output.='<div style="page-break-before:always;">
                                          <BR><BR><BR><BR><BR><BR>
                                <p>YO,<b>  '.STRTOUPPER($data->row()->Nombre).' </b>CON DUI NUMERO :<b> '.STRTOUPPER($data->row()->Dui).'</b> AUTORIZO A <BR>
                                <b>DISTRIBUIDORA';

                              if($this->session->userdata('Nombre_Distribuidora')=='SAN SALVADOR'){
                                  $output.=' DEL CENTRO';
                              }elseif($this->session->userdata('Nombre_Distribuidora')=='SAN MIGUEL'){
                                  $output.=' DE ORIENTE';
                              }else if($this->session->userdata('Nombre_Distribuidora')=='SANTA ANA' OR $this->session->userdata('Nombre_Distribuidora')=='SONSONATE' ){
                                  $output.=' DE OCCIDENTE';
                              }

                              $output.=' , S.A DE C.V.</b>  CARGAR A MI CUENTA PERSONAL LA CANTIDAD DE <b>$'.number_format($data->row()->primera_ocasion,2).'</b> DOLARES DE LOS ESTADOS UNIDOS DE NORTE AMERICA.<BR><BR>
                              EN CONCEPTO DE DESCUENTO POR: <b>'.$data->row()->nombre_marca." ".$data->row()->nombre_modelo."<BR> N SERIE: ".$data->row()->n_serie.'</b><br><br>
                              CANTIDAD QUE ME COMPROMETO A CANCELAR EN LA SIGUIENTE FORMA:<BR><BR>
                              <b>DESCUENTO EN PLANILLA</b> 
                              <img width="5%;" style="margin-left:50px; margin-top:10px;" src="https://cdn4.iconfinder.com/data/icons/vote-check-marks/100/vote-24-512.png">
                              </p><p><b><center><hr></center></b></p><br><br>
                              A LA VEZ SOLICITO Y AUTORIZO AL DEPARTAMENTO DE COMPENSACIONES DE ESTA EMPRESA, 
                              PARA QUE DE MI SALARIO QUINCENAL RETENGA DICHO MONTO A PARTIR DE_____________________________, 
                              EN <B>5 CUOTAS QUINCENALES DE $'.number_format(($data->row()->primera_ocasion/5),2).' C/U</B><BR><BR> Y TAMBIÉN PARA QUE EN CASO DE MI RETIRO 
                              Y SI FUERA OBJETO DE INDEMNIZACIÓN, SE ME DEDUZCA EL SALDO ADEUDADO, EL CUAL FIRMO EN SEÑAL 
                              DE ACEPTACIÓN COMPLETA.<BR><BR>PARA SER PRESENTADA A <b>DISTRIBUIDORA';

                              if($this->session->userdata('Nombre_Distribuidora')=='SAN SALVADOR'){
                                  $output.=' DEL CENTRO';
                              }elseif($this->session->userdata('Nombre_Distribuidora')=='SAN MIGUEL'){
                                $output.=' DE ORIENTE';
                              }else if($this->session->userdata('Nombre_Distribuidora')=='SANTA ANA' OR $this->session->userdata('Nombre_Distribuidora')=='SONSONATE' ){
                                $output.=' DE OCCIDENTE';
                              }
                              $output.=' S.A DE C.V.</B> SE EXTIENDE LA PRESENTE A LOS _______ 
                              DIAS DEL MES DE ____________________ DEL AÑO 20______</div>
                              <BR><BR><HR><BR><BR>
                              NOMBRE DEL EMPLEADO: _________________________________________________________<BR><BR><BR><BR>
                              FIRMA:___________________________';

                        // ********************************* HOJA DE DESCUENTO ***********************************//  
    
            return $output;
    
          }else{
            return $output="<img src='https://pbs.twimg.com/media/DWk5mqkWAAAQnKt.png' style='align-items:center; margin-top:10%; margin-left:30%;'>
            <h1 style='color:black; text_align:center;'>Algo salio mal contactarse con el administrador</h1>";
            
            
          }
        
    }
      
  

 


        
}