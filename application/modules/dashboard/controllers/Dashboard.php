<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_dashboard');
    }

    // view
    function index(){
    $data['page'] = 'v_dashboard';
    $this->load->view('v_main',$data);
    }


}
?>
