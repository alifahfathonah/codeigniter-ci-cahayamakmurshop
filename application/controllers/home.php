<?php

class home extends CI_controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('home_model');
		$this->load->model('admin_model');

	}

	public function login() {
		$data['logo'] = $this->admin_model->GetLogo();
		$this->load->view('home/login',$data);
	}

	public function proses_login()
  {
  		$this->load->model('admin_model');
	  	$this->load->library('form_validation');
	  	$data['logo'] = $this->admin_model->GetLogo();

	  	$username = $this->input->post('username');
	    $password = md5($this->input->post('password'));
	    //$enkripsi_pass = hash('md5',$password);

	    $data_from_db = $this->home_model->cek_user($username,$password);// mengambil data dari fungsi cek_user
	    $hitung_datadb = count($data_from_db);

	    $this->form_validation->set_rules('username','Username','required|trim|xss_clean');// melakukan validasi form login
	    $this->form_validation->set_rules('password','Password','required|trim|xss_clean');

	    if ($this->form_validation->run()==FALSE) {// jika validasi terjadi kesalahan maka akan kembali ke halaman awal
	      $this->load->view('home/login',$data);// ^ dengan menampilkan error
	      
	    }else {
	      if ($hitung_datadb>0) {
	        $session_data = array('id_user'			=>$data_from_db[0]->id_user,
	                               'username'		=>$data_from_db[0]->username,
	                               'password'		=>$data_from_db[0]->password,
	                               'sudah_login_member'	=>TRUE);// data yang di gunakan untuk session yang di ambil dari database di atas

	        $this->session->set_userdata($session_data);// set data-data session
	  		redirect(base_url('home/pemesanan'));
			} else{
				$this->session->set_flashdata('error','Gagal! Email atau password salah');
				redirect(base_url('home/login'));
			}
	        //redirect('C_Front/login_administrator');
	      }	    
  } 

  public function belanja(){
  		$id  = $this->uri->segment(3);
  		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['slider']			= $this->home_model->GetSlider();
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['produk']			= $this->home_model->GetProduk();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$this->load->view('pelanggan/belanja',$data);
  }

  public function logout() {
		$this->session->sess_destroy();
		redirect("home/login");
	} 


  public function pemesanan(){
  	$sudah_login = $this->session->userdata('sudah_login_member');
		if (!$sudah_login) { // jika $sudah_login == false atau belum login maka akan kembali ke redirect yang di tuju
			      redirect(base_url('home/login'));
	    }else {
			$this->template->load('pelanggan/template','pelanggan/home');
	     }
  }


  public function data_pemesanan($id){
  	$this->load->helper('text');
	$data['sql'] = $this->home_model->info_pemesanan($id);
	$data['id_user'] = $this->session->userdata('id_user');
	$sudah_login = $this->session->userdata('sudah_login_member');

		if (!$sudah_login) { // jika $sudah_login == false atau belum login maka akan kembali ke redirect yang di tuju
			      redirect(base_url('home/login'));
	    }else {
			$this->template->load('pelanggan/template','pelanggan/pemesanan',$data);
	     }
  }




  public function edit_pemesanan(){
  	//$data['sql'] = $this->home_model->info_pemesanan($id);
	$data['id_user'] = $this->session->userdata('id_user');
	$id  = $this->uri->segment(3);
	$where = array('id_transaksi_header' => $id);
	$data['pemesanan'] = $this->home_model->edit_data_pemesanan($where,'tbl_transaksi_header')->result();

	$sudah_login = $this->session->userdata('sudah_login_member');

		if (!$sudah_login) { // jika $sudah_login == false atau belum login maka akan kembali ke redirect yang di tuju
			      redirect(base_url('home/login'));
	    }else {
			$this->template->load('pelanggan/template','pelanggan/edit_pemesanan',$data);
	     }
  }


  public function edit_retur(){
  	//$data['sql'] = $this->home_model->info_pemesanan($id);
	$data['id_user'] = $this->session->userdata('id_user');
	$id  = $this->uri->segment(3);
	$data['sql'] = $this->home_model->info_pemesanan($id);
	$this->home_model->UpdateRetur($id);

	$sudah_login = $this->session->userdata('sudah_login_member');

		if (!$sudah_login) { // jika $sudah_login == false atau belum login maka akan kembali ke redirect yang di tuju
			      redirect(base_url('home/login'));
	    }else {
	    		$this->session->set_flashdata('berhasilretur','Pengajuan retur berhasil dilakukan');
			$this->template->load('pelanggan/template','pelanggan/pemesanan',$data);
	     }
  }




  function proses_update_pemesanan(){
			$this->load->helper('url');
			$this->load->library('Image_lib');
			$this->load->library('upload');

			$id_user 	= $this->session->userdata('id_user');
			$id_transaki_header 	= $this->input->post('id_transaksi_header');
			$this->db->where('id_transaksi_header',$id_transaki_header);
		    $query  = $this->db->get('tbl_transaksi_header');
		    $row  = $query->row();

		    unlink("./images/bukti_bayar/$row->bukti_bayar");

		        if($_FILES['bukti_bayar']['name'] != ""){
		          $config['upload_path'] = 'images/bukti_bayar';
		          $config['allowed_types'] = 'jpg|png|jpeg';
		          $config['max_size'] = '8000';
		          $config['remove_spaces'] = true;
		          $config['overwrite'] = false;
		          $config['encrypt_name'] = false;
		          $config['max_width']  = '';
		          $config['max_height']  = '';
		          $this->load->library('upload', $config);
		          $this->upload->initialize($config);
		          if (!$this->upload->do_upload('bukti_bayar'))
		          {
		              print_r('Ukuran File Terlalu Besar. Maksimal 2Mb');
		              exit();
		          }
		          else
		          {
		            $image = $this->upload->data();
		            if ($image['file_name'])
		            {
		                $data['file1'] = $image['file_name'];
		            }
		            $bukti_bayar = $data['file1'];
		          }
		        }

		        $data = array(
		          'bukti_bayar'		=> $bukti_bayar
		        );

		       
		        $this->home_model->updatedata('tbl_transaksi_header',$data,array('id_transaksi_header' => $id_transaki_header));
		       	$this->session->set_flashdata('berhasil','Bukti Pembayaran berhasil di upload');
		        redirect('home/edit_pemesanan');
	}


		public function sendMail()
	    {
	        $config = Array(
	      'protocol' => 'smtp',
	      'smtp_host' => 'ssl://smtp.googlemail.com',
	      'smtp_port' => '465',
	      'smtp_user' => '{nama email anda}', // change it to yours
	      'smtp_pass' => '{password email anda}', // change it to yours
	      'mailtype' => 'html',
	      'charset' => 'iso-8859-1',
	      'wordwrap' => TRUE
	    );

	            $message = '';
	            $this->load->library('email', $config);
	          $this->email->set_newline("\r\n");
	          $this->email->from('example@gmail.com'); // change it to yours
	          $this->email->to('example2@gmail.com');// change it to yours
	          $this->email->subject('Resume from JobsBuddy for your Job posting');
	          $this->email->message($message);

	          if($this->email->send())
	         {
	          echo 'Email sent.';
	         }
	         else
	        {
	         show_error($this->email->print_debugger());
	        }

	    }


	public function pemesanan_detail($id1,$id2){
  	$this->load->helper('text');
	$data['sql'] = $this->home_model->info_pemesanan_detail($id1,$id2);
	$data['id_user'] = $this->session->userdata('id_user');
	$sudah_login = $this->session->userdata('sudah_login_member');

			$id= $this->uri->segment(3);
			$kode_transaksi = $this->uri->segment(4);

			$data['data_header'] 	= $this->home_model->GetTransaksiheader($id);  
			$data['data_detail']	= $this->home_model->GetDetailTransaksi($kode_transaksi);
			$data['data_total']		= $this->home_model->GetDetailTotal($kode_transaksi);

		if (!$sudah_login) { // jika $sudah_login == false atau belum login maka akan kembali ke redirect yang di tuju
			      redirect(base_url('home/login'));
	    }else {
			$this->template->load('pelanggan/template','pelanggan/pemesanan_detail',$data);
	     }
  }

	public function index() {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['slider']			= $this->home_model->GetSlider();
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['produk']			= $this->home_model->GetProduk();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

		$this->load->view('home/index',$data);
	}

	public function tentang_kami () {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['tentangkami'] 	= $this->home_model->GetTentangKami();
		$data['produk']			= $this->home_model->GetProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		
		$this->load->view('home/tentang_kami',$data);
	}


	public function tentang_kami_login () {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['tentangkami'] 	= $this->home_model->GetTentangKami();
		$data['produk']			= $this->home_model->GetProduk();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		
		$this->load->view('pelanggan/tentang_kami_login',$data);
	}

	public function cara_belanja() {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['carabelanja'] 	= $this->home_model->GetCaraBelanja();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		
		
		$this->load->view('home/cara_belanja',$data);
	}

	public function cara_belanja_login() {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['carabelanja'] 	= $this->home_model->GetCaraBelanja();
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		
		
		$this->load->view('pelanggan/cara_belanja_login',$data);
	}

	public function hubungi_kami () {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 

		
		
		$this->load->view('home/hubungi_kami',$data);
	}

	public function hubungi_kami_login () {
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 

		
		
		$this->load->view('pelanggan/hubungi_kami_login',$data);
	}


	public function hubungi_kami_kirim() {
		$tanggal 	= date('Y-m-d');
		$nama 		= $this->input->post('nama');
		$judul		= $this->input->post('judul');
		$email 		= $this->input->post('email');
		$hp 		= $this->input->post('hp');
		$alamat 		= $this->input->post('alamat');
		$pesan 		= $this->input->post('pesan');

		$this->home_model->InsertHubungiKami($nama,$judul,$email,$hp,$alamat,$pesan,$tanggal);

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
        $ci->email->from($email,$nama);
        $this->email->to('buatptc12@gmail.com');
        $ci->email->subject($judul);
        $ci->email->message($pesan);
        if ($this->email->send()) {
            echo 'Email sent.';
        } else {
            show_error($this->email->print_debugger());
        }

		$this->session->set_flashdata('sukses','Data Berhasil Dikirim');
		redirect("home/hubungi_kami");
	}

	public function kategori() {
		$id_kategori= $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['nama_kategori']  = $this->home_model->GetNamaKategoriId($id_kategori);
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

			$page=$this->uri->segment(4);
			$limit=12;
			if(!$page):
			$offset = 0;
			else:
			$offset = $page;
			endif;
			
			$data['tot'] = $offset;
			$tot_hal = $this->home_model->GetProdukKategori($id_kategori);
			$config['base_url'] = base_url() . 'home/kategori/'.$id_kategori.'/';
			$config['total_rows'] = $tot_hal->num_rows();
			$config['per_page'] = $limit;
			$config['uri_segment'] = 4;
			$config['first_link'] = 'Awal';
	        $config['last_link'] = 'Akhir';
	        $config['next_link'] = 'Selanjutnya';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['full_tag_open'] = '<ul class="pagination">';
	        $config['full_tag_close'] = '</ul>';

	        $config['first_link'] = 'Awal';
	        $config['first_tag_open'] = '<li class="prev page">';
	        $config['first_tag_close'] = '</li>';

	        $config['last_link'] = 'Akhir';
	        $config['last_tag_open'] = '<li class="next page">';
	        $config['last_tag_close'] = '</li>';

	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li class="next page">';
	        $config['next_tag_close'] = '</li>';

	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li class="prev page">';
	        $config['prev_tag_close'] = '</li>';

	        $config['cur_tag_open'] = '<li class="active"><a href="">';
	        $config['cur_tag_close'] = '</a></li>';

	        $config['num_tag_open'] = '<li class="page">';
	        $config['num_tag_close'] = '</li>';

			$this->pagination->initialize($config);
			$data["paginator"] =$this->pagination->create_links();
			
			$data['produk_kategori'] = $this->db->query("select a.*,b.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori  where a.kategori_id='$id_kategori' order by a.id_produk desc 
			LIMIT ".$offset.",".$limit."");

		$this->load->view('home/kategori',$data);

	}


	public function kategori_login() {
		$id_kategori= $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['nama_kategori']  = $this->home_model->GetNamaKategoriId($id_kategori);
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

			$page=$this->uri->segment(4);
			$limit=12;
			if(!$page):
			$offset = 0;
			else:
			$offset = $page;
			endif;
			
			$data['tot'] = $offset;
			$tot_hal = $this->home_model->GetProdukKategori($id_kategori);
			$config['base_url'] = base_url() . 'home/kategori/'.$id_kategori.'/';
			$config['total_rows'] = $tot_hal->num_rows();
			$config['per_page'] = $limit;
			$config['uri_segment'] = 4;
			$config['first_link'] = 'Awal';
	        $config['last_link'] = 'Akhir';
	        $config['next_link'] = 'Selanjutnya';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['full_tag_open'] = '<ul class="pagination">';
	        $config['full_tag_close'] = '</ul>';

	        $config['first_link'] = 'Awal';
	        $config['first_tag_open'] = '<li class="prev page">';
	        $config['first_tag_close'] = '</li>';

	        $config['last_link'] = 'Akhir';
	        $config['last_tag_open'] = '<li class="next page">';
	        $config['last_tag_close'] = '</li>';

	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li class="next page">';
	        $config['next_tag_close'] = '</li>';

	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li class="prev page">';
	        $config['prev_tag_close'] = '</li>';

	        $config['cur_tag_open'] = '<li class="active"><a href="">';
	        $config['cur_tag_close'] = '</a></li>';

	        $config['num_tag_open'] = '<li class="page">';
	        $config['num_tag_close'] = '</li>';

			$this->pagination->initialize($config);
			$data["paginator"] =$this->pagination->create_links();
			
			$data['produk_kategori'] = $this->db->query("select a.*,b.* from tbl_produk a join tbl_kategori b on a.kategori_id=b.id_kategori  where a.kategori_id='$id_kategori' order by a.id_produk desc 
			LIMIT ".$offset.",".$limit."");

		$this->load->view('pelanggan/kategori_login',$data);

	}

	public function brand() {
		$id_brand= $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['nama_brand']  = $this->home_model->GetNamaBrandId($id_brand);
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

			$page=$this->uri->segment(4);
			$limit=12;
			if(!$page):
			$offset = 0;
			else:
			$offset = $page;
			endif;
			
			$data['tot'] = $offset;
			$tot_hal = $this->home_model->GetProdukBrand($id_brand);
			$config['base_url'] = base_url() . 'home/brand/'.$id_brand.'/';
			$config['total_rows'] = $tot_hal->num_rows();
			$config['per_page'] = $limit;
			$config['uri_segment'] = 4;
			$config['first_link'] = 'Awal';
	        $config['last_link'] = 'Akhir';
	        $config['next_link'] = 'Selanjutnya';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['full_tag_open'] = '<ul class="pagination">';
	        $config['full_tag_close'] = '</ul>';

	        $config['first_link'] = 'Awal';
	        $config['first_tag_open'] = '<li class="prev page">';
	        $config['first_tag_close'] = '</li>';

	        $config['last_link'] = 'Akhir';
	        $config['last_tag_open'] = '<li class="next page">';
	        $config['last_tag_close'] = '</li>';

	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li class="next page">';
	        $config['next_tag_close'] = '</li>';

	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li class="prev page">';
	        $config['prev_tag_close'] = '</li>';

	        $config['cur_tag_open'] = '<li class="active"><a href="">';
	        $config['cur_tag_close'] = '</a></li>';

	        $config['num_tag_open'] = '<li class="page">';
	        $config['num_tag_close'] = '</li>';

			$this->pagination->initialize($config);
			$data["paginator"] =$this->pagination->create_links();
			
			$data['produk_brand'] = $this->db->query("select a.*,b.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand where a.brand_id='$id_brand' order by a.id_produk desc 
			LIMIT ".$offset.",".$limit."");

		$this->load->view('home/brand',$data);

	}


	public function brand_login() {
		$id_brand= $this->uri->segment(3);
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['nama_brand']  = $this->home_model->GetNamaBrandId($id_brand);
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

			$page=$this->uri->segment(4);
			$limit=12;
			if(!$page):
			$offset = 0;
			else:
			$offset = $page;
			endif;
			
			$data['tot'] = $offset;
			$tot_hal = $this->home_model->GetProdukBrand($id_brand);
			$config['base_url'] = base_url() . 'home/brand/'.$id_brand.'/';
			$config['total_rows'] = $tot_hal->num_rows();
			$config['per_page'] = $limit;
			$config['uri_segment'] = 4;
			$config['first_link'] = 'Awal';
	        $config['last_link'] = 'Akhir';
	        $config['next_link'] = 'Selanjutnya';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['full_tag_open'] = '<ul class="pagination">';
	        $config['full_tag_close'] = '</ul>';

	        $config['first_link'] = 'Awal';
	        $config['first_tag_open'] = '<li class="prev page">';
	        $config['first_tag_close'] = '</li>';

	        $config['last_link'] = 'Akhir';
	        $config['last_tag_open'] = '<li class="next page">';
	        $config['last_tag_close'] = '</li>';

	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li class="next page">';
	        $config['next_tag_close'] = '</li>';

	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li class="prev page">';
	        $config['prev_tag_close'] = '</li>';

	        $config['cur_tag_open'] = '<li class="active"><a href="">';
	        $config['cur_tag_close'] = '</a></li>';

	        $config['num_tag_open'] = '<li class="page">';
	        $config['num_tag_close'] = '</li>';

			$this->pagination->initialize($config);
			$data["paginator"] =$this->pagination->create_links();
			
			$data['produk_brand'] = $this->db->query("select a.*,b.* from tbl_produk a join tbl_brand b on a.brand_id=b.id_brand where a.brand_id='$id_brand' order by a.id_produk desc 
			LIMIT ".$offset.",".$limit."");

		$this->load->view('pelanggan/brand_login',$data);

	}

	public function cari () {
		$cari = $this->input->post('cari');

		if ($cari=="") {

		}
		else {

			$data['logo'] 			= $this->home_model->GetLogo();
			$data['kontak'] 		= $this->home_model->GetKontak();
			$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
			$data['seo'] 			= $this->home_model->GetSeo(); 
			$data['bank'] 			= $this->home_model->GetBank(); 
			$data['brand'] 			= $this->home_model->GetBrand(); 
			$data['kategori'] 		= $this->home_model->GetKategori(); 
			$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
			$data['produk_cari']	= $this->home_model->GetProdukCari($cari);

			$this->load->view('home/cari',$data);

		}
	}

	public function produk () {
		$id_produk = $this->uri->segment(3);

		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['brand'] 			= $this->home_model->GetBrand(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$data['random']			= $this->home_model->GetRandomProduk();
		$data['random_active']	= $this->home_model->GetRandomActiveProduk();

		$data['data_produk']= $this->home_model->GetProdukId($id_produk);

		$this->load->view('home/produk',$data);
	}

	public function keranjang() {

		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 

		$id_produk = $this->uri->segment(3);

		if ($id_produk!="") {

			$query  = $this->home_model->GetProdukId($id_produk);

			foreach ($query->result_array() as $value) {

				$id_produk = $value['id_produk'];
				$kode_produk = $value['kode_produk'];
				$harga = $value['harga'];	
				$nama_produk = $value['nama_produk'];	
				$gambar = $value['gambar'];	
				$stok 	= 1;
				
			}

			$masuk = array(
				'id'      => $kode_produk,
				'qty'     => $stok,
			    'price'   => $harga,
				'name'    => $nama_produk,
				'gambar'  => $gambar
				);
			$this->cart->insert($masuk);

		}
		else {

		}
		
		
		$this->load->view('home/keranjang',$data);
	}


	public function keranjang_login() {

		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 

		$id_produk = $this->uri->segment(3);
		$data['id_user'] = $this->session->userdata('id_user');

		if ($id_produk!="") {

			$query  = $this->home_model->GetProdukId($id_produk);

			foreach ($query->result_array() as $value) {

				$id_produk = $value['id_produk'];
				$kode_produk = $value['kode_produk'];
				$harga = $value['harga'];	
				$nama_produk = $value['nama_produk'];	
				$gambar = $value['gambar'];	
				$stok 	= 1;
				
			}

			$masuk = array(
				'id'      => $kode_produk,
				'qty'     => $stok,
			    'price'   => $harga,
				'name'    => $nama_produk,
				'gambar'  => $gambar
				);
			$this->cart->insert($masuk);

		}
		else {

		}
		
		
		$this->load->view('pelanggan/keranjang_login',$data);
	}


	public function keranjang_hapus($kode) {

		$data = array(
			'rowid' => $kode,
			'qty'   => 0);
			$this->cart->update($data);
		redirect('home/keranjang');

	}

	public function keranjang_update() {
		$total = $this->cart->total_items();
		$item = $this->input->post('rowid');
		$qty = $this->input->post('qty');
		for($i=0;$i < $total;$i++)
		{
			$data = array(
			'rowid' => $item[$i],
			'qty'   => $qty[$i]);
			$this->cart->update($data);
		}
		redirect('home/keranjang');
	}

	public function keranjang_hapus_login($kode) {

		$data = array(
			'rowid' => $kode,
			'qty'   => 0);
			$this->cart->update($data);
		redirect('home/keranjang_login');

	}

	public function keranjang_update_login() {
		$total = $this->cart->total_items();
		$item = $this->input->post('rowid');
		$qty = $this->input->post('qty');
		for($i=0;$i < $total;$i++)
		{
			$data = array(
			'rowid' => $item[$i],
			'qty'   => $qty[$i]);
			$this->cart->update($data);
		}
		redirect('home/keranjang_login');
	}

	public function checkout () {

		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$data['kodeunik'] 		= $this->home_model->buat_kode(); 

		$this->load->view('home/checkout',$data);

	}

	public function checkout_login () {
		$data['id_user'] = $this->session->userdata('id_user');
		$data['logo'] 			= $this->home_model->GetLogo();
		$data['kontak'] 		= $this->home_model->GetKontak();
		$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
		$data['seo'] 			= $this->home_model->GetSeo(); 
		$data['bank'] 			= $this->home_model->GetBank(); 
		$data['kategori'] 		= $this->home_model->GetKategori(); 
		$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();
		$data['kodeunik'] 		= $this->home_model->buat_kode(); 

		$this->load->view('pelanggan/checkout_login',$data);

	}

	public function checkout_hapus($kode) {

		$data = array(
			'rowid' => $kode,
			'qty'   => 0);
			$this->cart->update($data);
		redirect('home/checkout');

	}

	public function checkout_update() {
		$total = $this->cart->total_items();
		$item = $this->input->post('rowid');
		$qty = $this->input->post('qty');
		for($i=0;$i < $total;$i++)
		{
			$data = array(
			'rowid' => $item[$i],
			'qty'   => $qty[$i]);
			$this->cart->update($data);
		}
		redirect('home/checkout');
	}

	


	public function checkout_invoice () {
		$this->form_validation->set_rules('username','Username','required');
		$this->form_validation->set_rules('password','Password','required');
		$this->form_validation->set_rules('penerima','Nama Penerima','required');
		$this->form_validation->set_rules('email','Email','required');
		$this->form_validation->set_rules('alamat','Alamat','required');
		$this->form_validation->set_rules('no_telepon','No Telp','required');
		$this->form_validation->set_rules('propinsi','Propinsi','required');
		$this->form_validation->set_rules('kota','Kota','required');
		$this->form_validation->set_rules('kode_pos','Kode Pos','required');
		$this->form_validation->set_rules('bank_id','Bank','required');
		$this->form_validation->set_rules('jasapengiriman_id','Jasa Pengiriman','required');

		if ($this->form_validation->run()==FALSE) {

				$data['logo'] 			= $this->home_model->GetLogo();
				$data['kontak'] 		= $this->home_model->GetKontak();
				$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
				$data['seo'] 			= $this->home_model->GetSeo(); 
				$data['bank'] 			= $this->home_model->GetBank(); 
				$data['kategori'] 		= $this->home_model->GetKategori(); 
				$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

				$this->load->view('home/checkout',$data);

		}
		else {

			$tgl_skr = date('Ymd');
			$cek_kode = $this->home_model->cek_kode($tgl_skr);
			$kode_trans = "";
			foreach($cek_kode->result() as $ck)
			{
				if($ck->kd==NULL)
				{
					$kode_trans = $tgl_skr.'001';
				}
				else
				{
					$kd_lama = $ck->kd;
					$kode_trans = $kd_lama+1;
				}
			}

			$id_user			= $this->input->post("id_user");
			$username			= $this->input->post("username");
			$password 			= md5($this->input->post("password"));
			$penerima 			= $this->input->post("penerima");
			$email 				= $this->input->post("email");
			$alamat 			= $this->input->post("alamat");
			$no_telepon 		= $this->input->post("no_telepon");
			$propinsi 			= $this->input->post("propinsi");
			$kota 				= $this->input->post("kota");
			$kode_pos 			= $this->input->post("kode_pos");
			$bank_id 			= $this->input->post("bank_id");
			$jasapengiriman_id 	= $this->input->post("jasapengiriman_id");
			$ongkos_kirim 		= $this->input->post("ongkos_kirim");

			$isi_psn= 'Kepada Yth.Sdr/i.n , Terimakasih atas kepercayaan Anda berbelanja di <h1><font color="#189cd8">CAHAYA MAKMUR</font><font color="#bcbec0">Textile</font> <font color="#93c01f">Online Shop</font></h1>';
			$isi_psn.='<font size="4px"><table border="0" cellpadding=0 width="60%">';
			
			$isi_psn.='<tr bgcolor="#fe980f" align="center"><td>Kode Produk</td><td>Nama Produk</td><td>Harga</td><td >Jumlah</td><td >Subtotal</td></tr>';
			foreach($this->cart->contents() as $items)
			{
				$isi_psn.= '<tr><td align="center">'.$items["id"].'</td><td>'.$items["name"].'</td><td>Rp.'.$this->cart->format_number($items["price"]).'</td><td align="center">'.$items["qty"].'</td><td>Rp.'.$this->cart->format_number($items["subtotal"]).'</td></tr>';
			}
					$isi_psn.= '<tr bgcolor="#93c01f"><td>Total Belanja: </td><td colspan=4>Rp.'.$this->cart->format_number($this->cart->total()).'</td></tr>';
					$isi_psn.='</table><br></font>';

			$isi_psn.= '<div>Silahkan melakukan pembayaran agar dapat di proses dengan cepat , bukti pembayaran di upload setelah anda login sebagai pelanggan.</div>';

				$subject='Pemesanan Produk Cahaya Makmur Online Shop';
				$this->home_model->sendemail($email,$subject,$isi_psn);

			$this->home_model->InsertTransaksiHeader($kode_trans,$penerima,$email,$alamat,$no_telepon,$propinsi,$kota,$kode_pos,$bank_id,$jasapengiriman_id,$ongkos_kirim,$id_user);

			$this->home_model->InsertUser($id_user,$username,$password);

			foreach($this->cart->contents() as $items)
				{
					$this->home_model->simpan_pesanan("insert into tbl_transaksi_detail (kode_transaksi,kode_produk,nama_produk,harga,jumlah) values('".$kode_trans."','".$items['id']."','".$items['name']."','".$items['price']."','".$items['qty']."')");
					// $this->home_model->update_dibeli($items['id'],$items['qty']);
				}
				$this->cart->destroy();
				?>
				
				<script type="text/javascript">
				alert("Pesanan anda telah terkirim, Silahkan login sebagai pelanggan dan melakukan pembayaran, upload bukti pembayaran di menu status pemesanan, agar dapat proses secepat mungkin .\n Terima Kasih");			
				window.location.href = 'home';
				</script>
				<?php
				die();
				redirect('home');

		}
	}


	public function checkout_invoice_login () {

		$this->form_validation->set_rules('penerima','Nama Penerima','required');
		$this->form_validation->set_rules('email','Email','required');
		$this->form_validation->set_rules('alamat','Alamat','required');
		$this->form_validation->set_rules('no_telepon','No Telp','required');
		$this->form_validation->set_rules('propinsi','Propinsi','required');
		$this->form_validation->set_rules('kota','Kota','required');
		$this->form_validation->set_rules('kode_pos','Kode Pos','required');
		$this->form_validation->set_rules('bank_id','Bank','required');
		$this->form_validation->set_rules('jasapengiriman_id','Jasa Pengiriman','required');

		if ($this->form_validation->run()==FALSE) {

				$data['logo'] 			= $this->home_model->GetLogo();
				$data['kontak'] 		= $this->home_model->GetKontak();
				$data['sosial_media'] 	= $this->home_model->GetSosialMedia();
				$data['seo'] 			= $this->home_model->GetSeo(); 
				$data['bank'] 			= $this->home_model->GetBank(); 
				$data['kategori'] 		= $this->home_model->GetKategori(); 
				$data['jasapengiriman']	= $this->home_model->GetJasaPengiriman();

				$this->load->view('home/checkout',$data);

		}
		else {

			$tgl_skr = date('Ymd');
			$cek_kode = $this->home_model->cek_kode($tgl_skr);
			$kode_trans = "";
			foreach($cek_kode->result() as $ck)
			{
				if($ck->kd==NULL)
				{
					$kode_trans = $tgl_skr.'001';
				}
				else
				{
					$kd_lama = $ck->kd;
					$kode_trans = $kd_lama+1;
				}
			}

			$id_user			= $this->input->post("id_user");
			$penerima 			= $this->input->post("penerima");
			$email 				= $this->input->post("email");
			$alamat 			= $this->input->post("alamat");
			$no_telepon 		= $this->input->post("no_telepon");
			$propinsi 			= $this->input->post("propinsi");
			$kota 				= $this->input->post("kota");
			$kode_pos 			= $this->input->post("kode_pos");
			$bank_id 			= $this->input->post("bank_id");
			$jasapengiriman_id 	= $this->input->post("jasapengiriman_id");
			$ongkos_kirim 		= $this->input->post("ongkos_kirim");

			$isi_psn= 'Kepada Yth.Sdr/i.n , Terimakasih atas kepercayaan Anda berbelanja di <h1><font color="#189cd8">CAHAYA MAKMUR</font><font color="#bcbec0">Textile</font> <font color="#93c01f">Online Shop</font></h1>';
			$isi_psn.='<font size="4px"><table border="0" cellpadding=0 width="60%">';
			
			$isi_psn.='<tr bgcolor="#fe980f" align="center"><td>Kode Produk</td><td>Nama Produk</td><td>Harga</td><td >Jumlah</td><td >Subtotal</td></tr>';
			foreach($this->cart->contents() as $items)
			{
				$isi_psn.= '<tr><td align="center">'.$items["id"].'</td><td>'.$items["name"].'</td><td>Rp.'.$this->cart->format_number($items["price"]).'</td><td align="center">'.$items["qty"].'</td><td>Rp.'.$this->cart->format_number($items["subtotal"]).'</td></tr>';
			}
					$isi_psn.= '<tr bgcolor="#93c01f"><td>Total Belanja (belum biaya kirim): </td><td colspan=4>Rp.'.$this->cart->format_number($this->cart->total()).'</td></tr>';
					$isi_psn.='</table><br></font>';

			$isi_psn.= '<div>Silahkan melakukan pembayaran agar dapat di proses dengan cepat , bukti pembayaran di upload setelah anda login sebagai pelanggan.</div>';

				$subject='Pemesanan Produk Cahaya Makmur Online Shop';
				$this->home_model->sendemail($email,$subject,$isi_psn);

			$this->home_model->InsertTransaksiHeader($kode_trans,$penerima,$email,$alamat,$no_telepon,$propinsi,$kota,$kode_pos,$bank_id,$jasapengiriman_id,$ongkos_kirim,$id_user);

			foreach($this->cart->contents() as $items)
				{
					$this->home_model->simpan_pesanan("insert into tbl_transaksi_detail (kode_transaksi,kode_produk,nama_produk,harga,jumlah) values('".$kode_trans."','".$items['id']."','".$items['name']."','".$items['price']."','".$items['qty']."')");
					// $this->home_model->update_dibeli($items['id'],$items['qty']);
				}
				$this->cart->destroy();
				?>
				
				<script type="text/javascript">
				alert("Pesanan anda telah terkirim, Silahkan login sebagai pelanggan dan melakukan pembayaran, upload bukti pembayaran di menu status pemesanan, agar dapat proses secepat mungkin .\n Terima Kasih");			
				window.location.href = 'home/belanja';
				</script>
				<?php
				die();
				redirect('home/belanja');

		}
	}
}