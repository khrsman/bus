<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pemakaian_sparepart extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_pemakaian_sparepart');
    }

    // view
    function index(){
    $data['page'] = 'v_pemakaian_sparepart';
    $this->load->view('v_main',$data);
    }

    // tambah data
    function add(){
          $data = array();
          parse_str($_POST['data'], $data);
          // print_r($data);
          // die;
          $id_sparepart = $data['id_sparepart'];
          $jumlah = $data['jumlah'];

                // jika fieldnya auto increment
          if (isset($data['id_pemakaian_sparepart'])) {
            $data['id_pemakaian_sparepart'] = NULL;
          };
          $insert = $this->M_pemakaian_sparepart->insert($data);
          if (!$insert) {
              $msg = $this->db->_error_message();
              $num = $this->db->_error_number();
            } else{
              $this->M_pemakaian_sparepart->update_stok($id_sparepart,$jumlah);
            }

    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
      $id = $data['id_pemakaian_sparepart'];
      $jumlah =  $data['jumlah'];

      // print_r($data);
      // die;

      $result = $this->db->query("select id_sparepart,jumlah from pemakaian_sparepart where id_pemakaian_sparepart = $id")->result_array();


      $id_sparepart = $result[0]['id_sparepart'];
      #ambil jumlah yang lama, kemudian bandingkan dengan jumlah yang baru

      $jumlah = $jumlah - $result[0]['jumlah'];
      $this->M_pemakaian_sparepart->update_stok($id_sparepart,$jumlah);

      $update = $this->M_pemakaian_sparepart->update_by_id($data,$id);
    }

    // fungsi hapus
    function delete(){
      // $id = $this->input->get('id');
      // $delete = $this->M_pemakaian_sparepart->delete_by_id($id);
      // $this->index();

      $id = $this->input->get('id');
      $result = $this->db->query("select id_sparepart,jumlah from pemakaian_sparepart where id_pemakaian_sparepart = $id")->result_array();

      $jumlah = -1 * $result[0]['jumlah'];
      $id_sparepart = $result[0]['id_sparepart'];

       $delete = $this->M_pemakaian_sparepart->delete_by_id($id);
      $this->M_pemakaian_sparepart->update_stok($id_sparepart,$jumlah);
    }

    // fungsi dataTable
    function get(){
      $data = $this->M_pemakaian_sparepart->get();
      $data_json = array();
      foreach ($data as $key => $value) {
        $data_json[] = array_values($value);
      }
      echo json_encode($data_json);
    }

    // fungsi menampilkan halaman edit
    function get_for_edit(){
      $id = $this->input->get('id');
      $data = $this->M_pemakaian_sparepart->get($id);
      echo json_encode($data);
    }



}
?>
