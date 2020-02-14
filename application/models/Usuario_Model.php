<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }
    
    public function Login($User,$Pass){


        $this->db->select('sdv.Id_u_sdv, sdv.Id_Distribuidora, sdv.Usuario,sdv.password,tp.Tipo_Usuario,sdv.Nombre,d.Nombre_Distribuidora,p.Nombre_Pais,sdv.Canal');
        $this->db->from('usuarios_consolasdv as sdv');
        $this->db->join('tipo_usuario as tp','sdv.Rol = tp.Id_Tipo_Usuario');
        $this->db->join("distribuidora as d","sdv.Id_Distribuidora = d.Id_Distribuidora");
        $this->db->join("pais as p","d.Id_Pais = p.Id_Pais");
        $this->db->where('sdv.Usuario', $User);
        $this->db->where('sdv.password', $Pass);

         $query = $this->db->get();
         $usuario = $query->result();

        if(empty($usuario)){

            return array();
        }else{
            return $usuario;
        }


    }

    
}
