        <section class="content">
          <div class="row" id="tabel">
              <div class="col-md-12">
                  <div class="box box-primary">
                    <div class="box-header">
                      <h3>  Laporan Rekap Pengeluaran </h3>
                    </div>
                      <div class="box-body">
                          <table id="dt" class="table table-hover table-bordered display nowrap" width="100%" cellspacing="0">
                              <thead>
                                  <tr>
                                     <th>Kategori</th>
                                     <th>Jumlah</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <?php foreach ($data_rekap as $key => $value) { ?>
                                  <tr>
                                      <td><?php echo $value['kategori'] ?></td>
                                      <td><?php echo $value['jumlah'] ?></td>
                                  </tr>
                                  <?php   } ?>
                              </tbody>
                          </table>
                      </div>
                  </div>
              </div>
          </div>

    </div>
</div>
</section>
