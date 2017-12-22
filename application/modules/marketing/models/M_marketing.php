<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_marketing extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_marketing', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_marketing pk,id_marketing,keterangan,  CONCAT("<div style=background-color:",warna,"> ",warna," </div>" ) warna');
        $query = $this->db->get('marketing');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('marketing',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_marketing',$id);
        $query = $this->db->update('marketing',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_marketing',$id);
        $query = $this->db->delete('marketing');
    }


}
