<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>Transaksi Telah Proses</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="btn-group">
										<a class="btn blue" href="<?php echo base_url();?>adminweb/cetaktransaksi">CETAK PENJUALAN</a>
									</div>

									<?php 
									
													 if($this->session->flashdata('berhasilretur')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Transaksi Berhasil Di retur</span>
																</div>";
													} 
													
							?>
									
								</div>
								<table id="table_id" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>No</th>
											<th>Kode Transaksi</th>
											<th>Nama Penerima</th>
											<th>Alamat</th>
											<th>Propinsi</th>
											<th>Kota</th>
											<th>Kode Pos</th>
											<th>Bank</th>
											<th>Jasa Pengiriman</th>
											<th>Status Retur</th>
											<th>Bukti Bayar</th>
											<th>Aksi</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										if ($data_transaksi->num_rows()>0) {
											foreach ($data_transaksi->result_array() as $tampil) { ?>
										<tr >
											<td><?php echo $no;?></td>
											<td><?php echo $tampil['kode_transaksi'];?></td>
											<td><?php echo $tampil['penerima'];?></td>
											<td><?php echo $tampil['alamat'];?></td>
											<td><?php echo $tampil['propinsi'];?></td>
											<td><?php echo $tampil['kota'];?></td>
											<td><?php echo $tampil['kode_pos'];?></td>
											<td><?php echo $tampil['nama_bank'];?></td>
											<td>
											
											<?php echo $tampil['nama'];?>
											</td>
											<td>

												<?php 
												if($tampil['retur'] == 'Ya') {
													echo "<a class='btn green' href='#'>Ya</a>";
												} else {
													echo "<a class='btn red' href='#'>Tidak</a>";
												}
											?></td>
											<td><img src="<?php echo base_url();?>images/bukti_bayar/<?php echo $tampil['bukti_bayar'];?>" width="100px"></td>
											<!-- <td><?php echo 'Rp.'.$this->cart->format_number($tampil['ongkos_kirim']);?></td> -->
											<td><a class="btn green" href="<?php echo base_url();?>adminweb/transaksi_retur/<?php echo $tampil['id_transaksi_header'];?>"><i class="icon-edit"></i>Retur</a>
											<a class="btn blue" href="<?php echo base_url();?>adminweb/semua_transaksi_detail/<?php echo $tampil['id_transaksi_header'];?>/<?php echo $tampil['kode_transaksi'];?>"><i class="icon-search"></i> Detail</a><br>
											<a class="btn orange" href="<?php echo base_url();?>adminweb/cetakfaktur/<?php echo $tampil['id_transaksi_header'];?>/<?php echo $tampil['kode_transaksi'];?>">Cetak Faktur</a>


										</td>
										</tr>
										<?php
										$no++;
										}
										}
										
										else { ?>
										<tr>
											<td colspan="12">No Result Data</td>
										</tr>
										<?php

										}
										?>
										
									</tbody>
								</table>
							</div>
						</div>
						
					</div>
				</div>

				


				


