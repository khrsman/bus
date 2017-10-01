<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Detail_pembelian extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_detail_pembelian');
    }

    // view
    function index(){
    $data['page'] = 'v_detail_pembelian';
    $no_faktur = $this->input->get('no_faktur');
    $data['detail'] = $this->M_detail_pembelian->get_detail($no_faktur);
    $this->load->view('v_main',$data);
    }

    // tambah data
    function add(){
        $data = array();
        parse_str($_POST['data'], $data);
        // jika fieldnya auto increment
        if (isset($data['id_pembelian_sparepart'])) {
          $data['id_pembelian_sparepart'] = NULL;
        };
        $insert = $this->M_detail_pembelian->insert($data);
        if (!$insert) {
            $msg = $this->db->_error_message();
            $num = $this->db->_error_number();
          }
    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
      $id = $data['id_pembelian_sparepart'];
      $update = $this->M_detail_pembelian->update_by_id($data,$id);
    }

    // fungsi hapus
    function delete(){
      $id = $this->input->get('id');
      $delete = $this->M_detail_pembelian->delete_by_id($id);
      $this->index();
    }

    // fungsi dataTable
    function get(){
      $no_faktur = $this->input->get('no_faktur');

      $data = $this->M_detail_pembelian->get_barang($no_faktur);
      $data_json = array();
      foreach ($data as $key => $value) {
        $data_json[] = array_values($value);
      }
      echo json_encode($data_json);
    }

    // fungsi menampilkan halaman edit
    function get_for_edit(){
      $id = $this->input->get('id');
      $data = $this->M_detail_pembelian->get($id);
      echo json_encode($data);
    }

}
?>
