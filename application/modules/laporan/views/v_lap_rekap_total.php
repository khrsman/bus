<link href="<?php echo base_url() ?>css/jquery.multiselect.css" rel="stylesheet" type="text/css">
<div id="page_custom" value="pengeluaran">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Laporan Rekap Pendapatan</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Laporan Total</li>
            </ol>
        </section>
        <section class="content">

          <div class="row" id="tabel">
              <div class="col-md-6">
                  <div class="box box-primary">
                      <div class="box-header">
                          Pendapatan
                      </div>
                      <div class="box-body">
                          <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                              <thead>
                                  <tr>
                                     <th>Bis</th>
                                     <th>Jumlah</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <?php
                                $total_pendapatan = 0;
                                foreach ($data_rekap_pemasukan as $key => $value) {
                                    $total_pendapatan = $total_pendapatan + $value;
                                     ?>

                                  <tr>
                                      <td><?php echo $key ?></td>
                                      <td>Rp. <?php echo number_format($value) ?></td>
                                  </tr>
                                  <?php   } ?>
                              </tbody>
                              <tfooter>
                              <tr>
                                  <td > Total </td>
                                  <td>Rp. <?php echo number_format($total_pendapatan) ?></td>
                              </tr>
                          <tfooter>
                          </table>
                      </div>
                  </div>
              </div>


              <div class="col-md-6">
                  <div class="box box-primary">
                      <div class="box-header">
                          Pengeluaran
                      </div>
                      <div class="box-body">
                          <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                              <thead>
                                  <tr>
                                     <th>Kategori</th>
                                     <th>Jumlah</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <?php
                                $total_pengeluaran = 0;
                                foreach ($data_rekap_pengeluaran as $key => $value) {
                                  $total_pengeluaran = $total_pengeluaran + $value['jumlah'];
                                  ?>
                                  <tr>
                                      <td><?php echo $value['kategori'] ?></td>
                                      <td>Rp. <?php echo number_format($value['jumlah']) ?></td>
                                  </tr>
                                  <?php   } ?>
                              </tbody>
                              <tfooter>
                              <tr>
                                  <td > Total </td>
                                  <td>Rp. <?php echo number_format($total_pengeluaran) ?></td>
                              </tr>
                            </tfooter>
                          </table>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="box box-primary">
                      <div class="box-header">
                          Selisih 
                      </div>
                      <div class="box-body">
                          <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                              <tr>
                                  <td > Total </td>
                                  <td>Rp. <?php echo number_format($total_pendapatan - $total_pengeluaran) ?></td>
                              </tr>
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
