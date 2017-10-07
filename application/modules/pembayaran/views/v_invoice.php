<!doctype html>
<html>
<head>

      <style>
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

    .invoice-box table{
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
    }

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

<body>
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
                  <?php echo $inv['tanggal_dari']." jam ".$inv['jam_dari']." s.d ".$inv['tanggal_sampai']." jam ".$inv['jam_dari']  ?>
                </td>
            </tr>
            <tr class="item">
                <td>
                  Jumlah
                </td>
                <td>
                  <?php echo $inv['jumlah_bus'] ?> bus x  Rp. <?php echo $inv['harga'] ?>
                </td>
            </tr>
            <tr class="item">
                <td>
                Harga
                </td>
                <td>
                    Rp. <?php echo $inv['total'] ?>
                </td>
            </tr>
            <tr class="item">
                <td><br><br><br><strong>Jumlah: Rp. <?php echo $inv['total'] ?><strong></td>
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
</body>
</html>

<style type="text/css" media="print">
@page
  {
      size:  auto;   /* auto is the initial value */
      margin: 0mm;  /* this affects the margin in the printer settings */
  }
</style>
