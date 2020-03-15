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
             'observacion' => "",
             'Id_distribuidora' => $param['Distribuidora'],
             'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),

      );
     
      $this->db->insert('Impresoras',$campos);
     
      return 1;
     }

     public function Consultar_Impresoras($Distribuidora){

      $query='SELECT I.Id_Distribuidora,m_i.Id_marca_impresoras,M_o.Id_modelo_impresoras,I.Id_impresoras,d.Nombre_Distribuidora,m_i.nombre_marca,m_o.nombre_modelo,I.activo_fijo,I.n_serie,I.codigo_impresora,i.estado from Impresoras as I
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

 


        
}