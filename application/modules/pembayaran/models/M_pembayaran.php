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
        $this->db->select('id_pembayaran pk,(select concat(nama_penyewa," (",tujuan,")") from booking where id_booking = pembayaran.id_booking) nama,dari,format(jumlah,0),tanggal,status');
        $this->db->order_by('id_pembayaran','desc');
        $query = $this->db->get('pembayaran');
        return $query->result_array();
    }
    function get_detail_unit($id_booking){
      $this->db->select('unit, format(harga,0) harga')->where('id_booking', $id_booking);
      return $this->db->get('booking_harga_unit')->result_array();
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
        $this->db->select("*,
        (select max(tanggal) from detail_booking det where det.id_booking = bk.id_booking) tanggal_sampai,
        (select min(tanggal) from detail_booking det where det.id_booking = bk.id_booking) tanggal_dari,
        (select count(id_unit) from detail_booking_unit det where det.id_booking = bk.id_booking) jumlah_bus");
        $this->db->where('id_booking', $kode_booking);
        $this->db->limit(1);
        $query = $this->db->get('booking bk');
        return $query->result_array();
    }
    public function get_sisa_bayar($kode_booking){
        $this->db->where('id_booking', $kode_booking);
        $this->db->select('ifnull(sum(jumlah),0) jumlah');
        $query = $this->db->get('pembayaran');
        return $query->result_array()[0];
    }
    public function get_kwitansi($id_pembayaran){
        $this->db->select('id_pembayaran, id_booking, byr.dari, byr.untuk, bk.tujuan, byr.tanggal tanggal_bayar,
                DATE_FORMAT((select min(tanggal) from detail_booking det where det.id_booking = bk.id_booking), "%d/%m/%Y") tanggal_dari,
                DATE_FORMAT((select max(tanggal) from detail_booking det where det.id_booking = bk.id_booking), "%d/%m/%Y") tanggal_sampai,
                (select count(id_unit) from detail_booking_unit det where det.id_booking = bk.id_booking) jumlah_bus,                
                FORMAT(bk.total,0) total,
                FORMAT(byr.sisa,0) sisa_bayar, 
                FORMAT(byr.jumlah,0) jumlah_bayar');
        $this->db->where('id_pembayaran',$id_pembayaran);
        $this->db->join('booking bk','id_booking');
       
        $query = $this->db->get('pembayaran byr');
      //   echo $this->db->last_query();
      //  die;
        return $query->result_array()[0];
    }

    function get_harga_unit($id_booking){
      $this->db->select('count(*) jumlah, format(harga,0) harga')->where('id_booking', $id_booking)->group_by('harga');
      return $this->db->get('detail_booking_unit')->result_array();
    }

    public function get_invoice($id_booking){
        $this->db->select('id_booking, bk.tujuan,
        DATE_FORMAT((select min(tanggal) from detail_booking det where det.id_booking = bk.id_booking), "%d/%m/%Y") tanggal_dari,
        DATE_FORMAT((select max(tanggal) from detail_booking det where det.id_booking = bk.id_booking), "%d/%m/%Y") tanggal_sampai,
        (select count(id_unit) from detail_booking_unit det where det.id_booking = bk.id_booking) jumlah_bus,
       FORMAT(bk.total,0) total');
        $this->db->where('id_booking',$id_booking);
        $query = $this->db->get('booking bk');
        // echo $this->db->last_query();
        // die;
        return $query->result_array()[0];
    }


}
