<?php
header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=lap_rekap_pendapatan.xls");  //File name extension was wrong
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);
 ?>
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
