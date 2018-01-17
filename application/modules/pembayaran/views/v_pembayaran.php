<div id="page_custom" value="pembayaran">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Kwitansi</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">pembayaran</li>
            </ol>
        </section>
        <section class="content">

            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-body">
                            <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                       <th width="120px">Cetak</th>
																			 <th>Nama (Tujuan)</th>
																			 <th>Terima Dari</th>
																			 <th>Jumlah</th>
																			 <th>Tanggal</th>
																			 <th>Status</th>
																			 <th width="100px">Aksi</th>
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
var url_get = page+'/get';
loadDataTable_custom(url_get);


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

function loadDataTable_custom(url){
$('#dt').dataTable({
  "destroy": true,
  "bLengthChange": false,
  "displayLength":10,
  "scrollX": true,
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
        json[i][index_action] = '<button value="'+json[i][0]+'" class="btn btn-danger hapus_custom"><i class="fa  fa-trash"></i> Hapus</button>';
        json[i][0] = '<a href ="pembayaran/kwitansi?id_pembayaran='+ id +'" class="btn btn-primary" ><i class="fa fa-pencil"></i> Cetak Kwitansi </a> ';
        // json[i].splice(0,1); // hapus kolom index
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
});

</script>
