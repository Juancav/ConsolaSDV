<?php
defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('memory_limit','-1');


class Itinerario_impulsadoras extends CI_Controller {

	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		$this->load->model('Itinerario_impulsadoras_model');


		
	}

	public function index()
	{

        if(!empty($this->session->userdata('Nombre'))){

			switch($this->session->userdata('Rol')){
				case "ADMINISTRADORES":
				$this->load->view('Layout/Header');	
				
				break;
				case "SUPERVISORES":
				$this->load->view('Layout/Header_N1');	
				break;
				case "JEFE DE VENTA":
				$this->load->view('Layout/Header_N1');	
				break;
				case "GERENTE":
			    $this->load->view('Layout/Header_N1');	
				break;
            }
            
		$this->load->view('Impulsadora_itinerario/Index');
		$this->load->view('Layout/Footer');

		}else{
			redirect('index.php');
    	}

	}

	public function Get_itinerarios(){
		
		 echo json_encode($this->Itinerario_impulsadoras_model->Get_itinerarios($this->input->post('Carnet')));
		//echo $this->input->post('Carnet');
	}

	public function Cambios_itinerario(){


		$Datos= $this->input->post('Datos');	
		$Status=$this->Itinerario_impulsadoras_model->Cambios_itinerario($Datos);


		$this->output->set_content_type('application/json');
		echo json_encode(array('Status'=> $Status));
	
	}

	public function get_paises()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Itinerario_impulsadoras_model->get_paises();
		}
			
			
	}
	public function get_distribuidora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Itinerario_impulsadoras_model->get_distribuidora($this->input->post('Pais'));
		}
			
			
	}
	public function get_rutas()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Itinerario_impulsadoras_model->get_rutas($this->input->post('Distribuidora'));
		}
			
			
	}
		
}
