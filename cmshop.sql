-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2018 at 06:55 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cmshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`, `phone`, `hak_akses`) VALUES
(1, 'Admin Adriano', 'adminweb', '0192023a7bbd73250516f069df18b500', 'adminadriano@gmail.com', 85648263456, 'admin'),
(2, 'sheptian bagja utama', 'sheptian', 'e6cb72dcc6e2aba9ddf5fcd3fbfd21f8', 'sheptian96@gmail.com', 6281235678987, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE IF NOT EXISTS `tbl_bank` (
`id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `nama_bank`, `nama_pemilik`, `no_rekening`, `gambar`) VALUES
(1, 'BCA', 'David Suwandi', '282.050.2020', 'aa9d3ec4243250956a314578ff477f1b.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
`id_brand` int(11) NOT NULL,
  `nama_brand` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `nama_brand`) VALUES
(1, 'Fortuna'),
(2, 'Forbes'),
(7, 'Tristar'),
(8, 'Import Jepang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carabelanja`
--

CREATE TABLE IF NOT EXISTS `tbl_carabelanja` (
`id_carabelanja` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_carabelanja`
--

INSERT INTO `tbl_carabelanja` (`id_carabelanja`, `judul`, `deskripsi`) VALUES
(1, 'Cara Belanja Online di Cahaya Makmur Online Shop', 'Berikut petunjuk pembelian secara Online melalui website kami :<div></div><ol><li>Lihat gamnbar barang yang akan Anda beli lihat juga detail produknya</li><li>Klik tombol "Beli" pada barang yang akan anda beli<br></li><li>Pada tabel anda masukan quantity barang yang akan Anda beli.</li><li>Setelah mengubah quantity jangan lupa untuk klik tombol "refresh"(untuk menampilkan kalkulasi harga)</li><li>Untuk kembali memilih barang lainnya atau melanjutkan berbelanja silahkan klik tombol "lanjut berbelanja" dan cari produk lainnya.</li><li>Jika sudah selesai membeli silahkan klik tombol "selesai berbelanja"</li><li>Bia anda belum login silahkan login terlebih dahulu. Dengan cara mengisi form yang sudah tersedia. Jika belum menjadi member silahkan mendaftar dahulu dengan cara yang mudah mengklik tombol "registrasi member".</li><li>Selanjutnya silahkan mengisi data lengkap pada form yang sudah tersedia</li><li>Sebelum anda selesai periksa dahulu data yang anda isi kebenarnnya atau barangkali ada yang lupa dikosongkan.</li><li>Tunggu paling lambat 1x24 jam kami akan menkonfirmsi kiriman anda melalui email atau Hp yang anda cantumkan sebelumnya."</li><li>Anda akan menerima balasan melalui email atau Hp Anda tentang kalkulasi harga disertai jasa pengirmiannnya.</li><li>Jika Anda setuju silhkan kirim sejumlah uang yang kami konfimasikan. Berikut rekining Bank yang kami sediakan :</li><div>BANK BCA<br>282.050.2020. A/n : DAVID SUWANDI</div><li>Setelah melakukan transfer ke bank silahkan anda lakukan konfirmasi ke email kami atau hotline kami di 085721286264.</li><li>Pengiriman barang akan kami proses secepatnya dan Anda akan enerima nomer resi yang akan kami infokan melali alamt email atau No Hp Anda.</li><li>Jika Anda menemui kesulitan silahkan hubungi Costumer service kami.</li>Terimakasih Atas kepercayaan Anda. Semoga tetap menjadi pelanggan kami...<br><br><br><br><br><br></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE IF NOT EXISTS `tbl_galeri` (
`id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategorigaleri_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategorigaleri_id`) VALUES
(1, 'Jersea Motor', '12c31e6cf61b80d4cb8d2f889c55e8e1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungikami`
--

CREATE TABLE IF NOT EXISTS `tbl_hubungikami` (
`id_hubungikami` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` bigint(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hubungikami`
--

INSERT INTO `tbl_hubungikami` (`id_hubungikami`, `nama`, `judul`, `email`, `hp`, `alamat`, `pesan`, `tanggal`, `status`) VALUES
(3, 'Muhammad Imam Sulkarnaen', '', 'imam@gmail.com', 8493579345793, 'Jogja', 'Mau Tanya Cara Beli Di Toko adriano online shop', '2014-10-07', 1),
(4, 'sheptian', '', 'sheptianbagja@yahoo.com', 812903, 'bandung', 'kjla;sdfasdf', '2018-01-07', 1),
(5, 'Alvian Ahja Wijaya', 'Tanya bahan kain', 'alvianahjawijaya88@gmail.com', 892347892, 'jl pagarsih gg holili', 'Admin selamat malam .., saya pengen tahu apa ada jenis bahan kain katun spandex', '2018-01-17', 1),
(6, 'etaetawetwaetwetwet', 'asdf', 'sheptian96@gmail.com', 234234234, 'asdfasdf', 'asdfasdf', '2018-01-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hubungi_kami_kirim`
--

CREATE TABLE IF NOT EXISTS `tbl_hubungi_kami_kirim` (
`id_hubungi_kami_kirim` int(11) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi_hubungi_kami_kirim` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hubungi_kami_kirim`
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
-- Table structure for table `tbl_jasapengiriman`
--

CREATE TABLE IF NOT EXISTS `tbl_jasapengiriman` (
`id_jasapengiriman` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jasapengiriman`
--

INSERT INTO `tbl_jasapengiriman` (`id_jasapengiriman`, `nama`, `gambar`) VALUES
(1, 'JNE', '9161e6bd8ac2a57a7c9450bf84dee661.png'),
(2, 'TIKI', 'e6cb91a9459bc8af1f9685f947e1ffef.png'),
(3, 'ESL Expressa', 'cd1d63e790e558c44d0f538b51a72830.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
`id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Bahan Kain Sprei'),
(2, 'Bahan Kain Kaos');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategorigaleri`
--

CREATE TABLE IF NOT EXISTS `tbl_kategorigaleri` (
`id_kategorigaleri` int(11) NOT NULL,
  `nama_kategorigaleri` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategorigaleri`
--

INSERT INTO `tbl_kategorigaleri` (`id_kategorigaleri`, `nama_kategorigaleri`) VALUES
(1, 'Album Pertama'),
(2, 'Album Kedua');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE IF NOT EXISTS `tbl_kontak` (
`id_kontak` int(11) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `alamat`, `phone`, `email`) VALUES
(1, 'Jalan Paledang No.144 Cibeurem Bandung', 6285721286264, 'fortunabedsheet@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE IF NOT EXISTS `tbl_kota` (
`id_kota` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kota`
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
-- Table structure for table `tbl_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_logo` (
`id_logo` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `gambar`) VALUES
(1, 'f76921c4f7dc3be6b0de5b322ad4894c.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
`id_produk` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
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
-- Table structure for table `tbl_sambutan`
--

CREATE TABLE IF NOT EXISTS `tbl_sambutan` (
`id_sambutan` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sambutan`
--

INSERT INTO `tbl_sambutan` (`id_sambutan`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda', 'isi sambutan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seo`
--

CREATE TABLE IF NOT EXISTS `tbl_seo` (
`id_seo` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_seo`
--

INSERT INTO `tbl_seo` (`id_seo`, `tittle`, `keyword`, `description`) VALUES
(1, 'Cahaya Makmur Online Shop', 'Cahaya Makmur Shop, Shop', 'Cahaya Makmur shop adalah website resmi toko online shop');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
`id_slider` int(11) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id_slider`, `tittle`, `description`, `gambar`, `status`) VALUES
(2, 'Pusat Penjualan Sprei Murah Berkualitas', 'Jika ingin mendapatkan bahan kain&nbsp;sprei dan bedcover murah&nbsp;bermerek kualitas terbaik, serta motif update terbaru, maka saat ini Anda datang pada tempat yang tepat sekali.&nbsp;<br>', 'ecc86533352703989fb4dd9097b9cec0.jpg', 1),
(3, 'Bahan Kain Yang Sudah Teruji', 'Telah lulus uji sertifikasi Switzerland Oeko - Tex Standard 100&nbsp;<span>dan&nbsp; telah di nyatakan aman.&nbsp;dari bahan bahan yang berbahaya yang dapat mengganggu kesehatan serta ramah lingkungan dari keseluruhanya , mulai dari bahan proses pembuatan hingga produk yang telah siap digunakan.</span>', '6609f698c7ae8c318fca50df48fe07c6.jpg', 1),
(4, 'Selamat Datang Di Cahaya Makmur', '<div>Mensupply kebutuhan bahan bahan textile untuk garments, bedsheets, hijab, busana muslim, kerudung dan ladies fashion</div>', '1deba8a8089c7b48c36300a4235f670f.jpg', 1),
(5, 'Slider 4', 'test', '056e4440a4816a60eb7060a04b794e8b.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sosial_media`
--

CREATE TABLE IF NOT EXISTS `tbl_sosial_media` (
`id_sosial_media` int(11) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `gp` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sosial_media`
--

INSERT INTO `tbl_sosial_media` (`id_sosial_media`, `tw`, `fb`, `gp`) VALUES
(1, 'http://twitter.com', 'http://facebook.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentangkami`
--

CREATE TABLE IF NOT EXISTS `tbl_tentangkami` (
`id_tentangkami` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tentangkami`
--

INSERT INTO `tbl_tentangkami` (`id_tentangkami`, `judul`, `deskripsi`) VALUES
(1, 'Kami Hadir Untuk Anda | PT Cahaya Makmur Textile', '<div><b>Textile Cahaya Makmur </b>merupakan sebuah perusahaan yang mensuplai kebutuhan bahan bahan textile untuk garments, bedsheets, <br>hijab, busana muslim, kerudung, dan ladies fashion. berdiri sejak tahun 2010 dan terus berinovasi dengan produk produk unggulannya <br>. Produk produk dari perusahaan ini di produksi dengan mesin mesin yang berasal dari Eropa, Germany, Nederland, Swizerland, Italy dll.</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_detail` (
`id_transaksi_detail` int(11) NOT NULL,
  `kode_transaksi` bigint(15) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_detail`
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
(47, 20180121010, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(48, 20180121011, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(49, 20180122001, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(50, 20180122001, 'CMK00032', 'Tsunami 156961', '26000', 1),
(51, 20180122002, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(52, 20180122003, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(53, 20180122001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(54, 20180122001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(55, 20180122001, 'CMK00030', 'Tsunami 155921', '26000', 1),
(56, 20180122001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(57, 20180122003, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(58, 20180122001, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(59, 20180122001, 'CMK00029', 'B-H524', '30000', 1),
(60, 20180122001, 'CMK00030', 'Tsunami 155921', '26000', 1),
(61, 20180122001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(62, 20180122001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(63, 20180122001, 'CMK00032', 'Tsunami 156961', '26000', 1),
(64, 20180122001, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(65, 20180122001, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(66, 20180122002, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(67, 20180123001, 'CMK00032', 'Tsunami 156961', '26000', 1),
(68, 20180123001, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(69, 20180124001, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(70, 20180124001, 'CMK00018', 'Lovely Tosca', '27000', 1),
(71, 20180124001, 'CMK00010', 'Tsunami 157945', '26000', 1),
(72, 20180124002, 'CMK00033', 'Polkadot 7 Warna', '25000', 1),
(73, 20180124002, 'CMK00032', 'Tsunami 156961', '26000', 1),
(74, 20180124002, 'CMK00034', 'Katun Jepang 125', '30000', 1),
(75, 20180124002, 'CMK00031', 'Haneda 139404 ', '26000', 1),
(76, 20180124003, 'CMK00030', 'Tsunami 155921', '26000', 1),
(77, 20180124004, 'CMK00030', 'Tsunami 155921', '26000', 1),
(78, 20180124004, 'CMK00033', 'Polkadot 7 Warna', '25000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_header`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_header` (
`id_transaksi_header` int(11) NOT NULL,
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
  `id_user` varchar(30) NOT NULL,
  `bukti_bayar` varchar(50) NOT NULL,
  `retur` varchar(10) NOT NULL DEFAULT 'Tidak',
  `no_resi` varchar(15) NOT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`id_transaksi_header`, `kode_transaksi`, `penerima`, `email`, `alamat`, `no_telepon`, `propinsi`, `kota`, `kode_pos`, `bank_id`, `jasapengiriman_id`, `ongkos_kirim`, `id_user`, `bukti_bayar`, `retur`, `no_resi`, `status`) VALUES
(40, 20180122001, 'sheptian', 'sheptian96@gmail.com', 'bandung', '089767545654', 'Jawa Barat', 'Bandung', 40231, 1, 2, 0, 'PLG-0000-0001', '1.jpg', 'Ya', '', 3),
(41, 20180122002, 'sheptian', 'sheptian96@gmail.com', 'bandung', '089767545654', 'Jawa Barat', 'Bandung', 40231, 1, 1, 0, 'PLG-0000-0002', '', 'Tidak', '', 4),
(42, 20180123001, 'alvian ahja wijaya', 'alvianahjawijaya88@gmail.com', 'jalan cibeurem no.144', '087824392239', 'Jawa Barat', 'bandung', 1289, 1, 2, 0, 'PLG-0000-0003', 'a.jpg', 'Tidak', '', 1),
(43, 20180124001, 'Yuliani Utami', 'yuliani89@gmail.com', 'jalan paledang no.23 ', '087834783321', 'Jawa Barat', 'Bandung', 40231, 1, 2, 0, 'PLG-0000-0004', 'chest-pass-300x127.jpg', 'Ya', '123123', 0),
(44, 20180124002, 'test', 'sheptian96@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 3, 0, 'PLG-0000-0001', 'teknik-dribbling-300x200.jpg', 'Ya', '123', 3),
(45, 20180124003, 'sheptian', 'sheptian96@gmail.com', 'jalan pagarsih gg.holili no.120 blok 97', '087824392239', 'Jawa Barat', 'Bandung', 40231, 1, 2, 0, 'PLG-0000-0001', '', 'Tidak', '', 0),
(46, 20180124004, 'thariq hidayatullah', 'thariqhida12@gmail.com', 'jl. kebon kopi no.120 ', '0220930239', 'Jawa Barat', 'bandung', 40231, 1, 2, 0, 'PLG-0000-0005', '', 'Tidak', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`) VALUES
('PLG-0000-0001', 'sheptian', '202cb962ac59075b964b07152d234b70'),
('PLG-0000-0002', 'rahma aulia', '202cb962ac59075b964b07152d234b70'),
('PLG-0000-0003', 'alvian ahja wijaya', '202cb962ac59075b964b07152d234b70'),
('PLG-0000-0004', 'yuliani', '202cb962ac59075b964b07152d234b70'),
('PLG-0000-0005', 'thariq', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
 ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
 ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
 ADD PRIMARY KEY (`id_carabelanja`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
 ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
 ADD PRIMARY KEY (`id_hubungikami`);

--
-- Indexes for table `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
 ADD PRIMARY KEY (`id_hubungi_kami_kirim`);

--
-- Indexes for table `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
 ADD PRIMARY KEY (`id_jasapengiriman`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
 ADD PRIMARY KEY (`id_kategorigaleri`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
 ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
 ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
 ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
 ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
 ADD PRIMARY KEY (`id_seo`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
 ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
 ADD PRIMARY KEY (`id_sosial_media`);

--
-- Indexes for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
 ADD PRIMARY KEY (`id_tentangkami`);

--
-- Indexes for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
 ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- Indexes for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
 ADD PRIMARY KEY (`id_transaksi_header`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_carabelanja`
--
ALTER TABLE `tbl_carabelanja`
MODIFY `id_carabelanja` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_hubungikami`
--
ALTER TABLE `tbl_hubungikami`
MODIFY `id_hubungikami` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_hubungi_kami_kirim`
--
ALTER TABLE `tbl_hubungi_kami_kirim`
MODIFY `id_hubungi_kami_kirim` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_jasapengiriman`
--
ALTER TABLE `tbl_jasapengiriman`
MODIFY `id_jasapengiriman` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_kategorigaleri`
--
ALTER TABLE `tbl_kategorigaleri`
MODIFY `id_kategorigaleri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_sambutan`
--
ALTER TABLE `tbl_sambutan`
MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_seo`
--
ALTER TABLE `tbl_seo`
MODIFY `id_seo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_sosial_media`
--
ALTER TABLE `tbl_sosial_media`
MODIFY `id_sosial_media` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_tentangkami`
--
ALTER TABLE `tbl_tentangkami`
MODIFY `id_tentangkami` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tbl_transaksi_header`
--
ALTER TABLE `tbl_transaksi_header`
MODIFY `id_transaksi_header` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
