 <div id="table_content">
            <div class="row" id="tabel">
                <div class="col-md-12">
                    <div class="box box-primary">
                      <div class="box-header">
                          Bulan : <span id="id_bulan"><?php echo $bulan; ?></span>
                          Tahun : <span id="id_tahun"><?php echo $tahun; ?></span>
                      </div>
                        <div class="box-body">

                            <div class="" style=" height: 60% !important;
    overflow: scroll;" >
                            <table id="dt" class="table table-bordered table-hover table-condensed no-wrap " width="100%" cellspacing="0" style="white-space:nowrap; ">
                            <?php
                            $month = $bulan;
                            $year = $tahun;
                            $number = cal_days_in_month(CAL_GREGORIAN, $month, $year); // 31
                            $this->db->select('id_unit, nama nama_unit, status status_unit ');

                            $unit = $this->db->get('unit')->result_array();

                   $booking = $this->db->query("
SELECT kode_warna,bk.id_booking, id_status, id_unit,EXTRACT( DAY FROM tanggal) tanggal, ifnull((select max(id_status) from pembayaran_vendor where id_booking = bk.id_booking),0) status_vendor from detail_booking
join booking bk using(id_booking)
join sumber using(id_sumber)
where EXTRACT(MONTH FROM tanggal)  = $bulan and EXTRACT(YEAR FROM tanggal)  = $tahun ")->result_array();

                                                        //  echo $this->db->last_query();
                                                        // print_r($booking);
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
                              // $id_booking = $value['id_booking'];
                              // $sumber = $value['sumber'];
                              $id_unit = $value['id_unit'];
                              $unit = $value['nama_unit'];
                              $status_unit = $value['status_unit'];
                              echo "<tr >";
                              echo  $status_unit == "arundina" ? "<td style='background-color: #CFD8DC;'><font style='color:blue'><strong>{$unit}</strong></font></td>": "<td style='background-color: #CFD8DC;'><strong>{$unit}</strong></td>";
                                for ($i=1; $i <= $number; $i++) {
                                  $data = '-';
                                  $bgcolor = '';
                                  $class = '';
                                  $sumber ='';
                                  $bgcolor_vendor ='';
                                  $id_booking = '';
                                  $val_booking = '';
                                  foreach ($booking as $key => $value2) {
                                    if($value2['tanggal'] == $i && $value2['id_unit'] == $id_unit){
                                      $class = 'booked';
                                      $id_booking = $value2['id_booking'];
                                      $val_booking = $value2['id_booking'];
                                       $sumber = $value2['kode_warna'];
                                       $status_vendor = $value2['status_vendor'];

                                        #status pembayaran customer
                                        if($value2['id_status'] == "0"){
                                           $bgcolor = "#f44336";
                                        }else if($value2['id_status'] == "1"){
                                          $bgcolor = "#FF9800";
                                        } else{
                                          $bgcolor = "#76FF03";
                                        }

                                        #status pembayaran vendor
                                        if($value2['status_vendor'] == "2"){
                                          $bgcolor_vendor = "#76FF03";
                                        } else{
                                          $bgcolor_vendor = "#f44336";
                                        }
                                    } else{
                                      $id_booking = $i."|".$id_unit;
                                    }
                                  }
                                  Echo "<td  id='$id_booking' value='$val_booking' class='$class' bgcolor = $bgcolor>
                                  <div style='font-size:10;  border: 1px solid #fff; background-color:$sumber; text-align: center; font-weight: bold; color: #fff'>
                                    -  </div>
                                    <div style='font-size:10; border: 1px solid #fff; background-color:$bgcolor_vendor; text-align: center; font-weight: bold; color: #fff'>
                                    -  </div>
                                     </td>";
                                    // echo "<td>$data</td>";
                                }
                                echo "</tr>";
                            }
                            ?>
                          </tbody>
                            </table>


                        </div>
                        </div>
                        <div class="box-footer">
                          <button class="btn btn-primary btn-sm float-right" id="tambah">Tambah Booking</button>
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
                    <div class="row">
                      <div class="col-md-6">
                        <table id="modal_table" class="table">
                        <tr>
                            <td><strong>Kode</strong></td>
                            <td>: </td>
                            <td><span id="detail_kode" >-</span></td>
                          </tr>
                          <tr>
                            <td><strong>Web</strong></td>
                            <td>: </td>
                            <td><span id="detail_web" >-</span></td>
                          </tr>
                          <tr>
                            <td><strong>Admin</strong></td>
                            <td>: </td>
                            <td><span id="detail_admin" >-</span></td>
                          </tr>
                          <tr>
                            <td><strong>Status Pembayaran</strong></td>
                            <td>: </td>
                            <td><span id="detail_status" > - </span></td>
                          </tr>
                          <tr>
                            <td><strong>Vendor</strong></td>
                            <td>: </td>
                            <td><span id="detail_vendor" > - </span></td>
                          </tr>
                        </table>
                      </div>
                      <div class="col-md-6 ">
                        <table id="modal_table" class="table">
                          <tr>
                            <td><strong>Nama</strong></td>
                            <td>: </td>
                            <td><span id="detail_nama" >-</span></td>
                          </tr>
                          <tr>
                            <td><strong>Telepon</strong></td>
                            <td>: </td>
                            <td><span id="modal_telepon" >-</span></td>
                          </tr>
                          <tr>
                            <td><strong>Tujuan</strong></td>
                            <td>: </td>
                            <td><span id="detail_tujuan" > - </span></td>
                          </tr>
                          <tr>
                            <td><strong>Alamat Jemput</strong></strong></td>
                            <td>: </td>
                              <td><span id="detail_alamat_jemput" > - </span></td>
                          </tr>

                          <tr>
                            <td><strong>Tanggal</strong></td>
                            <td>: </td>
                            <td><span id="detail_tanggal" > - </span></td>
                          </tr>
                          <tr>
                            <td><strong>Unit</strong></td>
                            <td>: </td>
                            <td><span id="modal_unit" > - </span></td>
                          </tr>
                        </table>
                      </div>
                    </div>

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                  </div>
                </div>

              </div>
            </div>
            </div>
            <!-- /Modal -->
<style media="screen">
    tr {
      font-size: 12px;
    }

    .selected{
      background-color: blue;
    }


</style>

<script src="<?php echo base_url() ?>js/jquery.redirect.js"></script>

<script type="text/javascript">

$('#tambah').click(function(){

  jumlah = $('.selected').length;
  bulan = $('#id_bulan').text();
  tahun = $('#id_tahun').text();
  arr_data = [];

  $(".selected").each(function(){
    data = this.id;
    splitdata = data.split("|");

    arr_data.push({tanggal: splitdata[0],
                   bulan: bulan,
                   tahun: tahun,
                   id_unit: splitdata[1]
                   });
  })

  // console.log(JSON.stringify(arr_data));
  if(jumlah > 0){
    $.redirect('<?php echo base_url('booking')?>',{data: arr_data});
  } else{
    alert('Pilih unit dan tanggalnya terlebih dahulu!');
  }

  //

//   request = $.post("<?php echo base_url('booking/booking_by_jadwal')?>",{data: arr_data});
// request.done(function(data){
//   $("#content").html(data);
// })
})

$('td').click( function() {
 var id = $(this).attr('value');
 var cid = $(this).attr('class');
if(cid != "booked"){
  $(this).toggleClass("selected");
} else{

request = $.get("<?php echo base_url('booking') ?>/detail_booking",{id : id});
request.done(function(data){
arr = JSON.parse(data);

$.each(arr, function(key, value){
          var id_val = key;
          $("#"+id_val).text(value);
          $("#"+id_val).val(value);
        });
})

  $("#myModal").modal();



}
 });
</script>
