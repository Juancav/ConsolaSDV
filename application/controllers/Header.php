<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Header extends CI_Controller {
    
    function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Header_Model');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		
    }
    
    public function Contador_Notificaciones(){

        
		if($this->input->is_ajax_request()){

			
			$Datos=$this->Header_Model->Contador_Notificaciones();

			$arreglo=[];

			foreach ($Datos as $key ) {
				$arreglo['cantidad']=$key->cantidad;
			
		
			}
			echo json_encode($arreglo);
		
			
			
		}


    }

    function Notificaciones(){
		
		if ($this->input->is_ajax_request()) {

			
			$Datos = $this->Header_Model->Notificaciones();
			
			echo json_encode($Datos);
			
		}
			
    }	
    
    public function Borrar_Noti(){
		$id= $this->input->post('txtid');
		echo $this->Header_Model->Borrar_Noti($id);
	}
	
	
	public function Actualizar_todas(){
		if ($this->input->is_ajax_request()) {


			$Datos = $this->Header_Model->Actualizar_todas();
			
			echo json_encode($Datos);
			
		}
	}

}
