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
        $data_tanggal = $this->M_booking->get_detail_tanggal($id);
        $tanggal = '';
        foreach ($data_tanggal as $key => $value) {
          $tanggal .= DateTime::createFromFormat('Y-m-d', $value['tanggal'])->format('d/m/Y').', ';           
        }
    

        // $data_kas_jalan = $this->M_booking->get_detail_kas_jalan($id);
// echo "<pre>";
//         print_r($data_unit);
//         print_r($data_kas_jalan);
//         die;
        $data['unit'] = $data_unit;       
        $data['tanggal'] = $tanggal;       

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
     
        $id_booking = $data['id_booking'];
        $detail_booking = array();  
        $data_perunit = array();
        
        #data untuk tabel booking_detail
        $tanggal_unit = $data['tanggal_unit'];      
        foreach ($tanggal_unit as $key => $value) {
          foreach ($value as $keyy => $valuee) {
            $detail_booking[$key]['id_booking'] = $id_booking;
            $detail_booking[$key]['tanggal'] =  DateTime::createFromFormat('d-m-Y', $keyy)->format('Y-m-d');       
            $detail_booking[$key]['id_unit'] = $valuee;          
          }
        }    

        $data_harga = $data['harga_perunit'];
          
      #data untuk tabel detail harga perunit
        foreach ($data_harga as $key => $value) {
          $data_perunit[$key]['id_unit'] = $key;
          $data_perunit[$key]['harga'] = $value;
          $data_perunit[$key]['id_booking'] = $id_booking;
      
        }
        #keluarkan data dari array data yang akan diinsert ke tabel booking
        unset($data['harga_perunit']);
        unset($data['tanggal_unit']);

        
        $insert = $this->M_booking->insert($data,$data_perunit,$detail_booking);
        
    }

    function get_unit_booking(){
    
      $id = $this->input->get('id');
    
      $header = '<select class="form-control input_validation" name="id_unit" id="id_unit">
      <option selected="">--- PILIH ---</option>';
    $select_item = '';
    $footer = '</select>';

    $this->db->join('unit','id_unit');
    $this->db->where('id_booking',$id);
    $data = $this->db->get('detail_booking_unit')->result_array();
    foreach ($data as $key => $value) {
      $select_item .= '<option value="'.$value['id_unit'].'">'.$value['seri'].'</option>'  ;
    }
    // echo $this->db->last_query();
    $footer = '</select>';
    $cb_unit = $header.$select_item.$footer;
    $this->db->select('DATE_FORMAT(min(tanggal), "%d/%m/%Y") tanggal_dari,
                      DATE_FORMAT(max(tanggal), "%d/%m/%Y") tanggal_sampai');
     $query =   $this->db->where('id_booking',$id)->get('detail_booking')->result_array()[0];
    $tanggal = $query['tanggal_dari']." - ". $query['tanggal_sampai']  ;
    echo json_encode(array('select' => $cb_unit, 'tanggal' => $tanggal));


    }

    // fungsi update
    function update(){
      $data = array();
      parse_str($_POST['data'], $data);
   
      $id_booking = $data['id_booking'];
      $detail_booking = array();  
      $data_perunit = array();
      
      #data untuk tabel booking_detail
      $tanggal_unit = $data['tanggal_unit'];      
      foreach ($tanggal_unit as $key => $value) {
        foreach ($value as $keyy => $valuee) {
          $detail_booking[$key]['id_booking'] = $id_booking;
          $detail_booking[$key]['tanggal'] =  DateTime::createFromFormat('d-m-Y', $keyy)->format('Y-m-d');       
          $detail_booking[$key]['id_unit'] = $valuee;          
        }
      }    

      $data_harga = $data['harga_perunit'];
        
    #data untuk tabel detail harga perunit
      foreach ($data_harga as $key => $value) {
        $data_perunit[$key]['id_unit'] = $key;
        $data_perunit[$key]['harga'] = $value;
        $data_perunit[$key]['id_booking'] = $id_booking;
    
      }
      #keluarkan data dari array data yang akan diinsert ke tabel booking
      unset($data['harga_perunit']);
      unset($data['tanggal_unit']);
      unset($data['id_booking']);

      
      $insert = $this->M_booking->update_by_id($id_booking,$data,$data_perunit,$detail_booking);

      
      // $update = $this->M_booking->update_by_id($data,$id);
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
      $data_detail = $this->M_booking->get_detail_tanggal($id);
      $data_unit = $this->M_booking->get_detail_booking_unit($id);
      
            $input = array();
            foreach ($data_detail as $key => $value) {
              $date_y =(int) DateTime::createFromFormat('Y-m-d', $value['tanggal'])->format('Y');
              $date_m =(int) DateTime::createFromFormat('Y-m-d', $value['tanggal'])->format('m');
              $date_d =(int) DateTime::createFromFormat('Y-m-d', $value['tanggal'])->format('d');
              $date =  $date_d."-".$date_m."-".$date_y;
               $input[$key]['select'] = $this->select_unit_for_edit($value['tanggal'],$date,$id);            
               $input[$key]['date'] = $date;
            }
      
            echo json_encode(array('data_booking' => $data, 'input' => $input, 'data_unit' => $data_unit ));
    }

    function select_unit(){
      $date = $this->input->get('date');
      $header = '<select multiple class="form-control tanggal_unit " name="tanggal_unit[]['.$date.']" id="tanggal_unit">';
      $select_item = '';
      $footer = '</select>';
      $data = $this->db->get('unit')->result_array();
      foreach ($data as $key => $value) {
        $select_item .= '<option value="'.$value['id_unit'].'" class="disabledunit">'.$value['seri'].'</option>'  ;
      }
      $footer = '</select>';
      $cb_content = $header.$select_item.$footer;
      echo $cb_content;
    }
  
    function select_unit_for_edit($date_normal,$date,$id){
          
      $query =  $this->db->query("select * from detail_booking where tanggal = '$date_normal' and id_booking = $id")->result_array();
  
      $selected_val = array();
      foreach ($query as $key => $value) {
       $selected_val[] = $value['id_unit']; 
      }
  
  
      $header = '<select multiple class="form-control tanggal_unit" name="tanggal_unit[]['.$date.']" id="tanggal_unit">';
      $select_item = '';
      $footer = '</select>';
      $data = $this->db->get('unit')->result_array();
      foreach ($data as $key => $value) {
        $selected = '';
        if (in_array($value['id_unit'], $selected_val)) {
          $selected = " selected ";
      }
        $select_item .= '<option value="'.$value['id_unit'].'" '.$selected.' class="disabledunit">'.$value['seri'].'</option>'  ;
      }
      $footer = '</select>';
      $cb_content = $header.$select_item.$footer;
      return $cb_content;
    }

}
?>
