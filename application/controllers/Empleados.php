<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Empleados extends CI_Controller 
{

	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Usuario_Model','UsM');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		$this->load->model('Empleados_Model');
		
	}

	public function index()
	{
		// obtenemos el array de distribuidora y lo preparamos para enviar
		$distribuidora['arrDistribuidora'] = $this->Empleados_Model->fetch_distribuidora();
	

		
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

			$this->load->view('Empleados/Index',$distribuidora);

			$this->load->view('Layout/Footer');

		}else{
			redirect('index.php');

		}
	}

	function fetch_canal()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->Empleados_Model->fetch_canal($this->input->post('Id_Distribuidora'));
			
			}
	}
	}
	

	function fetch_ruta()
	{
		if($this->input->post('Id_Canal'))
			{
			echo $this->Empleados_Model->fetch_ruta($this->input->post('Id_Canal'));
			}
	}

	public function Ingresar_Empleados(){
		$config['file_name'] =$this->input->post('txtcarnet', TRUE).$this->input->post('txtnombre', TRUE) ; 
		$config['upload_path'] = './Uploads/Imagenes/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
        $config['max_height'] = '0';

		$this->load->library('upload',$config);

		if (!$this->upload->do_upload("foto_empleado")) {
            echo $data['error'] = $this->upload->display_errors();
			// $this->load->view('Empleados/Index',$data);
        }else {

            $file_info = $this->upload->data();

		$data=array (
			'Id_Empleados' =>0,
			'Carnet' => $this->input->post('txtcarnet', TRUE),
			'Dui' => $this->input->post('txtdui', TRUE),
			'Nombre' => $this->input->post('txtnombre', TRUE),
			'Cargo' => $this->input->post('txtcargo', TRUE),
			'Fecha' => $this->input->post('txtfecha',TRUE),
			'Id_Distribuidora' => $this->input->post('distribuidora',TRUE),
			'Id_Canal' => $this->input->post('canal',TRUE),
			'Id_Ruta' => $this->input->post('ruta',TRUE),
			'Id_u_sdv'=> $this->session->userdata('Id_u_sdv'),
			'estado'=> 1,
			'foto_empleado'=> base_url()."Uploads/Imagenes/".$file_info['file_name']
		);
		}
		
		$dat= $this->Empleados_Model->Ingresar_Empleados($data);
		sleep(2);

		if($dat){
			
			redirect('index.php/Empleados');
			
		}else{
		}
	}



	function Consultar_Empleados(){
		
		if ($this->input->is_ajax_request()) {

			$distribuidora = $this->input->post('Cdistribuidora');
			$cargo = $this->input->post('Ccargo');

			$Datos = $this->Empleados_Model->Consultar_Empleados($distribuidora,$cargo);
			
			echo json_encode($Datos);
			
		}
			
	}	

	public function Actualizar_Empleados(){
		$param['Id_Empleados'] = $this->input->post('mtxtid');
		$param['Carnet'] = $this->input->post('mtxtcarnet');
		$param['Dui'] = $this->input->post('mtxtdui');
		$param['Nombre'] = $this->input->post('mtxtnombre');
		$param['Cargo'] = $this->input->post('mtxtcargo');
		$param['Fecha'] = $this->input->post('mtxtfecha');
		$param['Id_Distribuidora'] = $this->input->post('mtxtdistribuidora');
		$param['Id_Canal'] = $this->input->post('mtxtcanal');
		$param['Id_Ruta'] = $this->input->post('mtxtruta');
		echo $this->Empleados_Model->Actualizar_Empleados($param);

	}

	public function Activar_Empleado(){
		$id= $this->input->post('txtid');
		echo $this->Empleados_Model->Activar_Empleado($id);
	}

	public function Inactivar_Empleado(){
		$id= $this->input->post('txtid');
		echo $this->Empleados_Model->Inactivar_Empleado($id);
	}

	public function Verificacion_Empleado(){

		if ($this->input->is_ajax_request()) {

			$ruta = $this->input->post('ruta');
	

			$Datos = $this->Empleados_Model->Verificacion_Empleado($ruta);
			
			echo json_encode (array('CantidadActivos' =>$Datos->CantidadActivos));
			
		}
	}

}