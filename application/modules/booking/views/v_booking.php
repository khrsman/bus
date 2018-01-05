<link rel="stylesheet" href="<?php echo base_url('css') ?>/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="<?php echo base_url('css') ?>/jquery-ui.multidatespicker.css">
<link href="<?php echo base_url() ?>css/jquery.multiselect.css" rel="stylesheet" type="text/css">

<style>
    #modal_table tr>td {
        padding: 5px;
    }
    
    tr:hover {
        /*background-color: red;*/
        cursor: pointer;
        
    }
</style>

<div id="page_custom" value="booking">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Booking</h1>
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
                                        <input readonly="" type="text" name="id_booking" id="id_booking" class="form-control" value="<?php echo $kode_booking ?>">
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
                                    <label class="col-sm-4 control-label">Nama Penyewa</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="nama_penyewa" id="nama_penyewa" class="form-control input_validation">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">No Telepon</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="no_telepon" id="no_telepon" class="form-control input_validation">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Tujuan</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="tujuan" id="tujuan" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Alamat Jemput</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="alamat_jemput" id="alamat_jemput" class="form-control">
                                    </div>
                                </div>
                       
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Total</label>
                                    <div class="col-sm-8">
                                        <input value="0" type="number" name="total" id="total" class="form-control" onkeydown="return (event.which >= 48 && event.which <= 57) || (event.which >= 96 && event.which <= 105) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Tanggal</label>
                                    <div class="col-sm-8">
                                        <!-- <input type="text"  readonly="" name="tanggal" id="tanggal" class="form-control"> -->
                                        <div id="mdp_tanggal_booking"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="box box-primary box-solid">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Unit</h3>
                                            </div>
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <div class="form_tanggal_unit">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="box box-primary box-solid">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">Harga</h3>
                                            </div>
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <div class="form_harga_unit">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

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
                            <style>
                            /* td{
                              //  font-size:10px;
                            } */
                            </style>
                            <table id="dt" class="table table-striped nowrap table-hover dt-responsive" width="100%">
                                <thead>
                                    <th width="150px">Pembayaran</th>
                                    <th>Tanggal</th>
                                    <th>Nama</th>
                                    <th>Telepon</th>
                                    <th>Alamat</th>
                                    <th>Tujuan</th>
                                    <th>Status bayar</th>
                                    <th id="aksi" width="250px">Aksi</th>
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

                <table id="modal_table" class="table">
                    <tr>
                        <td><strong>Nama</strong></td>
                        <td>: </td>
                        <td><span id="modal_nama"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Telepon</strong></td>
                        <td>: </td>
                        <td><span id="modal_telepon"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Alamat Jemput</strong></strong>
                        </td>
                        <td>: </td>
                        <td><span id="modal_alamat_jemput"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Tujuan</strong></td>
                        <td>: </td>
                        <td><span id="modal_tujuan"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Tanggal</strong></td>
                        <td>: </td>
                        <td><span id="modal_dari"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Unit</strong></td>
                        <td>: </td>
                        <td><span id="modal_unit"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Total Harga</strong></td>
                        <td>: </td>
                        <td><span id="modal_total_harga"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Status Bayar</strong></td>
                        <td>: </td>
                        <td><span id="modal_status_bayar"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Sisa</strong></td>
                        <td>: </td>
                        <td><span id="modal_sisa"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Kas Jalan</strong></td>
                        <td>: </td>
                        <td><span id="modal_kas_jalan"> - </span></td>
                    </tr>
                    <tr>
                        <td><strong>Total Bersih</strong></td>
                        <td>: </td>
                        <td><span id="modal_total_bersih"> - </span></td>
                    </tr>
                </table>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            </div>
        </div>

    </div>
</div>
<!-- /Modal -->

<script src="<?php echo base_url() ?>js/jquery-ui.js"></script>
<script type="text/javascript" src="<?php echo base_url('js') ?>/jquery-ui.multidatespicker.js"></script>
<script src="<?php echo base_url() ?>js/jquery.multiselect.js"></script>
<script>
// untuk menampilkan modal detail data
$(document).on("click", "tbody>tr", function(e) {
    if ($(e.target).hasClass('hapus_custom') || $(e.target).hasClass('edit_custom')) {
        return;
    }

    id = $(this).find(".edit_custom").val();
    $.get("<?php echo site_url() ?>/booking/detail?id=" + id, function(data, status) {
        //  console.log(data);
        var arr = JSON.parse(data);

        unit = arr.unit;      

        txt_unit = '<table class="table">';
        unit.forEach(function(element) {
            kas_jalan = element.kas_jalan || 0;
            txt_unit = txt_unit + '<tr><td>' + element.seri + '</td><td> Rp. ' + element.harga + '</td><td> Kas Jalan Rp. ' + kas_jalan + ' </td></tr>';          
           
        });
        txt_unit = txt_unit + '</table>';

        $("#modal_nama").text(arr.nama_penyewa);
        $("#modal_telepon").text(arr.no_telepon);
        $("#modal_alamat_jemput").text(arr.alamat_jemput);
        $("#modal_tujuan").text(arr.tujuan);
        $("#modal_dari").text(arr.tanggal);
        $("#modal_unit").html(txt_unit);
        $("#modal_total_harga").text('Rp. ' + arr.total);
        $("#modal_status_bayar").text(arr.status_bayar);
        $("#modal_sisa").text(arr.sisa);
        $("#modal_kas_jalan").text(arr.kas_jalan_total);
        $("#modal_total_bersih").text(arr.total_bersih);

    });
    $("#myModal").modal();
});



$(function() {
    //hitung harga
    function hitung_total() {
        harga = 0;

        $(".harga_unit").each(function() {
            harga_unit = $(this).val();
            harga = parseInt(harga) + parseInt(harga_unit);
        })

        $("#total").val(harga);
    }

    // hitung saat terjadi perubahan pada nilai harga
    $('body').on("keyup", ".hitung_total", function() {
        hitung_total();
    });

    // onclick tanggal booking
    $('#mdp_tanggal_booking').multiDatesPicker({
        dateFormat: "d-m-yy",
        onSelect: function(date) {
            val = date;
            text = date;

            if ($('#' + val).length === 0) {
                var request = $.get("<?php echo site_url(); ?>/booking/select_unit", {
                    date: date
                });
                request.done(function(data) {
                    add3 = '<div class="unit_dan_tanggal" id="' + val + '"><label class="col-sm-3 control-label">' + text + ' </label><div class="col-sm-9">' + data + '</div>'
                    $('.form_tanggal_unit').append(add3);

                    //hitung jumlah_hari
                    hitung_total();
                    $('select[multiple].tanggal_unit').multiselect({
                        columns: 3,
                        placeholder: 'Pilih Unit',
                        search: true,
                        searchOptions: {
                            'default': 'Cari Unit'
                        },

                        onOptionClick: function(element, option) {
                            var thisOpt = $(option);
                            var val = thisOpt.val();
                            var text = thisOpt.attr("title");
                            var count = $('#langOpt option:selected').length;

                            var units = [];
                            if (thisOpt.prop('checked')) {
                                $('.tanggal_unit option:selected').each(function() {
                                    units.push($(this).val());
                                });

                                if ($('.harga_per_unit').is('#' + val)) {} else {
                                    add3 = '<div class="harga_per_unit" id="' + val + '"><label class="col-sm-2 control-label">' + text + ' </label> <div class="col-sm-10"><input type = "text" name="harga_perunit[' + val + ']" id="" value="0" class="form-control hitung_total harga_unit" onkeydown="return (event.which >= 48 && event.which <= 57) || (event.which >= 96 && event.which <= 105) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39"></div>';
                                    $('.form_harga_unit').append(add3);
                                  
                                }
                            } else {
                                $('.tanggal_unit option:selected').each(function() {
                                    units.push($(this).val());
                                });

                                if ($.inArray(val, units) !== -1) {

                                } else {
                                    $('#' + val).remove();
                                }
                              
                            }
                        }
                    });
                });
            } else {
                $('#' + val).remove();            
            }
        }
    });

    //datatable menammpilkan data
    var page = $("#page_custom").attr("value");
    var url_get = page + '/get';
    loadDataTable_custom(url_get);
    function loadDataTable_custom(url) {
        $('#dt').dataTable({
            "destroy": true,
            "bLengthChange": false,
            // "scrollX": true,
            "displayLength": 10,
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
                "dataSrc": function(json) {
                    // tambahkan button aksi
                    var index_action = json[0].length;
                    for (var i = 0, ien = json.length; i < ien; i++) {
                        var id = json[i][0];
                        // masukan aksi kedalam data json
                        json[i][index_action] = '<button value="' + id + '" class="btn btn-primary edit_custom" ><i class="fa fa-pencil"></i> Edit</button> ' +
                            '<button value="' + json[i][0] + '" class="btn btn-danger hapus_custom"><i class="fa  fa-trash"></i> Hapus</button>';
                        json[i][0] = '<a href ="pembayaran/by_id_booking?id_booking=' + id + '" class="btn btn-success" ><i class="fa fa-pencil"></i> Bayar </a> <a href ="pembayaran/invoice?id_booking=' + id + '" class="btn btn-success" ><i class="fa fa-pencil"></i> Cetak Invoice </a> ';
                        // json[i].splice(0,1); // hapus kolom index
                    }                   
                    return json;
                }
            },
            "fnInitComplete": function() {
                // aksi setelah berhasil inisiasi data table
                $("#aksi").css("width", "10%");
            }
        });
    }

    // aksi pada saat tombol simpan data di klik
    $('#simpan_custom').click(function() {
        // kirim data form berdasarkan nama(property name) inputannya
        var redirect = "<?php echo site_url() ?>/booking";
        var valid = true;
        $('.input_validation').each(function() {
            if (!this.value) {
                valid = false;
                var lbl = $(this).parent().prev("label").text();
                $.notify({
                    title: "Error :",
                    message: lbl + " harus diisi!",
                    icon: 'fa fa-check'
                }, {
                    type: "danger"
                });
                $(this).addClass("focus");
            }
        });
        if (valid) {
            simpan(redirect, url_get);
        }

        // location.reload();
    });

    // aksi pada saat tombol simpan&bayar data di klik
    $('#bayar_custom').click(function() {
        // kirim data form berdasarkan nama(property name) inputannya
        var data = $('form').serialize();
        var id_booking = $("#id_booking").val();
        var redirect = "<?php echo site_url() ?>/pembayaran/by_id_booking?id_booking=" + id_booking;
        simpan(redirect);
    });


    // aksi pada saat tombol hapus data di klik
    $('body').on('click', '.hapus_custom', function() {
        var id = $(this).val();
        var url_hapus = page + '/delete';
        $.ajax({
            type: "GET",
            url: url_hapus,
            data: {
                id: id
            },
            success: function(resdata) {
                $.notify({
                    title: "Berhasil : ",
                    message: "Data berhasil dihapus",
                    icon: 'fa fa-check'
                }, {
                    type: "success"
                });
                loadDataTable_custom(url_get);
                //  location.reload();
            },
            error: function(jqXHR, exception) {
                // pesan error menggunakan notify.js
                $.notify({
                    title: "Error :",
                    message: "Telah terjadi kesalahan!",
                    icon: 'fa fa-check'
                }, {
                    type: "danger"
                });
            }
        });
    });

 // aksi pada saat tombol edit data di klik
    $('body').on('click', '.edit_custom', function() {
        // alert('test');
  var page = window.location.href;
  var url_edit = page+'/get_for_edit';
  var id = $(this).val();
 
  
  $('.add_page').hide();
  $('.edit_page').show();
  $('.edit_protection').prop('readonly', false);
  $('#tabel').toggle( "slide", 'slow', function(){$('#form_tambah').toggle( "slide");});
    
      // ambil data yang akan diedit menggunakan ajax
      request = $.get(url_edit,{id: id});
      request.done(function(data){
        $('.form_harga_unit').empty();
        $('.edit_protection').prop('readonly', true);
        var arr = JSON.parse(data);
        // console.log(data);

        $.each(arr.data_booking[0], function(key, value){
          var id_val = key;
          $("#"+id_val).val(value);
        });

        add3 ='';
        $.each(arr.input, function(key, value){
            val =value.date;
            data =value.select;
            // console.log(add3);        

            $('#mdp_tanggal_booking').multiDatesPicker('addDates',val);

           add3 = '<div class="unit_dan_tanggal" id="'+val+'"><label class="col-sm-3 control-label">'+val+' </label><div class="col-sm-9">'+data+'</div>'
           $('.form_tanggal_unit').append(add3);

  $('select[multiple].tanggal_unit').multiselect({
                        columns: 3,
                        placeholder: 'Pilih Unit',
                        search: true,
                        searchOptions: {
                            'default': 'Cari Unit'
                        },

                        onOptionClick: function(element, option) {
                            var thisOpt = $(option);
                            var val = thisOpt.val();
                            var text = thisOpt.attr("title");
                            var count = $('#langOpt option:selected').length;

                            var units = [];
                            if (thisOpt.prop('checked')) {
                                $('.tanggal_unit option:selected').each(function() {
                                    units.push($(this).val());
                                });

                                if ($('.harga_per_unit').is('#' + val)) {} else {
                                    add3 = '<div class="harga_per_unit" id="' + val + '"><label class="col-sm-2 control-label">' + text + ' </label> <div class="col-sm-10"><input type = "text" name="harga_perunit[' + val + ']" id="" value="0" class="form-control hitung_total harga_unit" onkeydown="return (event.which >= 48 && event.which <= 57) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39"></div>';
                                    $('.form_harga_unit').append(add3);                                  
                                }
                            } else {
                                $('.tanggal_unit option:selected').each(function() {
                                    units.push($(this).val());
                                });

                                if ($.inArray(val, units) !== -1) {

                                } else {
                                    $('#' + val).remove();
                                }
                              
                            }
                        }
                    });
         });

         $.each(arr.data_unit, function(key, value){
             val = value.id_unit;
             text = value.seri;
             harga = value.harga;
            add3 = '<div class="harga_per_unit" id="' + val + '"><label class="col-sm-2 control-label">' + text + ' </label> <div class="col-sm-10"><input type = "text" name="harga_perunit[' + val + ']" id="" value="'+harga+'" class="form-control hitung_total harga_unit" onkeydown="return (event.which >= 48 && event.which <= 57) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39"></div>';
                                    $('.form_harga_unit').append(add3);
         });



      });
      request.fail(function() {
        notify_error('Terjadi Kesalahan');
    })

  });

// menyimpan data
    function simpan(redirect, url_get) {
        $.ajax({
            type: "POST",
            url: "<?php echo site_url() ?>/booking/add",
            data: {
                data: $('form').serialize()
            },
            success: function(resdata) {
                $.notify({
                    title: "Berhasil : ",
                    message: "Data telah ditambahkan",
                    icon: 'fa fa-check'
                }, {
                    type: "success"
                });
                $(".xform")[0].reset();
                if (url_get) {
                    loadDataTable_custom(url_get);
                    $('#form_tambah').toggle("slide", 'slow', function() {
                        $('#tabel').toggle("slide");
                    });
                } else {
                    window.location.href = redirect;
                }
            },
            error: function(jqXHR, exception) {
                // pesan error menggunakan notify.js
                $.notify({
                    title: "Error :",
                    message: "Telah terjadi kesalahan!",
                    icon: 'fa fa-check'
                }, {
                    type: "danger"
                });
            }
        });
    }
});
</script>