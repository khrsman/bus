<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_supplier extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_supplier', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_supplier,nama');
        $query = $this->db->get('supplier');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('supplier',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_supplier',$id);
        $query = $this->db->update('supplier',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_supplier',$id);
        $query = $this->db->delete('supplier');
    }


}
