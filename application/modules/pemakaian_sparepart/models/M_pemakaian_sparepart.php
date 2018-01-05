<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pemakaian_sparepart extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_pemakaian_sparepart', $id);
        $this->db->limit(1);
      } else{
          $this->db->select('id_pemakaian_sparepart,(select nama from sparepart where id_sparepart = pemakaian_sparepart.id_sparepart) nama,jumlah, (select seri from unit where id_unit = pemakaian_sparepart.id_unit) Kendaraan, DATE_FORMAT(tanggal, "%d/%m/%Y") tanggal');
      }
        $query = $this->db->get('pemakaian_sparepart');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('pemakaian_sparepart',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_pemakaian_sparepart',$id);
        $query = $this->db->update('pemakaian_sparepart',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_pemakaian_sparepart',$id);
        $query = $this->db->delete('pemakaian_sparepart');
    }

    public function update_stok($id_sparepart, $jumlah){
      $this->db->query('update sparepart set  stok  = stok - '.$jumlah.' where id_sparepart = '.$id_sparepart );
    }


}
