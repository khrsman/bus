<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_faktur_pembelian extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_faktur_pembelian', $id);
        $this->db->limit(1);
        $this->db->select('*');
      } else{
        $this->db->select('id_faktur_pembelian pk,id_faktur_pembelian,(select nama from supplier where id_supplier = faktur_pembelian.id_supplier) nama_supplier,
        DATE_FORMAT(tanggal, "%d/%m/%Y") tanggall')->order_by('id_faktur_pembelian','desc');
    }
        $query = $this->db->get('faktur_pembelian');
        // die($this->db->last_query());
        return $query->result_array();
    }
    


    public function insert($data){
        $query = $this->db->insert('faktur_pembelian',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_faktur_pembelian',$id);
        $query = $this->db->update('faktur_pembelian',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_faktur_pembelian',$id);
        $query = $this->db->delete('faktur_pembelian');
    }


}
