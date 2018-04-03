<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_customer extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_customer', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_customer,nama,no_telepon,alamat');
        $query = $this->db->get('customer');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('customer',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_customer',$id);
        $query = $this->db->update('customer',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_customer',$id);
        $query = $this->db->delete('customer');
    }


}
