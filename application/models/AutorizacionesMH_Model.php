<?php defined('BASEPATH') OR exit('No direct script access allowed');

class AutorizacionesMH_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

  }
    
  public function index(){

  }

    
  public function Buscar_Telefonos($imei){

      $this->db->select('t.Id_Telefono, m_c.Nombre_Marca, m_a.Nombre_Modelo,t.año_telefono,t.color_telefono, d.Nombre_Distribuidora');
      $this->db->from('telefonos as t');
      $this->db->join('distribuidora as d','t.Id_Distribuidora=d.Id_distribuidora');
      $this->db->join('marca_cell as m_c','t.Id_marca_cell=m_c.Id_marca_cell');
      $this->db->join('modelo_cell as m_a','t.Id_modelo_cell=m_a.Id_modelo_cell');
      $this->db->where('t.imei_telefono',$imei);

      $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        }

  }

  public function Ingresar_Autorizaciones($data){
        
      $this->db->insert('autorizaciones_mh',$data);
      
      if($this->db->affected_rows() > 0 ){
          return true;
      }else{
          return false;
      }
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

  public function fetch_canal($Id_Distribuidora){
    $this->db->where('Id_Distribuidora', $Id_Distribuidora);

    $query = $this->db->get('canal');
    $output = '<option value="">Seleccione el Canal</option>';
    foreach($query->result() as $row)
    {
      $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
    }
    return $output;
  }

  
  public function fetch_ruta_cell($Id_Canal)
    {
        $this->db->where('Id_Canal', $Id_Canal);
        
        $query = $this->db->get('rutas');
        $output = '<option value="">Seleccione la Ruta</option>';
        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Ruta.'">'.$row->Nombre_Ruta.'</option>';
        }
        return $output;
  }

  public function fetch_autorizaciones($distribuidora,$estado){

    $this->db->select('a_mh.id_autorizaciones, m_c.Nombre_marca, mo_c.nombre_Modelo, t.año_telefono, a_mh.serie_autorizada, t.color_telefono, d.Nombre_Distribuidora , a_mh.software, a_mh.n_maquina ,a_mh.n_resolucion ,a_mh.n_resolucion_rt, a_mh.fecha_solicitud,a_mh.fecha_autorizacion,a_mh.cantidad_tk, t.imei_telefono, a_mh.estado  , a_mh.Id_telefono');
    $this->db->from('autorizaciones_mh as a_mh');
    $this->db->join('telefonos as t','a_mh.Id_telefono=t.Id_telefono');
    $this->db->join('marca_cell as m_c','t.Id_marca_cell=m_c.Id_marca_cell');
    $this->db->join('modelo_cell as mo_c','t.Id_modelo_cell=mo_c.Id_modelo_cell');
    $this->db->join('distribuidora as d','d on t.Id_Distribuidora=d.Id_Distribuidora');
    $this->db->where('t.Id_Distribuidora',$distribuidora);
    $this->db->where('a_mh.estado',$estado);
    $this->db->order_by('a_mh.n_maquina');

    $query = $this->db->get();

    $Datos = $query->result();

    if(empty($Datos)){

        return array();
    }else{
        return $Datos;
    } 
  }

  public function Actualizar_A_MH($param){
      
    $campos = array(
            
            'software' => $param['software'],
            'n_maquina' => $param['n_maquina'],
            'n_resolucion' => $param['n_resolucion'],
            'n_resolucion_rt' => $param['n_resolucion_rt'],
            'serie_autorizada' => $param['serie_autorizada'],
            'fecha_solicitud' => $param['fecha_solicitud'],
            'fecha_autorizacion' => $param['fecha_autorizacion'],
            'cantidad_tk' => $param['cantidad_tk']

          

    );
    $this->db->where('id_autorizaciones', $param['id_autorizaciones']);
    $this->db->update('autorizaciones_mh',$campos);
    
    return 1;
  }

  public function Mostrar_CajasMH(){


    $this->db->select('a_mh.Id_autorizaciones, a_mh.n_maquina, a_mh.estado,a_mh.estado_cell,r.Nombre_Ruta');
    $this->db->from('autorizaciones_mh as a_mh');
    $this->db->join('telefonos as t','a_mh.Id_telefono=t.Id_telefono');
    $this->db->join('bitacora_entrega_celular as bec','t.Id_telefono=bec.Id_telefono');
    $this->db->join('rutas as r','bec.Id_ruta=r.Id_Ruta');
    // $this->db->where('estado',2);
    $this->db->where('estado_cell!=',"NO ENTREGADO");
    $this->db->order_by('n_maquina');
  
    $query = $this->db->get();

    $Datos = $query->result();
  
    if(empty($Datos)){
  
        return array();
    }else{
        return $Datos;
    } 
  }

  public function Registrar_Baja_Alta($param){
    
    $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

    $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
    $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

    $camposA = array(
            'Id_baja_serie' => 0,
            'Id_autorizaciones' => $param['n_maquina_baja'],
            'fecha_baja_alta' => $nuevafecha,
            'estatus'=>"BAJA",
            'Id_pdf_baja_serie'=>$nuevafecha.'_'.$this->session->userdata('Id_u_sdv'),
            'fecha_registro' =>$nuevafecha,
            'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')
    );



    $this->db->insert('baja_serie',$camposA);

    $campos = array(
            
      'estado' => 0,
      'estado_cell'=>"BAJA"

    );

      
    $this->db->where('id_autorizaciones', $param['n_maquina_baja']);
    $this->db->update('autorizaciones_mh',$campos);


    $camposB = array(
              'Id_baja_serie' => 0,
              'Id_autorizaciones' => $param['n_maquina_alta'],
              'fecha_baja_alta' => $nuevafecha,
              'estatus'=>"ALTA",
              'Id_pdf_baja_serie'=> $nuevafecha.'_'.$this->session->userdata('Id_u_sdv'),
              'fecha_registro' =>$nuevafecha,
              'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')
    );
    

    $this->db->insert('baja_serie',$camposB);


    $campos = array(
      'fecha_habilitacion' => $nuevafecha,      
      'estado' => 1,
      'estado_cell'=>"ENTREGADO"

    );

    
    $this->db->where('id_autorizaciones', $param['n_maquina_alta']);
    $this->db->update('autorizaciones_mh',$campos);
      
    return 1;
  }

  
  public function Registrar_Alta_MH($param){
    
    $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

    $nuevafecha = strtotime ( '-20 hour' , strtotime ( $fecha ) ) ;
    $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

    $camposB = array(
              'Id_baja_serie' => 0,
              'Id_autorizaciones' => $param['n_maquina_alta'],
              'fecha_baja_alta' => $nuevafecha,
              'estatus'=>"ALTA",
              'Id_pdf_baja_serie'=> $nuevafecha,
              'fecha_registro' =>$nuevafecha,
              'Id_u_sdv'=>$this->session->userdata('Id_u_sdv')
    );
    

    $this->db->insert('alta_serie',$camposB);


    $campos = array(
      'fecha_habilitacion' => $nuevafecha,
      'estado' => 1,
      'estado_cell'=>"ENTREGADO"

    );

    
    $this->db->where('id_autorizaciones', $param['n_maquina_alta']);
    $this->db->update('autorizaciones_mh',$campos);
      
    return 1;
  }

       
  public function fetch_autorizacion($id_telefono){

    $this->db->select('count(*) as cantidad ,Id_telefono');
    $this->db->from('autorizaciones_mh');
    $this->db->where('Id_telefono',$id_telefono);

    $query = $this->db->get();

      $Datos = $query->result();

      if(empty($Datos)){

          return array();
      }else{
          return $Datos;
      }

  }
  
  public function Consultar_PDF(){

    $query='SELECT r.Nombre_Ruta, bs.estatus,a_mh.n_maquina, bs.fecha_baja_alta ,bs.Id_pdf_baja_serie from baja_serie as bs
    inner join autorizaciones_mh as a_mh on bs.Id_autorizaciones=a_mh.Id_autorizaciones
    inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
    inner join distribuidora as d on t.Id_Distribuidora=d.Id_Distribuidora
    inner join bitacora_entrega_celular as bec on bec.Id_telefono=t.Id_telefono
    inner join rutas as r on bec.Id_Ruta=r.Id_ruta
    order by bs.Id_pdf_baja_serie desc;';

    $resultados = $this->db->query($query);
    return $resultados->result();
    
  }

  
  function fetch_single_details($Id_PDF)
	{
    // $data->row()->Nombre; "ASI SE ACCEDE A UNA COLUMNA DE LA CONSULTA"

     $data1='SELECT a_mh.n_maquina , r.nombre_ruta , bs.fecha_registro,d.Nombre_Distribuidora, a_mh.n_resolucion,  a_mh.fecha_autorizacion, t.imei_telefono, bs.estatus,a_mh.n_resolucion_rt, m_c.Nombre_Marca,mo_c.nombre_Modelo,a_mh.software,a_mh.fecha_habilitacion, a_mh.cantidad_tk,a_mh.serie_autorizada
      from baja_serie  as bs
      inner join autorizaciones_mh as a_mh on bs.Id_autorizaciones=a_mh.Id_autorizaciones
      inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
      inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
      inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
      inner join bitacora_entrega_celular as bec on t.Id_telefono=bec.Id_telefono 
      inner join distribuidora as d on t.Id_Distribuidora=d.Id_Distribuidora
      inner join rutas	as r	on bec.Id_ruta=r.Id_ruta
        where bs.Id_pdf_baja_serie="'.$Id_PDF.'" and bs.estatus="BAJA"
        order by bs.estatus desc;';

      $data1 = $this->db->query($data1);

      $data2='SELECT a_mh.n_maquina , r.nombre_ruta , d.Nombre_Distribuidora, a_mh.n_resolucion,  a_mh.fecha_autorizacion, t.imei_telefono, bs.estatus,a_mh.n_resolucion_rt, m_c.Nombre_Marca,mo_c.nombre_Modelo,a_mh.software,a_mh.fecha_habilitacion, a_mh.cantidad_tk,a_mh.serie_autorizada
        from baja_serie  as bs
        inner join autorizaciones_mh as a_mh on bs.Id_autorizaciones=a_mh.Id_autorizaciones
        inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
        inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
        inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
        inner join bitacora_entrega_celular as bec on t.Id_telefono=bec.Id_telefono 
        inner join distribuidora as d on t.Id_Distribuidora=d.Id_Distribuidora
        inner join rutas	as r	on bec.Id_ruta=r.Id_ruta
          where bs.Id_pdf_baja_serie="'.$Id_PDF.'" and bs.estatus="ALTA"
          order by bs.estatus desc;';

      $data2 = $this->db->query($data2);

        $count1=$data1->num_rows();
        $count2=$data2->num_rows();

      if ($count1>0 && $count2>0){

        

        $output ='<h2 style="text-align:left;">Alta y Baja De Serie <br>Ruta: '.$data1->row()->nombre_ruta.' <br>Dia: '.$data1->row()->fecha_registro.' <br>Distribuidora: '.$data1->row()->Nombre_Distribuidora.'</h2>';
        $output.='<img width="225px"  height="225px" style="margin-top:10px; float:right; margin-top:-20%;" src="https://fotos.subefotos.com/1caca0253f02cfa9f52b2d2264004f28o.png">
        ';
        $output .='<div style="margin-top:20%">';
        $output .='<table  style="text-align:center;">
                    <tr style="background-color:black; color:white; border: 2px green solid; ">
                      <th>N Maquina</th>
                      <th>Ruta</th>
                      <th>Zona</th>
                      <th>N Resolucion</th>
                      <th>Fecha De solicitud</th>
                      <th>Marca</th>
                      <th>Modelo</th>
                      <th>Numero de serie</th>
                      <th>Software</th>
                      <th>Servidor</th>
                      <th>Marca del Servidor</th>
                      <th>Serie del Servidor</th>
                      <th>Status</th>
                    </tr>
                    <tr>
                      <td>'.$data1->row()->n_maquina.'</td>
                      <td>'.$data1->row()->nombre_ruta.'</td>
                      <td>'.$data1->row()->Nombre_Distribuidora.'</td>
                      <td>'.$data1->row()->n_resolucion.'</td>
                      <td>'.$data1->row()->fecha_autorizacion.'</td>
                      <td>'.$data1->row()->Nombre_Marca.'</td>
                      <td>'.$data1->row()->nombre_Modelo.'</td>
                      <td>'.$data1->row()->imei_telefono.'</td>
                      <td>'.$data1->row()->software.'</td>
                      <td>BLADE CENTER HS23	</td>
                      <td>IBM</td>
                      <td>J10HMFL</td>
                      <td>'.$data1->row()->estatus.'</td>
                    </tr>
        </table><br><br>';

        $output .='<table style="text-align:center;">
                  <tr style="background-color:black; color:white; border: 2px white solid;">
                    <th>N Maquina</th>
                    <th>Ruta</th>
                    <th>Zona</th>
                    <th>N Resolucion</th>
                    <th>Fecha De solicitud</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Numero de serie</th>
                    <th>Software</th>
                    <th>Servidor</th>
                    <th>Marca del Servidor</th>
                    <th>Serie del Servidor</th>
                    <th>Status</th>
                  </tr>
                  <tr>
                    <td>'.$data2->row()->n_maquina.'</td>
                    <td>'.$data2->row()->nombre_ruta.'</td>
                    <td>'.$data2->row()->Nombre_Distribuidora.'</td>
                    <td>'.$data2->row()->n_resolucion.'</td>
                    <td>'.$data2->row()->fecha_autorizacion.'</td>
                    <td>'.$data2->row()->Nombre_Marca.'</td>
                    <td>'.$data2->row()->nombre_Modelo.'</td>
                    <td>'.$data2->row()->imei_telefono.'</td>
                    <td>'.$data2->row()->software.'</td>
                    <td>BLADE CENTER HS23	</td>
                    <td>IBM</td>
                    <td>J10HMFL</td>
                    <td>'.$data2->row()->estatus.'</td>
                  </tr>
        </table>';  
        
        $output.='</div>';
     
       return $output;

      }else{
        return $output="
        <img src='https://pbs.twimg.com/media/DWk5mqkWAAAQnKt.png' style='align-items:center; margin-top:10%; margin-left:30%;'>
        <h1 style='color:black; text_align:center;'>Algo salio mal contactarse con el administrador</h1>";
        
        ;

      }
      
    }

      
  }