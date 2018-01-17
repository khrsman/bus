<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_spj extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function get($id = null)
    {

        if ($id) {
            $this->db->where('id_spj', $id);
            $this->db->limit(1);
        }
        $this->db->select('
        id_spj pk,id_spj,(select CONCAT_WS(" - ",nama_penyewa,tujuan) from booking where id_booking = spj.id_booking) Penyewa,
        DATE_FORMAT((select min(tanggal) from detail_booking det where det.id_booking = spj.id_booking), "%d/%m/%Y") tanggal,
        (select seri from unit where unit.id_unit = spj.id_unit) bus,
        (select nama from pegawai where pegawai.id_pegawai = spj.id_sopir) sopir,
        (select nama from pegawai where pegawai.id_pegawai = spj.id_crew) crew,
        format(biaya_total,0)
        ');
        $this->db->order_by('id_spj','desc');
        $query = $this->db->get('spj spj');
        return $query->result_array();
    }

    public function get_data_edit($id)
    {
        $this->db->where('id_spj', $id);
        $this->db->limit(1);
        $query = $this->db->get('spj');
        return $query->result_array();
    }

    public function get_detail_spj($id = null)
    {

        $this->db->where('id_spj', $id);
        $this->db->select('
        (select seri from unit where id_unit = spj.id_unit) unit,
        (select nama from pegawai where id_pegawai = spj.id_sopir) nama_sopir,
        (select nama from pegawai where id_pegawai = spj.id_crew) nama_crew,
        spj.km_awal,
        spj.km_akhir,
        bk.alamat_jemput,
        bk.tujuan,
        bk.nama_penyewa,
        bk.no_telepon,
        DATE_FORMAT(tanggal_spj,"%d %M %Y") tanggal_spj,
        DATE_FORMAT((select min(tanggal) from detail_booking det where det.id_booking = bk.id_booking and id_unit = spj.id_unit), "%d/%m/%Y") tanggal_dari,
        DATE_FORMAT((select max(tanggal) from detail_booking det where det.id_booking = bk.id_booking and id_unit = spj.id_unit), "%d/%m/%Y") tanggal_sampai,
        spj.jam_jemput,
        spj.tipe_bus,
        format(spj.biaya_sopir,0) biaya_sopir,
        format(spj.biaya_crew,0) biaya_crew,
        format(spj.biaya_solar,0) biaya_solar,
        format(spj.biaya_tol,0) biaya_tol,
        format(spj.biaya_parkir,0) biaya_parkir,
        format(spj.biaya_tips,0) biaya_tips,
        format(spj.biaya_penyebrangan,0) biaya_penyebrangan,
        format(spj.biaya_lain,0) biaya_lain,
        format(biaya_total,0) biaya_total
        '
        );
        $this->db->join('booking bk', 'id_booking');

        $query = $this->db->get('spj');

        // print_r($query->result_array()[0]);
        // die;
        return $query->result_array()[0];
    }

    public function insert($data)
    {
        $query = $this->db->insert('spj', $data);
        echo $this->db->last_query();
        // die;
        return $query;
    }

    public function update_by_id($data, $id)
    {
        $this->db->where('id_spj', $id);
        $query = $this->db->update('spj', $data);
    }

    public function delete_by_id($id)
    {
        $this->db->where('id_spj', $id);
        $query = $this->db->delete('spj');
    }

}
