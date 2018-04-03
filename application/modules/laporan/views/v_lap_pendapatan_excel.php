<?php
header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=lap_pendapatan.xls");  //File name extension was wrong
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);
 ?>

                                  <?php

                                  $total = 0;
                                  foreach ($data as $key => $value) {
                                    ?>
                                          <div class="col-md-12">
                                              <div class="box box-primary box-solid">
                                                  <div class="box-header ">
                                                  Pendapatan bus <?php echo $key ?>
                                                  </div>
                                                  <div class="box-body">

                                      <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                                          <thead>
                                              <tr>
                                                  <th>Tanggal</th>
                                                  <th>Nama</th>
                                                  <th>Alamat</th>
                                                  <th>Tujuan</th>
                                                  <th>Hari</th>
                                                  <th>Harga</th>
                                                  <th>Kas Jalan</th>
                                                  <th>Sisa</th>
                                              </tr>
                                          </thead>
                                          <tbody>
                                            <?php
                                          $total = $total_harga = $total_kas_jalan =  $total_hari = 0;
                                          foreach ($value as $key2 => $value2) {
                                              $selisih =  $value2['harga'] - $value2['kas_jalan'];
                                              $total = $total + $selisih;
                                              $total_harga = $total_harga + $value2['harga'];
                                              $total_kas_jalan = $total_kas_jalan +$value2['kas_jalan'];
                                              $total_hari = $total_hari + $value2['jumlah_hari'];
                                            ?>
                                          <tr>
                                              <td><?php echo $value2['tanggal'] ?></td>
                                              <td><?php echo $value2['nama_penyewa'] ?></td>
                                              <td><?php echo $value2['alamat_jemput'] ?></td>
                                              <td><?php echo $value2['tujuan'] ?></td>
                                              <td><?php echo $value2['jumlah_hari'] ?></td>
                                              <td>Rp. <?php echo number_format($value2['harga']) ?></td>
                                              <td>Rp. <?php echo number_format($value2['kas_jalan']) ?></td>
                                              <td>Rp. <?php echo number_format($selisih) ?></td>
                                          </tr>
                                          <?php

                                            } ?>
                                </tbody>
                                <tfooter>
                                <tr>
                                  <td colspan="4"> Total </td>
                                  <td><?php echo $total_hari ?></td>
                                    <td>Rp. <?php echo number_format($total_harga) ?></td>
                                    <td>Rp. <?php echo number_format($total_kas_jalan) ?></td>
                                    <td>Rp. <?php echo number_format($total) ?></td>
                                </tr>
                                <tr>
                                    <td>  </td>
                                </tr>
                            <tfooter>
                            </table>
                        </div>
                    </div>
                </div>
                                  <?php
                                  }
                                    ?>
