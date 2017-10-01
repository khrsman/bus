<div id="page_custom" value="detail_pembelian">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>detail_pembelian</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">detail_pembelian</li>
            </ol>
        </section>
        <section class="content">
            <div class="row" style="display:none" id="form_tambah">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Tambah</h3>
                            <h3 class="box-title edit_page">Edit</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform">
                                <input type="hidden" id="id_pembelian_sparepart" name="id_pembelian_sparepart" >
                                <input type="hidden" id="id_faktur_pembelian" name="id_faktur_pembelian" value="<?php echo $detail['id_faktur_pembelian'] ?>">
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Sparepart</label>
                                  <div class="col-sm-8">
                                      <?php $this->load->library('Cb_options');
                                      $this->cb_options->sparepart();
                                      ?>
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Jumlah</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="jumlah" id="jumlah" class="form-control"  >
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Harga satuan</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="harga_satuan" id="harga_satuan" class="form-control"  >
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Total</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="total" id="total" class="form-control"  >
                                  </div>
                            </div>

                            </form>
                        </div>
                        <div class="box-footer">
                            <a class="btn btn-danger" id="cancel"><span class="fa fa-remove "></span> Cancel</a>
                            <a class="btn btn-primary add_page" id="simpan"><span class="fa fa-check "></span> Simpan</a>
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
                            <div>NO FAKTUR : <?php echo $detail['id_faktur_pembelian'] ?></div>
                            <div>SUPPLIER  : <?php echo $detail['nama_supplier'] ?></div>
                            <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
																			 <th>Nama sparepart</th>
																			 <th>Jumlah</th>
																			 <th>Harga satuan</th>
																			 <th>Total</th>
																			 <th width="150px">Aksi</th>
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

<script>
	 $(function(){


			$('.datepicker').datepicker({
						format: 'yyyy-mm-dd',
						todayBtn: "linked",
						language: "id",
					 calendarWeeks: true,
						autoclose: true
			 });


       var page = $("#page_custom").attr("value");
       var no_faktur = $("#id_faktur_pembelian").attr("value");
       var url_get = page+'/get?no_faktur='+no_faktur;
       loadDataTable_custom(url_get);

       function loadDataTable_custom(url){
       $('#dt').dataTable({
         "scrollX": true,
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
               var id = json[i][0];
               // masukan aksi kedalam data json
               json[i][index_action] = '<button value="'+ id +'" class="btn btn-primary edit" ><i class="fa fa-pencil"></i> Edit</button> '+
               '<button value="'+json[i][0]+'" class="btn btn-danger hapus"><i class="fa  fa-trash"></i> Hapus</button>';
                json[i].splice(0,1); // hapus kolom index
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
