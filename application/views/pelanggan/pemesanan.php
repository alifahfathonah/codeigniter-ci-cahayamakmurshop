<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>Status Pemesanan</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="btn-group">

									<a class="btn blue" href="<?php echo base_url('home/belanja/'.$this->session->userdata('id_user'))?>"><i class="icon-edit"></i>Belanja Lagi</a>
										
										
									</div>
									<?php 
									
													 if($this->session->flashdata('berhasilretur')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'></button>
																 <span>Pengajuan retur berhasil dilakukan</span>
																</div>";
													} 
													
							?>
								</div>
								<table id="table_id" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Kode Transaksi</th>
											<th>Nama Penerima</th>
											<th>Alamat</th>
											<th>Propinsi</th>
											<th>Kota</th>
											<th>Kode Pos</th>
											<th>Bank</th>
											<th>Kurir</th>
											<th>Retur</th>
											<th>Bukti Bayar</th>
											<th>No Resi</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<?php foreach ($sql as $p): ?>
										<tr >
											<td><?=$p->kode_transaksi ?></td>
											<td><?=$p->penerima ?></td>
											<td><?=$p->alamat ?></td>
											<td><?=$p->propinsi ?></td>
											<td><?=$p->kota ?></td>
											<td><?=$p->kode_pos ?></td>
											<td><?=$p->nama_bank ?></td>
											<td><?=$p->nama ?></td>
											<td>

											<?php 
												if($p->retur == 'Ya') {
													echo "<a class='btn green' href='#'>Ya</a>";
												} else {
													echo "<a class='btn red' href='#'>Tidak</a>";
												} ?>

											</td>
											<td>
											<?php if(!empty($p->bukti_bayar)) { ?>
                                             <img src="<?php echo base_url();?>images/bukti_bayar/<?=$p->bukti_bayar ?>" width="100px">
		                                      <?php } else {
		                                      	echo "<a class='btn red' href='#'>Belum Upload</a>";
		                                      }
		                                     ?>	
											</td>
											<td>

											<?php if(!empty($p->no_resi)) { ?>
                                           			 <?=$p->no_resi ?>
		                                      <?php } else {
		                                      	echo "<a class='btn red' href='#'>Belum disi</a>";
		                                      }
		                                     ?>	 

											</td>
											<!-- <td><?php echo 'Rp.'.$this->cart->format_number($tampil['ongkos_kirim']);?></td> -->
											<td><a class="btn green" href="<?= base_url()?>home/edit_pemesanan/<?=$p->id_transaksi_header?>"><i class="icon-edit"></i>Insert Bukti Bayar</a>
											<br><br>
											<a class="btn blue" href="<?= base_url()?>home/pemesanan_detail/<?=$p->id_transaksi_header?>/<?=$p->kode_transaksi?>"><i class="icon-search"></i>Detail Pemesanan</a>
											<br><br>
											<a class="btn red" onclick="return confirm('Anda yakin akan meretur pemesanan ini ?')" href="<?= base_url()?>home/edit_retur/<?=$p->id_transaksi_header?>"><i class="icon-edit"></i>Pengajuan Retur</a>
										

											</td>
										</tr>
										<?php endforeach ?>
									</tbody>
								</table>
							</div>
						</div>
						
					</div>
				</div>

				


				


