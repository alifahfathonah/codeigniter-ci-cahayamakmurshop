<style>
    #customers {
        font-family: 'Open Sans', sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }

    #customers tr:nth-child(even){background-color: #f2f2f2;}

    #customers tr:hover {background-color: #ddd;}

    #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #b6b6b6;
        color: black;
    }
</style>
<p align="center"><h1 align="center">Faktur Transaksi Textile Cahaya Makmur Bandung</h1></p>
<table border="0px">
									<?php if ($data_header->num_rows()>0) {
											foreach ($data_header->result_array() as $tampil) { ?>
									<thead align="left">
										<tr>
											<td><b>Kode Transaksi</b></td>
											<td>:</td>
											<td><?php echo $tampil['kode_transaksi'];?></td>
											<td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><b>Provinsi</b></td>
											<td>:</td>
											<td><?php echo $tampil['propinsi'];?></td>

										</tr>

										<tr>
											<td><b>Penerima</b></td>
											<td>:</td>
											<td><?php echo $tampil['penerima'];?></td>
											<td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><b>Kota</b></td>
											<td>:</td>
											<td><?php echo $tampil['kota'];?></td>
										</tr>

										<tr>
											<td><b>Email</b></td>
											<td>:</td>
											<td><?php echo $tampil['email'];?></td>
											<td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><b>Kode Pos</b></td>
											<td>:</td>
											<td><?php echo $tampil['kode_pos'];?></td>
										</tr>
										</tr>

										<tr>
											<td><b>Alamat</b></td>
											<td>:</td>
											<td><?php echo $tampil['alamat'];?></td>
											<td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><b>No Telp</b></td>
											<td>:</td>
											<td><?php echo $tampil['no_telepon'];?></td>
										</tr>
											

										<tr>
											<td><b>Pembayaran</b> </td>
											<td>:</td>
											<td><?php echo $tampil['nama_bank'];?></td>
											<td width="50%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><b>Kurir</b></td>
											<td>:</td>
											<td><?php echo $tampil['nama'];?></td>
										</tr>

										

									</thead>
									<?php
										}
										}
										
										else { ?>
										<tr>
											<td colspan="11">No Result Data</td>
										</tr>
										<?php

										}
										?>
								</table>

								<br>

								<table id="customers" >
									<thead>
										<tr>
											<th>No</th>
											<th>Kode Transaksi</th>
											<th>Kode Produk</th>
											<th>Nama Produk</th>
											<th>Harga</th>
											<th>Jumlah</th>
											
											
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										if ($data_detail->num_rows()>0) {
											foreach ($data_detail->result_array() as $tampil) { ?>
										<tr >
											<td><?php echo $no;?></td>
											<td><?php echo $tampil['kode_transaksi'];?></td>
											<td><?php echo $tampil['kode_produk'];?></td>
											<td><?php echo $tampil['nama_produk'];?></td>
											<td><?php echo 'Rp.'.$this->cart->format_number($tampil['harga']);?></td>
											<td><?php echo $tampil['jumlah'];?></td>
											
											
										</tr>
										<?php
										$no++;
										}
										}
										
										else { ?>
										<tr>
											<td colspan="6">No Result Data</td>
										</tr>
										<?php

										}
										?>
										
									</tbody>


								</table>

								
								<?php 
								foreach ($data_total->result_array() as $value) {
									$total  =  $value['total'];
								}
								?>

								<table id="customers">
								<tr>
								  <th colspan="6">Total Transaksi =  <?php echo 'Rp.'.$this->cart->format_number($total);?> </th>
								<tr>

								
								</table>
								<br><br><br><br>


								<h3>(Staff Marketing)</h3><br><bR><br><br>



								&nbsp;&nbsp;&nbsp;&nbsp;<h3><u>Yanti Permana</u></h3>