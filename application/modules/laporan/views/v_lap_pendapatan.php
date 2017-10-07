<link href="<?php echo base_url() ?>css/jquery.multiselect.css" rel="stylesheet" type="text/css">
<div id="page_custom" value="pengeluaran">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Laporan Pendapatan</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Laporan Pendapatan</li>
            </ol>
        </section>
        <section class="content">
          <div class="row" id="tabel">
                                  <?php
                                  $total = 0;
                                  foreach ($data as $key => $value) {
                                    $data_pendapatan = $this->db->query("SELECT id_unit,tanggal_dari,tanggal_sampai,harga,
                                      datediff(tanggal_sampai, tanggal_dari) hari, total from booking
                                                where id_unit like '%".$value['seri']."%'")->result_array(); ?>
                                          <div class="col-md-6">
                                              <div class="box box-primary">
                                                  <div class="box-header">
                                                  Pendapatan bus <?php echo $value['seri'] ?>
                                                  </div>
                                                  <div class="box-body">
                                      <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                          <thead>
                                              <tr>
                                                  <th>Seri</th>
                                                  <th>Tanggal</th>
                                                  <th>Jumlah Hari</th>
                                                  <th>Total</th>
                                              </tr>
                                          </thead>
                                          <tbody>
                                      <?php
                                    $total = 0;
                                      foreach ($data_pendapatan as $key => $value2) {
                                          $jumlah = $value2['total'];
                                          $jumlah =  str_replace(",", "", $jumlah);
                                          $total = $total+$jumlah
                                      ?>
                                    <tr>
                                        <td><?php echo $value['seri'] ?></td>
                                        <td><?php echo $value2['tanggal_dari'] ?></td>
                                        <td><?php echo $value2['hari'] ?></td>
                                        <td><?php echo number_format($value2['total']) ?></td>
                                    </tr>
                                    <?php

                                      } ?>
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
                                  <?php
                                  }
                                    ?>
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
