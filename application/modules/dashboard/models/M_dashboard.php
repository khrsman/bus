<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_dashboard extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_barang', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_barang pk,id_barang,nama');
        $query = $this->db->get('barang');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('barang',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_barang',$id);
        $query = $this->db->update('barang',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_barang',$id);
        $query = $this->db->delete('barang');
    }


}
