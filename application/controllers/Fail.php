<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fail extends CI_Controller {

	public function index()
	{
		$this->load->view('Fail/Index');
		$this->load->view('Layout/Footer');

	}

}
