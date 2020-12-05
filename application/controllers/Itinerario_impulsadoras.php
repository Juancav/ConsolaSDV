<?php

use phpDocumentor\Reflection\Types\Void_;

defined('BASEPATH') or exit('No direct script access allowed');
ini_set('memory_limit', '-1');


class Itinerario_impulsadoras extends CI_Controller
{

	function __Construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		$this->load->model('Itinerario_impulsadoras_model');
	}

	public function index()
	{

		if (!empty($this->session->userdata('Nombre'))) {

			switch ($this->session->userdata('Rol')) {
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

			$this->load->view('Impulsadora_itinerario/Index');
			$this->load->view('Layout/Footer');
		} else {
			redirect('index.php');
		}
	}

	public function Get_itinerarios()
	{
		if ($this->input->is_ajax_request()) {

			echo json_encode($this->Itinerario_impulsadoras_model->Get_itinerarios($this->input->post('Carnet')));
		}
	}

	public function Cambios_itinerario()
	{


		$Datos = $this->input->post('Datos');
		$Status = $this->Itinerario_impulsadoras_model->Cambios_itinerario($Datos);


		$this->output->set_content_type('application/json');
		echo json_encode(array('Status' => $Status));
	}

	public function get_paises()
	{
		if ($this->input->is_ajax_request()) {

			echo $this->Itinerario_impulsadoras_model->get_paises();
		}
	}
	public function get_distribuidora()
	{
		if ($this->input->is_ajax_request()) {

			echo $this->Itinerario_impulsadoras_model->get_distribuidora($this->input->post('Pais'));
		}
	}
	public function get_rutas()
	{
		if ($this->input->is_ajax_request()) {

			echo $this->Itinerario_impulsadoras_model->get_rutas($this->input->post('Distribuidora'));
		}
	}
	public function upload_data_i()
	{

		$fecha = date('Y-m-d H:i:s'); //inicializo la fecha con la hora
		$nuevafecha = strtotime('-2 hour', strtotime($fecha));
		$nuevafecha = date('Y-m-j_H:i:s', $nuevafecha);

		$Tipo_carga = $this->input->post('tipo_carga');
		$fila_name = "";

		if ($Tipo_carga == 1) {
			$fila_name = "Carga_clientes_impulso";
		} else if ($Tipo_carga == 2) {
			$fila_name = "Carga_itinerario_impulso";
		}

		$config['file_name'] = $fila_name;
		$config['upload_path'] = './Uploads/Informes/';
		$config['allowed_types'] = 'CSV|csv';
		$config['max_size'] = '0';
		$config['max_width'] = '0';
		$config['max_height'] = '0';
		$config['overwrite'] = true;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload("file")) {
			echo $data['error'] = "error";
			return $this->upload->display_errors();
		} else {

			$file_info = $this->upload->data();

			$data = array(
				'Tipo_carga' => $Tipo_carga,
				'nombre_informe' => $fila_name,
				'url_informe' => base_url() . "Uploads/Informes/" . $file_info['file_name'],
				'Id_u_sdv' => $this->session->userdata('Id_u_sdv'),
			);
		}

		$dat = $this->Itinerario_impulsadoras_model->upload_data_i($data);

		if ($Tipo_carga == 1) {

			if ($dat["Validar"]) {
				echo "<p style='color:green; '>Completado clientes cargados con exito " . $dat['Fila'] . "</p>";
			} else {
				if ($dat['Fila'] > 2) {
					echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> La ruta  de la fila numero <b>" . $dat['Fila'] . "</b> no existe o no fue encontrada, los datos no fueron cargados</p>";
				} else {
					echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> Plantilla seleccionada no coincide con el tipo de dato a cargar...</p>";
				}
			}
		} else {
			if ($dat["Validar"]) {
				echo "<p style='color:green; '>Completado , se cargaron " . $dat['Fila'] . " nuevas visita con exito...</p>";
			} else {
				if ($dat['Fila'] > 2) {
					echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> El usuario o el codigo de cliente de la fila " . $dat['Fila'] . " no existe, los datos no fueron cargados</p>";
				} else {
					echo "<p style='color:red; '><i class='fas fa-exclamation-circle'></i> Plantilla seleccionada no coincide con el tipo de dato a cargar...</p>";
				}
			}
		}
	}

	public function Informe_marcaciones()
	{
		if ($this->input->is_ajax_request()) {

			$Pais = $this->input->post('txt_pais_informe');
			$Distribuidora = $this->input->post('txt_distribuidora_informe');
			$Fecha_inicio = $this->input->post('txt_fecha_inicio');
			$Fecha_fin = $this->input->post('txt_fecha_fin');

			$Data = array(
				'Pais' => $Pais, 
				'Distribuidora' => $Distribuidora, 
				'Fecha_inicio' => $Fecha_inicio, 
				'Fecha_fin' => $Fecha_fin);

			echo json_encode($this->Itinerario_impulsadoras_model->Informe_marcaciones($Data));
		}
	}
}
