<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_detail_pembelian extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_pembelian_sparepart', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_pembelian_sparepart,id_sparepart,jumlah,harga_satuan,total');
        $query = $this->db->get('detail_pembelian');
        return $query->result_array();
    }

    public function get_barang($no_faktur = NULL){

        $this->db->where('id_faktur_pembelian', $no_faktur);
        $this->db->select('id_pembelian_sparepart,(select nama from sparepart where id_sparepart = detail_pembelian.id_sparepart) nama_sparepart,jumlah,harga_satuan,total');
        $query = $this->db->get('detail_pembelian');
        return $query->result_array();
    }

    public function get_detail($no_faktur = NULL){

        $this->db->where('id_faktur_pembelian', $no_faktur);
        $this->db->select('id_faktur_pembelian,(select nama from supplier where id_supplier = faktur_pembelian.id_supplier) nama_supplier');
        $query = $this->db->get('faktur_pembelian');
        return $query->result_array()[0];
    }


    public function insert($data){
        $query = $this->db->insert('detail_pembelian',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_pembelian_sparepart',$id);
        $query = $this->db->update('detail_pembelian',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_pembelian_sparepart',$id);
        $query = $this->db->delete('detail_pembelian');
    }


}
