<link href="<?php echo base_url() ?>css/jquery.multiselect.css" rel="stylesheet" type="text/css">
<div id="page_custom" value="pengeluaran">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Laporan</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">pengeluaran</li>
            </ol>
        </section>
        <section class="content">
            <div class="row" id="form_tambah">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform" action="lap_pengeluaran/proses" method="post">
                                <input type="hidden" id="id_pengeluaran" name="id_pengeluaran" >
                                <div class="form-group">
                                  <label class="col-sm-4 control-label">Jenis laporan</label>
                                  <div class="col-sm-8">
                                    <select name="jenis_laporan" id="jenis_laporan" class="form-control">
                                        <option value=''>--- PILIH ---</option>";
                                        <option value='pendapatan'>Pendapatan</option>";
                                        <option value='pengeluaran'>Pengeluaran</option>";
                                        <option value='rekap_pendapatan'>Rekap Pendapatan</option>";
                                        <option value='rekap_pengeluaran'>Rekap Pengeluaran</option>";
                                        <option value='rekap_total'>Rekap Total</option>";
                                    </select>

                                  </div>
                            </div>
                        </div>

                        </form>
                    </div>
                </div>
            </div>
            <div class="row input_laporan"  style="display:none" id="pendapatan">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Laporan Pendapatan</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform" action="laporan/pendapatan" method="post">
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tanggal</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_dari" id="tanggal_dari" type="text">
                                            <div class="input-group-addon">
                                            S.d
                                            </div>
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_sampai" id="tanggal_sampai" type="text">

                                        </div>
                                        </div>
                                  </div>
                                <div class="form-group">
                                  <label class="col-sm-4 control-label">Pilih bus</label>
                                  <div class="col-sm-8">
                                    <select name="id_unit[]" multiple id="langOpt">
                                      <?php
                                      $query = $this->db->get('unit')->result_array();
                                      foreach ($query as $key => $value) {
                                        $nama = $value['seri'];
                                        $kategori = $value['id_unit'];
                                        echo "<option value='{$kategori}'>{$nama}</option>";
                                      }
                                      ?>
                                    </select>

                                  </div>
                            </div>


                        </div>
                        <div class="box-footer" style="float:right">
                            <button type="input" class="btn btn-primary edit_page"><span class="fa fa-check"></span> Lihat Laporan</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row input_laporan"  style="display:none" id="pengeluaran">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Laporan Pengeluaran</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform" action="laporan/pengeluaran" method="post">
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tanggal</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_dari" id="tanggal_dari" type="text">
                                            <div class="input-group-addon">
                                            S.d
                                            </div>
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_sampai" id="tanggal_sampai" type="text">

                                        </div>
                                        </div>
                                  </div>
																<div class="form-group">
                                  <label class="col-sm-4 control-label">Kategori</label>
                                  <div class="col-sm-8">
                                    <select name="id_kategori_pengeluaran[]" multiple id="langOpt2">
                                      <?php
                                      $query = $this->db->get('kategori_pengeluaran')->result_array();
                                      foreach ($query as $key => $value) {
                                        $nama = $value['nama'];
                                        $kategori = $value['id_kategori_pengeluaran'];
                                        echo "<option value='{$kategori}'>{$nama}</option>";
                                      }
                                      ?>
                                    </select>

                                  </div>
                            </div>


                        </div>
                        <div class="box-footer" style="float:right">
                            <button type="input" class="btn btn-primary edit_page"><span class="fa fa-check"></span> Lihat Laporan</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row input_laporan" style="display:none" id="rekap_pengeluaran">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Rekap pengeluaran</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform" action="laporan/rekap_pengeluaran" method="post">
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tanggal</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_dari" id="tanggal_dari" type="text">
                                            <div class="input-group-addon">
                                            S.d
                                            </div>
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_sampai" id="tanggal_sampai" type="text">

                                        </div>
                                        </div>
                                  </div>
                        </div>
                        <div class="box-footer" style="float:right">
                            <button type="input" class="btn btn-primary edit_page"><span class="fa fa-check"></span> Lihat Laporan</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row input_laporan" style="display:none" id="rekap_pendapatan">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Rekap pendapatan</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform" action="laporan/rekap_pendapatan" method="post">
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tanggal</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_dari" id="tanggal_dari" type="text">
                                            <div class="input-group-addon">
                                            S.d
                                            </div>
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_sampai" id="tanggal_sampai" type="text">

                                        </div>
                                        </div>
                                  </div>
                        </div>
                        <div class="box-footer" style="float:right">
                            <button type="input" class="btn btn-primary edit_page"><span class="fa fa-check"></span> Lihat Laporan</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row input_laporan" style="display:none" id="rekap_total">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title add_page">Rekap Total</h3>
                        </div>
                        <div class="box-body">
                            <form role="form" class="form-horizontal xform" action="laporan/rekap_total" method="post">
                                <div class="form-group">
                                        <label class="col-sm-4 control-label">Tanggal</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_dari" id="tanggal_dari" type="text">
                                            <div class="input-group-addon">
                                            S.d
                                            </div>
                                            <div class="input-group-addon">
                                              <i class="fa fa-calendar"></i>
                                            </div>
                                            <input class="form-control datepicker" value="<?php echo date('d/m/Y') ?>" name="tanggal_sampai" id="tanggal_sampai" type="text">

                                        </div>
                                        </div>
                                  </div>
                        </div>
                        <div class="box-footer" style="float:right">
                            <button type="input" class="btn btn-primary edit_page"><span class="fa fa-check"></span> Lihat Laporan</button>
                        </div>
                        </form>
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
<script src="<?php echo base_url() ?>js/jquery.multiselect.js"></script>
<script>
	 $(function(){

     $('#jenis_laporan').change(function(){
       var jenis_laporan = $(this).val();
       $(".input_laporan").hide();

     switch(jenis_laporan) {
    case 'pengeluaran':
        $("#pengeluaran").show();
        break;
    case 'pendapatan':
        $("#pendapatan").show();
        break;
    case 'rekap_pengeluaran':
            $("#rekap_pengeluaran").show();
            break;
    case 'rekap_pendapatan':
          $("#rekap_pendapatan").show();
          break;
          case 'rekap_total':
                $("#rekap_total").show();
                break;
    default:
        //code block
}

     })

     $('.datepicker').datepicker({
           format: 'dd/mm/yyyy',
           todayBtn: "linked",
           language: "id",
           calendarWeeks: true,
           autoclose: true
      });
      $('#langOpt').multiselect({
          selectAll: true,
          columns: 2,
          placeholder: 'Pilih Bus'
      });
      $('#langOpt2').multiselect({
          selectAll: true,
          columns: 2,
          placeholder: 'Pilih Kategori'
      });
	 });
</script>
