
<link href="<?php echo base_url() ?>css/jquery.multiselect.css" rel="stylesheet" type="text/css">


<style>
#modal_table tr>td {
  padding: 5px;
}
tr:hover{
  /*background-color: red;*/
  cursor: pointer;;
}
</style>
<div id="page_custom" value="booking">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>booking</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">booking</li>
            </ol>
        </section>
        <section class="content">
            <div class="row" style="display:none" id="form_tambah">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Tambah</h3>
                            <h3 class="box-title edit_page">Edit</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform">
                                <div class="form-group">
                                  <label class="col-sm-4 control-label">Kode booking</label>
                                  <div class="col-sm-8">
                                      <input readonly="" type = "text" name="id_booking" id="id_booking" class="form-control"
                                      value="<?php echo $kode_booking ?>" >
                                  </div>
                            </div>
                            <div class="form-group">
                                    <label class="col-sm-4 control-label">Marketing</label>
                                    <div class="col-sm-8">
                                      <?php
                                      $this->load->library('cb_options');
                                      $this->cb_options->marketing();
                                       ?>
                                    </div>
                              </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Dari tanggal</label>
                                  <div class="col-sm-4">
                                      <div class="input-group">
                                      <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                      </div>
                                      <input class="form-control datepicker" name="tanggal_dari" id="tanggal_dari" type="text">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="bootstrap-timepicker">
                                      <div class="form-group">
                                        <div class="input-group">
                                          <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                          </div>
                                          <input readonly=""  type="text" name="jam_dari" id="jam_dari" class="form-control timepicker">
                                        </div>
                                        <!-- /.input group -->
                                      </div>
                                      <!-- /.form group -->
                                    </div>
                                  </div>
                            </div>

                            <div class="form-group">
                                    <label class="col-sm-4 control-label">Sampai tanggal</label>
                                    <div class="col-sm-4">
                                        <div class="input-group">
                                        <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                        </div>
                                        <input class="form-control datepicker" name="tanggal_sampai" id="tanggal_sampai" type="text">
                                      </div>
                                    </div>
                                    <div class="col-sm-3">
                                      <div class="bootstrap-timepicker">
                                        <div class="form-group">
                                          <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-clock-o"></i>
                                            </div>
                                            <input readonly="" type="text" name="jam_sampai" id="jam_sampai" class="form-control timepicker">
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                              </div>
                              <div class="form-group">
                                      <label class="col-sm-4 control-label">Nama Penyewa</label>
                                      <div class="col-sm-8">
                                          <input type = "text" name="nama_penyewa" id="nama_penyewa" class="form-control input_validation"   >
                                      </div>
                                </div>
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">No Telepon</label>
                                        <div class="col-sm-8">
                                            <input type = "text" name="no_telepon" id="no_telepon" class="form-control input_validation"   >
                                        </div>
                                  </div>
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tujuan</label>
                                        <div class="col-sm-8">
                                            <input type = "text" name="tujuan" id="tujuan" class="form-control"  >
                                        </div>
                                  </div>
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Alamat Jemput</label>
                                        <div class="col-sm-8">
                                            <input type = "text" name="alamat_jemput" id="alamat_jemput" class="form-control"  >
                                        </div>
                                  </div>



                            </form>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Tambah</h3>
                            <h3 class="box-title edit_page">Edit</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform">

													<div class="form-group">
                                  <label class="col-sm-4 control-label">Bus</label>
                                  <div class="col-sm-8">
                                      <!-- <input value="0" type = "number" name="jumlah_bus" id="jumlah_bus" class="form-control hitung_total"
                                      onkeydown='return (event.which >= 48 && event.which <= 57) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39'
                                      > -->
                                      <select name="id_unit[]" multiple id="langOpt" class="input_validation">
                                        <?php
                                        // $this->db->select('id_unit,nama');
                                        $query = $this->db->get('unit')->result_array();
                                        foreach ($query as $key => $value) {
                                          $seri = $value['seri'];
                                          echo "<option value='{$seri}'>{$seri}</option>";
                                        }
                                        ?>
                                      </select>
                                  </div>
                            </div>
                            <div class="form-group">
                                    <label class="col-sm-4 control-label">Jumlah Bus</label>
                                    <div class="col-sm-8">
                                      <input value="0" type = "number" readonly name="jumlah_bus" id="jumlah_bus" class="form-control " >
                                    </div>
                              </div>

													<div class="form-group">
                                  <label class="col-sm-4 control-label">Harga</label>
                                  <div class="col-sm-8">
                                      <input  value="0" type = "number" name="harga" id="harga" class="form-control hitung_total"
                                      onkeydown='return (event.which >= 48 && event.which <= 57) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39'
                                      >
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Total</label>
                                  <div class="col-sm-8">
                                      <input  value="0" type = "number" name="total" id="total" class="form-control"
                                      onkeydown='return (event.which >= 48 && event.which <= 57) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39'>
                                  </div>
                            </div>
                            </form>
                        </div>
                        <div class="box-footer" style="//float:right">
                            <a class="btn btn-danger" id="cancel"><span class="fa fa-remove "></span> Cancel</a>
                            <a class="btn btn-primary add_page" id="simpan_custom"><span class="fa fa-check "></span> Hanya simpan</a>
                            <a class="btn btn-success add_page" id="bayar_custom"><span class="fa fa-check "></span> Lanjut ke pembayaran</a>
                            <a class="btn btn-primary edit_page" id="update"><span class="fa fa-check "></span> update</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <button class="btn btn-primary" id="tambah"><span class="fa fa-plus"></span> Tambah </button>
                        </div>
                        <div class="box-body">

                          * Klik data untuk melihat detail
                            <table id="dt" class="table table-striped table-hover dt-responsive" width="100%">
                                <thead>
                                       <th width="100px">Pembayaran</th>
                                       <th>Nama</th>
                                       <th>Telepon</th>
                                       <th>Alamat</th>
																			 <th>Tujuan</th>
																			 <th>Status bayar</th>
																			 <th id="aksi" width="150px">Aksi</th>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</section>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Detail Booking</h4>
      </div>
      <div class="modal-body" style="padding:20">

                      <table id="modal_table">
                        <tr>
                          <td>Nama</td>
                          <td>: </td>
                          <td><span id="modal_nama" >nama</span></td>
                        </tr>
                        <tr>
                          <td>Alamat Jemput</td>
                          <td>: </td>
                            <td><span id="modal_alamat_jemput" > - </span></td>
                        </tr>
                        <tr>
                          <td>Tujuan</td>
                          <td>: </td>
                          <td><span id="modal_tujuan" > - </span></td>
                        </tr>
                        <tr>
                          <td>Tanggal</td>
                          <td>: </td>
                          <td><span id="modal_dari" > - </span></td>
                        </tr>
                        <tr>
                          <td>Unit</td>
                          <td>: </td>
                          <td><span id="modal_unit" > - </span></td>
                        </tr>
                        <tr>
                          <td>Total Harga</td>
                          <td>: </td>
                        <td><span id="modal_total_harga" > - </span></td>
                        </tr>
                        <tr>
                          <td>Status Bayar</td>
                          <td>: </td>
                          <td><span id="modal_status_bayar" > - </span></td>
                        </tr>
                        <tr>
                          <td>Sisa</td>
                          <td>: </td>
                          <td><span id="modal_sisa" > - </span></td>
                        </tr>
                        <tr>
                          <td>Kas Jalan</td>
                          <td>: </td>
                          <td><span id="modal_kas_jalan" > - </span></td>
                        </tr>
                        <tr>
                          <td>Total Bersih</td>
                          <td>: </td>
                          <td><span id="modal_total_bersih" > - </span></td>
                        </tr>
                      </table>


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<!-- /Modal -->

<script type="text/javascript" src="<?php echo base_url() ?>js/datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>js/datepicker/locales/bootstrap-datepicker.id.min.js"></script>
<link rel="stylesheet" href="<?php echo base_url() ?>js/datepicker/css/bootstrap-datepicker.css">
<!-- Bootstrap time Picker -->
<link rel="stylesheet" href="<?php echo base_url() ?>js/timepicker/bootstrap-timepicker.min.css">
<!-- bootstrap time picker -->
<script src="<?php echo base_url() ?>js/timepicker/bootstrap-timepicker.min.js"></script>
<script src="<?php echo base_url() ?>js/jquery.multiselect.js"></script>
<script>

$(document).on( "click", "tbody>tr",function(e){
  if($(e.target).hasClass('btn_delete') || $(e.target).hasClass('btn_edit') ){
        // e.preventDefault();
        return;
    }

    id =   $(this).find(".edit").val();
    $.get("<?php echo site_url() ?>/booking/detail?id="+id, function(data, status){
       //  console.log(data);
      var arr = JSON.parse(data);
      console.log(arr.nama_penyewa);
      $("#modal_nama").text(arr.nama_penyewa);
      $("#modal_alamat_jemput").text(arr.alamat_jemput);
      $("#modal_tujuan").text(arr.tujuan);
      $("#modal_dari").text(arr.tanggal_dari+" - "+ arr.tanggal_sampai);
      $("#modal_unit").text(arr.id_unit);
      $("#modal_total_harga").text(arr.total);
      $("#modal_status_bayar").text(arr.status_bayar);
       $("#modal_sisa").text(arr.sisa);
      $("#modal_kas_jalan").text(arr.kas_jalan);
      $("#modal_total_bersih").text(arr.total_bersih);

      // arr.tujuan;
      // arr.tanggal_dari;
      // arr.tanggal_sampai;
      // arr.dari;
      // arr.harga;
      // arr.total;
      // arr.marketing;
      // alert(arr.tujuan);
});
     $("#myModal").modal();
  });


function hitung_total(){
  var harga = $("#harga").val();
  var jumlah = $("#jumlah_bus").val();
  var total = parseInt(harga)*parseInt(jumlah);
 $("#total").val(total);
}
	 $(function(){

     $('#langOpt').multiselect({
         columns: 2,
         placeholder: 'Pilih Bus'
     });

       $('#langOpt').change(function(){
       var count = $('#langOpt option:selected').length;
       $("#jumlah_bus").val(count);
       hitung_total();
       })

     $( ".hitung_total" ).keyup(function() {
    hitung_total();
  });

			$('.datepicker').datepicker({
						format: 'yyyy-mm-dd',
						todayBtn: "linked",
						language: "id",
					 calendarWeeks: true,
						autoclose: true
			 });

       //Timepicker
       $('.timepicker').timepicker({
        //  defaultTime: '11:45 AM',
         showInputs: false,
         showMeridian: false,
       });


	 });
</script>



<script type="text/javascript">
$().ready(function(){
var page = $("#page_custom").attr("value");
var url_get = page+'/get';

loadDataTable_custom(url_get);

function loadDataTable_custom(url){
$('#dt').dataTable({
  "destroy": true,
  "bLengthChange": false,
  // "scrollX": true,
  "displayLength":10,
  "language": {
          "lengthMenu": "Tampilkan _MENU_ data per halaman ",
          "search": "Cari ",
          "zeroRecords": "Nothing found - sorry",
          "info": "Menampilkan halaman _PAGE_ dari _PAGES_ ",
          "infoEmpty": "Tidak ada data",
          "infoFiltered": "(filtered from _MAX_ total records)"
      },
  "ajax": {
    "url": url,
    "dataSrc": function ( json ) {
      // tambahkan button aksi
      var index_action = json[0].length;
      for ( var i=0, ien=json.length ; i<ien ; i++ ) {
        var id = json[i][0];
        // masukan aksi kedalam data json
        json[i][index_action] = '<button value="'+ id +'" class="btn btn-primary edit" ><i class="fa fa-pencil"></i> Edit</button> '+
        '<button value="'+json[i][0]+'" class="btn btn-danger hapus_custom"><i class="fa  fa-trash"></i> Hapus</button>';
        json[i][0] = '<a href ="pembayaran/by_id_booking?id_booking='+ id +'" class="btn btn-success" ><i class="fa fa-pencil"></i> Bayar </a> <a style="margin-top:10px" href ="pembayaran/invoice?id_booking='+ id +'" class="btn btn-success" ><i class="fa fa-pencil"></i> Cetak Invoice </a> ';
        // json[i].splice(0,1); // hapus kolom index
      }
        // console.log(json);
      return json;

    }
  },
  "fnInitComplete": function() {
    // aksi setelah berhasil inisiasi data table
    $("#aksi").css("width", "10%");
  }
});
}



$('#simpan_custom').click(function(){
  // kirim data form berdasarkan nama(property name) inputannya
  var redirect = "<?php echo site_url() ?>/booking";
  var valid = true;
  $('.input_validation').each(function() {
    if(!this.value){
      valid = false;
      var lbl = $(this).parent().prev("label").text();
      $.notify({
        title: "Error :",
        message: lbl+" harus diisi!",
        icon: 'fa fa-check'
      },{
        type: "danger"
      });
    $(this).addClass("focus");
 }
});
if(valid){
  simpan(redirect,url_get);
}


  // location.reload();
});
$('#bayar_custom').click(function(){
  // kirim data form berdasarkan nama(property name) inputannya
  var data = $('form').serialize();
  var id_booking = $("#id_booking").val();
  var redirect = "<?php echo site_url() ?>/pembayaran/by_id_booking?id_booking="+id_booking;
  simpan(redirect);
});


$('body').on('click', '.hapus_custom', function() {
  var id = $(this).val();
  var url_hapus = page+'/delete';
  $.ajax({
      type: "GET",
      url: url_hapus,
      data: {id: id},
      success: function (resdata) {
        $.notify({
          title: "Berhasil : ",
          message: "Data berhasil dihapus",
          icon: 'fa fa-check'
        },{
          type: "success"
        });
        loadDataTable_custom(url_get);
        //  location.reload();
      },
      error: function (jqXHR, exception) {
        // pesan error menggunakan notify.js
        $.notify({
          title: "Error :",
          message: "Telah terjadi kesalahan!",
          icon: 'fa fa-check'
        },{
          type: "danger"
        });
      }
  });
  });



function simpan(redirect,url_get){

$.ajax({
    type: "POST",
    url: "<?php echo site_url() ?>/booking/add",
    data: {data: $('form').serialize()},
    success: function (resdata) {
      $.notify({
        title: "Berhasil : ",
        message: "Data telah ditambahkan",
        icon: 'fa fa-check'
      },{
        type: "success"
      });
        $(".xform")[0].reset();
        if(url_get){
          loadDataTable_custom(url_get);
            $('#form_tambah').toggle( "slide", 'slow', function(){$('#tabel').toggle( "slide");});
        } else{
          window.location.href = redirect;
        }
    },
    error: function (jqXHR, exception) {
      // pesan error menggunakan notify.js
      $.notify({
        title: "Error :",
        message: "Telah terjadi kesalahan!",
        icon: 'fa fa-check'
      },{
        type: "danger"
      });
    }
});
}
});


</script>
