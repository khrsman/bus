<!doctype html>
<html>
<head>
      <style>
              @media print {
  .btn {
    display: none;
  }
}
    .invoice-box{
        max-width:800px;
        margin:auto;
        padding:30px;
        border:1px solid #eee;
        box-shadow:0 0 10px rgba(0, 0, 0, .15);
        font-size:16px;
        line-height:24px;
        font-family:'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color:#555;
    }

    /*.invoice-box table{
        width:100%;
        line-height:inherit;
        text-align:left;
    }

    .invoice-box table td{
        padding:5px;
        vertical-align:top;
    }

    .invoice-box table tr td:nth-child(2){
        text-align:left;
    }


    .invoice-box table tr.top table td{
        padding-bottom:20px;
    }

    .invoice-box table tr.top table td.title{
        font-size:45px;
        line-height:45px;
        color:#333;
    }

    .invoice-box table tr.information table td{
        padding-bottom:40px;
    }

    .invoice-box table tr.heading td{
        background:#eee;
        border-bottom:1px solid #ddd;
        font-weight:bold;
    }

    .invoice-box table tr.details td{
        padding-bottom:20px;
    }

    .invoice-box table tr.item td{
        border-bottom:1px solid #eee;
    }

    .invoice-box table tr.item.last td{
        border-bottom:none;
    }

    .invoice-box table tr.total td:nth-child(1){
        border-top:2px solid #eee;
        font-weight:bold;
    }*/

    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td{
            width:100%;
            display:block;
            text-align:center;
        }

        .invoice-box table tr.information table td{
            width:100%;
            display:block;
            text-align:center;
        }
    }
    </style>
</head>
  <div class="content-wrapper">
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="margin:10px">
    <i class="fa fa-pencil"></i> Ubah Harga
  </button>
  <button class="btn btn-primary btn-lg" onclick="window.print()" style="margin:10px"><i class="fa fa-print"></i> Cetak</button>

    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                  <img src="<?php echo base_url() ?>img/logo_dmh.png" style="width:100px;">
                            </td>

                            <td style="text-align:right">
                                No : <?php echo $inv['id_booking'] ?><br>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <!-- <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                Next Step Webs, Inc.<br>
                                12345 Sunny Road<br>
                                Sunnyville, TX 12345
                            </td>

                            <td>
                                Acme Corp.<br>
                                John Doe<br>
                                john@example.com
                            </td>
                        </tr>
                    </table>
                </td>
            </tr> -->

            <tr class="information">
                <td colspan="2">
                  <center><strong>Invoice</strong></center><BR>
                </td>
            </tr>

            <tr class="heading">
                <td>
                    Detail
                </td>

                <td>

                </td>
            </tr>

            <tr class="item">
                <td>
                    Tujuan:
                </td>

                <td>
                    <?php echo $inv['tujuan'] ?>
                </td>
            </tr>
            <tr class="item">
                <td>
                    Tanggal:
                </td>

                <td>
                  <?php echo $inv['tanggal_dari']."  s.d ".$inv['tanggal_sampai'] ?>
                </td>
            </tr>
            <tr class="item">
                <td>
                  Jumlah
                </td>
                <td>
                  <div id="jumlah_bus_kwitansi">
                  <?php foreach ($harga_unit as $key => $value): ?>
                      <span >  <?php echo $value['jumlah'] ?> unit x  Rp. <?php echo $value['harga'] ?></span><br>
                  <?php endforeach; ?>
                </div>
                  <!-- <span id="jumlah_bus_kwitansi"> <?php echo $inv['jumlah_bus'] ?> bus x  Rp. <?php echo $inv['harga'] ?></span> -->
                </td>
            </tr>
            <tr class="item">
                <td>
                Harga
                </td>
                <td>
                    <span id="harga_total_kwitansi"> Rp. <?php echo $inv['total'] ?> </span>
                </td>
            </tr>
            <tr class="item">
                <td><br><br><br><strong> Jumlah: <span id="harga_total_kwitansi2"> Rp. <?php echo $inv['total'] ?> </span><strong></td>
                <td style="float:right">
                  bandung,
                  <?php
                    echo date('d');
                    echo " ".date('F');
                    echo " ".date('Y');

                       ?>
                </td>
            </tr>
        </table>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Ubah Harga</h4>
          </div>
          <div class="modal-body">
            <form role="form" class="form-horizontal xform">
                <input type="hidden" id="id_pegawai" name="id_pegawai" >
          <div class="form-group" >
                  <label class="col-sm-4 control-label">Jumlah bus x Harga</label>
                  <div class="col-sm-8">
                    <?php foreach ($harga_unit as $key => $value): ?>
                      <input type = "text" name="nama" value = "<?php echo $value['jumlah'] ?> unit x  Rp. <?php echo $value['harga'] ?>" class="form-control input_validation jumlah_bus_modal"  >
                  <?php endforeach; ?>
                      <!-- <input type = "text" name="nama" id="jumlah_bus_modal" value = "<?php echo $inv['jumlah_bus'] ?> bus x  Rp. <?php echo $inv['harga'] ?>" class="form-control input_validation "  > -->
                  </div>
            </div>
            <div class="form-group" >
                    <label class="col-sm-4 control-label">Harga total</label>
                    <div class="col-sm-8">
                        <input type = "text" id="harga_total_modal" value="<?php echo str_replace(',','',$inv['total']) ?>" class="form-control input_validation "  >
                    </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Kembali</button>
            <button type="button" class="btn btn-primary" id="update_harga" >Simpan</button>
          </div>
        </div>
      </div>
    </div>
</div>


<style type="text/css" media="print">
@page
  {
      size:  auto;   /* auto is the initial value */
      margin: 0mm;  /* this affects the margin in the printer settings */
  }
</style>

<script type="text/javascript">

Number.prototype.format = function(){
   return this.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
};


$("#update_harga").click(function(){

  harga_total = $("#harga_total_modal").val() || 0;
  harga_total = parseInt(harga_total);
  $("#jumlah_bus_kwitansi").html("");
  $('.jumlah_bus_modal').each(function(i, obj){
    val = obj.value;
   $("#jumlah_bus_kwitansi").append("<span>"+val+"</span><br>");
  })


  $("#harga_total_kwitansi").text("Rp. "+harga_total.format());
  $("#harga_total_kwitansi2").text("Rp. "+harga_total.format());
  //  $("#jumlah_bus_kwitansi").text($("#jumlah_bus_modal").val());

$('#myModal').modal('hide');

//
})

</script>
