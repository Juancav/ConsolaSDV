<?php
defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('memory_limit','-1');
class Accesorios extends CI_Controller {

    function __Construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		$this->load->model('Accesorios_Model');
		$this->load->library(array('Export_excel'));
		$this->load->library('Pdf');

		
	}

	public function index()
	{
		// obtenemos el array de distribuidora y lo preparamos para enviar
		$categoria['arrCategoria'] = $this->Accesorios_Model->fetch_categoria();

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
            
		$this->load->view('Accesorios/Index',$categoria);
		$this->load->view('Layout/Footer');

		}else{
			redirect('index.php');
    	}

	}

	public function Ingresar_Categoria(){
		$param['Nombre'] = $this->input->post('mtxtnombre');
		$param['Descripcion'] = $this->input->post('mtxtdescripcion');
		$param['fecha_registro'] = $this->input->post('fechacat');
		echo $this->Accesorios_Model->Ingresar_Categoria($param);

	}

	public function Ingresar_Producto(){
	
		$param['nombre'] = $this->input->post('mtxtnombreprod');
		$param['marca'] = $this->input->post('mtxtmarca');
		$param['tipo'] = $this->input->post('mtxttipo');
		$param['modelo'] = $this->input->post('mtxtmodelo');
		$param['color'] = $this->input->post('mtxtcolor');
		$param['vidautil'] = $this->input->post('mtxtvidautil');
		$param['caracteristicas'] = $this->input->post('mtxtcaracteristicas');
		$param['fecha'] = $this->input->post('mtxtfecha');
		$param['categoria'] = $this->input->post('mtxtcategoria');
		$param['precio']=$this->input->post('mtxtprecio');


		echo $this->Accesorios_Model->Ingresar_Producto($param);

	}


	public function Cantidad_Producto(){
		$param['Id_Accesorios'] = $this->input->post('mtxtproducto');
		$param['N_o_compra'] = $this->input->post('mtxtn_o_compra');
		$param['Cantidad'] = $this->input->post('mtxtcantidad');
		$param['fecha_entrada'] = $this->input->post('mtxtfechaproducto');
		echo $this->Accesorios_Model->Cantidad_Producto($param);

	}

	public function fetch_producto()
	{
		if($this->input->is_ajax_request()){

			if($this->input->post('Id_Categoria'))
			{
			echo $this->Accesorios_Model->fetch_producto($this->input->post('Id_Categoria'));
			
			}
		}
	}

	public function Mostrar_Stock(){
		
		if ($this->input->is_ajax_request()) {

		
			$Datos = $this->Accesorios_Model->Mostrar_Stock();
			
			echo json_encode($Datos);
			
		}
			
	}	

	public function All_Stock(){
		
		if ($this->input->is_ajax_request()) {

		
			$Datos = $this->Accesorios_Model->All_Stock();
			
			echo json_encode($Datos);
			
		}
			
	}	


	public function All_Stock_DExcel(){

		$result = $this->Accesorios_Model->All_Stock_DExcel();
		$this->Export_excel->To_excel($result, 'Total Inventario');
		
	}

	public function fetch_distribuidora()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Accesorios_Model->fetch_distribuidora();
		}
			
			
	}
	
	 public function fetch_canal()
	{
		if($this->input->is_ajax_request()){
			if($this->input->post('Id_Distribuidora'))
			{
			echo $this->Accesorios_Model->fetch_canal($this->input->post('Id_Distribuidora'));
			
			}
		}
	}

	public function fetch_ruta()
	{
		if($this->input->post('Id_Canal'))
			{
			echo $this->Accesorios_Model->fetch_ruta($this->input->post('Id_Canal'));
			}
	}


	public function fetch_empleado()
	{
		if($this->input->post('Id_Ruta'))
			{
			echo $this->Accesorios_Model->fetch_empleado($this->input->post('Id_Ruta'));
			}
	}

	public function Salida_Accesorios(){


		$Datos= $this->input->post('Datos');	
		$Status=$this->Accesorios_Model->Salida_Accesorios($Datos);



		$this->output->set_content_type('application/json');
		echo json_encode(array('Status'=> $Status));
	
	}

	public function fetch_canal_Impulso()
	{
		if($this->input->is_ajax_request()){
			
			echo $this->Accesorios_Model->fetch_canal_Impulso();
			
			}
		
	}

	public function fetch_empleado_Impulso()
	{
		if($this->input->post('Id_Ruta'))
			{
			echo $this->Accesorios_Model->fetch_empleado_Impulso($this->input->post('Id_Ruta'));
			}
	}

	function Consultar_PDF(){
		
		if ($this->input->is_ajax_request()) {

		
			$Datos = $this->Accesorios_Model->Consultar_PDF();
			
			echo json_encode($Datos);
			
		}
			
	}

	function Consultar_PDF_ruta(){
		
		if ($this->input->is_ajax_request()) {

		
			$Datos = $this->Accesorios_Model->Consultar_PDF_ruta($this->input->post('Ruta'));
			
			echo json_encode($Datos);
			
		}
			
	}


	public function pdfdetails()
	{

		if($this->uri->segment(3))
		{
			$Id_PDF = $this->uri->segment(3);
		
			$html_content ='<div style="margin-top:1;"><img width="110%;" src="https://fotos.subefotos.com/301649983a6dedbf76bbbea3b8d33b18o.png"></div>';
		
			$html_content .= $this->Accesorios_Model->fetch_single_details($Id_PDF);
			$this->pdf->loadHtml($html_content);
			$this->pdf->render();
			$this->pdf->stream("".$Id_PDF.".pdf", array("Attachment"=>0));
		}
	}

	public function MostrarCategoria(){
		
		if ($this->input->is_ajax_request()) {

			$distribuidora=$this->input->post('txtdistribuidora');

			$Datos = $this->Accesorios_Model->MostrarCategoria($distribuidora);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function MostrarAccesorios(){
		
		if ($this->input->is_ajax_request()) {

			$distribuidora=$this->input->post('txtdistribuidora');

			$Datos = $this->Accesorios_Model->MostrarAccesorios($distribuidora);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function Existencia_Producto(){
		
		if ($this->input->is_ajax_request()) {

			$Id_Producto=$this->input->post('mtxtproductoAsignar');

			$Datos = $this->Accesorios_Model->Existencia_Producto($Id_Producto);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function Existencia_Producto_Impulso(){
		
		if ($this->input->is_ajax_request()) {

			$Id_Producto=$this->input->post('mtxtproductoAsignarImpulso');

			$Datos = $this->Accesorios_Model->Existencia_Producto($Id_Producto);
			
			echo json_encode($Datos);
			
		}
			
	}

	public function Actualizar_Accesorios(){
		$param['Id_Accesorios'] = $this->input->post('mtxtidaccesorioedith');
		$param['nombre_accesorio'] = $this->input->post('mtxtnombreprodedith');
		$param['precio_u'] = $this->input->post('mtxtprecioedith');
		$param['marca_accesorio'] = $this->input->post('mtxtmarcaedith');
		$param['modelo_accesorio'] = $this->input->post('mtxtmodeloedith');
		$param['tipo_accesorio'] = $this->input->post('mtxttipoedith');
		$param['color_accesorio'] = $this->input->post('mtxtcoloredith');
		$param['caracteristicas_accesorio'] = $this->input->post('mtxtcaracteristicasedith');
		$param['vida_util_accesorio'] = $this->input->post('mtxtvidautiledith');
		$param['fecha_registro'] = $this->input->post('mtxtfechaedith');
		$param['Id_Categoria'] = $this->input->post('mtxtcategoriaedith');
		echo $this->Accesorios_Model->Actualizar_Accesorios($param);

	}

	public function Inactivar_Accesorios(){
		$id= $this->input->post('mtxtidaccesorioedith');
		echo $this->Accesorios_Model->Inactivar_Accesorios($id);
	}

	public function Activar_Accesorio(){
		$id= $this->input->post('mtxtidaccesorioedith');
		echo $this->Accesorios_Model->Activar_Accesorio($id);
	}

	public function Actualizar_Categoria(){
		$param['Id_Categoria'] = $this->input->post('mtxtidcategoriaedith');
		$param['nombre_categoria'] = $this->input->post('mtxtnombrecategoriaedith');
		$param['fecha_registro'] = $this->input->post('fechacatedith');
		$param['descripcion'] = $this->input->post('mtxtdescripcionedith');
		echo $this->Accesorios_Model->Actualizar_Categoria($param);

	}

	public function Inactivar_Categoria(){
		$id= $this->input->post('mtxtidcategoriaedith');
		echo $this->Accesorios_Model->Inactivar_Categoria($id);
	}

	public function Activar_Categoria(){
		$id= $this->input->post('mtxtidcategoriaedith');
		echo $this->Accesorios_Model->Activar_Categoria($id);
	}

	function InformeXruta(){
		
		if ($this->input->is_ajax_request()) {

			$ruta=$this->input->post('txtruta');
			$Datos = $this->Accesorios_Model->InformeXruta($ruta);
			
			echo json_encode($Datos);
			
		}
			
	}


}


