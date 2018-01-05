<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengeluaran extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_pengeluaran', $id);
        $this->db->limit(1);
      } else{
          $this->db->select('id_pengeluaran, DATE_FORMAT(tanggal, "%d/%m/%Y") tanggal, kat.nama nama_kategori_pengeluaran,keterangan,format(jumlah,0)');
          $this->db->join('kategori_pengeluaran kat','id_kategori_pengeluaran','left');
      }
      $this->db->order_by('id_pengeluaran','desc');
        $query = $this->db->get('pengeluaran');
        // echo $this->db->last_query();
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('pengeluaran',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_pengeluaran',$id);
        $query = $this->db->update('pengeluaran',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_pengeluaran',$id);
        $query = $this->db->delete('pengeluaran');
    }


}
