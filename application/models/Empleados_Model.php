<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Empleados_Model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }

    function fetch_distribuidora(){

        $query = $this->db->get("distribuidora");
        return $query->result();
    }

    function fetch_canal($Id_Distribuidora)
    {
         $this->db->where('Id_Distribuidora', $Id_Distribuidora);
         $query = $this->db->get('canal');
         $output = '<option value=""  disabled="disabled" selected="true">Seleccione el  Canal</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id_Canal.'">'.$row->Nombre_Canal.'</option>';
         }
         return $output;
    }
        
    function fetch_ruta($Id_Canal)
    {
        $this->db->where('Id_Canal', $Id_Canal);
        
        $query = $this->db->get('rutas');
        $output = '<option value="" disabled="disabled" selected="true">Seleccione la Ruta</option>';
        foreach($query->result() as $row)
        {
        $output .= '<option value="'.$row->Id_Ruta.'">'.$row->Nombre_Ruta.'</option>';
        }
        return $output;
    }


    function Ingresar_Empleados($data){
        
        $this->db->insert('Empleados',$data);
        
        if($this->db->affected_rows() > 0 ){
            return true;
        }else{
            return false;
        }
    }
        
    public function Consultar_Empleados($distribuidora,$cargo){

            $this->db->select('e.Id_Distribuidora, e.Estado ,e.Id_Canal,e.Id_Ruta, e.foto_empleado, e.Id_Empleados, e.Carnet,e.Dui, e.Nombre , e.Cargo, e.Fecha ,d.Nombre_Distribuidora,c.Nombre_Canal,r.Nombre_Ruta');
            $this->db->from('Empleados as e');
            $this->db->join('distribuidora as d', 'e.Id_Distribuidora = d.Id_Distribuidora');
            $this->db->join('canal as c ',' e.Id_Canal= c.Id_Canal');
            $this->db->join('rutas as r ',' e.Id_Ruta=r.Id_Ruta ');
            $this->db->where('e.Id_Distribuidora',$distribuidora);
            $this->db->where('e.Cargo',$cargo);

        $query = $this->db->get();

        $Datos = $query->result();

        if(empty($Datos)){

            return array();
        }else{
            return $Datos;
        } 



    }

    public function Actualizar_Empleados($param){
		$campos = array(
            'Carnet' => $param['Carnet'],
            'Dui' => $param['Dui'],
            'Nombre' => $param['Nombre'],
            'Cargo' => $param['Cargo'],
			'Fecha' => $param['Fecha'],
			'Id_Distribuidora' => $param['Id_Distribuidora'],
			'Id_Canal' => $param['Id_Canal'],
			'Id_Ruta' => $param['Id_Ruta']
		);
		$this->db->where('Id_Empleados', $param['Id_Empleados']);
		$this->db->update('Empleados',$campos);
		
		return 1;
    }

    public function Activar_Empleado($id){
        $campos = array(
            'Estado' => 1,

		);
		$this->db->where('Id_Empleados', $id);
		$this->db->update('Empleados',$campos);
		
		return 1;
	
    }
    
    public function Inactivar_Empleado($id){
        $campos = array(
            'Estado' => 0,

		);
		$this->db->where('Id_Empleados', $id);
		$this->db->update('Empleados',$campos);
		
		return 1;
		
    }
    public function Verificacion_Empleado($ruta){

        $this->db->select('count(estado) as CantidadActivos');
        $this->db->from('Empleados');
        $this->db->where('Id_Ruta',$ruta);
        $this->db->where('Estado','1');
        $this->db->where('Cargo','VENDEDOR');

        $query = $this->db->get();

        // $Datos = $query->result();

        if($query->num_rows()>0){

            return $query->row();
        }else{
            return array();
        } 

    }

	

 }

?>

