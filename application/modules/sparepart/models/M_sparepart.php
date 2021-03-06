<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_sparepart extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_sparepart', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_sparepart, nama, stok');
        $query = $this->db->get('sparepart');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('sparepart',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_sparepart',$id);
        $query = $this->db->update('sparepart',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_sparepart',$id);
        $query = $this->db->delete('sparepart');
    }


}
