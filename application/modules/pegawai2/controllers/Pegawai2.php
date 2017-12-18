<?php
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pegawai2 extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_pegawai2');
    }

    // view
    function index(){
    $data['page'] = 'v_pegawai2';
    $this->load->view('v_main',$data);
    }

    public function page()
  {
    //konfigurasi
    $per_page = 10; // jumlah data per halaman
    $from_page = $this->input->get('from') ?  $this->input->get('from'): 0; //data dimulai dari ...
    $where = ' ';
    // harus manual ---------------------------------------------------
    if($this->input->get("query")){
      $query = $this->input->get("query");
      $where = ' where nama like "%'.$query.'%" ';
    }
    $query = $this->db->query("SELECT * FROM pegawai ".$where." LIMIT ".$from_page.",".$per_page);
    // hitung jumlah data
    $total_rows = $this->db->query('select count(*) total from pegawai '.$where)->result_array()[0]['total'];
    // end harus manual ---------------------------------------------------

    $data_table = $query->result_array();
    $total_page = $total_rows/$per_page; //jumlah halaman

      $link = array();
      $from = 0;
      $count = 0;
      $awal_page = $from_page/$per_page >= 0 ? $from_page/$per_page : 1;
      $awal_page = ($awal_page - 5) > 0? $awal_page-5: 0;

      // looping untuk halaman
      for ($i=$awal_page; $i < $total_page; $i++) {
          if ($count >= 10 || $i >= $total_page) {
              break;
          }
          $from = $i * $per_page;
          $link[$i] = array("page" => $i+1, "from" => $from );
          $count++;
      }
      $first = array("page" => "<<", "from" => 0 );
      $last = array("page" => ">>", "from" => ($total_page-1) * $per_page );
      $next =   array("page" => ">", "from" => $from_page+$per_page );
      $prev =   array("page" => "<", "from" => $from_page-$per_page );

      if(($awal_page > 2)){
      $link = array( 0 => $first) + array( 1 => $prev) + $link;
      }
      $link = $link + array( "next" => $next) + array( "last" => $last);

      $data['value'] = $data_table;
      $data['page'] = $link;

// echo $this->db->last_query();
       echo json_encode($data, JSON_PRETTY_PRINT);
  }

  function get_for_edit(){
    $id = $this->input->get('id');
        $this->db->where('id_pegawai', $id);
        $this->db->limit(1);
        $data = $this->db->get('pegawai')->result_array();
    echo json_encode($data);
  }

  function update(){
    $data = array();
    parse_str($_POST['data'], $data);
    $id = $data['id_pegawai'];

    $this->db->where('id_pegawai',$id);
    $query = $this->db->update('pegawai',$data);

  }
  function delete(){
    $id = $this->input->get('id');
    $this->db->where('id_pegawai',$id);
    $query = $this->db->delete('pegawai');
  }




}
?>
