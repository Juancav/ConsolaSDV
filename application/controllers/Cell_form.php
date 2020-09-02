<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cell_form extends CI_Controller {


	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('cell_form_modelo');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		$this->load->library('Pdf');
		
	}

	public function index(){

        $this->load->view('cell_form/Index');
			
    }

    public function fetch_distribuidora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->cell_form_modelo->fetch_distribuidora();
		}
			
			
	}

	 public function fetch_canal()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->cell_form_modelo->fetch_canal($this->input->post('Id_Distribuidora'));
			
			}
		}
    }
    public function fetch_ruta()
	{
		if($this->input->post('Id_Canal'))
			{
			echo $this->cell_form_modelo->fetch_ruta($this->input->post('Id_Canal'));
			}
    }
    
    public function fetch_Marca()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->cell_form_modelo->fetch_Marca($this->input->post('Id_distribuidora'));
            }
	
		}
	}
    
    public function fetch_Modelo()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('Id_marca'))
			{
			echo $this->cell_form_modelo->fetch_Modelo($this->input->post('Id_marca'));
			
			}
		}
    }
    
    public function registrar_datos(){

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
        $nuevafecha = date ( 'Y-m-j H:i:s' , $nuevafecha );

	
		
		// Carga Primera imagen telefono frontal
		$config['file_name'] = "img_frontal_".$this->input->post('txtruta');
		$config['upload_path'] = './Uploads/Imagenes/Telefonos/ImgFrontal/';
		$config['allowed_types'] = 'png|jpeg|gif|jpg';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
        $config['overwrite'] = true;

        $this->load->library('upload',$config);

     

		if (!$this->upload->do_upload("img_frontal")) {
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...  Adjunte Archivo en Formato CSV</p>";
			return $this->upload->display_errors();
	
        }else {

            $file_info = $this->upload->data();
         


        }
       
		// Carga Imagen telefono trasera
        $config2['file_name'] = "img_trasera_".$this->input->post('txtruta');
        $config2['upload_path'] = './Uploads/Imagenes/Telefonos/ImgTrasera/';
        $config2['allowed_types'] = 'png|jpeg|gif|jpg';
        $config2['max_size'] = '0';
        $config2['max_width'] = '0';
        $config2['max_height'] = '0';
        $config2['overwrite'] = true;
        
		$this->upload->initialize($config2);

		

        if(!$this->upload->do_upload("img_trasera")){
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...  Adjunte Archivo en Formato CSV</p>";
			return $this->upload->display_errors();
        }else{
            $file_info2 = $this->upload->data();
		}
		
        $data=array (
			'Id_cell_form' => 0,
			'Id_distribuidora' => $this->input->post('txtdistribuidora'),
			'Id_canal' =>$this->input->post('txtcanal'),
			'Id_ruta' =>$this->input->post('txtruta'),
			'Id_marca_cell' =>$this->input->post('txtmarca'),
			'Id_modelo_cell' =>$this->input->post('txtmodelo'),
			'PQ' =>$this->input->post('PQ'),
			'ECD' =>$this->input->post('ECD'),
			'BAD' =>$this->input->post('BAD'),
			'TVD' =>$this->input->post('TVD'),
			'BOD'=>$this->input->post('BOD'),
			'MD' =>$this->input->post('MD'),
			'CD' =>$this->input->post('CD'),
			'FC' =>$this->input->post('FC'),
			'img_frontal' =>base_url()."/Uploads/Imagenes/Telefonos/ImgFrontal/".$file_info['file_name'],
			'img_trasera' =>base_url()."/Uploads/Imagenes/Telefonos/ImgTrasera/".$file_info2['file_name'],
			'fecha_registro' =>$nuevafecha
        );
		
		$dat= $this->cell_form_modelo->registrar_datos($data);

		if($dat){
			echo 1;
	
			
		}else{
			echo 2;

		}


		
	}


    
}