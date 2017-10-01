<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lap_pengeluaran extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_lap_pengeluaran');
    }

    // view
    function index(){
    $data['page'] = 'v_proses';
    $this->load->view('v_main',$data);
    }

    function proses(){
    $data['page'] = 'v_lap_pengeluaran';
    $tanggal_dari = $this->input->post('tanggal_dari');

    $tanggal_dari = DateTime::createFromFormat('d/m/Y',  $tanggal_dari)->format('Y-m-d');
    $tanggal_sampai = $this->input->post('tanggal_sampai');
    $tanggal_sampai = DateTime::createFromFormat('d/m/Y', $tanggal_sampai)->format('Y-m-d');


    $kategori = '';
    if($this->input->post('id_kategori_pengeluaran')){
    foreach ($this->input->post('id_kategori_pengeluaran')  as $key => $value) {
      $kategori .= $value.",";
    }
  }
    $kategori = rtrim($kategori,',');
    $data['data'] = $this->M_lap_pengeluaran->get_laporan($tanggal_dari,$tanggal_sampai,$kategori);
    $data['data_rekap'] = $this->M_lap_pengeluaran->get_laporan_rekap($tanggal_dari,$tanggal_sampai,$kategori);


    $this->load->view('v_main',$data);
    }


}
?>
