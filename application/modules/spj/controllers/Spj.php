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
        print_r($data);
        die;

        // jika fieldnya auto increment
        if (isset($data['id_spj'])) {
          $data['id_spj'] = NULL;
        };
         $data['tanggal_spj'] = DateTime::createFromFormat('d/m/Y',   $data['tanggal_spj'])->format('Y-m-d');
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

    function kode_booking_spj()
    {
      $tanggal = $this->input->get('tanggal');
      $header = '<select class="form-control" name="id_booking" id="id_booking"><option value="" selected="" disabled>--- PILIH ---</option>';
      $select_item = '';
      $footer = '</select>';

      $tanggal = ($tanggal !== '') ? $tanggal :  date('d/m/Y') ;
      $tanggal = DateTime::createFromFormat('d/m/Y',   $tanggal)->format('Y-m-d');
      $data = $this->db->select('distinct(id_booking), nama_penyewa, tujuan')->join('detail_booking','id_booking')->where('tanggal', $tanggal)->get('booking')->result_array();

      foreach ($data as $key => $value) {
        $select_item .= '<option value="'.$value['id_booking'].'">'.$value['id_booking'].' ('.$value['nama_penyewa'].' - '.$value['tujuan'].')</option>'  ;
      }

      if ($select_item == ''){
        $select_item .= '<option>Tidak ada data Booking pada tanggal ini</option>'  ;
        // echo ' <span style="font-size:12px; color:red"> Tidak ada data Booking pada tanggal ini </span>';
        // die;
      };

      $footer = '</select>';
      $cb_unit = $header.$select_item.$footer;
      echo $cb_unit;
    }

}
?>
