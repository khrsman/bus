<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Booking extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_booking');
    }

    // view
    function schedule(){
      $data['page'] = 'v_schedule';
      $this->load->view('v_main',$data);
    }

    function index(){
    $data['page'] = 'v_booking';
    $kode_booking = $this->M_booking->get_kode_booking();
    if (is_null($kode_booking)){
      $data['kode_booking'] = 1;
    } else{
      $data['kode_booking'] = $kode_booking;
    }

    $this->load->view('v_main',$data);
    }

    // tambah data
    function add(){
        $data = array();
        parse_str($_POST['data'], $data);
        $unit = '';
        foreach ($data['id_unit'] as $key => $value) {
          $unit .= $value.",";
        }
        $data['id_unit'] = rtrim($unit,',');    


        $insert = $this->M_booking->insert($data);
        if (!$insert) {
            $msg = $this->db->_error_message();
            $num = $this->db->_error_number();
          }
    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
      $id = $data['id_booking'];
      $update = $this->M_booking->update_by_id($data,$id);
    }

    // fungsi hapus
    function delete(){
      $id = $this->input->get('id');
      $delete = $this->M_booking->delete_by_id($id);
      $this->index();
    }

    // fungsi dataTable
    function get(){
      $data = $this->M_booking->get();
      $data_json = array();
      foreach ($data as $key => $value) {
        $data_json[] = array_values($value);
      }
      echo json_encode($data_json);
    }

    // fungsi menampilkan halaman edit
    function get_for_edit(){
      $id = $this->input->get('id');
      $data = $this->M_booking->get($id);
      echo json_encode($data);
    }

}
?>