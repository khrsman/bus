<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pegawai extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_pegawai', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_pegawai,nama');
        $query = $this->db->get('pegawai');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('pegawai',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_pegawai',$id);
        $query = $this->db->update('pegawai',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_pegawai',$id);
        $query = $this->db->delete('pegawai');
    }


}
