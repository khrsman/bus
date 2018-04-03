<?php
header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=lap_pengeluaran.xls");  //File name extension was wrong
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);
 ?>
                                  <table id="dt" class="table  table-bordered" width="100%" cellspacing="0">
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
                                        <td>Rp. <?php echo  number_format($value['jumlah']) ?> </td>
                                    </tr>
                                    <?php
                                        }
                                    ?>
                                </tbody>
                                <tfooter>
                                <tr>
                                    <td colspan="3"> Total </td>
                                    <td>Rp. <?php echo number_format($total) ?></td>
                                </tr>
                            <tfooter>
                            </table>
