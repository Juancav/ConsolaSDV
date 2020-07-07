<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct(){
		parent::__construct();
		
		$this->load->database();
		$this->load->model('Usuario_Model','UsM');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
	}

	public function index(){
		$this->load->view('Login/Index');
	
	}


	public function Logueo(){

		$nombre='';
		$Users='';
		$rol='';

		$Usuario = $this->input->post('username');
		$Password = $this->input->post('password');
		 
		$Datos= $this->UsM->Login($Usuario, $Password);

		if(!empty($Datos)){

		foreach( $Datos as $Run){

			$nombre=$Run->Nombre;
			$User=$Run->Usuario;
			$rol=$Run->Tipo_Usuario;
			$pais=$Run->Nombre_Pais;
			$distribuidora=$Run->Nombre_Distribuidora;
			$id=$Run->Id_u_sdv;
			$Id_Distribuidora=$Run->Id_Distribuidora;
			$Id_pais=$Run->Id_pais;

		}

		//Creacion de session
		$Sesiones= array(
			'Nombre' => $nombre,
			'Rol'=>$rol,
			'Nombre_Pais'=>$pais,
			'Nombre_Distribuidora'=>$distribuidora,
			'Id_u_sdv'=>$id,
			'Id_Distribuidora'=>$Id_Distribuidora,
			'Id_pais'=>$Id_pais
		);
		
		//Setea la sesion
		$this->session->set_userdata($Sesiones);

		header ('location: ../Main');


		}else{
			 header("Location: ../../");
			
		}
		

	}
}

