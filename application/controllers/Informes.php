<?php

// ini_set('post_max_size','100M');
// ini_set('upload_max_filesize','100M');
// ini_set('max_execution_time','1000');
// ini_set('max_input_time','1000');

defined('BASEPATH') OR exit('No direct script access allowed');

class Informes extends CI_Controller {

	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Usuario_Model','UsM');
		$this->load->model('Informes_Model');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		
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

			$this->load->view('Informes/Index');
			$this->load->view('Layout/Footer');

		}else{
			redirect('index.php');

		}
	}

	public function Actualizar_Informe(){

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
        $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );


		$config['file_name'] =$this->input->post('txtinforme', TRUE); 
		$config['upload_path'] = './Uploads/Informes/';
		$config['allowed_types'] = 'xlsx';
        $config['max_size'] = '200000';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
		$config['overwrite'] = True;

		$this->load->library('upload',$config);

		if (!$this->upload->do_upload("excel_file")) {
            echo $data['error'] = $this->upload->display_errors();
			// $this->load->view('Empleados/Index',$data);
        }else {

			$file_info = $this->upload->data();
			
			
		$data=array (
			'Id_Informe' =>0,
			'nombre_informe' => $this->input->post('txtinforme', TRUE),
			'fecha_registro'=> $nuevafecha,
			'fecha_actualizacion'=> $nuevafecha,
			'url_informe'=> base_url()."Uploads/Informes/".$file_info['file_name'],
			'Id_u_sdv'=> $this->session->userdata('Id_u_sdv'),
		);
		}
		
		$dat= $this->Informes_Model->Actualizar_Informe($data);
		sleep(2);

		if($dat){
			
			redirect('index.php/Informes');
			
		}else{

			
		}

	}
}