<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Laporan extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_laporan');
    }

    // view
    function index(){
    $data['page'] = 'v_proses';
    $this->load->view('v_main',$data);
    }

    function pengeluaran(){
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
    $data['data'] = $this->M_laporan->get_laporan_pengeluaran($tanggal_dari,$tanggal_sampai,$kategori);


    $this->load->view('v_main',$data);
    }

    function pendapatan(){
    $data['page'] = 'v_lap_pendapatan';
    $tanggal_dari = $this->input->post('tanggal_dari');

    $tanggal_dari = DateTime::createFromFormat('d/m/Y',  $tanggal_dari)->format('Y-m-d');
    $tanggal_sampai = $this->input->post('tanggal_sampai');
    $tanggal_sampai = DateTime::createFromFormat('d/m/Y', $tanggal_sampai)->format('Y-m-d');

    $unit = '';
    if($this->input->post('id_unit')){
    foreach ($this->input->post('id_unit')  as $key => $value) {
      $unit .= $value.",";
    }
  }
    $unit = rtrim($unit,',');
    $data['data'] = $this->M_laporan->get_laporan_pendapatan($unit);

// die($this->db->last_query());

    $this->load->view('v_main',$data);
    }

    function rekap_pengeluaran(){
    $data['page'] = 'v_lap_rekap_pengeluaran';
    $tanggal_dari = $this->input->post('tanggal_dari');

    $tanggal_dari = DateTime::createFromFormat('d/m/Y',  $tanggal_dari)->format('Y-m-d');
    $tanggal_sampai = $this->input->post('tanggal_sampai');
    $tanggal_sampai = DateTime::createFromFormat('d/m/Y', $tanggal_sampai)->format('Y-m-d');

    $data['data_rekap'] = $this->M_laporan->get_laporan_rekap_pengeluaran($tanggal_dari,$tanggal_sampai);
    $this->load->view('v_main',$data);
    }

    function rekap_pendapatan(){
    $data['page'] = 'v_lap_rekap_pendapatan';
    $tanggal_dari = $this->input->post('tanggal_dari');
    $tanggal_dari = DateTime::createFromFormat('d/m/Y',  $tanggal_dari)->format('Y-m-d');
    $tanggal_sampai = $this->input->post('tanggal_sampai');
    $tanggal_sampai = DateTime::createFromFormat('d/m/Y', $tanggal_sampai)->format('Y-m-d');

    $data['data'] = $this->M_laporan->get_laporan_pendapatan($unit);
    $this->load->view('v_main',$data);
    }

    function rekap_total(){
    $data['page'] = 'v_lap_rekap_total';
    $tanggal_dari = $this->input->post('tanggal_dari');
    $tanggal_dari = DateTime::createFromFormat('d/m/Y',  $tanggal_dari)->format('Y-m-d');
    $tanggal_sampai = $this->input->post('tanggal_sampai');
    $tanggal_sampai = DateTime::createFromFormat('d/m/Y', $tanggal_sampai)->format('Y-m-d');

    $query = $this->db->query('select * from unit')->result_array();
    foreach ($query as $key => $value) {
      $seri = $value['seri'];
      $query = $this->db->query('SELECT sum(total) total from booking where (tanggal_dari >= "'.$tanggal_dari.'" and tanggal_dari <= "'.$tanggal_sampai.'") and id_unit like "%'.$seri.'%"' )->result_array();
      $pendapatan_bis[$seri] = $query[0]['total'];
                        // $total = $total + $pendapatan_bis

    }
    // echo '<pre>';
    // print_r($pendapatan_bis);
    // // $pendapatan[$seri][]
    // die;
    $data['data_rekap_pemasukan'] = $pendapatan_bis;
    $data['data_rekap_pengeluaran'] = $this->M_laporan->get_laporan_rekap_pengeluaran($tanggal_dari,$tanggal_sampai);
    $this->load->view('v_main',$data);
    }

}
?>
