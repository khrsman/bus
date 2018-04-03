        <section class="content">
          <div class="row" id="tabel">
              <div class="col-md-12">
                <div style="text-align:right; padding:5px">
                  <a class="btn btn-success" href='<?php echo site_url("laporan/rekap_pendapatan_excel?tanggal_dari=$tanggal_dari&tanggal_sampai=$tanggal_sampai"); ?>'><span class="fa fa-file-excel-o "></span> Export Excel</a>
                  <br>
                </div>
                  <div class="box box-primary box-solid">
                      <div class="box-header">
                         Laporan Rekap Pendapatan
                      </div>
                      <div class="box-body">
                          <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                              <thead>
                                  <tr>
                                     <th>Unit</th>
                                     <th>Jumlah Hari</th>
                                     <th>Total</th>
                                     <th>Kas Jalan</th>
                                     <th>Selisih</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <?php
                                $total_pendapatan = $total_kas_jalan = $total_selisih = $total_hari = 0;
                                foreach ($data_rekap as $key => $value) {
                                    $total_pendapatan = $total_pendapatan + $value['total'];
                                    $total_kas_jalan = $total_kas_jalan + $value['kas_jalan'];
                                    $selisih = $value['total'] - $value['kas_jalan'];
                                    $total_selisih = $total_selisih +  $selisih;
                                    $total_hari = $total_hari + $value['jumlah_hari'];
                                    ?>
                                    <tr>
                                        <td><?php echo $value['seri'] ?></td>
                                        <td><?php echo $value['jumlah_hari'] ?> </td>
                                        <td>Rp. <?php echo  number_format($value['total']) ?></td>
                                        <td>Rp. <?php echo  number_format($value['kas_jalan']) ?></td>
                                        <td>Rp. <?php echo  number_format($selisih) ?></td>
                                    </tr>
                                    <?php   } ?>
                                  </tbody>
                                  <tfooter>
                                    <tr>
                                        <td>Total</td>
                                        <td><?php echo $total_hari ?></td>
                                        <td>Rp. <?php echo  number_format($total_pendapatan) ?></td>
                                        <td>Rp. <?php echo  number_format($total_kas_jalan) ?></td>
                                        <td>Rp. <?php echo  number_format($total_selisih) ?></td>
                                    </tr>
                              </tfooter>
                          </table>
                      </div>
                  </div>
              </div>
          </div>

    </div>
</div>
</section>
</div>
