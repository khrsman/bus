<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pembayaran extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = NULL){

      if($id){
        $this->db->where('id_pembayaran', $id);
        $this->db->limit(1);
      }
        $this->db->select('id_pembayaran pk,id_booking,dari,jumlah,tanggal,status');
        $query = $this->db->get('pembayaran');
        return $query->result_array();
    }


    public function insert($data){
        $query = $this->db->insert('pembayaran',$data);
        return $query;
    }

    public function update_by_id($data, $id){
        $this->db->where('id_pembayaran',$id);
        $query = $this->db->update('pembayaran',$data);
    }

    public function delete_by_id($id){
        $this->db->where('id_pembayaran',$id);
        $query = $this->db->delete('pembayaran');
    }

    public function get_kode_bayar($id = NULL){

          $this->db->select('max(id_pembayaran)+1 kode_bayar');
        $query = $this->db->get('pembayaran');
        return $query->result_array()[0]['kode_bayar'];
    }

    public function get_detail_booking($kode_booking){
        $this->db->where('id_booking', $kode_booking);
        $this->db->limit(1);
        $query = $this->db->get('booking');
        return $query->result_array();
    }
    public function get_kwitansi($id_pembayaran){
        $this->db->select('id_pembayaran, byr.dari, byr.untuk, bk.tujuan, byr.tanggal tanggal_bayar,
                DATE_FORMAT(bk.tanggal_dari, "%d/%m/%Y") tanggal_dari,
                DATE_FORMAT(bk.tanggal_sampai, "%d/%m/%Y") tanggal_sampai,
                DATE_FORMAT(bk.jam_dari, "%H:%i") jam_dari,  DATE_FORMAT(bk.jam_sampai, "%H:%i") jam_sampai, bk.jumlah_bus,FORMAT(bk.harga,0) harga,FORMAT(bk.total,0) total,FORMAT(byr.sisa,0) sisa_bayar, FORMAT(byr.jumlah,0) jumlah_bayar');
        $this->db->where('id_pembayaran',$id_pembayaran);
        $this->db->join('booking bk','id_booking');
        $query = $this->db->get('pembayaran byr');
        return $query->result_array()[0];
    }

    public function get_invoice($id_booking){
        $this->db->select('id_booking, bk.tujuan,
                DATE_FORMAT(bk.tanggal_dari, "%d/%m/%Y") tanggal_dari,
                DATE_FORMAT(bk.tanggal_sampai, "%d/%m/%Y") tanggal_sampai,
                DATE_FORMAT(bk.jam_dari, "%H:%i") jam_dari,  DATE_FORMAT(bk.jam_sampai, "%H:%i") jam_sampai, bk.jumlah_bus,FORMAT(bk.harga,0) harga,FORMAT(bk.total,0) total');
        $this->db->where('id_booking',$id_booking);
        $query = $this->db->get('booking bk');
        return $query->result_array()[0];
    }


}
