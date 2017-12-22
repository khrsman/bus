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

    function ajax_terbilang(){
     $jumlah =   $this->input->post('jumlah');
      echo $this->Terbilang($jumlah);
    }


    function Terbilang($x)
    {
      $abil = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
      if ($x < 12)
        return " " . $abil[$x];
      elseif ($x < 20)
        return  $this->Terbilang($x - 10) . "belas";
      elseif ($x < 100)
        return  $this->Terbilang($x / 10) . " puluh" .  $this->Terbilang($x % 10);
      elseif ($x < 200)
        return " seratus" .  $this->Terbilang($x - 100);
      elseif ($x < 1000)
        return  $this->Terbilang($x / 100) . " ratus" .  $this->Terbilang($x % 100);
      elseif ($x < 2000)
        return " seribu" . $this->Terbilang($x - 1000);
      elseif ($x < 1000000)
        return $this->Terbilang($x / 1000) . " ribu" .  $this->Terbilang($x % 1000);
      elseif ($x < 1000000000)
        return $this-> Terbilang($x / 1000000) . " juta" .  $this->Terbilang($x % 1000000);
    }

    function invoice(){
    $data['page'] = 'v_invoice';
    $id_booking = $this->input->get('id_booking');
    $data['inv'] = $this->M_pembayaran->get_invoice($id_booking);
      $data['harga_unit'] =   $this->M_pembayaran->get_harga_unit($data['inv']['id_booking']);
    $this->load->view('v_main',$data);
    }
    function kwitansi(){
    $data['page'] = 'v_kwitansi';
    $id_pembayaran = $this->input->get('id_pembayaran');
    $data['inv'] = $this->M_pembayaran->get_kwitansi($id_pembayaran);
    $data['harga_unit'] =   $this->M_pembayaran->get_harga_unit($data['inv']['id_booking']);
    $data['terbilang'] = $this->terbilang(str_ireplace(",","",$data['inv']['jumlah_bayar']))." rupiah";

    $this->load->view('v_main',$data);
    }

    function by_id_booking(){
    $data['page'] = 'v_pembayaran_by_id_booking';
    $data['kode_bayar'] = $this->M_pembayaran->get_kode_bayar();
    $kode_booking = $this->input->get('id_booking');
    $data_booking = $this->M_pembayaran->get_detail_booking($kode_booking);
    $data['data_booking'] = $data_booking;
    $data['sisa_bayar'] = $data_booking[0]['total'] - $this->M_pembayaran->get_sisa_bayar($kode_booking)['jumlah'];
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
