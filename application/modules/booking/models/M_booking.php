<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_booking extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_booking', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_booking pk,id_booking, tujuan,
DATE_FORMAT(tanggal_dari, "%d/%m/%Y") tanggal_dari,
DATE_FORMAT(tanggal_sampai, "%d/%m/%Y") tanggal_sampai,
id_unit, format(total,0), GROUP_CONCAT(status) status_bayar, format(min(sisa),0) sisa,

');
$this->db->group_by('id_booking,tujuan,tanggal_dari,tanggal_sampai,id_unit,total');
$this->db->join('pembayaran','id_booking',"left");
        $query = $this->db->get('booking');

        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('booking',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_booking',$id);
        $query = $this->db->update('booking',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_booking',$id);
        $query = $this->db->delete('booking');
    }

    public function get_kode_booking($id = NULL){
          $this->db->select('max(id_booking)+1 kode_booking');
        $query = $this->db->get('booking');
        return $query->result_array()[0]['kode_booking'];
    }


}
