<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {


	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Usuario_Model','UsM');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		
	}

	public function index(){	

			if(!empty($this->session->userdata('Nombre'))){

				switch( $this->session->userdata('Rol')){
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
					case "INFORMES":
						$this->load->view('Layout/Header_N1');	
					break;
				}
				
				
				$this->load->view('Main/Index');
				$this->load->view('Layout/Footer');
				

			}else{
				
				redirect('index.php');

			}
			
	}
}
