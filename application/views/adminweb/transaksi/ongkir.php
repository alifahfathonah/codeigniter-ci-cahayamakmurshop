<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN VALIDATION STATES-->
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-reorder"></i>Edit Brand</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form method="POST" action="<?php echo base_url()?>adminweb/ongkirtransaksi_update">
								<div id="form_sample_2" class="form-horizontal">
								<div id="box" class="alert alert-success hide">
										
									</div>
									<input type="hidden" name="id_transaksi_header" id="id_transaksi_header" value="<?php echo $id_transaksi_header;?>">
									

									<div class="control-group">
										<label class="control-label">Kode Transaksi</label>
										<div class="controls">
											<input type="text" name="kode_transaksi" id="kode_transaksi" class="span6 m-wrap" value="<?php echo $kode_transaksi;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Penerima</label>
										<div class="controls">
											<input type="text" name="penerima" id="penerima" class="span6 m-wrap" value="<?php echo $penerima;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">email</label>
										<div class="controls">
											<input type="text" name="email" id="email" class="span6 m-wrap" value="<?php echo $email;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">alamat</label>
										<div class="controls">
											<input type="text" name="alamat" id="alamat" class="span6 m-wrap" value="<?php echo $alamat;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">No Telepon</label>
										<div class="controls">
											<input type="text" name="no_telepon" id="no_telepon" class="span6 m-wrap" value="<?php echo $no_telepon;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Provinsi</label>
										<div class="controls">
											<input type="text" name="propinsi" id="propinsi" class="span6 m-wrap" value="<?php echo $propinsi;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Kota</label>
										<div class="controls">
											<input type="text" name="kota" id="kota" class="span6 m-wrap" value="<?php echo $kota;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Kode Pos</label>
										<div class="controls">
											<input type="text" name="kode_pos" id="kode_pos" class="span6 m-wrap" value="<?php echo $kode_pos;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Bank</label>
										<div class="controls">
											<input type="text" name="bank_id" id="bank_id" class="span6 m-wrap" value="<?php echo $bank_id;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Jasa Pengiriman</label>
										<div class="controls">
											<input type="text" name="jasapengiriman_id" id="jasapengiriman_id" class="span6 m-wrap" value="<?php echo $jasapengiriman_id;?>"/>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label">Ongkos kirim</label>
										<div class="controls">
											<input type="text" name="ongkos_kirim" id="ongkos_kirim" class="span6 m-wrap" value="<?php echo $ongkos_kirim;?>"/>
										</div>
									</div>

									
									
									<div class="form-actions">
										<button type="submit" id="update" class="btn green"><i class="icon-ok"></i> Update</button>
										<a href="<?php echo base_url();?>adminweb/transaksi" class="btn white"><i class="icon-long-arrow-left"></i> Kembali</a>
										
									</div>
								</div></form>
								<!-- END FORM-->
							</div>
						</div>
						<!-- END VALIDATION STATES-->
					</div>
				</div>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
