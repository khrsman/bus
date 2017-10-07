<div id="page_custom" value="schedule">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Schedule/ Rencana Pemberangkatan bus DMH</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">booking</li>
            </ol>
        </section>
        <section class="content">

            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                      <div class="box-header">
                          Bulan : <?php echo date('F'); ?>

                      </div>
                        <div class="box-body">
                            <div class="table-responsive">
                            <table id="dt" class="table table-hover table-bordered display" width="100%" cellspacing="0">
                            <?php
                            $month = date('m');
                            $year = date('Y');
                            $number = cal_days_in_month(CAL_GREGORIAN, $month, $year); // 31


                            $unit = $this->db->get('unit')->result_array();
                            $booking = $this->db->query('SELECT EXTRACT( DAY FROM tanggal_dari ) tanggal_dari,
                                                  			 EXTRACT( YEAR_MONTH FROM tanggal_dari ),
                                                  			 tujuan, bk.id_marketing, nama_penyewa,id_unit,
                                                  			 (select MAX(status) from pembayaran byr where byr.id_booking = bk.id_booking) status
                                                         from booking bk')->result_array();

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
            <div class="row" id="tabel">
                <div class="col-md-6">
                    <div class="box box-primary">

                        <div class="box-body">
                          <div class="form-group">
                            <label class="col-sm-3 control-label">Pilih bulan</label>
                            <div class="col-sm-5">
                                <?php
                                $this->load->library('Cb_options');
                                $this->cb_options->bulan();
                                ?>
                            </div>
                            <div class="col-sm-4">
                                <button type="input" class="btn btn-primary edit_page"><span class="fa fa-check"></span> Lihat jadwal</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</section>
</div>
