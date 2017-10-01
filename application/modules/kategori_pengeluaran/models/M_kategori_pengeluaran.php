<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kategori_pengeluaran extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_kategori_pengeluaran', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_kategori_pengeluaran,nama');
        $query = $this->db->get('kategori_pengeluaran');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('kategori_pengeluaran',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_kategori_pengeluaran',$id);
        $query = $this->db->update('kategori_pengeluaran',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_kategori_pengeluaran',$id);
        $query = $this->db->delete('kategori_pengeluaran');
    }


}
