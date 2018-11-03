<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN VALIDATION STATES-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>Upload Bukti Pembayaran</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>

							<?php 
									
													 if($this->session->flashdata('berhasil')){
														echo "<div class='alert alert-block alert-success show'>
															  <button type='button' class='close' data-dismiss='alert'>×</button>
																 <span>No Resi berhasil dimasukan</span>
																</div>";
													}


							?>


							<div class="portlet-body form">
								<!-- BEGIN FORM-->
	
                				<?php foreach($pemesanan as $p) { ?>

								<form  action="<?php echo base_url('adminweb/proses_update_resi')?>" method="POST" class="form-horizontal" role="form" >
								<!-- <div class="control-group">
										<label class="control-label">Gambar</label>
										<div class="controls">
										<img src="<?php echo base_url()?>images/logo/<?=$gambar?>">
										</div>
									</div> -->

									<input type="hidden"  name="id_transaksi_header" value="<?php echo $p->id_transaksi_header ; ?>" class="form-control" >
									<div class="control-group">
										<label class="control-label">No Resi</label>
										<div class="controls">
											<input type="text" name="no_resi" value="<?php echo $p->no_resi?>" class="default" />
										</div>
									</div>

									

									 
									<div class="form-actions">
										<button type="submit" id="update" class="btn green"><i class="icon-ok"></i> Update</button>
										
									</div>
								</form>
								<?php  } ?>
								<!-- END FORM-->
							</div>
						</div>
						<!-- END VALIDATION STATES-->
					</div>
				</div>


