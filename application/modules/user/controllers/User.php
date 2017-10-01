<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {

    function __construct()
    {
        parent::__construct();

    }

    // view
    function index(){
    $this->load->view('v_login');
    }

    function login(){
      $this->load->view('v_login');
    }

}
?>
