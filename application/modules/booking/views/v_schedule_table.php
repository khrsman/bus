            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                      <div class="box-header">
                          Bulan : <?php echo date($bulan); ?>
                      </div>
                        <div class="box-body">
                            <div class="table-responsive">
                            <table id="dt" class="table table-hover table-bordered display" width="100%" cellspacing="0">
                            <?php
                            $month = $bulan;
                            $year = $tahun;
                            $number = cal_days_in_month(CAL_GREGORIAN, $month, $year); // 31
                            $unit = $this->db->get('unit')->result_array();
                            $booking = $this->db->query("SELECT EXTRACT( DAY FROM tanggal_dari ) tanggal_dari,
                                                  			 EXTRACT( DAY FROM tanggal_sampai ) tanggal_sampai,
                                                  			 tujuan, bk.id_marketing, nama_penyewa,id_unit,
                                                  			 (select MAX(status) from pembayaran byr where byr.id_booking = bk.id_booking) status
                                                         from booking bk where EXTRACT(MONTH FROM tanggal_dari)  = $bulan and EXTRACT(YEAR FROM tanggal_dari)  = $tahun ")->result_array();
                                                        //  echo $this->db->last_query();
                                                        //  die;
                            echo "  <thead><tr>";
                            for ($i=0; $i <= $number; $i++) {
                              Echo "<td width=50px>{$i}</td>";
                            }
                            echo "</tr></thead><tbody>";
                            foreach ($unit as $key => $value) {
                              $no_seri_unit = $value['seri'];
                              echo "<tr>";
                              echo "<td >{$no_seri_unit}</td>";
                              for ($i=1; $i <= $number; $i++) {
                                $tujuan = '';
                                $penyewa = $bgcolor = '';
                                foreach ($booking as $key => $value2) {
                                  if ($value2['tanggal_dari'] == $i && strpos($value2['id_unit'], $no_seri_unit) !== false ){
                                    $tujuan .= $value2['tujuan'];
                                    $penyewa .= $value2['nama_penyewa'];
                                    if($value2['status'] == "LUNAS"){
                                       $bgcolor = 'bgcolor = "#66ff66"';
                                    } else{
                                      $bgcolor = 'bgcolor = "#f45c42"';
                                    }
                                  }
                                }
                                Echo "<td {$bgcolor}>{$tujuan}<br>{$penyewa}</td>";
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
