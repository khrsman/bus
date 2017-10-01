$().ready(function(){
  var page = $("#page").attr("value");

  // inisiasi data table
  if(typeof page != 'undefined'){
    var url_get = page+'/get';
    var url_simpan = page+'/add';
    var url_edit =  page+'/get_for_edit';
    var url_update =  page+'/update';
    var url_hapus =  page+'/delete';
    loadDataTable(url_get);
  } else{
    var page = $("#page_custom").attr("value");
    var url_simpan = page+'/add';
    var url_edit =  page+'/get_for_edit';
    var url_update =  page+'/update';
    var url_hapus =  page+'/delete';
    var url_get = page+'/get';
  }


// tampilkan form tambah data
  $('#tambah').click(function(){
    if($('#tabel').is(':visible')){
      $('.add_page').show();
      $('.edit_page').hide();
      $('.edit_protection').prop('readonly', false);
      $('#tabel').toggle( "slide", 'slow', function(){$('#form_tambah').toggle( "slide");});
    } else{
      $('#form_tambah').toggle( "slide", 'slow', function(){$('#tabel').toggle( "slide");});
    }
  });
  $('#cancel').click(function(){
    $('#form_tambah').toggle( "slide", 'slow', function(){$('#tabel').toggle( "slide");});
  });

  // tombol edit di klik
  $('body').on('click', '.edit', function() {
    var id = $(this).val();
    edit(id,url_edit);
  });
  // tombol hapus di klik
  $('body').on('click', '.hapus', function() {
    var id = $(this).val();
    hapus(id,url_hapus);
  });
  // tombol simpan di klik
  $('#simpan').click(function(){
    // kirim data form berdasarkan nama(property name) inputannya
    var data = $('form').serialize();
    simpan(data,url_simpan)
  });
 // tombol update di klik
  $('#update').click(function(){
    // kirim data form berdasarkan nama(property name) inputannya
    var data = $('form').serialize();
    update(data,url_update);
  });
});

// aksi pada saat tombol enter ditekan
    $("form").keypress(function (e) {
     if (e.which == 13) {
       e.preventDefault()
       var data = $('form').serialize();;
       if($("#simpan").is(":visible")){
         simpan(data,url_simpan)
       }
       if($("#update").is(":visible")){
         update(data,url_update);
       }
     }
 });




 // fungsi nisiasi data table
function loadDataTable(url){
$('#dt').dataTable({
  // "scrollX": true,
  "bLengthChange": false,
  "displayLength":10,
  "language": {
          "lengthMenu": "Tampilkan _MENU_ data per halaman ",
          "search": "Cari ",
          "zeroRecords": "Nothing found - sorry",
          "info": "Menampilkan halaman _PAGE_ dari _PAGES_ ",
          "infoEmpty": "Tidak ada data",
          "infoFiltered": "(filtered from _MAX_ total records)"
      },
  "ajax": {
    "url": url,
    "dataSrc": function ( json ) {
      // tambahkan button aksi
      var index_action = json[0].length;
      for ( var i=0, ien=json.length ; i<ien ; i++ ) {
        // masukan aksi kedalam data json
        json[i][index_action] = '<button value="'+json[i][0]+'" class="btn btn-primary edit" ><i class="fa fa-pencil"></i> Edit</button> '+
        '<button value="'+json[i][0]+'" class="btn btn-danger hapus"><i class="fa  fa-trash"></i> Hapus</button>';
        json[i].splice(0,1); // hapus kolom index
      }
        // console.log(json);
      return json;

    }
  },
  "fnInitComplete": function() {
    // aksi setelah berhasil inisiasi data table
  }
});
}




// fungsi Tampilkan halaman edit
function edit(id,url_edit){
  $.ajax({
      type: "GET",
      url: url_edit,
      data: {id: id},
      success: function (resdata) {
        $('.edit_page').show();
        $('.edit_protection').prop('readonly', true);
        $('.add_page').hide();
      $('#tabel').toggle( "slide", 'slow', function(){$('#form_tambah').toggle( "slide");});
      var arr = JSON.parse(resdata);
      $.each(arr[0], function(key, value){
        var id_val = key;
        $("#"+id_val).val(value);
      });

      },
      error: function (jqXHR, exception) {
        // pesan error menggunakan notify.js
        $.notify({
          title: "Error :",
          message: "Telah terjadi kesalahan!",
          icon: 'fa fa-check'
        },{
          type: "danger"
        });
      }
  });
}

// fungsi update
function update(data,url_update){
  $.ajax({
      type: "POST",
      url: url_update,
      data: {data: data},
      success: function (resdata) {
        $.notify({
          title: "Berhasil : ",
          message: "Data telah diupdate",
          icon: 'fa fa-check'
        },{
          type: "success"
        });
          $(".xform")[0].reset();
            location.reload();
      },
      error: function (jqXHR, exception) {
        // pesan error menggunakan notify.js
        $.notify({
          title: "Error :",
          message: "Telah terjadi kesalahan!",
          icon: 'fa fa-check'
        },{
          type: "danger"
        });
      }
  });
}

// fungsi hapus
function hapus(id,url_hapus){
  $.ajax({
      type: "GET",
      url: url_hapus,
      data: {id: id},
      success: function (resdata) {
        $.notify({
          title: "Berhasil : ",
          message: "Data berhasil dihapus",
          icon: 'fa fa-check'
        },{
          type: "success"
        });
         location.reload();
      },
      error: function (jqXHR, exception) {
        // pesan error menggunakan notify.js
        $.notify({
          title: "Error :",
          message: "Telah terjadi kesalahan!",
          icon: 'fa fa-check'
        },{
          type: "danger"
        });
      }
  });
}

// fungsi simpan
function simpan(data, url_simpan){
  $.ajax({
      type: "POST",
      url: url_simpan,
      data: {data: data},
      success: function (resdata) {
        $.notify({
          title: "Berhasil : ",
          message: "Data telah ditambahkan",
          icon: 'fa fa-check'
        },{
          type: "success"
        });
          $(".xform")[0].reset();
            location.reload();
      },
      error: function (jqXHR, exception) {
        // pesan error menggunakan notify.js
        $.notify({
          title: "Error :",
          message: "Telah terjadi kesalahan!",
          icon: 'fa fa-check'
        },{
          type: "danger"
        });
      }
  });
}
