<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pembayaran extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_pembayaran');
    }

    // view
    function index(){
    $data['page'] = 'v_pembayaran';
    $data['kode_bayar'] = $this->M_pembayaran->get_kode_bayar();
    $this->load->view('v_main',$data);
    }

    function invoice(){
    $data['page'] = 'v_invoice';
    $id_booking = $this->input->get('id_booking');
    $data['inv'] = $this->M_pembayaran->get_invoice($id_booking);
    $this->load->view('v_main',$data);
    }
    function kwitansi(){
    $data['page'] = 'v_kwitansi';
    $id_pembayaran = $this->input->get('id_pembayaran');
    $data['inv'] = $this->M_pembayaran->get_kwitansi($id_pembayaran);
    $this->load->view('v_main',$data);
    }

    function by_id_booking(){
    $data['page'] = 'v_pembayaran_by_id_booking';
    $data['kode_bayar'] = $this->M_pembayaran->get_kode_bayar();
    $kode_booking = $this->input->get('id_booking');
    $data['data_booking'] = $this->M_pembayaran->get_detail_booking($kode_booking);
    $this->load->view('v_main',$data);
    }

    // tambah data
    function add(){
        $data = array();
        parse_str($_POST['data'], $data);
        // jika fieldnya auto increment
        // if (isset($data['id_pembayaran'])) {
        //   $data['id_pembayaran'] = NULL;
        // };
        $data['tanggal'] =
        $show_date = DateTime::createFromFormat('d/m/Y',   $data['tanggal'])->format('Y-m-d');

        $insert = $this->M_pembayaran->insert($data);
        if (!$insert) {
            $msg = $this->db->_error_message();
            $num = $this->db->_error_number();
          }
    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
      $id = $data['id_pembayaran'];
      $update = $this->M_pembayaran->update_by_id($data,$id);
    }

    // fungsi hapus
    function delete(){
      $id = $this->input->get('id');
      $delete = $this->M_pembayaran->delete_by_id($id);
      $this->index();
    }

    // fungsi dataTable
    function get(){
      $data = $this->M_pembayaran->get();
      $data_json = array();
      foreach ($data as $key => $value) {
        $data_json[] = array_values($value);
      }
      echo json_encode($data_json);
    }

    // fungsi menampilkan halaman edit
    function get_for_edit(){
      $id = $this->input->get('id');
      $data = $this->M_pembayaran->get($id);
      echo json_encode($data);
    }

}
?>
