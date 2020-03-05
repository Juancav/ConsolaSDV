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
    $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

    $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
    $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );
  

    // ACTUALIZAR ESTADO DE TELEFONO ANTERIOR  ASIGNADO DE LA RUTA EN LA TABLA TELEFONOS
    $query = 'UPDATE telefonos SET estado_telefono="'.$param['estado'].'" , observacion_telefono="'.$param['motivo_entrega'].'" WHERE  Id_Telefono=(select Id_Telefono FROM bitacora_entrega_celular
        WHERE Id_ruta ="'.$param['Id_ruta'].'" AND estado =1);' ;

        $resultados = $this->db->query($query);
    // *********************************************************


      // ACTUALIZACION DE ESTADO DE TELEFONO ANTERIOR ASIGNADO
      $camposbaja= array(
        'estado' => 0,
      );
  
  
      $this->db->where('Id_Ruta', $param['Id_ruta']);
      $this->db->where('estado',1);
      $this->db->update('bitacora_entrega_celular',$camposbaja);
      // *********************************************************


    // INSERTAR EN BITACORA ASIGNACION DE TELEFONO
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
           'id_pdf_cell'=>$nuevafecha."_".$param['Id_empleados'],

    );
 
    $this->db->insert('bitacora_entrega_celular',$campos);
    // ******************************************************************

    
        
    
      // AGREGAR NOTIFICACIONES
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
    // ****************************************
   
    //ACTUALIZACION DE ESTADO DE TELEFONO EN AUTORIZACIONES MH 
    $camposb= array(
      'estado_cell' => "RESERVADO",
    );

    $this->db->where('Id_autorizaciones', $param['Id_autorizaciones']);
    $this->db->update('autorizaciones_mh',$camposb);
    //*************************************************/


    // ACTUALIZACION DE ESTADO DE TELEFONO NUEVO A ASIGNAR
    $camposA= array(
      'estado_telefono' => 1,
    );
   

    $this->db->where('Id_telefono', $param['Id_telefono']);
    $this->db->update('telefonos',$camposA);
    // *********************************************************


    
    return 1;
  }

  
  public function Entrega_Cell_NoAutorizado($param){
    $fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

    $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
    $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );
  
    // ACTUALIZAR ESTADO DE TELEFONO ANTERIOR  ASIGNADO AL EMPLEADO EN LA TABLA TELEFONOS
    $query = 'UPDATE telefonos SET estado_telefono="'.$param['estado'].'" , observacion_telefono="'.$param['motivo_entrega'].'" WHERE  Id_Telefono=(select Id_Telefono FROM bitacora_entrega_celular_noautorizado
        WHERE Id_Empleados ="'.$param['Id_empleados'].'" AND estado =1);' ;

        $resultados = $this->db->query($query);
    // *********************************************************


      // ACTUALIZACION DE ESTADO DE TELEFONO ANTERIOR ASIGNADO
      $camposbaja= array(
        'estado' => 0,
      );
  
  
      $this->db->where('Id_empleados', $param['Id_empleados']);
      $this->db->where('estado',1);
      $this->db->update('bitacora_entrega_celular_noautorizado',$camposbaja);
      // *********************************************************
  
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
           'id_pdf_cell'=>$nuevafecha."_".$param['Id_empleados'],

    );

    $this->db->insert('bitacora_entrega_celular_noautorizado',$campos);

    $camposA= array(
      'estado_telefono' => 1,
    );

    $this->db->where('Id_telefono', $param['Id_telefono']);
    $this->db->update('telefonos',$camposA);


    return 1;
  }


  public function Consultar_PDF(){

    $query='SELECT * FROM (
                select bec.Id_entrega_cell as Id_Entrega_cell, bec.Id_ruta, 	r.Nombre_Ruta ,	bec.Id_empleados,e.Nombre,bec.Id_telefono,m_c.Nombre_Marca,mo_c.nombre_Modelo,t.Imei_telefono,	bec.Id_distribuidora,	bec.Id_canal,bec.fecha_registro	, bec.id_autorizaciones,bec.Id_pdf_cell, bec.id_u_sdv as usuario	 from bitacora_entrega_celular  as bec
                inner join rutas as r on bec.Id_ruta=r.Id_ruta 
                inner join empleados as e on e.Id_Empleados=bec.Id_empleados
                inner join telefonos as t on bec.Id_telefono=t.Id_telefono
                inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
                inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
                union all 
                select bec_n.Id_entrega_cell_no, bec_n.Id_ruta, 	r.Nombre_Ruta ,	bec_n.Id_empleados,e.Nombre,bec_n.Id_telefono,m_c.Nombre_Marca,mo_c.nombre_Modelo,t.Imei_telefono,	bec_n.Id_distribuidora,	bec_n.Id_canal, bec_n.fecha_registro, "null" as autorizacion,bec_n.Id_pdf_cell,bec_n.id_u_sdv  from  bitacora_entrega_celular_noautorizado as bec_n
                inner join rutas as r on bec_n.Id_ruta=r.Id_ruta 
                inner join empleados as e on bec_n.Id_Empleados=e.Id_empleados
                inner join telefonos as t on bec_n.Id_telefono=t.Id_telefono
                inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
                inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
                LIMIT 10 ) PDF
                where Id_Distribuidora= '.$this->session->userdata('Id_Distribuidora').'
                  order by fecha_registro DESC 
          ;';

    $resultados = $this->db->query($query);
    return $resultados->result();
    
  }

  
  function fetch_single_details($Id_PDF)
	{
    // $data->row()->Nombre; "ASI SE ACCEDE A UNA COLUMNA DE LA CONSULTA"
        $JEFE="JEFE DE VENTA";
        $Espacio="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $Espacio2="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $Espacio3="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $EspacioImp="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
        $EspacioVen="&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
       
     $data='SELECT * FROM (
                  SELECT r.Nombre_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,d.Nombre_Distribuidora,bec.fecha_registro,bec.motivo_entrega,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.imei_telefono,t.activo_fijo, mo_c.nombre_Modelo,m_c.Nombre_Marca,d_t.primera_ocacion,d_t.segunda_ocacion,d_t.tercera_ocacion, (select Nombre from empleados where Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" and Cargo="'.$JEFE.'" and Estado=1) AS JEFE_DE_VENTA, bec.Id_pdf_cell 
                  from bitacora_entrega_celular as bec 
                  inner join empleados as e on bec.Id_empleados=e.Id_Empleados
                  inner join distribuidora as d on bec.Id_distribuidora=d.Id_Distribuidora
                  inner join rutas as r on bec.Id_ruta=r.Id_Ruta
                  inner join telefonos as t on bec.Id_telefono=t.Id_telefono
                  inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
                  inner join modelo_cell	as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
                  inner join deducibles_telefonos as d_t on mo_c.Id_modelo_cell=d_t.Id_modelo_cell
                  union all
                  SELECT r.Nombre_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,d.Nombre_Distribuidora,bec_n.fecha_registro,bec_n.motivo_entrega,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.imei_telefono,t.activo_fijo, mo_c.nombre_Modelo,m_c.Nombre_Marca,d_t.primera_ocacion,d_t.segunda_ocacion,d_t.tercera_ocacion, (select Nombre from empleados where Id_Distribuidora="'.$this->session->userdata('Id_Distribuidora').'" and Cargo="'.$JEFE.'" and Estado=1) AS JEFE_DE_VENTA, bec_n.Id_pdf_cell 
                  from bitacora_entrega_celular_noautorizado as bec_n 
                  inner join empleados as e on bec_n.Id_empleados=e.Id_Empleados
                  inner join distribuidora as d on bec_n.Id_distribuidora=d.Id_Distribuidora
                  inner join rutas as r on bec_n.Id_ruta=r.Id_Ruta
                  inner join telefonos as t on bec_n.Id_telefono=t.Id_telefono
                  inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
                  inner join modelo_cell	as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
                  inner join deducibles_telefonos as d_t on mo_c.Id_modelo_cell=d_t.Id_modelo_cell) InfoPDF
                  WHERE Id_pdf_cell="'.$Id_PDF.'"';

       
       
        $data = $this->db->query($data  );

        $count=$data->num_rows();
      
      if ($count>0){
        
                  if($data->row()->Nombre_Marca !="HAND HELD"){
                    // *********************************HOJA DE ENTREGA TELEFONO ***********************************//
                                $output ='<div style="margin-top:-35; margin-left:7%;"><img src="https://i.ibb.co/MGcV2Y3/Titulo-PDF.png"/></div>';
                                $output.=  '<p style="font-size:16px; margin-left:5%; margin-top:-35px;"><b>Informacion Del Solicitante</b></p>'; 
                                $output.= '<p style="font-size:16px; margin-left:5%;">Fecha de registro: <b>'.$data->row()->fecha_registro.'</b> <b></p>';
                                $output.='<p style="font-size:16px; margin-left:5%;">Tipo de empleado:<b>&nbsp;&nbsp;&nbsp;'.$data->row()->Cargo.'</b> ';
                                  if($data->row()->Cargo=="VENDEDOR")
                                  {
                                  $output.=$EspacioVen;
                                  }
                                  else if($data->row()->Cargo=="IMPULSADORA")
                                  { 
                                    $output.=$EspacioImp;
                                  };
                                $output.='(Seleccion) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Otro: <input type="text"  style="height:30px; width:40%; background-color:#DFDFDF; margin-top:5px;" class="form-control" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------------------------" ></p> ';
                                $output.='<div style="margin-top:-38px;"><p style="font-size:16px; margin-left:5%; ">Vigencia:<b>&nbsp;&nbsp;&nbsp; Permanente</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Seleccion)    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Otro: <input type="text"  style="height:30px; width:40%; background-color:#DFDFDF; margin-top:5px;" class="form-control" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------------------------" ></p></div>';
                                $output.='<div style="margin-top:-35px; margin-left:-3px;"><p style="font-size:16px; margin-left:5%; "><b>R '.$data->row()->Nombre_Ruta.'</b>  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Desde: <input type="text" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$data->row()->fecha_registro.'" style="height:20px;  background-color:#DFDFDF;"></input></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Hasta: <input type="text"  style="height:30px; width:40%; background-color:#DFDFDF;" class="form-control" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------------------------" ></p></div>';
                                
                                $output.='<div style="margin-left:26%;">';

                                  $output.='<div style="float:left; ">';
                                    $output.='<p style="font-size:16px; margin-left:-20%; margin-top:10px;"> Departamento Solicitante &nbsp;&nbsp;<br><p>';
                                    $output.='<p style="font-size:16px; margin-left:-20%;" >&nbsp;&nbsp;&nbsp;Nombre Del Solicitante &nbsp;&nbsp;<br></p>';
                                    $output.='<p style="font-size:16px; margin-left:-20%; margin-top:20px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cargo Del Solicitante &nbsp;&nbsp;</p>';
                                  $output.='</div>';

                                  $output.='<div>';
                                    $output.='<input type="text" value="'.$Espacio.'VENTAS" style="font-size: 14px; height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                    $output.='<input type="text" value="'.$Espacio2.'&nbsp;&nbsp;&nbsp;&nbsp;'.$data->row()->JEFE_DE_VENTA.'" style="font-size: 14px;height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                    $output.='<input type="text" value="'.$Espacio2.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$JEFE.' | '.$data->row()->Nombre_Distribuidora.'" style="font-size: 14px; height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                  $output.='</div>';

                                $output.='</div>';

                                $output.='<p style="font-size:16px; margin-left:3%;"><b>Informacion del Usuario Responsable del Telefono</b></p>';

                                $output.='<div style="margin-left:26%;">';

                                  $output.='<div style="float:left; ">';
                                    $output.='<p style="font-size:16px; margin-left:-20%; margin-top:10px;"> Nombre del Usuario &nbsp;&nbsp;<br><p>';
                                    $output.='<p style="font-size:16px; margin-left:-24%;" >Departamento Responsable &nbsp;&nbsp;<br></p>';
                                  $output.='</div>';

                                  $output.='<div>';
                                    $output.='<input type="text" value="'.$Espacio2.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.$data->row()->Nombre.'" style="font-size: 14px; height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                    $output.='<input type="text" value="'.$Espacio.'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VENTAS'.'" style="font-size: 14px;height:30px; width:88.4%; background-color:#DFDFDF;"></input><br>';
                                    $output.='</div>';
                                  $output.='</div>';

                                $output.='<div style="margin-left:-5%;"><img width="100.5%" height="250px" src="https://fotos.subefotos.com/15a551727983ffc757af09c27c7b1238o.png"></div>';
                                $output.='<p style="font-size:16px; margin-left:3%; margin-top:-7px;"> Justificacion <input type="text" style="font-size: 14px;height:30px; width:85%; background-color:#DFDFDF;" value="'.$Espacio.'ENTREGA DE EQUIPO POR: '.$data->row()->motivo_entrega.'" ></input></p>';
                                $output.='<input type="text" value="" style="font-size: 14px; margin-top:-22px; margin-left:35px; height:30px; width:90%; background-color:#DFDFDF; "></input>';
                                $output.='<input type="text" value="" style="font-size: 14px; margin-top:0; margin-left:35px; height:30px; width:90%; background-color:#DFDFDF; "></input>';
                                $output.='<div style="margin-left:-5%;"><img width="98%" height="200px"src="https://fotos.subefotos.com/b4f9c1a76472c9f643fbac104995d36co.png"></div>';

                                $output.='
                                <div style="border:  5px black solid; height:375px; margin-top:-10px;">

                                            <div style="border-bottom: 5px black solid; height:30px;  background-color:#DFDFDF">

                                              <p style="text-align:center; font-size:20px; margin-top:-1px;">
                                                ESPACIO RESERVADO PARA TECNOLOGIA DE INFORMACION
                                              </p>
                                              
                                              <p style="font-size:22px; text-align:center;">&nbsp;&nbsp;&nbsp;Fecha/hora Entrega:_______________________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Autorizado Gerente De IT f._____________________<br>
                                                Nombre quien Entrega:_______________________ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Firma Persona que Entrega f._____________________<br>
                                              <p>

                                                <div style="border-bottom: 5px black solid; border-top: 5px black solid; height:30px; background-color:#DFDFDF">
                                                  
                                                  <p style="text-align:center; font-size:20px; margin-top:-1px;">
                                                    DATOS DEL APARATO TELEFONICO
                                                  </p>
                                                  
                                                  <p style="font-size:22px; margin-left:100px;"> 
                                                                                                NUMERO: <b>'.$data->row()->telefono.'</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MARCA: <b>'.$data->row()->Nombre_Marca.'</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MODELO: <b>'.$data->row()->nombre_Modelo.'</b><br>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMEI: <b>'.$data->row()->imei_telefono.'</b><br>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIM: <b>'.$data->row()->sim_card.'</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    En caso de robo , o daño me hago responsable de reponer el celular <br>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    asignado por aparato de igual o similar modelo
                                                    <br>PRIMERA OCACION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>$'.$data->row()->primera_ocacion.'</b><br>
                                                    SEGUNDA OCACION &nbsp;&nbsp;&nbsp;&nbsp; <b>$'.$data->row()->segunda_ocacion.'</b><br>
                                                    TERCERA OCACION &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>$'.$data->row()->tercera_ocacion.'</b> 
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    F.______________________________
                                                  </p>

                                                

                                                </div>

                                            </div>

                                          
                                            
                                </div>';

                    //*********************************END, HOJA DE ENTREGA TELEFONO ***********************************//
                  }else{
                    //*********************************HOJA DE ENTREGA HAND HELD ***********************************//

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
                                            <td style="border:1px #000 solid; text-align:center; font-size:20px;" ><b>'.$data->row()->Nombre_Ruta.'</b></td>
                                            
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
                                          <td style="border:1px #000 solid;">'.$data->row()->Nombre_Marca.' '.$data->row()->nombre_Modelo.'</td>
                                          <td style="border:1px #000 solid;">'.$data->row()->activo_fijo.'</td>
                                          <td style="border:1px #000 solid;">'.$data->row()->imei_telefono.'</td>
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


                    //*********************************END, HOJA DE ENTREGA HAND HELD ***********************************//
                  }

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
                          $output.=' , S.A DE C.V.</b>  CARGAR A MI CUENTA PERSONAL LA CANTIDAD DE <b>$'.number_format($data->row()->primera_ocacion,2).'</b> DOLARES DE LOS ESTADOS UNIDOS DE NORTE AMERICA.<BR><BR>
                          EN CONCEPTO DE DESCUENTO POR: <b>'.$data->row()->Nombre_Marca." ".$data->row()->nombre_Modelo."<BR> IMEI: ".$data->row()->imei_telefono.'</b><br><br>
                          CANTIDAD QUE ME COMPROMETO A CANCELAR EN LA SIGUIENTE FORMA:<BR><BR>
                          <b>DESCUENTO EN PLANILLA</b> 
                          <img width="5%;" style="margin-left:50px; margin-top:10px;" src="https://cdn4.iconfinder.com/data/icons/vote-check-marks/100/vote-24-512.png">
                          </p><p><b><center><hr></center></b></p><br><br>
                          A LA VEZ SOLICITO Y AUTORIZO AL DEPARTAMENTO DE COMPENSACIONES DE ESTA EMPRESA, 
                          PARA QUE DE MI SALARIO QUINCENAL RETENGA DICHO MONTO A PARTIR DE_____________________________, 
                          EN <B>5 CUOTAS QUINCENALES DE $'.number_format(($data->row()->primera_ocacion/5),2).' C/U</B><BR><BR> Y TAMBIÉN PARA QUE EN CASO DE MI RETIRO 
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
                    //********************************* HOJA DE DESCUENTO ***********************************//  

        return $output;

      }else{
        return $output="<h1 style='color:red; text_align:center;'>EL PROCESO DE ENTREGA DE EQUIPO NO SE HA REALIZADO CORRECTAMENTE </h1>
        
        <h3>Pasos a seguir</h3>
        <div style='margin-left:10%'>
        <h5>Registro de marca de telefono</h5>
        <h5>Registro de modelo de telefono</h5>
        <h5>Registro de deducible(Contactarse con el administrador)</h5>
        <h5>Registro de telefono o Hand Held</h5>
        <h5>Registro de Autorizacion MH si es para rutas de detalle</h5>
        <h5>Entrega de telefono o Hand Held</h5>
        <h5>Baja o alta De serie</h5>
        </div>
        <h5>Si a realizado todos los pasos anteriores y aun le sigue mostrando esta hoja Contactarse con el administrador</h5>";

        
        
        
      }
      
  }
    

    


}