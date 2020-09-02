<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Marcacion_impulso extends CI_Controller {


	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Marcaciones_imp_model');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		
	}

	public function index(){	

			if(!empty($this->session->userdata('Nombre'))){

				$this->load->view('Marcacion_impulso/Index');
				

			}else{
				
				redirect('index.php');

			}
			
	}

	public function Get_actividades(){

		if($this->input->is_ajax_request()){
			
			echo $this->Marcaciones_imp_model->Get_actividades();
		}
	}

	public function Get_clientes(){

		if($this->input->is_ajax_request()){
			
			echo $this->Marcaciones_imp_model->Get_clientes();
		}
	}
	public function registrar_actividad(){

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
		$nuevafecha = date( 'Y-m-j H:i:s' , $nuevafecha );

		$fecha_final = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $fechafinalfinal = strtotime ( '-2 hour' , strtotime ( $fecha_final ) ) ;
		$fechafinalfinal = date( 'Y-m-j_H_i_s' , $fechafinalfinal );

		// Carga Primera imagen telefono frontal
		$config['file_name'] = $fechafinalfinal."_".$this->session->userdata('Id_u_sdv')."_".$this->input->post('txtclientes')."_"."INICIADA";
		$config['upload_path'] = './Uploads/Imagenes/Marcaciones_impulso/';
		$config['allowed_types'] = 'png|jpeg|gif|jpg';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
        $config['overwrite'] = true;

        $this->load->library('upload',$config);

     

		if (!$this->upload->do_upload("Img_inicio")) {
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...</p>";
			return 0;
	
        }else {

            $file_info = $this->upload->data();
        

        }


        $data=array (
			'Id_marcacion' => 0,
			'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),
			'Id_cli_imp' =>$this->input->post('txtclientes'),
			'Id_actividad' =>$this->input->post('txtactividades'),
			'Latitud_ini' =>$this->input->post('txtlat'),
			'Longitud_ini' =>$this->input->post('txtlong'),
			'Fecha_inicio' => $nuevafecha,
			'Img_inicio' =>base_url()."Uploads/Imagenes/Marcaciones_impulso/".$file_info['file_name'],
			'Latitud_fin' =>0,
			'Longitud_fin' =>0,
			'Fecha_fin'=>0,
			'Img_fin' =>0,
			'Estado_marcacion' =>"INICIADA"
        );
		
		$dat= $this->Marcaciones_imp_model->registrar_actividad($data);

		if($dat){
			echo 1;
	
			
		}else{
			echo 2;

		}


		
	}

	public function finalizar_actividad(){

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
		$nuevafecha = date( 'Y-m-j H:i:s' , $nuevafecha );

		$fecha_final = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $fechafinalfinal = strtotime ( '-2 hour' , strtotime ( $fecha_final ) ) ;
		$fechafinalfinal = date( 'Y-m-j_H_i_s' , $fechafinalfinal );


		// Carga Primera imagen telefono frontal
		$config['file_name'] = $fechafinalfinal."_".$this->session->userdata('Id_u_sdv')."_".$this->input->post('txtclientesfin')."_"."FINALIZADA";
		$config['upload_path'] = './Uploads/Imagenes/Marcaciones_impulso/';
		$config['allowed_types'] = 'png|jpeg|gif|jpg';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
        $config['overwrite'] = true;

        $this->load->library('upload',$config);

     

		if (!$this->upload->do_upload("Img_fin")) {
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...</p>";
			return 0;
	
        }else {

            $file_info = $this->upload->data();
        

        }


        $data=array (
			'Latitud_fin' => $this->input->post('txtlatfin'),
			'Longitud_fin' =>$this->input->post('txtlongfin'),
			'Fecha_fin'=> $nuevafecha,
			'Img_fin' =>base_url()."Uploads/Imagenes/Marcaciones_impulso/".$file_info['file_name'],
			'Estado_marcacion' =>"FINALIZADA"
        );
		
		$dat= $this->Marcaciones_imp_model->finalizar_actividad($data);

		if($dat){
			echo 1;
	
			
		}else{
			echo 2;

		}


		
	}


	public function Verificacion_Actividades(){

		if($this->input->is_ajax_request()){
			
			echo $this->Marcaciones_imp_model->Verificacion_Actividades();
		}
	}

	public function Get_clientes_iniciado(){

		if($this->input->is_ajax_request()){
			
			echo $this->Marcaciones_imp_model->Get_clientes_iniciado();
		}
	}
}
