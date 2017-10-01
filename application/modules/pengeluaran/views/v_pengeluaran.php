<div id="page" value="pengeluaran">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>pengeluaran</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">pengeluaran</li>
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
                                <input type="hidden" id="id_pengeluaran" name="id_pengeluaran" >
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tanggal</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal" id="tanggal_sampai" type="text">
                                          </div>
                                        </div>
                                  </div>
																<div class="form-group">
                                  <label class="col-sm-4 control-label">Kategori pengeluaran</label>
                                  <div class="col-sm-8">
                                    <?php
                                    $this->load->library('Cb_options');
                                    $this->cb_options->kategori_pengeluaran();
                                    ?>
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Keterangan</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="keterangan" id="keterangan" class="form-control"  >
                                  </div>
                            </div>
													<div class="form-group">
                                  <label class="col-sm-4 control-label">Jumlah</label>
                                  <div class="col-sm-8">
                                      <input type = "text" name="jumlah" id="jumlah" class="form-control"   onkeydown='return (event.which >= 48 && event.which <= 57) || event.which == 8 || event.which == 46 || event.which == 37 || event.which == 39'
                                      >
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
                            <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Tanggal</th>
                                        <th>Kategori pengeluaran</th>
																			 <th>Keterangan</th>
																			 <th>Jumlah</th>
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

<script type="text/javascript" src="<?php echo base_url() ?>js/datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>js/datepicker/locales/bootstrap-datepicker.id.min.js"></script>
<link rel="stylesheet" href="<?php echo base_url() ?>js/datepicker/css/bootstrap-datepicker.css">
<script>
	 $(function(){
     $('.datepicker').datepicker({
           format: 'dd/mm/yyyy',
           todayBtn: "linked",
           language: "id",
           calendarWeeks: true,
           autoclose: true
      });
	 });
</script>
