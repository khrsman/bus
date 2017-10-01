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
        keterangan, format(jumlah,0) jumlah, tanggal  from pengeluaran lap
        where lap.id_kategori_pengeluaran in('.$kategori.')
        and tanggal BETWEEN "'.$tanggal_dari.'" and "'.$tanggal_sampai.'"');
        return $query->result_array();
    }
    public function get_laporan_rekap($tanggal_dari,$tanggal_sampai){
        $query = $this->db->query('select (select nama from kategori_pengeluaran kat where kat.id_kategori_pengeluaran = lap.id_kategori_pengeluaran) kategori,
        format(sum(jumlah),0) jumlah from pengeluaran lap
        where tanggal BETWEEN "'.$tanggal_dari.'" and "'.$tanggal_sampai.'"
        group by id_kategori_pengeluaran');
        return $query->result_array();
    }
    public function get_laporan_pendapatan($unit){
        $query = $this->db->query('select * from unit where id_unit in('.$unit.')');
        return $query->result_array();
    }


}
