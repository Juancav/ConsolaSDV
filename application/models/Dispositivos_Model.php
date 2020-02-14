<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dispositivos_Model extends CI_Model {

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
    public function Registrar_Marca($param){
		 $campos = array(
            'Id_marca_cell' => 0,
            'Nombre_Marca' => $param['Marca'],
            'Id_Distribuidora' =>$this->session->userdata('Id_Distribuidora')
		 );
		
		 $this->db->insert('marca_cell',$campos);
		
		 return 1;
    }

    public function fetch_marca(){
        $this->db->where('Id_Distribuidora', $this->session->userdata('Id_Distribuidora'));
        $query = $this->db->get("marca_cell");
        return $query->result();
    }


    public function Registrar_Modelo($param){
		 $campos = array(
            'Id_modelo_cell' => 0,
            'nombre_Modelo' => $param['Modelo'],
            'id_marca_cell' => $param['Marca'],
            'Id_Distribuidora' =>$this->session->userdata('Id_Distribuidora')
		 );
		
		 $this->db->insert('modelo_cell',$campos);
		
		 return 1;
    }

    public function Registrar_Telefono($param){
      $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

      $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
      $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );
    
      $campos = array(
              'Id_telefono' => 0,
              'id_marca_cell' => $param['Id_Marca'],
              'id_modelo_cell' => $param['Id_Modelo'],
              'año_telefono' => $param['Año'],
              'color_telefono' => $param['Color'],
              'imei_telefono' => $param['Imei'],
              'N_serie_telefono' => $param['N_Serie'],
              'activo_fijo' => $param['Activo_F'],
              'Id_Distribuidora' => $param['Id_Distribuidora'],
              'Id_Canal' => $param['Id_Canal'],
              'fecha_registro' => $nuevafecha,
              'estado_telefono' => 2,
              'id_u_sdv' => $this->session->userdata('Id_u_sdv'),
              'observacion_telefono'=>'NUEVO'    
                          
      );
      
      $this->db->insert('telefonos',$campos);
      
      return 1;
    }


    public function fetch_Modelo($Id_Marca){
         $this->db->where('Id_marca_cell', $Id_Marca);
         $this->db->where('Id_Distribuidora', $this->session->userdata('Id_Distribuidora'));

         $query = $this->db->get('modelo_cell');
         $output = '<option value="">Seleccione el producto</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_modelo_cell.'">'.$row->nombre_Modelo.'</option>';
         }
         return $output;
    }
    
    public function fetch_distribuidora(){

      $query = $this->db->get('distribuidora');
       $output = '<option value="">Seleccione Distribuidora</option>';
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

    public function Consultar_Telefonos($distribuidora,$canal){

      $this->db->select('T.Id_telefono,T.Id_Distribuidora,c.nombre_canal,t.N_serie_telefono,d.nombre_distribuidora, t.color_telefono,t.año_telefono,	T.Id_Canal, mc.Nombre_marca,mcc.Id_modelo_cell, T.Id_marca_cell,mcc.nombre_modelo,T.imei_telefono,T.estado_telefono,T.activo_fijo,');
      $this->db->from('telefonos as T');
      $this->db->join('marca_cell as mc', 'mc.Id_marca_cell=T.Id_marca_cell');
      $this->db->join('modelo_cell as mcc','mcc.Id_modelo_cell=T.Id_modelo_cell');
      $this->db->join('distribuidora as d','d.Id_Distribuidora=T.Id_Distribuidora');
      $this->db->join('canal as c','c.Id_Canal=T.Id_Canal');

      $this->db->where('T.Id_Distribuidora',$distribuidora);
      $this->db->where('T.Id_Canal',$canal);
      $this->db->order_by('T.estado_telefono ASC'); 

      $query = $this->db->get();

      $Datos = $query->result();

      if(empty($Datos)){

          return array();
      }else{
          return $Datos;
      } 
    }
   
    public function Actualizar_Telefonos($param){
      $campos = array(
              'Id_telefono' => $param['Id_telefono'],
              'Id_marca_cell' => $param['Id_marca_cell'],
              'Id_modelo_cell' => $param['Id_modelo_cell'],
              'año_telefono' => $param['año_telefono'],
              'color_telefono' => $param['color_telefono'],
              'imei_telefono' => $param['imei_telefono'],
              'N_serie_telefono' => $param['N_serie_telefono'],
              'activo_fijo' => $param['activo_fijo'],
              'Id_Distribuidora' => $param['Id_Distribuidora'],
              'Id_Canal' => $param['Id_Canal']

      );
      $this->db->where('Id_telefono', $param['Id_telefono']);
      $this->db->update('Telefonos',$campos);

      //***********INSERTAR EN BITACORA *********/
      $Id_item=  $param['Id_telefono'];
      $nombre_tabla='TELEFONOS';
      $comentario='MODIFICACION';
      $tipo_accion=1;

      $this->insertar_bitacora($Id_item,$nombre_tabla,$comentario,$tipo_accion);
      //***********END INSERTAR EN BITACORA *********/
      
      return 1;

    }

    public function Activar_Telefono($id,$observacionalta){
        $campos = array(
            'estado_telefono' => 2,
            'observacion_telefono' =>$observacionalta

        );
        $this->db->where('Id_Telefono', $id);
        $this->db->update('Telefonos',$campos);
        
       //***********INSERTAR EN BITACORA *********/
        $Id_item= $id;
        $nombre_tabla='TELEFONOS';
        $comentario=$observacionalta;
        $tipo_accion=3;
  
        $this->insertar_bitacora($Id_item,$nombre_tabla,$comentario,$tipo_accion);
        //***********END INSERTAR EN BITACORA *********/
        return 1;
	
    }
    
    public function Inactivar_Telefono($id,$observacionbaja,$estado){
        $campos = array(
            'estado_telefono' => $estado, //ESTADO 7 ES CUANDO EL TELEFONO FUE DADO DE BAJA POR ROBO O DAÑO Y NO SE PODRA VOLVER A EDITAR QUEDARA IRRECUPERABLE
            'observacion_telefono' =>$observacionbaja

		  );
      $this->db->where('Id_Telefono', $id);
      $this->db->update('Telefonos',$campos);

      //***********INSERTAR EN BITACORA *********/
        $Id_item= $id;
        $nombre_tabla='TELEFONOS';
        $comentario=$observacionbaja;
        $tipo_accion=2;

        $this->insertar_bitacora($Id_item,$nombre_tabla,$comentario,$tipo_accion);

      //***********END INSERTAR EN BITACORA *********/
      return 1;
		
  }

  public function Verificar_Imei($imei){

    $this->db->select('imei_telefono, color_telefono');
    $this->db->from('telefonos');
    $this->db->where('imei_telefono',$imei);
    $query = $this->db->get();

      $Datos = $query->result();

      if(empty($Datos)){

          return array();
      }else{
          return $Datos;
      } 
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

  public function fetch_canal_cell($Id_Distribuidora){
    $this->db->where('Id_Distribuidora', $Id_Distribuidora);
    $this->db->where('Nombre_Canal','Detalle');
    $query = $this->db->get('canal');
    $output = '<option value="">Seleccione el Canal</option>';
    foreach($query->result() as $row)
    {
      $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
    }
    return $output;
  }

  public function fetch_canal_nocell($Id_Distribuidora){
    $this->db->where('Id_Distribuidora', $Id_Distribuidora);
    $this->db->where('Nombre_Canal!=','Detalle');
    $query = $this->db->get('canal');
    $output = '<option value="" disabled="disabled" selected="selected">Seleccione el Canal</option>';
    foreach($query->result() as $row)
    {
      $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
    }
    return $output;
  }

  public function fetch_noempleado($Id_Ruta){
    $estado=1;
    // $Vendedor="VENDEDOR"; 
    // $this->db->where('Cargo', $Vendedor);
    $this->db->where('Id_Ruta', $Id_Ruta);
    $this->db->where('Estado',$estado);
    
    $query = $this->db->get('Empleados');
    $output = '<option value="" disabled="disabled" selected>Seleccione el empleado</option>';

          foreach($query->result() as $row)
          {
            $output .= '<option value="'.$row->Id_Empleados.'">'.$row->Nombre.'</option>';
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
                    $output .= '<input disabled="disabled" type="text" id="NombreEmpleados" style="background:#E4FFE0;"class="form-control" value="'.$row->Nombre.'"></input>';
    
             
                
            }
        }else{
                    $output .= '<div class="alert alert-danger" style="height:40px;"role="alert">RUTA SIN EMPLEADO</div>';

        }
        return $output;

        

        
  }

  public function n_maquina($Id_Canal){
    
     $this->db->from('autorizaciones_mh as mh');
     $this->db->join('telefonos as t','mh.Id_telefono=t.Id_telefono');
     $this->db->where('mh.estado','2');
     $this->db->where('mh.estado_cell !=','RESERVADO');
     $this->db->where('t.Id_Canal',$Id_Canal);
     
    $query = $this->db->get();

     $output = '<option value="" disabled="disabled" selected># Maquina</option>';
     foreach($query->result() as $row)
     {
      $output .= '<option value="'.$row->Id_autorizaciones.'">'.$row->n_maquina.'</option>';
     }
     return $output;
  }

  public function imei_telefonos($Id_Canal){
    $this->db->select('t.Id_telefono,t.imei_telefono');
    $this->db->from('telefonos as t');
    $this->db->join('canal as c','t.Id_Canal=c.Id_Canal');
    $this->db->where('t.Id_Canal',$Id_Canal);
    $this->db->where('t.estado_telefono','2');

   $query = $this->db->get();

    $output = '<option value="" disabled="disabled" selected> Imei</option>';
    foreach($query->result() as $row)
    {
     $output .= '<option value="'.$row->Id_telefono.'">'.$row->imei_telefono.'</option>';
    }
    return $output;
 }

  public function datos_mh_cell($n_maquina)
    {

 
        $this->db->select('a_mh.n_maquina,t.imei_telefono , t.Id_telefono,m_c.Nombre_marca,mo_c.Nombre_Modelo, t.color_telefono,a_mh.serie_autorizada,a_mh.n_resolucion_rt,a_mh.fecha_autorizacion, d.Nombre_Distribuidora');
        $this->db->from('autorizaciones_mh as a_mh');
        $this->db->join('telefonos as t','a_mh.Id_telefono=t.Id_Telefono');
        $this->db->join('marca_cell as m_c','t.Id_marca_cell=m_c.id_marca_cell');
        $this->db->join('modelo_cell as mo_c','t.Id_modelo_cell=mo_c.Id_modelo_cell');
        $this->db->join('distribuidora as d','t.Id_distribuidora=d.Id_distribuidora');
  
        $this->db->where('a_mh.Id_autorizaciones', $n_maquina);
        $this->db->where('estado',2); //2= cajas back up , 1= cajas activas , 0 = cajas inactivas

         $query = $this->db->get('');
         $Datos = $query->result();

         if(empty($Datos)){

          return array();
          }else{
            return $Datos;
          } 
  }

  public function datos_cell($imei_telefono)
    {

 
        $this->db->select('t.Id_telefono,m_c.Nombre_marca,mo_c.Nombre_Modelo, t.color_telefono, d.Nombre_Distribuidora');
        $this->db->from('telefonos as t');
        $this->db->join('marca_cell as m_c','t.Id_marca_cell=m_c.id_marca_cell');
        $this->db->join('modelo_cell as mo_c','t.Id_modelo_cell=mo_c.Id_modelo_cell');
        $this->db->join('distribuidora as d','t.Id_distribuidora=d.Id_distribuidora');
  
        $this->db->where('t.Id_telefono', $imei_telefono);
       

         $query = $this->db->get();
         $Datos = $query->result();

         if(empty($Datos)){

          return array();
          
          }else{
            return $Datos;
          } 
  }

  public function Entrega_Cell_Autorizado($param){
 
    $campos = array(
           'Id_entrega_cell' => 0,
           'Id_distribuidora' => $param['Id_distribuidora'],
           'Id_canal' =>$param['Id_canal'],
           'Id_ruta' =>$param['Id_ruta'],
           'Id_empleados' =>$param['Id_empleados'],
           'Id_telefono' =>$param['Id_telefono'],
           'Id_autorizaciones' =>$param['Id_autorizaciones'],
           'fecha_registro' =>$param['fecha_registro'],
           'estado' =>1,
           'id_u_sdv' =>$this->session->userdata('Id_u_sdv'),
           'motivo_entrega'=>$param['motivo_entrega'],

    );

    $this->db->insert('bitacora_entrega_celular',$campos);

    $noti = array(
      'Id_notificacion' => 0,
      'titulo' => "Baja De Serie Ruta ".$param['ruta'],
      'descripcion_noti' => "Se le ha entregado un nuevo dispositivos a la ruta ".$param['ruta']." realizar la alta o baja de serie anterior",
      'Id_tipo_notificacion' => 3,
      'estado' => 1,
      'modulo' => "Dispositivos",
      'id_u_sdv' => $this->session->userdata('Id_u_sdv')

    );

    $this->db->insert('notificaciones',$noti);
   

    $camposA= array(
      'estado_cell' => "RESERVADO",
    );

    $this->db->where('Id_autorizaciones', $param['Id_autorizaciones']);
    $this->db->update('autorizaciones_mh',$camposA);

    $camposA= array(
      'estado_telefono' => 1,
    );

    $this->db->where('Id_telefono', $param['Id_telefono']);
    $this->db->update('telefonos',$camposA);


    
    return 1;
  }

  
  public function Entrega_Cell_NoAutorizado($param){



    $campos = array(
           'Id_entrega_cell_no' => 0,
           'Id_distribuidora' => $param['Id_distribuidora'],
           'Id_canal' =>$param['Id_canal'],
           'Id_ruta' =>$param['Id_ruta'],
           'Id_empleados' =>$param['Id_empleados'],
           'Id_telefono' =>$param['Id_telefono'],
           'fecha_registro' =>$param['fecha_registro'],
           'estado' =>1,
           'id_u_sdv' =>$this->session->userdata('Id_u_sdv'),
           'motivo_entrega'=>$param['motivo_entrega'],

    );

    $this->db->insert('bitacora_entrega_celular_noautorizado',$campos);

    $camposA= array(
      'estado_telefono' => 1,
    );

    $this->db->where('Id_telefono', $param['Id_telefono']);
    $this->db->update('telefonos',$camposA);


    return 1;
  }


}