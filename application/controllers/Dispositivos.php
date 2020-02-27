<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dispositivos extends CI_Controller {


	function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Dispositivos_Model');
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		
	}

	public function index(){	

        // obtenemos el array de distribuidora y lo preparamos para enviar
        $Marca['arrMarca'] = $this->Dispositivos_Model->fetch_marca();
        
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
				
				
				$this->load->view('Dispositivos/Index',$Marca);
				$this->load->view('Layout/Footer');

			}else{
				redirect('index.php');

			}
			
    }
    

    public function Registrar_Marca(){
		$param['Marca'] = $this->input->post('txtmarcacell');
		echo $this->Dispositivos_Model->Registrar_Marca($param);

    }
    
    public function Registrar_Modelo(){
        $param['Marca'] = $this->input->post('mtxtmarcacell');
        $param['Modelo'] = $this->input->post('mtxtmodelocell');
		echo $this->Dispositivos_Model->Registrar_Modelo($param);

	}

	public function Registrar_telefono(){

        $param['Id_Marca'] = $this->input->post('ftxtmarcacell');
		$param['Id_Modelo'] = $this->input->post('ftxtmodeloAsignar');
		$param['Año'] = $this->input->post('AñoCell');
		$param['Color'] = $this->input->post('txtcolor');
		$param['Imei'] = $this->input->post('txtimei');
		$param['N_Serie'] = $this->input->post('txtserie');
		$param['Activo_F'] = $this->input->post('txtactivof');
		$param['Id_Distribuidora'] = $this->input->post('mtxtdistribuidoraAsignar');
		$param['Id_Canal'] = $this->input->post('mtxtcanalAsignar');

		echo $this->Dispositivos_Model->Registrar_Telefono($param);

    }
    
    public function fetch_Modelo()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('Id_Marca'))
			{
			echo $this->Dispositivos_Model->fetch_Modelo($this->input->post('Id_Marca'));
			
			}
		}
	}

	
	public function fetch_distribuidora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Dispositivos_Model->fetch_distribuidora();
		}
			
			
	}

	 public function fetch_canal()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->Dispositivos_Model->fetch_canal($this->input->post('Id_Distribuidora'));
			
			}
		}
	}

	

	function Consultar_Telefonos(){
		
		if ($this->input->is_ajax_request()) {

			$distribuidora = $this->input->post('Tdistribuidora');
			$canal = $this->input->post('Tcanal');

			$Datos = $this->Dispositivos_Model->Consultar_Telefonos($distribuidora,$canal);
			
			echo json_encode($Datos);
			
		}
			
	}	

	public function Actualizar_Telefonos(){
		$param['Id_telefono'] = $this->input->post('mtxtidcell');
		$param['Id_marca_cell'] = $this->input->post('mtxtmarcacellm');
		$param['Id_modelo_cell'] = $this->input->post('mtxtmodeloasignar');
		$param['año_telefono'] = $this->input->post('mAñoCell');
		$param['color_telefono'] = $this->input->post('mtxtcolor');
		$param['imei_telefono'] = $this->input->post('mtxtimei');
		$param['N_serie_telefono'] = $this->input->post('mtxtserie');
		$param['activo_fijo'] = $this->input->post('mtxtactivof');
		$param['Id_Distribuidora'] = $this->input->post('Tdistribuidoram');
		$param['Id_Canal'] = $this->input->post('Tcanalm');
		echo $this->Dispositivos_Model->Actualizar_Telefonos($param);

	}

	public function Activar_Telefono(){
		$id= $this->input->post('mtxtidcell');
		$observacionalta= $this->input->post('observacionalta');
		echo $this->Dispositivos_Model->Activar_Telefono($id,$observacionalta);
	}

	public function Inactivar_Telefono(){

		if($this->input->post('observacionbaja') == 'DAÑO' || $this->input->post('observacionbaja')== 'ROBO'){
			
			$id= $this->input->post('mtxtidcell');
			$observacionbaja= $this->input->post('observacionbaja');
			$estado=7;
			echo $this->Dispositivos_Model->Inactivar_Telefono($id,$observacionbaja,$estado);

		}else{
			$id= $this->input->post('mtxtidcell');
			$observacionbaja= $this->input->post('observacionbaja');
			$estado=0;
			echo $this->Dispositivos_Model->Inactivar_Telefono($id,$observacionbaja,$estado);
		}
	
	}

	public function Verificar_Imei()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('txtimei'))
			{
				$imei=$this->input->post('txtimei');

				$Datos= $this->Dispositivos_Model->Verificar_Imei($imei);

				echo json_encode($Datos);
			
			}
		}
	}



	 public function fetch_canal_cell()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->Dispositivos_Model->fetch_canal_cell($this->input->post('Id_Distribuidora'));
			
			}
		}
	}

	public function fetch_canal_nocell()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->Dispositivos_Model->fetch_canal_nocell($this->input->post('Id_Distribuidora'));
			
			}
		}
	}

	public function fetch_ruta_cell()
	{
		if($this->input->post('Id_Canal'))
			{
			echo $this->Dispositivos_Model->fetch_ruta_cell($this->input->post('Id_Canal'));
			}
	}

	public function fetch_empleado()
	{
		if($this->input->post('Id_Ruta'))
			{
			echo $this->Dispositivos_Model->fetch_empleado($this->input->post('Id_Ruta'));
			}
	}

	public function fetch_noempleado()
	{
		if($this->input->post('Id_Ruta'))
			{
			echo $this->Dispositivos_Model->fetch_noempleado($this->input->post('Id_Ruta'));
			}
	}

	public function n_maquina()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Canal'))
			{
			echo $this->Dispositivos_Model->n_maquina($this->input->post('Id_Canal'));
			}
		}
			
			
	}

	public function imei_telefonos()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Canal'))
			{
			echo $this->Dispositivos_Model->imei_telefonos($this->input->post('Id_Canal'));
			}
		}
			
			
	}

	public function datos_mh_cell()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('n_maquina'))
			{

			$Datos=$this->Dispositivos_Model->datos_mh_cell($this->input->post('n_maquina'));

			$arreglo=[];

			foreach ($Datos as $key ) {
				$arreglo['n_maquina']=$key->n_maquina;
				$arreglo['imei_telefono']=$key->imei_telefono;
				$arreglo['Nombre_marca']=$key->Nombre_marca;
				$arreglo['Nombre_Modelo']=$key->Nombre_Modelo;
				$arreglo['color_telefono']=$key->color_telefono;
				$arreglo['serie_autorizada']=$key->serie_autorizada;
				$arreglo['n_resolucion_rt']=$key->n_resolucion_rt;
				$arreglo['fecha_autorizacion']=$key->fecha_autorizacion;
				$arreglo['Nombre_Distribuidora']=$key->Nombre_Distribuidora;
				$arreglo['Id_telefono']=$key->Id_telefono;
			
		
			}
			echo json_encode($arreglo);
		
			
			
			}
		}
	}

	public function datos_cell()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('imei_telefono'))
			{

			$Datos=$this->Dispositivos_Model->datos_cell($this->input->post('imei_telefono'));

			$arreglo=[];

			foreach ($Datos as $key ) {
				
		
				$arreglo['Nombre_marca']=$key->Nombre_marca;
				$arreglo['Nombre_Modelo']=$key->Nombre_Modelo;
				$arreglo['color_telefono']=$key->color_telefono;
				$arreglo['Nombre_Distribuidora']=$key->Nombre_Distribuidora;
				$arreglo['Id_telefono']=$key->Id_telefono;
			
		
			}
			echo json_encode($arreglo);
		
			
			
			}
		}
	}

	public function Entrega_Cell_Autorizado(){

		$verificar=$param['motivo_entrega']=$this->input->post('mtxtmotivoentrega');
	
		$param['Id_distribuidora'] = $this->input->post('mtxtdistribuidoracell');
		$param['Id_canal'] = $this->input->post('mtxtcanalcell');
		$param['Id_ruta'] = $this->input->post('mtxtrutacell');
		$param['Id_empleados'] = $this->input->post('idEmpleado');
		$param['Id_telefono'] = $this->input->post('mtxtidtelefono');
		$param['Id_autorizaciones'] = $this->input->post('mtxtnmaquina');
		$param['fecha_registro'] = $this->input->post('mtxtfechahabilitacion');
		$param['ruta'] = $this->input->post('mtxtruta');
		$param['motivo_entrega']=$this->input->post('mtxtmotivoentrega');
		
		if($verificar=="DAÑO" || $verificar=="ROBO"){
		 $param['estado']=7;
		}else{
		 $param['estado']=0;
		}
		echo $this->Dispositivos_Model->Entrega_Cell_Autorizado($param);

	}
	
	public function Entrega_Cell_NoAutorizado(){
		$verificar=$param['motivo_entrega']=$this->input->post('mtxtmotivoentregano');

		$param['Id_distribuidora'] = $this->input->post('mtxtdistribuidoranocell');
		$param['Id_canal'] = $this->input->post('mtxtcanalnocell');
		$param['Id_ruta'] = $this->input->post('mtxtrutacell');
		$param['Id_empleados'] = $this->input->post('NombreEmpleadono');
		$param['Id_telefono'] = $this->input->post('mtxtidtelefonono');
		$param['fecha_registro'] = $this->input->post('mtxtfechahabilitacion');
		$param['motivo_entrega']=$this->input->post('mtxtmotivoentregano');

		if($verificar=="DAÑO" || $verificar=="ROBO"){
			$param['estado']=7;
		   }else{
			$param['estado']=0;
		   }
		echo $this->Dispositivos_Model->Entrega_Cell_NoAutorizado($param);

	}
	

	public function Consultar_PDF()
	{
		if ($this->input->is_ajax_request()) {

		
			$Datos = $this->Dispositivos_Model->Consultar_PDF();
			
			echo json_encode($Datos);
			
		}
			
	}


	public function pdfdetails()
	{

		if($this->uri->segment(3))
		{
			$Id_PDF = $this->uri->segment(3);
		
			$html_content ='<div style="margin-top:1;"><img width="110%;" src="https://fotos.subefotos.com/301649983a6dedbf76bbbea3b8d33b18o.png"></div>';
		
			$html_content .= $this->Dispositivos_Model->fetch_single_details($Id_PDF);
			$this->pdf->loadHtml($html_content);
			$this->pdf->render();
			$this->pdf->stream("".$Id_PDF.".pdf", array("Attachment"=>0));
		}
	}

	


	
}
