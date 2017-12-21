<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_laporan extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get_laporan_pengeluaran($tanggal_dari,$tanggal_sampai,$kategori){
        $query = $this->db->query('select (select nama from kategori_pengeluaran kat where kat.id_kategori_pengeluaran = lap.id_kategori_pengeluaran) kategori,
        keterangan, jumlah, tanggal  from pengeluaran lap
        where lap.id_kategori_pengeluaran in('.$kategori.')
        and tanggal BETWEEN "'.$tanggal_dari.'" and "'.$tanggal_sampai.'"');
        return $query->result_array();
    }
    public function get_laporan_rekap_pengeluaran($tanggal_dari,$tanggal_sampai){
        $query = $this->db->query('select (select nama from kategori_pengeluaran kat where kat.id_kategori_pengeluaran = lap.id_kategori_pengeluaran) kategori,
        sum(jumlah) jumlah from pengeluaran lap
        where tanggal BETWEEN "'.$tanggal_dari.'" and "'.$tanggal_sampai.'"
        group by id_kategori_pengeluaran');
        return $query->result_array();
    }
    public function get_laporan_pendapatan($unit){
        $query = $this->db->query('select * from unit where id_unit in('.$unit.')');
        return $query->result_array();
    }
    public function get_laporan_rekap_pendapatan($tanggal_dari,$tanggal_sampai){
        $query = $this->db->query("select seri, format(ifnull((select sum(harga) from booking where id_unit like concat('%',unit.seri,'%' )),0),0) jumlah
from unit group by id_unit");
        return $query->result_array();
        // where tanggal_dari BETWEEN "'.$tanggal_dari.'" and "'.$tanggal_sampai.'"
    }
    public function get_laporan_pemakaian_sparepart($tanggal_dari,$tanggal_sampai,$unit,$sparepart){
      $where = '';
      if($unit || $sparepart)
      $where .= " where ";
      if($unit)
        $where .= "id_unit in($unit)";
      if ($sparepart){
        if($unit){
          $where .= " and id_sparepart in($sparepart)";
        } else{
          $where .= " id_sparepart in($sparepart)";
        }
      }


        $query = $this->db->query("select tanggal,
        (select seri from unit where id_unit = pemakaian_sparepart.id_unit) unit,
        (select nama from sparepart where id_sparepart = pemakaian_sparepart.id_sparepart) nama_sparepart,
        jumlah
        from pemakaian_sparepart $where");
        // echo $this->db->last_query();
        // die;
        return $query->result_array();
    }

}
