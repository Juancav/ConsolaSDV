<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Header_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }

    public function Contador_Notificaciones(){

        $this->db->select('count(*) as cantidad');
        $this->db->from('notificaciones');
        $this->db->where('estado',1);

        $query = $this->db->get('');
        $Datos = $query->result();

        if(empty($Datos)){

         return array();
         }else{
           return $Datos;
         } 

    }

    public function Notificaciones(){

        $this->db->select('n.Id_notificacion,n.titulo,n.descripcion_noti,t_n.descripcion_notificacion ,n.estado,n.modulo,u_c.Nombre');
        $this->db->from('notificaciones n');
        $this->db->join('usuarios_consolasdv as u_c', 'n.Id_u_sdv=u_c.Id_u_sdv');
        $this->db->join('tipo_notificacion as t_n','n.Id_tipo_notificacion=t_n.Id_tipo_notificacion');
        $this->db->where('estado',1);
        $this->db->order_by('Id_notificacion','DESC');

        $query = $this->db->get();
  
        $Datos = $query->result();
  
        if(empty($Datos)){
  
            return array();
        }else{
            return $Datos;
        } 
    }

    public function Borrar_Noti($id){
        $campos = array(
            'Estado' => 0,

		);
		$this->db->where('Id_notificacion', $id);
		$this->db->update('notificaciones',$campos);
		
		return 1;
	
    }

    public function Actualizar_todas(){
        $campos = array(
            'Estado' => 0,

		);

		$this->db->update('notificaciones',$campos);
		
		return 1;
	
    }


        
}