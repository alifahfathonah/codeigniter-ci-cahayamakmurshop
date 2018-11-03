<?php

class home_model extends CI_Model {

	public function buat_kode()   {
		  $this->db->select('RIGHT(tbl_user.id_user,4) as kode', FALSE);
		  $this->db->order_by('id_user','DESC');    
		  $this->db->limit(1);    
		  $query = $this->db->get('tbl_user');      //cek dulu apakah ada sudah ada kode di tabel.    
		  if($query->num_rows() <> 0){      
		   //jika kode ternyata sudah ada.      
		   $data = $query->row();      
		   $kode = intval($data->kode) + 1;    
		  }
		  else {      
		   //jika kode belum ada      
		   $kode = 1;    
		  }
		  $kodemax = str_pad($kode, 4, "0", STR_PAD_LEFT); // angka 4 menunjukkan jumlah digit angka 0
		  $kodejadi = "PLG-0000-".$kodemax;    // hasilnya ODJ-9921-0001 dst.
		  return $kodejadi;  
	}

	public function cek_user($username,$password){
    $this->db->select('*');
    $this->db->from('tbl_user');
    $this->db->where('username',$username);
    $this->db->where('password',$password);
    $query = $this->db->get();
    return $query->result();
  }


  public function info_pemesanan($id) {
	    $this->db->select('tbl_transaksi_header.*, tbl_user.id_user, tbl_bank.*, tbl_jasapengiriman.*');
	    $this->db->from('tbl_transaksi_header');
	    $this->db->join('tbl_user', 'tbl_transaksi_header.id_user = tbl_user.id_user');
	    $this->db->join('tbl_bank', 'tbl_transaksi_header.bank_id = tbl_bank.id_bank');
	    $this->db->join('tbl_jasapengiriman', 'tbl_transaksi_header.jasapengiriman_id = tbl_jasapengiriman.id_jasapengiriman');
	    $this->db->where('tbl_transaksi_header.id_user', $id);
	    $sql = $this->db->get()->result();
	    return $sql;
  	}


  	 public function info_pemesanan_detail($id1,$id2) {
	    $this->db->select('tbl_transaksi_header.*, tbl_user.id_user, tbl_bank.*, tbl_jasapengiriman.*,tbl_transaksi_detail.*');
	    $this->db->from('tbl_transaksi_header');
	    $this->db->join('tbl_user', 'tbl_transaksi_header.id_user = tbl_user.id_user');
	    $this->db->join('tbl_bank', 'tbl_transaksi_header.bank_id = tbl_bank.id_bank');
	    $this->db->join('tbl_jasapengiriman', 'tbl_transaksi_header.jasapengiriman_id = tbl_jasapengiriman.id_jasapengiriman');
	    $this->db->join('tbl_transaksi_detail', 'tbl_transaksi_header.kode_transaksi = tbl_transaksi_detail.kode_transaksi');
	    $this->db->where('tbl_transaksi_header.id_transaksi_header', $id1);
	    $this->db->where('tbl_transaksi_header.kode_transaksi', $id2);
	    $sql = $this->db->get()->result();
	    return $sql;
  	}

  	function GetTransaksiheader($id) {
		return $this->db->query("select a.*,b.*,c.* from tbl_transaksi_header a
		join tbl_bank b on a.bank_id=b.id_bank
		join  tbl_jasapengiriman c on a.jasapengiriman_id=c.id_jasapengiriman
		where a.id_transaksi_header='$id' ");
	}
	function GetDetailTransaksi($kode_transaksi) {
		return $this->db->query("select * from tbl_transaksi_detail where kode_transaksi='$kode_transaksi' order by id_transaksi_detail desc ");
	}

	function GetDetailTotal($kode_transaksi) {
		return $this->db->query("select sum(harga) as total from tbl_transaksi_detail where kode_transaksi='$kode_transaksi' order by id_transaksi_detail desc ");
	}

	function UpdateRetur($id) {
		return $this->db->query("update tbl_transaksi_header set retur='Ya' where id_transaksi_header='$id' ");
	}


  	function edit_data_pemesanan($where,$table){		
		return $this->db->get_where($table,$where);
	}

	function updatedata($tabel,$data,$where){
		return $this->db->update($tabel,$data,$where);
	}


	function GetLogo() {
		return $this->db->query("select * from tbl_logo");
	}

	function GetKontak() {
		return $this->db->query("select * from tbl_kontak");
	}

	function GetSosialMedia() {
		return $this->db->query("select * from tbl_sosial_media");
	}

	function GetSeo() {
		return $this->db->query("select * from tbl_seo");
	}

	function GetBank() {
		return $this->db->query("select * from tbl_bank order by id_bank desc");
	}

	function GetBrand() {
		return $this->db->query("select * from tbl_brand order by id_brand desc");
	}

	function GetSlider(){
		return $this->db->query("select * from tbl_slider where status='1' order by id_slider desc");
	}

	function GetKategori() {
		return $this->db->query("select * from tbl_kategori order by id_kategori desc");
	}

	function GetProduk() {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_kategori c on a.kategori_id=c.id_kategori order by id_produk desc limit 0,6 ");
	}

	function GetRandomProduk() {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_kategori c on a.kategori_id=c.id_kategori order by RAND('id_produk') asc limit 0,3 ");
	}

	function GetRandomActiveProduk() {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand join tbl_kategori c on a.kategori_id=c.id_kategori order by RAND('id_produk') desc limit 0,3 ");
	}

	function GetTentangKami(){
		return $this->db->query("select * from tbl_tentangkami");
	}

	function GetCaraBelanja() {
		return $this->db->query("select * from tbl_carabelanja");
	}

	function InsertHubungiKami($nama,$judul,$email,$hp,$alamat,$pesan,$tanggal) {
		return $this->db->query("insert into tbl_hubungikami values('','$nama','$judul','$email','$hp','$alamat','$pesan','$tanggal','')");
	}

	function GetJasaPengiriman() {
		return $this->db->query("select * from tbl_jasapengiriman order by id_jasapengiriman desc");
	}

	function GetProdukKategori($id_kategori) {
		return $this->db->query("select a.*,b.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori  where a.kategori_id='$id_kategori' order by a.id_produk desc");
	}

	function GetNamaKategoriId($id_kategori) {
		return $this->db->query("select * from tbl_kategori where id_kategori='$id_kategori'");
	}

	function GetProdukBrand($id_brand) {
		return $this->db->query("select a.*,b.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand  where a.brand_id='$id_brand' order by a.id_produk desc");
	}

	function GetNamaBrandId($id_brand) {
		return $this->db->query("select * from tbl_brand where id_brand='$id_brand'");
	}


	function GetProdukCari($cari) {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori join tbl_brand c on a.brand_id=c.id_brand where a.nama_produk like '%".$cari."%' or b.nama_kategori like '%".$cari."%' or c.nama_brand like '%".$cari."%' order by a.id_produk desc"); 
	} 

	function GetProdukId($id_produk) {
		return $this->db->query("select a.*,b.*,c.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori join tbl_brand c on a.brand_id=c.id_brand where a.id_produk='$id_produk'");
	}

	function cek_kode($tgl)
	{
		$query=$this->db->query("select MAX(kode_transaksi) as kd from tbl_transaksi_header where kode_transaksi like '%$tgl%'");
		return $query;
	}


	function update_dibeli($kd,$bl)
	{
		$query=$this->db->query("update tbl_produk set stok='$bl' where kode_produk='$kd'");
	}

	function simpan_pesanan($datainput)
	{
		$q = $this->db->query($datainput);
	}

	function InsertTransaksiHeader($kode_trans,$penerima,$email,$alamat,$no_telepon,$propinsi,$kota,$kode_pos,$bank_id,$jasapengiriman_id,$ongkos_kirim,$id_user) {
		return $this->db->query("insert into tbl_transaksi_header values('','$kode_trans','$penerima','$email','$alamat','$no_telepon','$propinsi','$kota','$kode_pos','$bank_id','$jasapengiriman_id','$ongkos_kirim','$id_user','','','','')");
	}

	function InsertUser($id_user,$username,$password) {
		return $this->db->query("insert into tbl_user values('$id_user','$username','$password')");
	}

	function sendemail($email,$subject,$isi_psn) {
        $ci = get_instance();
        $ci->load->library('email');
        $config['protocol'] = "smtp";
        $config['smtp_host'] = "ssl://smtp.gmail.com";
        $config['smtp_port'] = "465";
        $config['smtp_user'] = "buatptc12@gmail.com";
        $config['smtp_pass'] = "ians9966";
        $config['charset'] = "utf-8";
        $config['mailtype'] = "html";
        $config['newline'] = "\r\n";
        
        
        $ci->email->initialize($config);
 
        $ci->email->from('cahayamakmur@gmail.com', 'Cahaya Makmur Textile');
        $ci->email->to($email);
        $ci->email->subject($subject);
        $ci->email->message($isi_psn);
        $ci->email->send();
    }
}