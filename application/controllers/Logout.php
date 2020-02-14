<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller {

	function __construct(){
		parent::__construct();

		$this->load->helper(array('url'));
		$this->load->library(array('session'));
		
		
	
    }

    public function index(){

        $this->session->unset_userdata($Sesiones);
        $this->session->sess_destroy();


        header("location: ../index.php");

    }
}