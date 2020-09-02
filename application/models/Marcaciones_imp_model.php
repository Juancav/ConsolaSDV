<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Marcaciones_imp_model extends CI_Model {

	function __construct(){
		parent::__construct();
	

    }

    public function Get_actividades(){

       

        $query = $this->db->get('acti_impulso');
         $output = '<option value="" disabled selected>Seleccione Actividad</option>';
         foreach($query->result() as $row)
         {
          $output .= '<option value="'.$row->Id.'">'.$row->Nombre_activ.'</option>';
         }
         return $output;

    }

    public function Get_clientes(){

      $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado");

      $data='SELECT ci.Id_cli_imp , ci.Nombre_cli , ci.Cod_cli from Itinerario_impulso as ii
            inner join Clientes_impulsadoras as ci on ii.Id_cli_imp=ci.Id_cli_imp
            inner join usuarios_consolasdv as uc on ii.Id_u_sdv=uc.Id_u_sdv
            where uc.Id_u_sdv='.$this->session->userdata('Id_u_sdv').' and ii.'.$dias[date("w")].'=1 and ii.Estado_itinerario=1;';


        $resultados = $this->db->query($data);
      
       $output = '<option value="" disabled selected>Seleccione cliente</option>';
       foreach($resultados->result() as $row)
       {
        $output .= '<option value="'.$row->Id_cli_imp.'">'.$row->Cod_cli." - ".$row->Nombre_cli.'</option>';
       }
       return $output;

    }
    public function registrar_actividad($data){


      $this->db->insert('Marcaciones_impulso',$data);
      return 1;


      
    }

    public function Verificacion_Actividades(){

      $data='SELECT Id_actividad FROM Marcaciones_impulso where Id_u_sdv='.$this->session->userdata('Id_u_sdv').' and Estado_marcacion="INICIADA"';
      $resultados = $this->db->query($data);

      $filas = $resultados->num_rows();

     return $filas;
       
    
      
    }

    public function Get_clientes_iniciado(){


      $data='SELECT ci.Id_cli_imp, ci.Cod_cli,ci.Nombre_cli FROM Marcaciones_impulso as mi 
      inner join Clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp 
      where mi.Estado_marcacion="INICIADA" AND mi.Id_u_sdv='.$this->session->userdata('Id_u_sdv').';';


        $resultados = $this->db->query($data);
      
       $output = '<option value="" disabled selected>Seleccione cliente</option>';
       foreach($resultados->result() as $row)
       {
        $output .= '<option value="'.$row->Id_cli_imp.'">'.$row->Cod_cli." - ".$row->Nombre_cli.'</option>';
       }
       return $output;

    }

    public function finalizar_actividad($data){


      $this->db->where('Id_u_sdv', $this->session->userdata('Id_u_sdv'));
      $this->db->where('Estado_marcacion','INICIADA');
      $this->db->update('Marcaciones_impulso',$data);
       
      return 1;
    }

}
?>