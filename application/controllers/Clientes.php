<?php
defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('memory_limit','-1');


class Clientes extends CI_Controller {

	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		$this->load->model('Clientes_Model');


		
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
            
		$this->load->view('Clientes/Index');
		$this->load->view('Layout/Footer');

		}else{
			redirect('index.php');
    	}

    }

	public function ExportarCSV()
	{	
		if($this->input->is_ajax_request()){
			
		echo json_encode($this->Clientes_Model->GetClientes());
		
		}
	}

	public function Getusuarios()
	{	
		if($this->input->is_ajax_request()){
			
		echo json_encode($this->Clientes_Model->Getusuarios());
		
		}
	}
	public function Getexhibidores()
	{	
		if($this->input->is_ajax_request()){
			
		echo json_encode($this->Clientes_Model->Getexhibidores());
		
		}
	}
		
}
