<?php

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
		$config['allowed_types'] = 'csv';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
		$config['overwrite'] = TRUE;

		$this->load->library('upload',$config);

		if (!$this->upload->do_upload("excel_file")) {
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...  Adjunte Archivo en Formato CSV</p>";
			return $this->upload->display_errors();
	
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
			echo "<p style='color:green; '>Completado</p>";
			// redirect('index.php/Informes');
			
		}else{
			echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> El Archivo no coincide con el Informe a Actualizar...</p>";
			// redirect('index.php/Fail');
		}


		
	}

	public function Fecha_Informe(){

		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->Fecha_Informe();

			$arreglo=[];

			foreach ($Datos as $key ) {
				$arreglo['fecha_actualizacion']=$key->fecha_actualizacion;
			}
			
			if(empty($arreglo)){
				echo '';
			}else{
				echo json_encode($arreglo);
			}
			
			
		}
			
			
	
	}

	function VentaXDia(){
		
		if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->VentaXDia();

			  $Fecha = array();
			  $Total=array();
			  
			  foreach ($Datos as $key ) {
				array_push($Fecha,$key->Fecha);
				array_push($Total,$key->Total);
			
			}
			$Arreglo=array();
			$Arreglo=array("Fecha" => $Fecha , "Total"=> $Total);

			  echo json_encode($Arreglo);
			
		}
		
			
	}

	function Top_Productos(){
		
		if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->Top_Productos();

			  $Descripcion = array();
			  $Total=array();
			  
			  foreach ($Datos as $key ) {
				array_push($Descripcion,$key->Descripcion);
				array_push($Total,$key->Total);
			
			}
			$Arreglo=array();

			$Arreglo=array("Descripcion" => $Descripcion , "Total"=> $Total);

			  echo json_encode($Arreglo);
			
		}
	}

	function VentaFamilia(){
		
		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->VentaFamilia();

			echo json_encode($Datos);
			
		}
	}

	function VentaDistribuidora(){
		
		// if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->VentaDistribuidora();

			echo json_encode($Datos);
			
		// }
	}

	public function Agregar_clientes(){

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
        $nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );


		$config['file_name'] = "CARGA_DE_CLIENTES";
		$config['upload_path'] = './Uploads/Informes/';
		$config['allowed_types'] = 'CSV|csv';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
		$config['overwrite'] = true;

		$this->load->library('upload',$config);

		if (!$this->upload->do_upload("excel_file_client")) {
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...  Adjunte Archivo en Formato CSV</p>";
			return $this->upload->display_errors();
	
        }else {

			$file_info = $this->upload->data();
			
			
		$data=array (
			'Id_Informe' =>0,
			'nombre_informe' => "CARGA_DE_CLIENTES",
			'fecha_registro'=> $nuevafecha,
			'fecha_actualizacion'=> $nuevafecha,
			'url_informe'=> base_url()."Uploads/Informes/".$file_info['file_name'],
			'Id_u_sdv'=> $this->session->userdata('Id_u_sdv'),
		);
		
		}
		
		$dat= $this->Informes_Model->Agregar_clientes($data);
		sleep(2);

		if($dat){
			echo "<p style='color:green; '>Completado</p>";
			// redirect('index.php/Informes');
			
		}else{
			echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> El Archivo no coincide con el Informe a Actualizar...</p>";
			// redirect('index.php/Fail');
		}


		
	}
	
	
}
