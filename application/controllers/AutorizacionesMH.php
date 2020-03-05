<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AutorizacionesMH extends CI_Controller {


    function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('url'));
        $this->load->library(array('session'));
		$this->load->model('AutorizacionesMH_Model');	
		$this->load->library('Pdf');	
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
            
		$this->load->view('AutorizacionesMH/Index');
		$this->load->view('Layout/Footer');
		

        }else{

			redirect('index.php');
        }
		

    }

    function Buscar_Telefonos(){
		
		if ($this->input->is_ajax_request()) {

			$imei=$this->input->post('txtimei');
			$Datos = $this->AutorizacionesMH_Model->Buscar_Telefonos($imei);
			$arreglo=[];

			foreach ($Datos as $key ) {
				$arreglo['Id_Telefono']=$key->Id_Telefono;
				$arreglo['Nombre_Marca']=$key->Nombre_Marca;
				$arreglo['Nombre_Modelo']=$key->Nombre_Modelo;
				$arreglo['año_telefono']=$key->año_telefono;
				$arreglo['color_telefono']=$key->color_telefono;
				$arreglo['Nombre_Distribuidora']=$key->Nombre_Distribuidora;
		
			}
			echo json_encode($arreglo);
			
		}
        
	}
	
	public function Ingresar_Autorizaciones(){
		$config['file_name'] =$this->input->post('txtimei', TRUE).'_'.$this->input->post('txtmaquina', TRUE) ; 
		$config['upload_path'] = './Uploads/Archivos/CartaMH';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
        $config['max_height'] = '0';

		$this->load->library('upload',$config);

		if (!$this->upload->do_upload("img_mh")) {
            echo $data['error'] = $this->upload->display_errors();
			// $this->load->view('Empleados/Index',$data);
        }else {

			$file_info = $this->upload->data();
			
			$fecha = date('Y-m-j H:i:s'); //inicializo la fecha con la hora

			$nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
			$nuevafecha = date ( 'Y-m-j_H:i:s' , $nuevafecha );

		$data=array(
			'Id_autorizaciones' =>0,
			'Id_telefono' => $this->input->post('txtidtelefono'),
			'software' => $this->input->post('txtsoftware'),
			'n_maquina' => $this->input->post('txtmaquina', TRUE),
			'n_resolucion' => $this->input->post('txtresolucion', TRUE),
			'n_resolucion_rt' => $this->input->post('txtresolucionrt', TRUE),
			'serie_autorizada'=> $this->input->post('txtserie',TRUE),
			'fecha_solicitud' => $this->input->post('txtfechasolicitud',TRUE),
			'fecha_autorizacion' => $this->input->post('txtfechaautorizacion',TRUE),
			'fecha_habilitacion' => 0,
			'cantidad_tk' => $this->input->post('txtcantidadcorrelativo',TRUE),
			'fecha_registro' => $nuevafecha,
			'Id_u_sdv'=> $this->session->userdata('Id_u_sdv'),
			'estado'=> 2,
			'estado_cell'=>"NO ENTREGADO",
			'img_mh'=> base_url()."Uploads/Archivos/CartaMH/".$file_info['file_name'],

		);
		}
		// echo var_dump($data);
		$dat=$this->AutorizacionesMH_Model->Ingresar_Autorizaciones($data);
		sleep(2);

		if(!empty($dat)){
		
			redirect('index.php/Dispositivos');
			
		
			
		}else{
			redirect('index.php/Fail');
			
		}
	}

	public function fetch_distribuidora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->AutorizacionesMH_Model->fetch_distribuidora();
		}
			
			
	}

	public function fetch_canal()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->AutorizacionesMH_Model->fetch_canal($this->input->post('Id_Distribuidora'));
			
			}
		}
	}

	public function fetch_ruta_cell()
	{
		if($this->input->post('Id_Canal'))
			{
			echo $this->AutorizacionesMH_Model->fetch_ruta_cell($this->input->post('Id_Canal'));
			}
	}




	public function fetch_autorizaciones_activas()
	{
		if ($this->input->is_ajax_request()) {

			$distribuidora=$this->input->post('txtdistribuidoramh');
			// Estado =1 =="ACTIVO"
			$estado=1;
			$Datos = $this->AutorizacionesMH_Model->fetch_autorizaciones($distribuidora,$estado);
			
			echo json_encode($Datos);
			
		}
			
	}
	public function fetch_autorizaciones_inactivas()
	{
		if ($this->input->is_ajax_request()) {

			$distribuidora=$this->input->post('txtdistribuidoramh');
			// Estado=0 =="INACTIVO"
			$estado=0;
			$Datos = $this->AutorizacionesMH_Model->fetch_autorizaciones($distribuidora,$estado);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function fetch_autorizaciones_backup()
	{
		if ($this->input->is_ajax_request()) {

			$distribuidora=$this->input->post('txtdistribuidoramh');

			// Estado =2 =="BACKUP"
			$estado=2;
			$Datos = $this->AutorizacionesMH_Model->fetch_autorizaciones($distribuidora,$estado);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function Actualizar_A_MH(){
		$param['id_autorizaciones'] = $this->input->post('txtidautorizacionesedith');
		$param['software'] = $this->input->post('txtsoftwareedith');
		$param['n_maquina'] = $this->input->post('txtmaquinaedith');
		$param['n_resolucion'] = $this->input->post('txtresolucionedith');
		$param['n_resolucion_rt'] = $this->input->post('txtresolucionrtedith');
		$param['serie_autorizada'] = $this->input->post('txtseriedith');
		$param['fecha_solicitud'] = $this->input->post('txtfechasolicitudedith');
		$param['fecha_autorizacion'] = $this->input->post('txtfechaautorizacionedith');
		$param['cantidad_tk'] = $this->input->post('txtcantidadcorrelativoedith');
		echo $this->AutorizacionesMH_Model->Actualizar_A_MH($param);

	}

	public function Mostrar_CajasMH(){
		
		if ($this->input->is_ajax_request()) {

			

			$Datos = $this->AutorizacionesMH_Model->Mostrar_CajasMH();
			
			
			echo json_encode($Datos);
			
		}
			
	}	


	public function Registrar_Baja_Alta(){
		$param['n_maquina_baja'] = $this->input->post('Caja_Activa');
		$param['n_maquina_alta'] = $this->input->post('Caja_BackUp');

		echo $this->AutorizacionesMH_Model->Registrar_Baja_Alta($param);

	}

	public function Registrar_Alta_MH(){
	
		$param['n_maquina_alta'] = $this->input->post('Caja_BackUp');

		echo $this->AutorizacionesMH_Model->Registrar_Alta_MH($param);

	}


	function fetch_autorizacion(){
		
		if ($this->input->is_ajax_request()) {

			$id_telefono=$this->input->post('txtidtelefono');
			$Datos = $this->AutorizacionesMH_Model->fetch_autorizacion($id_telefono);
			$arreglo=[];

			foreach ($Datos as $key ) {
				$arreglo['cantidad']=$key->cantidad;
				$arreglo['Id_telefono']=$key->Id_telefono;
				
		
			}
			echo json_encode($arreglo);
			
		}
        
	}

	public function Consultar_PDF()
	{
		if ($this->input->is_ajax_request()) {

		
			$Datos = $this->AutorizacionesMH_Model->Consultar_PDF();
			
			echo json_encode($Datos);
			
		}
			
	}


	

	public function pdfdetails()
	{

		if($this->uri->segment(3))
		{
			$Id_PDF = $this->uri->segment(3);
		
			
			$html_content ='';
			$html_content .= $this->AutorizacionesMH_Model->fetch_single_details($Id_PDF);
			$this->pdf->set_paper("A4", "landscape");
			$this->pdf->loadHtml($html_content);
			$this->pdf->render();
			$this->pdf->stream("".$Id_PDF.".pdf", array("Attachment"=>0));
		
		}
	}
		
    


}
