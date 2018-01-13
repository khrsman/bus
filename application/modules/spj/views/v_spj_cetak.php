<head>
<style type="text/css" media="print">
@page
  {
      size:  auto;   /* auto is the initial value */
      margin: 0mm;  /* this affects the margin in the printer settings */
  }
  .btn{
              display:none;
          }
</style>

<style>        
    .invoice-box{
        max-width:800px;
        margin:auto;
        padding:30px;
        border:1px solid #eee;
        box-shadow:0 0 10px rgba(0, 0, 0, .15);
        font-size:12px;
        line-height:24px;
        /* font-family:'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; */
        font-family: serif;
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
        /* border-bottom:1px solid #eee; */
    }

    .invoice-box table tr.item.last td{
        border-bottom:none;
    }

    .invoice-box table tr.total td:nth-child(1){
        border-top:2px solid #eee;
        font-weight:bold;
    }

    /* @media only screen and (max-width: 600px) {
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
    } */
    </style>
</head>

  <div class="content-wrapper">
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

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="information">
                <td colspan="2">
                  <center><strong><h2>SURAT PERINTAH JALAN</h2></strong></center>
                  <br>
                
                  <br>
                </td>
            </tr>          
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>                              
                              <span style="display:inline-block; width: 100px;"><strong>No unit </strong></span>: <?php echo $spj['unit'] ?><br>
                              <span style="display:inline-block; width: 100px;"><strong>Type unit </strong></span>: <?php echo $spj['tipe_bus'] ?> <br>
                              <span style="display:inline-block; width: 100px;"><strong>Tanggal</strong></span>: <?php echo $spj['tanggal_dari']." - ".$spj['tanggal_sampai'] ?><br>
                            </td>
                            
                            <td>
                            <span style="display:inline-block; width: 120px;"><strong>Sopir</strong></span>: <?php echo $spj['nama_sopir'] ?><br>
                              <span style="display:inline-block; width: 120px;"><strong>Crew </strong></span>: <?php echo $spj['nama_crew'] ?><br>
                              
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr class="heading" >
                  <td colspan="2">
                <center>Detail</center>
                </td>
            </tr>
            <tr class="item">
                <td style="width:150px">
                Alamat jemput
                </td>
                <td>
                  <?php echo $spj['alamat_jemput'] ?>
                </td>
            </tr>
            <tr class="item">
                <td>
                Jam jemput
                </td>
                <td>
                  <?php echo $spj['jam_jemput'] ?>
                </td>
            </tr>
            <tr class="item">
                <td>
                    Tujuan
                </td>

                <td>
                  <?php echo $spj['tujuan']
                  ?>
                </td>
            </tr>

            <tr class="item">
                <td>
                    Penyewa
                </td>

                <td>
                    <?php echo $spj['nama_penyewa'] ?>
                </td>
            </tr>   
            <tr class="item">
            <td>              
            </td>
            <td>          
            </td>
        </tr>      
           
            <tr class="heading">
                  <td colspan="2">
                <center>Pengeluaran</center>
                </td>
            </tr>

            <tr class="">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                              <span style="display:inline-block; width: 120px; text-align:center">Upah</span><br>
                              <span style="display:inline-block; width: 120px;">Sopir</span>: Rp. <?php echo $spj['biaya_sopir'] ?> <br>
                              <span style="display:inline-block; width: 120px;">Crew</span>: Rp. <?php echo $spj['biaya_crew'] ?><br>
                            </td>
                            <td>
                              <span style="display:inline-block; width: 120px; text-align:center">Operasional</span><br>
                              <span style="display:inline-block; width: 120px;">Solar</span>: Rp. <?php echo $spj['biaya_solar'] ?> <br>
                              <span style="display:inline-block; width: 120px;">Tol</span>: Rp. <?php echo $spj['biaya_tol'] ?> <br>
                              <span style="display:inline-block; width: 120px;">Parkir</span>: Rp. <?php echo $spj['biaya_parkir'] ?> <br>
                              <span style="display:inline-block; width: 120px;">Tips</span>: Rp. <?php echo $spj['biaya_tips'] ?> <br>
                              <span style="display:inline-block; width: 120px;">Penyebrangan</span>: Rp. <?php echo $spj['biaya_penyebrangan'] ?> <br>
                              <span style="display:inline-block; width: 120px;">Lain</span>: Rp. <?php echo $spj['biaya_lain'] ?> <br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr class="item">

            </tr>
        </table>
        <table>
            <tr>
              <td style="font-size:10px">
                  <br>Keterangan:
                  <br>Biaya tol, parkir dan penyebrangan
                  <br>ditanggung konsumen
                </td>
                  <td style="float:right; padding-right: 100px;" >
                    <br>bandung, <?php echo $spj['tanggal_spj'] ?> 
                </td>
            </tr>
        </table>
    </div>
</div>
