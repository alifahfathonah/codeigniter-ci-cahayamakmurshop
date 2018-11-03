-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 21. Januari 2018 jam 21:41
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`, `phone`, `hak_akses`) VALUES
(1, 'Admin Adriano', 'adminweb', '0192023a7bbd73250516f069df18b500', 'adminadriano@gmail.com', 85648263456, 'admin'),
(2, 'sheptian bagja utama', 'sheptian', 'e6cb72dcc6e2aba9ddf5fcd3fbfd21f8', 'sheptian96@gmail.com', 6281235678987, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank`
--

CREATE TABLE IF NOT EXISTS `tbl_bank` (
  `id_bank` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_bank`, `nama_pemilik`, `no_rekening`, `gambar`) VALUES
(1, 'BCA', 'David Suwandi', '282.050.2020', 'aa9d3ec4243250956a314578ff477f1b.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `nama_brand` varchar(100) NOT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `nama_brand`) VALUES
(1, 'Fortuna'),
(2, 'Forbes'),
(7, 'Tristar'),
(8, 'Import Jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_carabelanja`
--

CREATE TABLE IF NOT EXISTS `tbl_carabelanja` (
  `id_carabelanja` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_carabelanja`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_carabelanja`
--

INSERT INTO `tbl_carabelanja` (`id_carabelanja`, `judul`, `deskripsi`) VALUES
(1, 'Cara Belanja Online di Cahaya Makmur Online Shop', 'Berikut petunjuk pembelian secara Online melalui website kami :<div></div><ol><li>Lihat gamnbar barang yang akan Anda beli lihat juga detail produknya</li><li>Klik tombol "Beli" pada barang yang akan anda beli<br></li><li>Pada tabel anda masukan quantity barang yang akan Anda beli.</li><li>Setelah mengubah quantity jangan lupa untuk klik tombol "refresh"(untuk menampilkan kalkulasi harga)</li><li>Untuk kembali memilih barang lainnya atau melanjutkan berbelanja silahkan klik tombol "lanjut berbelanja" dan cari produk lainnya.</li><li>Jika sudah selesai membeli silahkan klik tombol "selesai berbelanja"</li><li>Bia anda belum login silahkan login terlebih dahulu. Dengan cara mengisi form yang sudah tersedia. Jika belum menjadi member silahkan mendaftar dahulu dengan cara yang mudah mengklik tombol "registrasi member".</li><li>Selanjutnya silahkan mengisi data lengkap pada form yang sudah tersedia</li><li>Sebelum anda selesai periksa dahulu data yang anda isi kebenarnnya atau barangkali ada yang lupa dikosongkan.</li><li>Tunggu paling lambat 1x24 jam kami akan menkonfirmsi kiriman anda melalui email atau Hp yang anda cantumkan sebelumnya."</li><li>Anda akan menerima balasan melalui email atau Hp Anda tentang kalkulasi harga disertai jasa pengirmiannnya.</li><li>Jika Anda setuju silhkan kirim sejumlah uang yang kami konfimasikan. Berikut rekining Bank yang kami sediakan :</li><div>BANK BCA<br>282.050.2020. A/n : DAVID SUWANDI</div><li>Setelah melakukan transfer ke bank silahkan anda lakukan konfirmasi ke email kami atau hotline kami di 085721286264.</li><li>Pengiriman barang akan kami proses secepatnya dan Anda akan enerima nomer resi yang akan kami infokan melali alamt email atau No Hp Anda.</li><li>Jika Anda menemui kesulitan silahkan hubungi Costumer service kami.</li>Terimakasih Atas kepercayaan Anda. Semoga tetap menjadi pelanggan kami...<br><br><br><br><br><br></ol>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE IF NOT EXISTS `tbl_galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `nama_galeri` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategorigaleri_id` int(11) NOT NULL,
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategorigaleri_id`) VALUES
(1, 'Jersea Motor', '12c31e6cf61b80d4cb8d2f889c55e8e1.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungikami`
--

CREATE TABLE IF NOT EXISTS `tbl_hubungikami` (
  `id_hubungikami` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id_hubungikami`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tbl_hubungikami`
--

INSERT INTO `tbl_hubungikami` (`id_hubungikami`, `nama`, `judul`, `email`, `hp`, `alamat`, `pesan`, `tanggal`, `status`) VALUES
(3, 'Muhammad Imam Sulkarnaen', '', 'imam@gmail.com', 8493579345793, 'Jogja', 'Mau Tanya Cara Beli Di Toko adriano online shop', '2014-10-07', 1),
(4, 'sheptian', '', 'sheptianbagja@yahoo.com', 812903, 'bandung', 'kjla;sdfasdf', '2018-01-07', 1),
(5, 'Alvian Ahja Wijaya', 'Tanya bahan kain', 'alvianahjawijaya88@gmail.com', 892347892, 'jl pagarsih gg holili', 'Admin selamat malam .., saya pengen tahu apa ada jenis bahan kain katun spandex', '2018-01-17', 1),
(6, 'etaetawetwaetwetwet', 'asdf', 'sheptian96@gmail.com', 234234234, 'asdfasdf', 'asdfasdf', '2018-01-17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungi_kami_kirim`
--

CREATE TABLE IF NOT EXISTS `tbl_hubungi_kami_kirim` (
  `id_hubungi_kami_kirim` int(11) NOT NULL AUTO_INCREMENT,
  `kepada` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_hubungi_kami_kirim` text NOT NULL,
  PRIMARY KEY (`id_hubungi_kami_kirim`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `tbl_hubungi_kami_kirim`
--

INSERT INTO `tbl_hubungi_kami_kirim` (`id_hubungi_kami_kirim`, `kepada`, `judul`, `isi_hubungi_kami_kirim`) VALUES
(3, 'roziqin_iqin@yahoo.com', 'Balasan', 'Balasan Untuk roziqin'),
(4, 'roziqin_iqin@yahoo.com', 'ddd', 'undefined'),
(5, 'imam@gmail.com', 'Balas', 'fdsjfdsfdsfhdsu'),
(6, 'sheptian96@gmail.com', 'Jawabbb', ''),
(7, 'sheptian96@gmail.com', 'testttt', ''),
(8, 'sheptian96@gmail.com', 'Tanya bahan kain', ''),
(9, 'sheptian96@gmail.com', 'TEST EMAIL DI ADMIN', 'HARUSSS BERHASILL OK JANGAN MENYERAH KAWAN,,,'),
(10, 'sheptian96@gmail.com', 'TEST PAKE GAMBAR', '<img alt="" src="http://"><img alt="" src="https://images.unsplash.com/photo-1503135935062-b7d1f5a0690f?dpr=1&amp;auto=format&amp;fit=crop&amp;w=376&amp;h=564&amp;q=60&amp;cs=tinysrgb"><br>asdfasdfasdfasdfasdfasdf'),
(11, 'sheptian96@gmail.com', 'aaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(12, 'sheptian96@gmail.com', 'eeeeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeeeeeeee'),
(13, 'sheptian96@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaa'),
(14, 'sheptian96@gmail.com', 'asdfasdfasdfasdfasdfased32234234', 'aaaaaaaaaaaaaaasdfasdfasdfasdf'),
(15, 'sheptian96@gmail.com', 'eeeeeeeeeeee34333333', 'sadfasdf'),
(16, 'sheptian96@gmail.com', 'TEST', '<h2>TEST</h2>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jasapengiriman`
--

CREATE TABLE IF NOT EXISTS `tbl_jasapengiriman` (
  `id_jasapengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_jasapengiriman`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tbl_jasapengiriman`
--

INSERT INTO `tbl_jasapengiriman` (`id_jasapengiriman`, `nama`, `gambar`) VALUES
(1, 'JNE', '9161e6bd8ac2a57a7c9450bf84dee661.png'),
(2, 'TIKI', 'e6cb91a9459bc8af1f9685f947e1ffef.png'),
(3, 'ESL Expressa', 'cd1d63e790e558c44d0f538b51a72830.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Bahan Kain Sprei'),
(2, 'Bahan Kain Kaos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategorigaleri`
--

CREATE TABLE IF NOT EXISTS `tbl_kategorigaleri` (
  `id_kategorigaleri` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategorigaleri` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kategorigaleri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_kategorigaleri`
--

INSERT INTO `tbl_kategorigaleri` (`id_kategorigaleri`, `nama_kategorigaleri`) VALUES
(1, 'Album Pertama'),
(2, 'Album Kedua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kontak`
--

CREATE TABLE IF NOT EXISTS `tbl_kontak` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(250) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `alamat`, `phone`, `email`) VALUES
(1, 'Jalan Paledang No.144 Cibeurem Bandung', 6285721286264, 'fortunabedsheet@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kota`
--

CREATE TABLE IF NOT EXISTS `tbl_kota` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Purworejo'),
(2, 'Rembang'),
(3, 'Sleman'),
(4, 'Bantul'),
(5, 'Magelang'),
(6, 'Klaten'),
(7, 'Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_logo` (
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `gambar`) VALUES
(1, 'f76921c4f7dc3be6b0de5b322ad4894c.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`, `deskripsi`, `gambar`, `kategori_id`, `brand_id`) VALUES
(7, 'CMK00007', 'Bayern Munchen', 27000, 200, 'Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100<br>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;<span><br><br>Kain sprei brand Fortuna motif Bayern Munchen</span><br>Minimal pembelian 100 meter<br>Harga 27000 = 1 meter<br><span>Produk ini hanya kainnya saja &amp; bukan sprei jadi.<br></span>Lebar kain 2,4 meter.<br><br>', '5d2da05117ff6f5381eccfe70a2a2e06.jpg', 1, 1),
(8, 'CMK00008', 'Arsenal', 27000, 300, '<div>Kain sprei brand Fortuna motif Arsenal</div><div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100<br>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;<br><br>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '8c09e7607f389d15cc9194e780377f6e.jpg', 1, 1),
(9, 'CMK00009', 'Animal Carnival', 27000, 800, '<div>Kain sprei brand Fortuna motif Animal</div><div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '98ed62a2730b7106f149213acc83cb5f.jpg', 1, 1),
(10, 'CMK00010', 'Tsunami 157945', 26000, 450, '<div>Kain terbuat dari bahan katun Kain tristar telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100<br></div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu Katun</div><div>Minimal pembelian 100 meter</div><div>Harga 26000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan gamis jadi, gambar hanya ilustrasi saja.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'a1259bbb7b38742090aec08e8aaf65a6.jpg', 2, 7),
(11, 'CMK00011', 'Diandra Merah', 27000, 346, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'a5a46fca7945449af46692cbcd47df3d.jpg', 1, 1),
(12, 'CMK00012', 'Kura-kura', 27000, 670, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'c91e6fff5c8a289cd9d9a075855e4666.jpg', 1, 1),
(13, 'CMK00013', 'Kulit Sapi Besar & Kecil', 27000, 300, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '0611ae203eb9146adbbe507889119691.jpg', 1, 1),
(14, 'CMK00014', 'Strawberry Panel', 27000, 255, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '602bbd59bb733ffa52bfedcd1a3fe24b.jpg', 1, 1),
(15, 'CMK00015', 'New Safary', 27000, 80, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'f44e3c0f2922e5fa80257a942596f195.jpg', 1, 1),
(16, 'CMK00016', 'Manchester United', 27000, 130, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'beb656de3039f45520cb932b47f91f4d.jpg', 1, 1),
(17, 'CMK00017', 'Minmie Sweety', 27000, 170, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'f465da1e4d133e5875f0d5e390023686.jpg', 1, 1),
(18, 'CMK00018', 'Lovely Tosca', 27000, 120, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'a6b17d4ca1192e975b0e22c212f35c73.jpg', 1, 1),
(19, 'CMK00019', 'Peddington Bear', 27000, 90, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'f0cbe3705246e5fe387c77267933fdc5.jpg', 1, 1),
(20, 'CMK00020', 'Bear Strawberry', 27000, 300, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '1062a4746a10ad5b857bdf257aa419d8.jpg', 1, 1),
(21, 'CMK00021', 'Bear Summer', 27000, 120, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'e0a2216c000cb3e0abd91bf31ca23609.jpg', 1, 1),
(22, 'CMK00022', 'Bear Perca', 27000, 270, '<div>Kain terbuat dari bahan katun CVC. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Bahan Kain yang digunakan yaitu CVC</div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '9ffe1a79966bea861fc45375cf27dd1a.jpg', 1, 1),
(23, 'CMK00023', 'B-H579', 30000, 300, '<div><div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div>Minimal pembelian 100 meter<br></div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div></div><div><br></div>', 'c40c100d258ff58b7f5a1633723a5c58.jpg', 1, 8),
(24, 'CMK00024', 'B-H571', 30000, 400, '<div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'bd9ce1de57c282712df734fbc19ad7c6.jpg', 1, 8),
(25, 'CMK00025', 'B-H569', 30000, 350, '<div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '534f417702de15b996e8a68c008fd34c.jpg', 1, 8),
(26, 'CMK00026', 'B-H556', 30000, 200, '<div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '72f84790e6950d1d2f56270fbbac7474.jpg', 1, 8),
(27, 'CMK00027', 'B-H551', 30000, 221, '<div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', 'f7658bcb98b80d42d0c12e5ae878e225.jpg', 1, 8),
(28, 'CMK00028', 'B-H547', 30000, 445, 'Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100 Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp; &nbsp;Minimal pembelian 100 meter Harga 27000 = 1 meter Produk ini hanya kainnya saja &amp; bukan sprei jadi. Lebar kain 2,4 meter.', 'aa30e925592a3651facdb05b88230ad7.jpg', 1, 8),
(29, 'CMK00029', 'B-H524', 30000, 340, '<div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100</div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '33af7d8208ba5b7d0328397fb0aa678e.jpg', 1, 8),
(30, 'CMK00030', 'Tsunami 155921', 26000, 580, '<div>Kain terbuat dari bahan katun woven.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div><div><br></div>', '50dad082c67f9895388f518cade5438b.jpg', 2, 7),
(31, 'CMK00031', 'Haneda 139404 ', 26000, 455, '<div>Kain terbuat dari bahan katun woven.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div>', '1aa1c30f90dc1754690bfef047428651.jpg', 2, 7),
(32, 'CMK00032', 'Tsunami 156961', 26000, 400, '<div>Kain terbuat dari bahan katun woven.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div>', 'd058f661afe3c1f988478398805b0a20.jpg', 2, 7),
(33, 'CMK00033', 'Polkadot 7 Warna', 25000, 300, '<div>Bahan Kain yang digunakan yaitu CVC<br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div>', 'a17845aad098f1a2a51794b7d9cb10cb.jpg', 1, 2),
(34, 'CMK00034', 'Katun Jepang 125', 30000, 150, '<div>Kain terbuat dari bahan katun Katun import dari negara jepang. Kain Fortuna telah lulus uji Sertifikasi Switzerland Oeko-Tex Standard 100<br></div><div>Hasil dan warna print bagus, anti alergi, adem, tidak berbulu, tidak berpasir, lembut di kulit, dan tahan lama.&nbsp;</div><div><br></div><div>Minimal pembelian 100 meter</div><div>Harga 27000 = 1 meter</div><div>Produk ini hanya kainnya saja &amp; bukan sprei jadi.</div><div>Lebar kain 2,4 meter.</div>', '0286a348cbd8cc22255cb27ff3331121.jpg', 2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sambutan`
--

CREATE TABLE IF NOT EXISTS `tbl_sambutan` (
  `id_sambutan` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_sambutan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_sambutan`
--

INSERT INTO `tbl_sambutan` (`id_sambutan`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda', 'isi sambutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_seo`
--

CREATE TABLE IF NOT EXISTS `tbl_seo` (
  `id_seo` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(50) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_seo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_seo`
--

INSERT INTO `tbl_seo` (`id_seo`, `tittle`, `keyword`, `description`) VALUES
(1, 'Cahaya Makmur Online Shop', 'Cahaya Makmur Shop, Shop', 'Cahaya Makmur shop adalah website resmi toko online shop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(2, 'Pusat Penjualan Sprei Murah Berkualitas', 'Jika ingin mendapatkan bahan kain&nbsp;sprei dan bedcover murah&nbsp;bermerek kualitas terbaik, serta motif update terbaru, maka saat ini Anda datang pada tempat yang tepat sekali.&nbsp;<br>', 'ecc86533352703989fb4dd9097b9cec0.jpg', 1),
(3, 'Bahan Kain Yang Sudah Teruji', 'Telah lulus uji sertifikasi Switzerland Oeko - Tex Standard 100&nbsp;<span>dan&nbsp; telah di nyatakan aman.&nbsp;dari bahan bahan yang berbahaya yang dapat mengganggu kesehatan serta ramah lingkungan dari keseluruhanya , mulai dari bahan proses pembuatan hingga produk yang telah siap digunakan.</span>', '6609f698c7ae8c318fca50df48fe07c6.jpg', 1),
(4, 'Selamat Datang Di Cahaya Makmur', '<div>Mensupply kebutuhan bahan bahan textile untuk garments, bedsheets, hijab, busana muslim, kerudung dan ladies fashion</div>', '1deba8a8089c7b48c36300a4235f670f.jpg', 1),
(5, 'Slider 4', 'test', '056e4440a4816a60eb7060a04b794e8b.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sosial_media`
--

CREATE TABLE IF NOT EXISTS `tbl_sosial_media` (
  `id_sosial_media` int(11) NOT NULL AUTO_INCREMENT,
  `tw` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `gp` varchar(100) NOT NULL,
  PRIMARY KEY (`id_sosial_media`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_sosial_media`
--

INSERT INTO `tbl_sosial_media` (`id_sosial_media`, `tw`, `fb`, `gp`) VALUES
(1, 'http://twitter.com', 'http://facebook.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tentangkami`
--

CREATE TABLE IF NOT EXISTS `tbl_tentangkami` (
  `id_tentangkami` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_tentangkami`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_tentangkami`
--

INSERT INTO `tbl_tentangkami` (`id_tentangkami`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda | PT Cahaya Makmur Textile', '<div><b>Textile Cahaya Makmur </b>merupakan sebuah perusahaan yang mensuplai kebutuhan bahan bahan textile untuk garments, bedsheets, <br>hijab, busana muslim, kerudung, dan ladies fashion. berdiri sejak tahun 2010 dan terus berinovasi dengan produk produk unggulannya <br>. Produk produk dari perusahaan ini di produksi dengan mesin mesin yang berasal dari Eropa, Germany, Nederland, Swizerland, Italy dll.</div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` bigint(15) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data untuk tabel `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi_detail`, `kode_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`) VALUES
(23, 20180119001, 'CMK00029', 'B-H524', '30000', 1),
(24, 20180119002, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(25, 20180119003, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(26, 20180119004, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(27, 20180120001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(28, 20180120002, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(29, 20180120004, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(30, 20180120004, 'CMK00030', 'Tsunami 155921', '26000', 1),
(31, 20180120004, 'CMK00029', 'B-H524', '30000', 1),
(32, 20180120005, 'CMK00030', 'Tsunami 155921', '26000', 1),
(33, 20180120007, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(34, 20180120007, 'CMK00030', 'Tsunami 155921', '26000', 1),
(35, 20180120007, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(36, 20180120007, 'CMK00029', 'B-H524', '30000', 1),
(37, 20180120007, 'CMK00018', 'Lovely Tosca', '27000', 1),
(38, 20180120007, 'CMK00010', 'Tsunami 157945', '26000', 1),
(39, 20180121001, 'CMK00031', 'Haneda 139404 ', '26000', 1),
(40, 20180121001, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(41, 20180121001, 'CMK00032', 'Tsunami 156961', '26000', 1),
(42, 20180121002, 'CMK00030', 'Tsunami 155921', '26000', 1),
(43, 20180121003, 'CMK00031', 'Haneda 139404 ', '26000', 1),
(44, 20180121006, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(45, 20180121008, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(46, 20180121009, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(47, 20180121010, 'CMK00033', 'Polkadot 7 Warna', '25000', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_header`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_header` (
  `id_transaksi_header` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` bigint(15) NOT NULL,
  `penerima` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `propinsi` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `jasapengiriman_id` int(11) NOT NULL,
  `ongkos_kirim` int(11) NOT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_header`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`id_transaksi_header`, `kode_transaksi`, `penerima`, `email`, `alamat`, `no_telepon`, `propinsi`, `kota`, `kode_pos`, `bank_id`, `jasapengiriman_id`, `ongkos_kirim`, `status`) VALUES
(1, 20180120001, 'sheptian', 'sheptian96@gmail.com', 'bandung', '089767545654', 'Jawa Barat', 'Bandung', 40231, 1, 2, 345, 3),
(4, 20180120004, 'rahma aulia', 'sheptian96@gmail.com', 'bandung', '089767545654', 'Jawa Barat', 'Bandung', 40231, 1, 3, 90000, 4),
(5, 20180120005, 'doni maulana', 'donimaulana@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 3, 100000, 1),
(6, 20180120006, 'sheptian', 'sheptian96@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 3, 0, 4),
(7, 20180120007, 'sheptian', 'sheptian96@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 60000, 0),
(8, 20180121001, 'sheptian', 'sheptian96@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 60000, 0),
(9, 20180121002, 'sheptian', 'sheptian96@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 500000, 0),
(10, 20180121003, 'asdf', 'anggalawe123', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 9000, 0),
(11, 20180121004, 'asdf', 'anggalawe123', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 9000, 0),
(12, 20180121005, 'asdf', 'anggalawe123', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 9000, 0),
(13, 20180121006, 'sheptian', 'fortunabedsheet@gmail.com', 'jl pagarsih gg holili', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 1, 80000, 3),
(14, 20180121007, 'sheptian', 'fortunabedsheet@gmail.com', 'jl pagarsih gg holili', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 1, 0, 0),
(15, 20180121008, 'sheptian', 'buatptc12@gmail.com', 'asdf', '123123', 'Jawa Barat', 'Bandung', 40231, 1, 3, 0, 0),
(16, 20180121009, 'adf', 'fortunabedsheet@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 0, 0),
(17, 20180121010, 'qweq', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 0, 1, 3, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
