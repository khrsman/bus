<link href="<?php echo base_url() ?>css/jquery.multiselect.css" rel="stylesheet" type="text/css">
<div id="page_custom" value="pengeluaran">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Laporan Pengeluaran</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Laporan Penggeluaran</li>
            </ol>
        </section>
        <section class="content">

            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header">
                          pengeluaran dari tanggal sampai 
                        </div>
                        <div class="box-body">
                            <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Tanggal</th>
                                        <th>Kategori</th>
                                       <th>Keterangan</th>
                                       <th>Jumlah</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php
                                  $total = 0;
                                  foreach ($data as $key => $value) {
                                    $jumlah = $value['jumlah'];
                                    $jumlah =  str_replace(",","",$jumlah);
                                    $total = $total+$jumlah
                                    ?>
                                    <tr>
                                        <td><?php echo $value['tanggal'] ?></td>
                                        <td><?php echo $value['kategori'] ?></td>
                                        <td><?php echo $value['keterangan'] ?></td>
                                        <td><?php echo $value['jumlah'] ?> </td>
                                    </tr>
                                    <?php
                                        }
                                    ?>
                                </tbody>
                                <tfooter>
                                <tr>
                                    <td colspan="3"> Total </td>
                                    <td><?php echo number_format($total) ?></td>
                                </tr>
                            <tfooter>
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
<script src="<?php echo base_url() ?>js/jquery.multiselect.js"></script>
<script>
	 $(function(){
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
          placeholder: 'Pilih Kategori'
      });
	 });
</script>
