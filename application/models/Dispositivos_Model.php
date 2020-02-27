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
                  order by fecha_registro DESC 
          ;';

    $resultados = $this->db->query($query);
    return $resultados->result();
    
  }

  
  function fetch_single_details($Id_PDF)
	{
        

        $this->db->select('count(S_A.Cantidad) as Total,S_A.Id_Ruta, S_A.motivo_entrega,r.Nombre_Ruta, a.Id_Accesorios,a.precio_u,e.Nombre,e.Carnet,e.Dui, C_A.Id_Categoria, C_A.Nombre as Categoria ,S_A.cantidad,a.nombre_accesorio,a.vida_util_accesorio,a.marca_accesorio,a.tipo_accesorio, S_A.fecha_salida , S_A.Id_Empleados , S_A.Id_Accesorios ,S_A.Id_PDF');
        $this->db->from('Salida_Accesorios  as S_A');
        $this->db->join('rutas as r','S_A.Id_Ruta= r.Id_Ruta');
        $this->db->join('Empleados as e','S_A.Id_Empleados = e.Id_Empleados');
        $this->db->join('Accesorios as a','S_A.Id_Accesorios = a.Id_Accesorios');
        $this->db->join('Categoria_Accesorio as C_A','a.Id_Categoria = C_A.Id_Categoria');
        $this->db->group_by('a.Id_Accesorios');

        $this->db->where('S_A.Id_PDF',$Id_PDF);
       
       
        $data = $this->db->get('');

        // $data->row()->Nombre; "ASI SE ACCEDE A UNA COLUMNA DE LA CONSULTA"


        $output = '<p color="red">SE HACE ENTREGA DEL EQUIPO: <b></p>';
        
        $output .= '<table width="100%" border="1px"><tr>
        <th bgcolor="black"><center><font color="white">ID</font></center></th>
        <th bgcolor="black"><center><font color="white">DESCRIPCION</font></center></th>
        <th bgcolor="black"><center><font color="white">CANTIDAD</font></center></th>
        </tr>';

        
       
		foreach($data->result() as $row)
		{
			$output .= '
			<tr>
				
                <td width="15%"><center>'.$row->Id_Accesorios.'</center></td>
                <td width="25%"><center>'.$row->nombre_accesorio." ".$row->marca_accesorio." ".$row->tipo_accesorio.'</center></td>
                <td width="10%"><center>'.$row->Total.'</center></td>
					
			</tr>
			';
		}
		
        $output .= '</table>';

        $output .= '
        <p>PARA USO EN EL SISTEMA DE VENTAS<br><br>RECIBE:</p>
        <p>CARNET: <b>  '.$data->row()->Carnet.'</b>  <span style="margin-left:200px;" >
        NOMBRE: <b>'.$data->row()->Nombre.' </b> </span></p>
        <P>FECHA <b>'.$data->row()->fecha_salida.'</b><span style="margin-left:200px;" >
        RUTA: <b>'.$data->row()->Nombre_Ruta.' </b> </span></P><br><br>
        ';

        $output.='<p style="margin-bottom:50px; text-align:center;"><B>*****************************************************************************************
        <br>NOTA:ES RESPONSABILIDAD DEL VENDEDOR CUIDAR ESTE PRODUCTO, TIEMPO DE REPOSICION "'.$data->row()->vida_util_accesorio.'" GARANTIA SE INVALIDA SI EXISTE MALA MANIPULACION POR EL PERSONAL.<br>
        ***************************************************************************************** </B></p>';
        

        $output .= '
        
        <p style="margin-bottom:100px;"><b>EL EQUIPO ESTA ASIGNADO A LA RUTA. POR LO TANTO, SI CAMBIO DE RUTA
        DEBO DE ENTREGAR Y RECIBIR EL EQUIPO CORRESPONDIENTE.</b><p>

        <p style="margin-bottom:200px;"><b>MOTIVO DE ENTREGA: '.$data->row()->motivo_entrega.'</b></p>

        <p>FIRMA USUARIO:________________________</p>
        <p style="margin-left:50%; margin-top:-50px;">ENTREGA: <b>'.strtoupper($this->session->userdata('Nombre')).'</b></p>
    
        ';
        // $output.='<br><br><br><br><br><br><p colspan="2" align="center"><span style="margin-left:100px;"><a href="'.base_url().'index.php/Accesorios" class="btn btn-primary">Regresar</a></span><p>';
        
        //*********************************HOJA DE DESCUENTO ***********************************//
        
        if($data->row()->Categoria=="POWER BANK"){
            $cuota=$row->precio_u/2;
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
        $output.=' , S.A DE C.V.</b>  CARGAR A MI CUENTA PERSONAL LA CANTIDAD DE <b>$'.number_format($row->precio_u,2).'</b> DOLARES DE LOS ESTADOS UNIDOS DE NORTE AMERICA.<BR><BR>
        EN CONCEPTO DE DESCUENTO POR: <b>'.$data->row()->nombre_accesorio." ".$row->marca_accesorio." ".$row->tipo_accesorio.'</b><br><br>
        CANTIDAD QUE ME COMPROMETO A CANCELAR EN LA SIGUIENTE FORMA:<BR><BR>
        <b>DESCUENTO EN PLANILLA</b> 
        <img width="5%;" style="margin-left:50px; margin-top:10px;" src="https://cdn4.iconfinder.com/data/icons/vote-check-marks/100/vote-24-512.png">
        </p><p><b><center><hr></center></b></p><br><br>
        A LA VEZ SOLICITO Y AUTORIZO AL DEPARTAMENTO DE COMPENSACIONES DE ESTA EMPRESA, 
        PARA QUE DE MI SALARIO QUINCENAL RETENGA DICHO MONTO A PARTIR DE_____________________________, 
        EN <B>2 CUOTAS QUINCENALES DE $'.number_format($cuota,2).' C/U</B><BR><BR> Y TAMBIÉN PARA QUE EN CASO DE MI RETIRO 
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
        }
		return $output;
    }


}