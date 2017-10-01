<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_unit extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_unit', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_unit,seri,no_polisi,stnk,kir');
        $query = $this->db->get('unit');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('unit',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_unit',$id);
        $query = $this->db->update('unit',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_unit',$id);
        $query = $this->db->delete('unit');
    }


}
