<?php

defined('BASEPATH') OR exit('No direct script access allowed');
ini_set('memory_limit','-1');
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
				case "INFORMES":
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
	function VentaXCanal(){
		
		if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->VentaXCanal();

			  $Canal=array();
			  $SS=array();
			  $CH=array();
			  $SA=array();
			  $SO=array();
			  $SM=array();


			  
			  foreach ($Datos as $key ) {

				array_push($Canal,$key->Canal);
				array_push($SS,$key->SS);
				array_push($CH,$key->CH);
				array_push($SA,$key->SA);
				array_push($SO,$key->SO);
				array_push($SM,$key->SM);
				
			
			}


			$Arreglo=array();
			$Arreglo=array("Canal"=> $Canal,"SS"=> $SS, "CH"=> $CH, "SA"=> $SA, "SO"=> $SO, "SM"=> $SM);

			  echo json_encode($Arreglo);
			
		}
		
			
	}

	function VentaXCCategoria(){
		
		if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->VentaXCCategoria();

			  $Categoria=array();
			  $SS=array();
			  $CH=array();
			  $SA=array();
			  $SO=array();
			  $SM=array();


			  
			  foreach ($Datos as $key ) {

				array_push($Categoria,$key->Categoria);
				array_push($SS,$key->SS);
				array_push($CH,$key->CH);
				array_push($SA,$key->SA);
				array_push($SO,$key->SO);
				array_push($SM,$key->SM);
				
			
			}


			$Arreglo=array();
			$Arreglo=array("Categoria"=> $Categoria,"SS"=> $SS, "CH"=> $CH, "SA"=> $SA, "SO"=> $SO, "SM"=> $SM);

			  echo json_encode($Arreglo);
			
		}
		
			
	}

	function VentaxGrupo_Distribuidora(){
		
		if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->VentaxGrupo_Distribuidora();

			  $Distribuidora=array();
			  $G1=array();
			  $G2=array();
			  $G3=array();
			  $G4=array();
			  $G5=array();
			  $G6=array();
			  $G7=array();
			  $G8=array();
			  $G9=array();
			  $G10=array();
			


			  
			  foreach ($Datos as $key ) {

				array_push($Distribuidora,$key->Distribuidora);
				array_push($G1,$key->G1);
				array_push($G2,$key->G2);
				array_push($G3,$key->G3);
				array_push($G4,$key->G4);
				array_push($G5,$key->G5);
				array_push($G6,$key->G6);
				array_push($G7,$key->G7);
				array_push($G8,$key->G8);
				array_push($G9,$key->G9);
				array_push($G10,$key->G10);

				
			
			}


			$Arreglo=array();
			$Arreglo=array("Distribuidora"=> $Distribuidora,"G1"=> $G1,"G2"=> $G2, "G3"=> $G3,"G4"=> $G4,	"G5"=> $G5,	"G6"=> $G6,	"G7"=> $G7,	"G8"=> $G8,	"G9"=> $G9,	"G10"=> $G10 );

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

	function VentaSubFamilia(){
		
		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->VentaSubFamilia();

			echo json_encode($Datos);
			
		}
	}

	function VentaDistribuidora(){
		
		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->VentaDistribuidora();

			echo json_encode($Datos);
			
		}
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

	public function addExhibidores(){

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $nuevafecha = strtotime ( '-2 hour' , strtotime ( $fecha ) ) ;
		$nuevafecha = date ( 'Y-m-j H:i:s' , $nuevafecha );
		
		$fecha1 = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
        $fechafinal1 = strtotime ( '-2 hour' , strtotime ( $fecha1 ) ) ;
		$fechafinal1 = date ( 'Y-m-j_H_i_s' , $fechafinal1 );


		$config['file_name'] = "CARGA_DE_EXHIBIDORES";
		$config['upload_path'] = './Uploads/Informes/';
		$config['allowed_types'] = 'CSV|csv';
        $config['max_size'] = '0';
        $config['max_width'] = '0';
		$config['max_height'] = '0';
		$config['overwrite'] = true;

		$this->load->library('upload',$config);

		if (!$this->upload->do_upload("excel_file_exhibidores")) {
            echo $data['error'] = "<p style='color:red; '><i class='fas fa-exclamation-triangle'></i> Tipo  de archivo no permitido...  Adjunte Archivo en Formato CSV</p>";
			return $this->upload->display_errors();
	
        }else {

			$file_info = $this->upload->data();
			
			
		$data=array (
			'Id_Informe' =>0,
			'nombre_informe' => "CARGA_DE_EXHIBIDORES",
			'fecha_registro'=> $nuevafecha,
			'fecha_actualizacion'=> $nuevafecha,
			'url_informe'=> base_url()."Uploads/Informes/".$file_info['file_name'],
			'Id_u_sdv'=> $this->session->userdata('Id_u_sdv'),
		);
		
		}
		
		$dat= $this->Informes_Model->addExhibidores($data);
		sleep(2);

		if($dat){
			echo "<p style='color:green; '>Completado</p>";
			// redirect('index.php/Informes');
			
		}else{
			echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> El Archivo no coincide con el Informe a Actualizar...</p>";
			// redirect('index.php/Fail');
		}


		
	}
	
	function AvanceExhibidores(){
		
		//if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->AvanceExhibidores();
			
			  $Pais=array();
			  $Estatus=array();
			  $SV=array();
			  $GT=array();
			  $HN=array();
			  

			$No=array('CLIENTES NO ACTUALIZADOS');
			$Si=array('CLIENTES ACTUALIZADOS');
			  
			  foreach ($Datos[0] as $key ) {

				
				array_push($No,$key->SV,$key->GT,$key->HN);

			  }

				foreach ($Datos[1] as $key ) {

					
					array_push($Si,$key->SV1,$key->GT1,$key->HN1);

				}
			

			 array_push($Pais,'PAIS','EL SALVADOR','GUATEMALA','HONDURAS');

			$Arreglo=array();
			$Arreglo=array($Pais,$No,$Si);

			  echo json_encode($Arreglo);
			
		//}
		
			
	}

	function ClientesExhibidorXPais(){
		
		//if ($this->input->is_ajax_request()) {

			
			 $Datos = $this->Informes_Model->ClientesExhibidorXPais();
			
			  $Pais=array();
			  $Estatus=array();
			  $SV=array();
			  $GT=array();
			  $HN=array();
			  

			$No=array('CLIENTES SIN EXHIBIDOR');
			$Si=array('CLIENTES CON EXHIBIDOR');
			  
			  foreach ($Datos[0] as $key ) {

				
				array_push($No,$key->SV,$key->GT,$key->HN);

			  }

				foreach ($Datos[1] as $key ) {

					
					array_push($Si,$key->SV1,$key->GT1,$key->HN1);

				}
			

			 array_push($Pais,'PAIS','EL SALVADOR','GUATEMALA','HONDURAS');

			$Arreglo=array();
			$Arreglo=array($Pais,$No,$Si);

			  echo json_encode($Arreglo);
			
		//}
		
			
	}

	function PosicionExhibidor(){

		if ($this->input->is_ajax_request()) {

			$PAIS=array();
			$Data1=array();
			$Data2=array();
			$Data3=array();
			$Data4=array();
			$Data5=array();
			$Data6=array();
	
			 $Datos = $this->Informes_Model->PosicionExhibidor();

			 foreach ($Datos as $key ) {

				
				array_push($PAIS,$key->PAIS);
				array_push($Data1,$key->Data1);
				array_push($Data2,$key->Data2);
				array_push($Data3,$key->Data3);
				array_push($Data4,$key->Data4);
				array_push($Data5,$key->Data5);
				array_push($Data6,$key->Data6);
			
			

			  }

			  $arreglo=array($PAIS,$Data1,$Data2,$Data3,$Data4,$Data5,$Data6);

			  echo json_encode($arreglo);
			
		}
		
		
	}

	function Totalclientesconysinexhibidor(){
		
		$Pais=array();
		$ConExhibidor=array();
		$Sinexhibidor=array();
		array_push($Pais,'PAIS','EL SALVADOR','GUATEMALA','HONDURAS');
		array_push($ConExhibidor,'CON EXHIBIDOR');
		array_push($Sinexhibidor,'SIN EXHIBIDOR');

		

			$Datos = $this->Informes_Model->Totalclientesconysinexhibidor();

			foreach ($Datos as $key ) {

				
				array_push($ConExhibidor,$key->SiExh);
				array_push($Sinexhibidor,$key->NoExh);

			  }

			$arreglo=array($Pais,$ConExhibidor,$Sinexhibidor);

			echo json_encode($arreglo);
			
		
	}

	function ClientesCensadosXDistribuidora(){
		
		if ($this->input->is_ajax_request()) {
			$Distribuidora=array();
			$Actualizado=array();
			$NoActualizado=array();
			$Avance=array();
	
			 $Datos = $this->Informes_Model->ClientesCensadosXDistribuidora();

			 foreach ($Datos as $key ) {

				
				array_push($Distribuidora,$key->Distribuidora);
				array_push($Actualizado,$key->Actualizado);
				array_push($NoActualizado,$key->NoActualizado);
				array_push($Avance, number_format(($key->Actualizado*100)/($key->Actualizado + $key->NoActualizado),2, '.', '') );

			  }

			  $arreglo=array($Distribuidora,$Actualizado,$NoActualizado,$Avance);

			  echo json_encode($arreglo);
			
		}
		
			
	}

	function ClientesCensadosXDistribuidoraChange(){
		
		if ($this->input->is_ajax_request()) {
			$Distribuidora=array();
			$Actualizado=array();
			$NoActualizado=array();
			$Avance=array();
	
			 $Datos = $this->Informes_Model->ClientesCensadosXDistribuidoraChange($this->input->post('parametro'));

			 foreach ($Datos as $key ) {

				
				array_push($Distribuidora,$key->Distribuidora);
				array_push($Actualizado,$key->Actualizado);
				array_push($NoActualizado,$key->NoActualizado);
				array_push($Avance, number_format(($key->Actualizado*100)/($key->Actualizado + $key->NoActualizado),2, '.', '') );

			  }

			  $arreglo=array($Distribuidora,$Actualizado,$NoActualizado,$Avance);

			  echo json_encode($arreglo);
			
		}
		
			
	}

	function SumatoriaExhibidor(){
		
		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->SumatoriaExhibidor();

			$NombreExhibidor = array();
			  $Total=array();
			  
			  foreach ($Datos as $key ) {
				array_push($NombreExhibidor,$key->NombreExhibidor);
				array_push($Total,$key->Total);
			
			}
			$Arreglo=array();

			$Arreglo=array("NombreExhibidor" => $NombreExhibidor , "Total"=> $Total);

			  echo json_encode($Arreglo);
			
		}
	}

	function ClientesCensadosNDE_NSET_EC(){
		
		if ($this->input->is_ajax_request()) {
			$PAIS=array();
			$NDE=array();
			$NSET=array();
			$EC=array();
	
			 $Datos = $this->Informes_Model->ClientesCensadosNDE_NSET_EC();

			 foreach ($Datos as $key ) {

				
				array_push($PAIS,$key->PAIS);
				array_push($NDE,$key->NDE);
				array_push($NSET,$key->NSET);
				array_push($EC,$key->EC);
				

			  }

			  $arreglo=array($PAIS,$NDE,$NSET,$EC);

			  echo json_encode($arreglo);
			
		}

	
		
			
	}
	function ClientesCensadosNDE_NSET_ECxDivisionchange(){
		
		if ($this->input->is_ajax_request()) {
			$PAIS=array();
			$NDE=array();
			$NSET=array();
			$EC=array();
	
			 $Datos = $this->Informes_Model->ClientesCensadosNDE_NSET_ECxDivisionchange($this->input->post('parametro'));

			 foreach ($Datos as $key ) {

				
				array_push($PAIS,$key->PAIS);
				array_push($NDE,$key->NDE);
				array_push($NSET,$key->NSET);
				array_push($EC,$key->EC);
				

			  }

			  $arreglo=array($PAIS,$NDE,$NSET,$EC);

			  echo json_encode($arreglo);
			
		}

	
		
			
	}

	function PosicionExhibidorChange(){

		if ($this->input->is_ajax_request()) {

			$PAIS=array();
			$Data1=array();
			$Data2=array();
			$Data3=array();
			$Data4=array();
			$Data5=array();
			$Data6=array();
	
			 $Datos = $this->Informes_Model->PosicionExhibidorChange($this->input->post('parametro'));

			 foreach ($Datos as $key ) {

				
				array_push($PAIS,$key->PAIS);
				array_push($Data1,$key->Data1);
				array_push($Data2,$key->Data2);
				array_push($Data3,$key->Data3);
				array_push($Data4,$key->Data4);
				array_push($Data5,$key->Data5);
				array_push($Data6,$key->Data6);
			
			

			  }

			  $arreglo=array($PAIS,$Data1,$Data2,$Data3,$Data4,$Data5,$Data6);

			  echo json_encode($arreglo);
			
		}
		
		
	}

	function SumatoriaExhibidorfiltro(){
		
		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->SumatoriaExhibidorfiltro($this->input->post('parametro'));

			$NombreExhibidor = array();
			  $Total=array();
			  
			  foreach ($Datos as $key ) {
				array_push($NombreExhibidor,$key->NombreExhibidor);
				array_push($Total,$key->Total);
			
			}
			$Arreglo=array();

			$Arreglo=array("NombreExhibidor" => $NombreExhibidor , "Total"=> $Total);

			  echo json_encode($Arreglo);
			
		}
	}

	function SumatoriaExhibidorfiltroxDivision(){
		
		if ($this->input->is_ajax_request()) {

			$Datos = $this->Informes_Model->SumatoriaExhibidorfiltroxDivision($this->input->post('parametro'));

			$NombreExhibidor = array();
			  $Total=array();
			  
			  foreach ($Datos as $key ) {
				array_push($NombreExhibidor,$key->NombreExhibidor);
				array_push($Total,$key->Total);
			
			}
			$Arreglo=array();

			$Arreglo=array("NombreExhibidor" => $NombreExhibidor , "Total"=> $Total);

			  echo json_encode($Arreglo);
			
		}
	}


	public function GenerarInformeCensoexhibidores()
	{	
		if($this->input->is_ajax_request()){
			
		echo json_encode($this->Informes_Model->GenerarInformeCensoexhibidores());
		
		}
	}

	


	
}
