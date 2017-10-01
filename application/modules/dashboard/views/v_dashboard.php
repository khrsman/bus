<div id="page" value="barang">
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>barang</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">barang</li>
            </ol>
        </section>
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>150</h3>
                  <p>Total Kendaraan</p>
                </div>
                <div class="icon">
                  <span class="fa fa-automobile"></span>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>44</h3>
                  <p>Perbaikan bulan ini</p>
                </div>
                <div class="icon">
                  <span class="fa fa-gear"></span>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65</h3>

                  <p>Kendaraan butuh perbaikan</p>
                </div>
                <div class="icon">
                  <span class="fa fa-wrench"></span>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
          <!-- /.row -->
          <!-- Main row -->
          <div class="row">
            <!-- Left col -->


            <!-- right col -->
          </div>
          <!-- /.row (main row) -->

          <div class="row">
            <div class="col-md-6">
              <!-- LINE CHART -->
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Line Chart</h3>

                  <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body chart-responsive">
                  <div class="chart" id="line-chart" style="height: 300px;"></div>
                </div>
                <!-- /.box-body -->
              </div>
              <!-- /.box -->

</div>
<div class="col-md-6">
              <!-- BAR CHART -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title">Bar Chart</h3>

                  <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body chart-responsive">
                  <div class="chart" id="bar-chart" style="height: 300px;"></div>
                </div>
                <!-- /.box-body -->
              </div>
              <!-- /.box -->

            </div>

          </div>

        </section>

    </div>
</div>
</section>
</div>



  <!-- jQuery 3 -->
  <script src="<?php echo base_url() ?>/AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?php echo base_url() ?>/AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- Morris.js charts -->
  <script src="<?php echo base_url() ?>/AdminLTE/bower_components/raphael/raphael.min.js"></script>
  <script src="<?php echo base_url() ?>/AdminLTE/bower_components/morris.js/morris.min.js"></script>
  <!-- FastClick -->
  <script src="<?php echo base_url() ?>/AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>

  <!-- page script -->
  <script>
    $(function () {
      "use strict";


      // LINE CHART
      var line = new Morris.Line({
        element: 'line-chart',
        resize: true,
        data: [
          {y: '2011 Q1', item1: 2666},
          {y: '2011 Q2', item1: 2778},
          {y: '2011 Q3', item1: 4912},
          {y: '2011 Q4', item1: 3767},
          {y: '2012 Q1', item1: 6810},
          {y: '2012 Q2', item1: 5670},
          {y: '2012 Q3', item1: 4820},
          {y: '2012 Q4', item1: 15073},
          {y: '2013 Q1', item1: 10687},
          {y: '2013 Q2', item1: 8432}
        ],
        xkey: 'y',
        ykeys: ['item1'],
        labels: ['Item 1'],
        lineColors: ['#3c8dbc'],
        hideHover: 'auto'
      });


      //BAR CHART
      var bar = new Morris.Bar({
        element: 'bar-chart',
        resize: true,
        data: [
          {y: '2006', a: 100, b: 90},
          {y: '2007', a: 75, b: 65},
          {y: '2008', a: 50, b: 40},
          {y: '2009', a: 75, b: 65},
          {y: '2010', a: 50, b: 40},
          {y: '2011', a: 75, b: 65},
          {y: '2012', a: 100, b: 90}
        ],
        barColors: ['#00a65a', '#f56954'],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['CPU', 'DISK'],
        hideHover: 'auto'
      });
    });
  </script>
