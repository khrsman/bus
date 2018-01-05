<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_booking extends CI_Model
{

    public function __construct()
    {
        parent::__construct();

    }

    public function get($id = null)
    {

        if ($id) {
            $this->db->where('id_booking', $id);
            $this->db->limit(1);
        } else {
            $this->db->select('id_booking pk,
            DATE_FORMAT((select min(tanggal) from detail_booking where id_booking = booking.id_booking), "%d/%m/%Y") tanggal,
            nama_penyewa, no_telepon,alamat_jemput, tujuan, "-" status,
            ');
        }

//  GROUP_CONCAT(status) status_bayar
// ');
         $this->db->order_by('(select min(tanggal) from detail_booking where id_booking = booking.id_booking)','desc');
        // $this->db->join('pembayaran','id_booking',"left");
        $query = $this->db->get('booking');

        return $query->result_array();
    }

    public function get_detail($id = null)
    {

        $this->db->where('id_booking', $id);
        $this->db->limit(1);

        $this->db->select('id_booking pk,nama_penyewa, no_telepon,alamat_jemput, tujuan,
format(total,0) total,
GROUP_CONCAT(status) status_bayar, format(min(sisa),0) sisa,
(select format(sum(biaya_total),0) from spj where id_booking = booking.id_booking) kas_jalan_total,
format(total - (select sum(biaya_total) from spj where id_booking = booking.id_booking),0) total_bersih
');
        $this->db->group_by('id_booking,tujuan,total');
        $this->db->join('pembayaran', 'id_booking', "left");
        $query = $this->db->get('booking');

        return $query->result_array()[0];
    }

    public function get_detail_unit($id_booking)
    {
        $this->db->select('dtl.id_unit, seri, format(biaya_total,0) kas_jalan, format(harga,0) harga');
        $this->db->join('unit','id_unit');
        $this->db->join('spj','spj.id_booking = dtl.id_booking and spj.id_unit = dtl.id_unit', 'left');
        $this->db->where('dtl.id_booking', $id_booking);
        return $this->db->get('detail_booking_unit dtl')->result_array();


     


    }

    public function get_detail_kas_jalan($id_booking)
    {
        $this->db->select('id_unit unit_spj, biaya_total harga_spj')->where('id_booking', $id_booking);
        return $this->db->get('spj')->result_array();
    }

    public function insert($data, $data_perunit, $detail_booking)
    {

        $this->db->trans_start();
        $query = $this->db->insert('booking', $data);
        $query2 = $this->db->insert_batch('detail_booking_unit', $data_perunit);
        $query3 = $this->db->insert_batch('detail_booking', $detail_booking);
        $this->db->trans_complete();

        if ($this->db->trans_status() === false) {
            // die;  // generate an error... or use the log_message() function to log your error
        }
        return $query;
    }
    public function get_detail_tanggal($id)
    {
        $this->db->where('id_booking', $id);
        $this->db->group_by('tanggal');
        $query = $this->db->get('detail_booking');
        return $query->result_array();
    }


    public function get_detail_booking_unit($id)
    {
        $this->db->where('id_booking', $id)->join('unit', 'id_unit');
        $query = $this->db->get('detail_booking_unit');
        return $query->result_array();
    }

    public function update_by_id($id, $data, $data_perunit, $detail_booking)
    {

        $this->db->trans_start();
        $this->db->where('id_booking', $id);
        $query = $this->db->update('booking', $data);
        $this->db->where('id_booking', $id)->delete('detail_booking_unit');
        $query2 = $this->db->insert_batch('detail_booking_unit', $data_perunit);
        $this->db->where('id_booking', $id)->delete('detail_booking');
        $query3 = $this->db->insert_batch('detail_booking', $detail_booking);
        $this->db->trans_complete();

        if ($this->db->trans_status() === false) {
            // die;  // generate an error... or use the log_message() function to log your error
        }
        return $query;
    }

    public function delete_by_id($id)
    {
        $this->db->where('id_booking', $id);
        $query = $this->db->delete('booking');
    }

    public function get_kode_booking($id = null)
    {
        $this->db->select('max(id_booking)+1 kode_booking');
        $query = $this->db->get('booking');
        return $query->result_array()[0]['kode_booking'];
    }

}
