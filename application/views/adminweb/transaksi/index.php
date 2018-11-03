<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>Transaksi Proses</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="btn-group">
										
										
									</div>
									<?php 
									
													 if($this->session->flashdata('berhasil')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Transaksi Sudah Di Proses</span>
																</div>";
													} else if ($this->session->flashdata('berhasilongkir')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>Ongkos Kirim Berhasil Di Masukan dan Di Kirim Ke Pelanggan</span>
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
											<!-- <th>Email</th> -->
											<th>Alamat</th>
											<th>Kota</th>
											<th>Kode Pos</th>
											<th>Bank</th>
											<th>Kurir</th>
											<th>Bukti Bayar</th>
											<th>No Resi</th>
											<th></th>
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
											<!-- <td><?php echo $tampil['email'];?></td> -->
											<td><?php echo $tampil['alamat'];?></td>
											<td><?php echo $tampil['kota'];?></td>
											<td><?php echo $tampil['kode_pos'];?></td>
											<td><?php echo $tampil['nama_bank'];?></td>
											<td><?php echo $tampil['nama'];?></td>
											<!-- <td><?php echo 'Rp.'.$this->cart->format_number($tampil['ongkos_kirim']);?></td>-->
											<td>
											<?php if(!empty($tampil['bukti_bayar'])) { ?>
                                             <img  src="<?php echo base_url();?>images/bukti_bayar/<?php echo $tampil['bukti_bayar'];?>" width="100px">
		                                      <?php } else {
		                                      	echo "<a class='btn red' href='#'>Belum Upload</a>";
		                                      }
		                                     ?>	 </td>
											<td><?php echo $tampil['no_resi'];?></td>
											<!-- <td><a class="btn yellow" href="<?php echo base_url();?>adminweb/transaksi_edit/<?php echo $tampil['id_transaksi_header'];?>"><i class="icon-edit"></i>Ongkos Kirim</a></td> -->
											<td><a class="btn green" href="<?php echo base_url();?>adminweb/transaksi_proses/<?php echo $tampil['id_transaksi_header'];?>"><i class="icon-edit"></i> Proses</a><br>
											<a class="btn blue" href="<?php echo base_url();?>adminweb/transaksi_detail/<?php echo $tampil['id_transaksi_header'];?>/<?php echo $tampil['kode_transaksi'];?>"><i class="icon-search"></i> Detail</a><br>
											<a class="btn red" href="<?php echo base_url();?>adminweb/transaksi_cancel/<?php echo $tampil['id_transaksi_header'];?>"><i class="icon-trash"></i>Cancel</a><br>
											<a class="btn blue" href="<?php echo base_url();?>adminweb/edit_resi/<?php echo $tampil['id_transaksi_header'];?>"><i class="icon-edit"></i> Insert Resi</a>
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

				


				


