<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengeluaran extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_pengeluaran');
    }

    // view
    function index(){
    $data['page'] = 'v_pengeluaran';
    $this->load->view('v_main',$data);
    }


    // tambah data
    function add(){
        $data = array();
        parse_str($_POST['data'], $data);
        $data['tanggal'] =
        $show_date = DateTime::createFromFormat('d/m/Y',   $data['tanggal'])->format('Y-m-d');
        // jika fieldnya auto increment
        if (isset($data['id_pengeluaran'])) {
          $data['id_pengeluaran'] = NULL;
        };


        $insert = $this->M_pengeluaran->insert($data);
        if (!$insert) {
            $msg = $this->db->_error_message();
            $num = $this->db->_error_number();
          }
    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
      $data['tanggal'] =
      $show_date = DateTime::createFromFormat('d/m/Y',   $data['tanggal'])->format('Y-m-d');
      $id = $data['id_pengeluaran'];
      $update = $this->M_pengeluaran->update_by_id($data,$id);
    }

    // fungsi hapus
    function delete(){
      $id = $this->input->get('id');
      $delete = $this->M_pengeluaran->delete_by_id($id);
      $this->index();
    }

    // fungsi dataTable
    function get(){
      $data = $this->M_pengeluaran->get();
      $data_json = array();
      foreach ($data as $key => $value) {
        $data_json[] = array_values($value);
      }
      echo json_encode($data_json);
    }

    // fungsi menampilkan halaman edit
    function get_for_edit(){
      $id = $this->input->get('id');
      $data = $this->M_pengeluaran->get($id);
      echo json_encode($data);
    }

}
?>
