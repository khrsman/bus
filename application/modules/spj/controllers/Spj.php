<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Spj extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_spj');
    }

    // view
    function index(){
    $data['page'] = 'v_spj';
    $this->load->view('v_main',$data);
    }

    function cetak(){
    $data['page'] = 'v_spj_cetak';
    $id = $this->input->get('id');
    $data['spj'] = $this->M_spj->get_detail_spj($id);
    $this->load->view('v_main',$data);

    }

    // tambah data
    function add(){
        $data = array();
        parse_str($_POST['data'], $data);
        // jika fieldnya auto increment
        if (isset($data['id_spj'])) {
          $data['id_spj'] = NULL;
        };
        $insert = $this->M_spj->insert($data);
        if (!$insert) {
            $msg = $this->db->_error_message();
            $num = $this->db->_error_number();
          }
    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
      $id = $data['id_spj'];
      $update = $this->M_spj->update_by_id($data,$id);
    }

    // fungsi hapus
    function delete(){
      $id = $this->input->get('id');
      $delete = $this->M_spj->delete_by_id($id);
      $this->index();
    }

    // fungsi dataTable
    function get(){
      $data = $this->M_spj->get();
      $data_json = array();
      foreach ($data as $key => $value) {
        $data_json[] = array_values($value);
      }
      echo json_encode($data_json);
    }

    // fungsi menampilkan halaman edit
    function get_for_edit(){
      $id = $this->input->get('id');
      $data = $this->M_spj->get_data_edit($id);
      echo json_encode($data);
    }

}
?>
