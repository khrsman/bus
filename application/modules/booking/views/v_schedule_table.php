            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                      <div class="box-header">
                          Bulan : <?php echo date($bulan); ?>
                      </div>
                        <div class="box-body">
                            <div class="" style=" height: 60% !important;
    overflow: scroll;" >

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
                              Echo "<td width=50px>{$i}</td>";
                            }
                            echo "</tr></thead><tbody>";
                            foreach ($unit as $key => $value) {
                              $id_unit = $value['id_unit'];
                              $no_seri_unit = $value['seri'];
                              echo "<tr>";
                              echo "<td >{$no_seri_unit}</td>";
                              for ($i=1; $i <= $number; $i++) {
                                $tujuan = '';
                                $penyewa = $bgcolor = $id_marketing = $marketing = '';
                                foreach ($booking as $key => $value2) {
                                  if ($value2['tanggal'] == $i && $value2['id_unit'] == $id_unit ){
                                    $tujuan .= $value2['tujuan'];
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
                                Echo "<td {$bgcolor}>
                                <div style='font-size:10; color:#000; text-align: center; font-weight: bold;$marketing'>
                                   {$id_marketing}</div>{$penyewa}<br> {$tujuan} </td>";
                              }
                              echo "</tr>";
                            }
                            ?>
                          </tbody>
                            </table>

                        </div>
                        </div>
                    </div>
                </div>
            </div>
