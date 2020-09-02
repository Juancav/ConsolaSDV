<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Cell_form_modelo extends CI_Model {

	function __construct(){
		parent::__construct();
    }

    public function fetch_distribuidora(){
      $this->db->where('Id_Pais','1');

      $query = $this->db->get('distribuidora');
       $output = '<option value="" disabled selected>Seleccione Distribuidora</option>';
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

    public function fetch_ruta($Id_Canal)
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

    public function fetch_marca($Id_distribuidora){
        $this->db->where('Id_Distribuidora', '1');
        
        $query = $this->db->get('marca_cell');
        $output = '<option value="" disabled selected>Seleccione la marca</option>';
        foreach($query->result() as $row)
        {
          $output .= '<option value="'.$row->Id_marca_cell.'">'.$row->Nombre_Marca.'</option>';
        }
        return $output;
    }

    public function fetch_modelo($Id_marca){
        $this->db->where('Id_marca_cell', $Id_marca);
        
        $query = $this->db->get('modelo_cell');
        $output = '<option value="" selected disabled>Seleccione la marca</option>';
        foreach($query->result() as $row)
        {
          $output .= '<option value="'.$row->Id_modelo_cell.'">'.$row->nombre_Modelo.'</option>';
        }
        return $output;
    }

    public function registrar_datos($data){


        $this->db->insert('tmp_cell_form',$data);
        return 1;


        
    }

}