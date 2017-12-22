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
    function view_schedule(){
      // print_r($this->input->post());
      // die;
      $data['bulan'] = $this->input->post('bulan');
      $data['tahun'] = $this->input->post('tahun');
      $this->load->view('v_schedule_table',$data);
    }

    function detail(){
        $id = $this->input->get('id');
        $data = $this->M_booking->get_detail($id);
        $data_unit = $this->M_booking->get_detail_unit($id);
        $data['unit'] = $data_unit;

           echo json_encode($data);
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
        $data_harga = $data['harga_perunit'];
        $id_booking = $data['id_booking'];

      $data_perunit = array();
      $i =0;
      #data untuk tabel detail harga perunit
        foreach ($data_harga as $key => $value) {
          $data_perunit[$i]['unit'] = $key;
          $data_perunit[$i]['harga'] = $value;
          $data_perunit[$i]['id_booking'] = $id_booking;
          $i++;
        }
        unset($data['harga_perunit']);

        $insert = $this->M_booking->insert($data,$data_perunit);
        // if (!$insert) {
        //     $msg = $this->db->_error_message();
        //     $num = $this->db->_error_number();
          // }
    }

    function get_unit_booking(){
      // print_r($this->input->post());
      $id = $this->input->post('id');
      $unit = $this->db->query("select id_unit from booking where id_booking = $id")->result_array()[0];

      $unit_arr = explode(",", $unit['id_unit']);

      foreach ($unit_arr as $key => $value) {
        $id_unit = $this->db->query("select id_unit, seri from unit where seri = '$value'")->result_array()[0];
        $seri = $id_unit['seri'];
        $id_unit = $id_unit['id_unit'];
        echo "<label class='radio-inline'><input type='radio' name='id_unit' value='$id_unit'>$seri</label>";
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
