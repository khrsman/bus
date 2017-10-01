
 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');

 class Cb_options {
   public function __construct()
       {
               // Assign the CodeIgniter super-object
               $this->CI =& get_instance();
       }


         public function status_pembayaran()
         {
           $cb_kelurahan = '<select class="form-control" name="status" id="status_pembayaran">
             <option selected="">--- PILIH ---</option>
             <option value="LUNAS">LUNAS</option>
             <option value="CICILAN">CICILAN</option>
             </select>'    ;

           echo $cb_kelurahan;
         }

         public function marketing()
         {
           $header = '<select class="form-control" name="id_marketing">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('marketing')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_marketing'].'">'.$value['id_marketing'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_unit = $header.$select_item.$footer;
           echo $cb_unit;
         }

         public function unit()
         {
           $header = '<select class="form-control" name="id_unit">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('unit')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_unit'].'">'.$value['seri'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_unit = $header.$select_item.$footer;
           echo $cb_unit;
         }

         public function sopir()
         {
           $header = '<select class="form-control" name="id_sopir">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('pegawai')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_pegawai'].'">'.$value['nama'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_sopir = $header.$select_item.$footer;
           echo $cb_sopir;
         }

         public function supplier()
         {
           $header = '<select class="form-control" name="id_supplier">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('supplier')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_supplier'].'">'.$value['nama'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_supplier = $header.$select_item.$footer;
           echo $cb_supplier;
         }

         public function sparepart()
         {
           $header = '<select class="form-control" name="id_sparepart">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('sparepart')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_sparepart'].'">'.$value['nama'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_sparepart = $header.$select_item.$footer;
           echo $cb_sparepart;
         }

         public function crew()
         {
           $header = '<select class="form-control" name="id_crew">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('pegawai')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_pegawai'].'">'.$value['nama'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_crew = $header.$select_item.$footer;
           echo $cb_crew;
         }

         public function kategori_pengeluaran()
         {
           $header = '<select class="form-control" name="id_kategori_pengeluaran">
             <option selected="">--- PILIH ---</option>';
           $select_item = '';
           $footer = '</select>';

           $data = $this->CI->db->get('kategori_pengeluaran')->result_array();
           foreach ($data as $key => $value) {
             $select_item .= '<option value="'.$value['id_kategori_pengeluaran'].'">'.$value['nama'].'</option>'  ;
           }
           $footer = '</select>';
           $cb_kategori_pengeluaran = $header.$select_item.$footer;
           echo $cb_kategori_pengeluaran;
         }

         public function tipe_user()
         {
           $header = '<select class="form-control" name="tipe_user">
             <option selected="">--- PILIH ---</option>';

             $select_item = '<option value="ADMIN"> ADMIN </option>
             <option value="KELURAHAN"> KELURAHAN </option>';
           $footer = '</select>';
           $cb_tipe_user = $header.$select_item.$footer;
           echo $cb_tipe_user;
         }


         public function bulan()
         {
           $bulan = '<select class="form-control" name="bulan">
             <option selected="">--- PILIH ---</option>
             <option value="1">1 - Januari</option>
             <option value="2">2 - Februari</option>
             <option value="3">3 - Maret</option>
             <option value="4">4 - April</option>
             <option value="5">5 - Mei</option>
             <option value="6">6 - Juni</option>
             <option value="7">7 - Juli</option>
             <option value="8">8 - Agustus</option>
             <option value="9">9 - September</option>
             <option value="10">10 - Oktober</option>
             <option value="11">11 - November</option>
             <option value="12">12 - Desember</option>
             </select>
             ';

           echo $bulan;
         }
 }
