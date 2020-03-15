<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Impresoras extends CI_Controller {

    function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
        $this->load->library('Pdf');
        $this->load->model('Impresoras_Model');
	}
   

    public function index()
	{


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
            }
            
		$this->load->view('Impresoras/Index');
		$this->load->view('Layout/Footer');

		}else{
			redirect('index.php');
    	}

    }
    
    public function fetch_distribuidora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Impresoras_Model->fetch_distribuidora();
		}
			
			
	}

	public function Registrar_Marca(){
		$param['Marca'] = $this->input->post('txtnombremarca');
		$param['Descripcion'] = $this->input->post('txtdescripcionmarca');
		echo $this->Impresoras_Model->Registrar_Marca($param);

    }
    
    public function Registrar_Modelo(){
        $param['Marca'] = $this->input->post('txtmarcaimpresora');
        $param['Modelo'] = $this->input->post('txtmodeloimpresora');
		echo $this->Impresoras_Model->Registrar_Modelo($param);

	}

	public function fetch_marca_impresora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Impresoras_Model->fetch_marca_impresora();
		}
			
			
	}

	public function fetch_modelo_impresora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Impresoras_Model->fetch_modelo_impresora();
		}
			
			
	}

	public function Registrar_Impresora(){

		$param['Distribuidora'] = $this->input->post('txtdistribuidora');
        $param['Marca'] = $this->input->post('txtmarca');
		$param['Modelo'] = $this->input->post('txtmodelo');
		$param['ActivoFijo'] = $this->input->post('txtactivofijo');
		$param['N_serie'] = $this->input->post('txtn_serie');
		$param['Codigo'] = $this->input->post('txtcodigoimpresora');

		echo $this->Impresoras_Model->Registrar_Impresora($param);

	}

	public function Consultar_Impresoras()
	{
		if ($this->input->is_ajax_request()) {

		$Distribuidora = $this->input->post('Id_Distribuidora');

			$Datos = $this->Impresoras_Model->Consultar_Impresoras($Distribuidora);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function Modificar_Impresora(){

		$param['Id_Impresoras'] = $this->input->post('txtidimpresora');
		$param['Distribuidora'] = $this->input->post('txtdistribuidora');
		$param['Marca'] = $this->input->post('txtmarca');
		$param['Modelo'] = $this->input->post('txtmodelo');
		$param['ActivoFijo'] = $this->input->post('txtactivofijo');
		$param['N_serie'] = $this->input->post('txtn_serie');
		$param['Codigo'] = $this->input->post('txtcodigoimpresora');
		echo $this->Impresoras_Model->Modificar_Impresora($param);

	}

	public function Baja_Impresora(){

		$param['Id_Impresoras'] = $this->input->post('modtxtidimpresorabaja');
		$param['Observacion'] = $this->input->post('mtxtmotivobaja');

		if($this->input->post('mtxtmotivobaja')=="ROBO"){
			$param['estado']= 0;
		}else if($this->input->post('mtxtmotivobaja')=="HURTO"){
			$param['estado']= 0;
		}else if ($this->input->post('mtxtmotivobaja')=="DAÑO"){
			$param['estado']= 0;
		}else{
			$param['estado']=2;
		}
		echo $this->Impresoras_Model->Baja_Impresora($param);

	}

	public function Alta_Impresora(){

		$param['Id_Impresoras'] = $this->input->post('modtxtidimpresoraalta');
		$param['Observacion'] = $this->input->post('mtxtmotivoalta');
		echo $this->Impresoras_Model->Alta_Impresora($param);

	}

}
