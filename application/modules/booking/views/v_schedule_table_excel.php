<?php
header("Content-Type:   application/vnd.ms-excel; charset=utf-8");
header("Content-Disposition: attachment; filename=Jadwal($bulan/$tahun).xls");  //File name extension was wrong
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);
 ?>


                          Bulan : <?php echo date($bulan); ?>
                          Tahun : <?php echo date($tahun); ?>



                            <table id="dt" class="table table-bordered table-hover table-condensed no-wrap " width="100%" cellspacing="0" style="white-space:nowrap; font-size: 12px;">
                            <?php
                            $month = $bulan;
                            $year = $tahun;
                            $number = cal_days_in_month(CAL_GREGORIAN, $month, $year); // 31
                            $unit = $this->db->get('unit')->result_array();
                            $booking = $this->db->query("select id_booking, id_unit, warna, nama_penyewa, tujuan, id_marketing,
                            EXTRACT( DAY FROM tanggal ) tanggal,
                            (select MAX(status) from pembayaran byr where byr.id_booking = bk.id_booking) status
                             from booking bk join detail_booking using(id_booking)
                            left join marketing using(id_marketing)
                                                         where EXTRACT(MONTH FROM tanggal)  = $bulan and EXTRACT(YEAR FROM tanggal)  = $tahun ")->result_array();
                                                        // echo $this->db->last_query();
                                                        //  die;
                                                        // echo '<pre>';
                                                        //  print_r($booking);
                                                        //  die;
                            echo "  <thead><tr>";
                            for ($i=0; $i <= $number; $i++) {
                              $date = "$i-$month-$year";
                              $nameOfDay = date('D', strtotime($date));
                              if($nameOfDay == 'Sun'){
                                Echo "<td width=50px style='background-color: #f44336;'><strong>{$i}</strong></td>";
                              } else {
                                Echo "<td width=50px style='background-color: #CFD8DC;'><strong>{$i}</strong></td>";
                              }

                            }
                            echo "</tr></thead><tbody>";
                            foreach ($unit as $key => $value) {
                              $id_unit = $value['id_unit'];
                              $no_seri_unit = $value['seri'];
                              echo "<tr>";
                                echo "<td style='background-color: #CFD8DC;'><strong>{$no_seri_unit}</strong></td>";
                              for ($i=1; $i <= $number; $i++) {
                                $id_booking = '';
                                $penyewa = $bgcolor = $id_marketing = $marketing = '';
                                foreach ($booking as $key => $value2) {
                                  if ($value2['tanggal'] == $i && $value2['id_unit'] == $id_unit ){
                                    $id_booking .= $value2['id_booking'];
                                    $penyewa .= $value2['nama_penyewa'];
                                    $id_marketing .= $value2['id_marketing'];
                                    if($value2['status'] == "LUNAS"){
                                       $bgcolor = 'bgcolor = "#66ff66"';
                                       $marketing = 'background-color:'.$value2['warna'];
                                    } else{
                                      $bgcolor = 'bgcolor = "#f45c42"';
                                      $marketing = 'background-color:'.$value2['warna'];
                                    }
                                  }
                                }
                                Echo "<td {$bgcolor} value=$id_booking>
                               {$id_booking} </td>";
                              }
                              echo "</tr>";
                            }
                            ?>
                          </tbody>
                            </table>
