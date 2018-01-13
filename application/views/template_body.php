<body class="hold-transition skin-purple sidebar-mini fixed">
<div class="wrapper" style="overflow:auto">
<?php $this->load->view('template_body_header'); ?>
  <!-- Left side column. contains the logo and sidebar -->
<?php $this->load->view('template_body_sidebar'); ?>
  <!-- Content Wrapper. Contains page content -->
<?php $this->load->view($page); ?>

</div>

<!-- jQuery 3 -->

<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url() ?>/AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url() ?>/AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>

<!-- <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet"> -->



   <script src="<?php echo base_url() ?>js/jquery.dataTables.min.js"></script>
<link href="<?php echo base_url() ?>css/jquery.dataTables.min.css" rel="stylesheet">



</body>

<script>
  $(function () {

    $('.to_datatable').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false,
      "iDisplayLength": 10
    })
  })
</script>
