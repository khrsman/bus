<div id="page_custom" value="spj">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>spj</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">spj</li>
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
                                <input type="hidden" id="id_spj" name="id_spj" >
																<div class="form-group">
                                  <label class="col-sm-4 control-label">Kode booking</label>
                                  <div class="col-sm-8">
                                    <?php
                                    $this->load->library('Cb_options');
                                    $this->cb_options->kode_booking();
                                    ?>
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Bus</label>
                                  <div class="col-sm-8">
                                    <?php

                                    $this->cb_options->unit();
                                    ?>
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Sopir</label>
                                  <div class="col-sm-8">
                                    <?php

                                    $this->cb_options->sopir();
                                    ?>
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Kenek</label>
                                  <div class="col-sm-8">
                                    <?php
                                    $this->cb_options->crew();
                                    ?>
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Km awal</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="km_awal" id="km_awal" class="form-control"  >
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Km akhir</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="km_akhir" id="km_akhir" class="form-control"  >
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
                                  <label class="col-sm-4 control-label">Upah Sopir</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="biaya_sopir" id="biaya_sopir" class="form-control"  >
                                  </div>
                            </div>
                            <div class="form-group">
                              <label class="col-sm-4 control-label">Upah Kenek</label>
                              <div class="col-sm-8">
                                  <input type = "text" name="biaya_crew" id="biaya_crew" class="form-control"  >
                              </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-4 control-label">Solar</label>
                                <div class="col-sm-8">
                                    <input type = "text" name="biaya_solar" id="biaya_solar" class="form-control"  >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-4 control-label">Tol</label>
                                <div class="col-sm-8">
                                    <input type = "text" name="biaya_tol" id="biaya_tol" class="form-control"  >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-4 control-label">Parkir</label>
                                <div class="col-sm-8">
                                    <input type = "text" name="biaya_parkir" id="biaya_parkir" class="form-control"  >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-4 control-label">Tips</label>
                                <div class="col-sm-8">
                                    <input type = "text" name="biaya_tips" id="biaya_tips" class="form-control"  >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-4 control-label">Penyebrangan</label>
                                <div class="col-sm-8">
                                    <input type = "text" name="biaya_penyebrangan" id="biaya_penyebrangan" class="form-control"  >
                                </div>
                              </div>
                              <div class="form-group">
                                <label class="col-sm-4 control-label">Lain-lain</label>
                                <div class="col-sm-8">
                                    <input type = "text" name="biaya_lain" id="biaya_lain" class="form-control"  >
                                </div>
                              </div>

                            </form>
                        </div>
                        <div class="box-footer">
                            <a class="btn btn-danger" id="cancel"><span class="fa fa-remove "></span> Cancel</a>
                            <a class="btn btn-primary add_page" id="simpan_custom"><span class="fa fa-check "></span> Simpan</a>
                            <a class="btn btn-primary edit_page" id="update"><span class="fa fa-check "></span> update</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <button class="btn btn-primary" id="tambah"><span class="fa fa-plus"></span> Tambah</button>
                        </div>
                        <div class="box-body">
                            <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                      <th> Cetak </th>
                                        <th>No booking</th>
																			 <th>Bus</th>
																			 <th>Sopir</th>
																			 <th>Crew</th>
																			 <th>Km awal</th>
																			 <th>Km akhir</th>
																			 <th id="aksi">Aksi</th>
                                    </tr>
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


<script type="text/javascript">

$().ready(function(){
  var page = $("#page_custom").attr("value");
  var url_simpan = page+'/add';
  var url_edit =  page+'/get_for_edit';
  var url_update =  page+'/update';
  var url_hapus =  page+'/delete';
  var url_get = page+'/get';

  $('body').on('click', '.hapus_custom', function() {
    var id = $(this).val();
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


    $('#simpan_custom').click(function(){
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
      var data = $('form').serialize();
    }
    $.ajax({
          type: "POST",
          url: url_simpan,
          data: {data: data},
          success: function (resdata) {
            $.notify({
              title: "Berhasil : ",
              message: "Data telah ditambahkan",
              icon: 'fa fa-check'
            },{
              type: "success"
            });
              $(".xform")[0].reset();
              loadDataTable_custom(url_get);
              $('#form_tambah').toggle( "slide", 'slow', function(){$('#tabel').toggle( "slide");});
                // location.reload();
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


loadDataTable_custom(url_get);
function loadDataTable_custom(url){
$('#dt').dataTable({
  "destroy": true,
  "bLengthChange": false,
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
        // masukan aksi kedalam data json
        json[i][index_action] = '<button value="'+json[i][0]+'" class="btn btn-primary edit" ><i class="fa fa-pencil"></i> Edit</button> '+
        '<button value="'+json[i][0]+'" class="btn btn-danger hapus_custom"><i class="fa  fa-trash"></i> Hapus</button>';
        json[i].splice(0,1); // hapus kolom index
        json[i][0] = '<a href ="spj/cetak?id='+ json[i][0] +'" class="btn btn-success" ><i class="fa fa-pencil"></i> Cetak </button> ';
      }
        // console.log(json);
      return json;

    }
  },
  "fnInitComplete": function() {
    // aksi setelah berhasil inisiasi data table
  }
});
}
})

</script>