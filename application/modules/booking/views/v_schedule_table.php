
            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                      <div class="box-header">
                          Bulan : <?php echo date($bulan); ?>
                          Tahun : <?php echo date($tahun); ?>

                            <a class="btn btn-success" style="float:right; padding:5px" href='<?php echo site_url("booking/view_schedule_excel?bulan=$bulan&tahun=$tahun") ?>'><span class="fa fa-file-excel-o "></span> Export Excel</a>

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
                                <div style='font-size:10; color:#000; text-align: center; font-weight: bold;$marketing'>
                                   {$id_marketing}</div> {$id_booking} </td>";
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

            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Detail Booking</h4>
                        </div>
                        <div class="modal-body" style="padding:20">

                            <table id="modal_table" class="table">
                                <tr>
                                    <td><strong>Nama</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_nama"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Telepon</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_telepon"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Alamat Jemput</strong></strong>
                                    </td>
                                    <td>: </td>
                                    <td><span id="modal_alamat_jemput"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Tujuan</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_tujuan"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Tanggal</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_dari"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Unit</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_unit"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Total Harga</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_total_harga"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Status Bayar</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_status_bayar"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Sisa</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_sisa"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Kas Jalan</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_kas_jalan"> - </span></td>
                                </tr>
                                <tr>
                                    <td><strong>Total Bersih</strong></td>
                                    <td>: </td>
                                    <td><span id="modal_total_bersih"> - </span></td>
                                </tr>
                            </table>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /Modal -->

<script type="text/javascript">
$('td').click( function() {
 var id = $(this).attr('value');
 // alert(id);
 $.get("<?php echo site_url() ?>/booking/detail?id=" + id, function(data, status) {
     //  console.log(data);
     var arr = JSON.parse(data);

     unit = arr.unit;

     txt_unit = '<table class="table">';
     unit.forEach(function(element) {
         kas_jalan = element.kas_jalan || 0;
         txt_unit = txt_unit + '<tr><td>' + element.seri + '</td><td> Rp. ' + element.harga + '</td><td> Kas Jalan Rp. ' + kas_jalan + ' </td></tr>';

     });
     txt_unit = txt_unit + '</table>';

     $("#modal_nama").text(arr.nama_penyewa);
     $("#modal_telepon").text(arr.no_telepon);
     $("#modal_alamat_jemput").text(arr.alamat_jemput);
     $("#modal_tujuan").text(arr.tujuan);
     $("#modal_dari").text(arr.tanggal);
     $("#modal_unit").html(txt_unit);
     $("#modal_total_harga").text('Rp. ' + arr.total);
     $("#modal_status_bayar").text(arr.status_bayar);
     $("#modal_sisa").text(arr.sisa);
     $("#modal_kas_jalan").text(arr.kas_jalan_total);
     $("#modal_total_bersih").text(arr.total_bersih);

 });
 $("#myModal").modal();
 });
</script>
