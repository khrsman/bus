<link rel="stylesheet" href="<?php echo base_url() ?>css/khrsman-pagination.css" />
<script src="<?php echo base_url() ?>js/khrsman-pagination.js"></script>

<script type="text/javascript">
$(document).ready(function () {
pagination = $('#table').pagination({
    href:"<?php echo site_url() ?>/pegawai2/page",
    // plus_column: [2,{'href':'pembayaran/kwitansi?','id':'id_produk','text':'Detail 1','css':''},
    // {'href':'pembayaran/kwitansi?','id':'id_produk','text':'Detail 2','css':''}],
    hide: "id_pegawai",
    edit: "id_pegawai",
    delete: "id_pegawai",
    search: true,
  });
  pagination.init();
      });

</script>
<script src="<?php echo base_url() ?>js/khrsman-process.js"></script>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>pegawai</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">pegawai</li>
            </ol>
        </section>
        <section class="content">
            <div class="row" style="display:none" id="form_view">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Tambah</h3>
                            <h3 class="box-title edit_page">Edit</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform">
                                <input type="hidden" id="id_pegawai" name="id_pegawai" >
													<div class="form-group" >
                                  <label class="col-sm-4 control-label">Nama</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="nama" id="nama" class="form-control input_validation "  >
                                  </div>
                            </div>
                            </form>
                        </div>
                        <div class="box-footer">
                            <a class="btn btn-danger" id="btn_cancel_page"><span class="fa fa-remove "></span> Cancel</a>
                            <a class="btn btn-primary add_page" id="btn_save"><span class="fa fa-check "></span> Simpan</a>
                            <a class="btn btn-primary edit_page" id="btn_update"><span class="fa fa-check "></span> update</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="data_view">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header">
                            <button class="btn btn-primary" id="btn_add_page"><span class="fa fa-plus"></span> Tambah</button>
                        </div>
                        <div class="box-body">
                            <table id="table" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</section>
