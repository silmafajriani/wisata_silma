-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2022 pada 09.51
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `pk_login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`pk_login_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `pk_transaksi_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `tempat_wisata` int(11) DEFAULT NULL,
  `tanggal_kunjungan` varchar(50) DEFAULT NULL,
  `dewasa` varchar(50) DEFAULT NULL,
  `anak` varchar(50) DEFAULT NULL,
  `qrcode` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`pk_transaksi_id`, `nama_lengkap`, `no_identitas`, `no_hp`, `tempat_wisata`, `tanggal_kunjungan`, `dewasa`, `anak`, `qrcode`, `created_date`, `status`) VALUES
(2, 'Adam', '5665', '23232', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(3, 'Andri', '989', '989', 1, '2022-04-17', '1', '1', NULL, '2022-04-17', 'N'),
(7, 'Dini', '3275656565', '08555555', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(8, 'asdad', '1212', '085555', 1, '2022-04-17', '1', '2', NULL, '2022-04-17', 'N'),
(9, 'Dini', '121231321231', '089614729915', 2, '2022-04-17', '1', '2', NULL, '2022-04-17', 'N'),
(12, 'titisan', '32132132', '089898', 1, '2022-04-17', '1', '2', '942847204.png', '2022-04-17', 'N'),
(13, 'titisan', '32132132', '089898', 1, '2022-04-17', '1', '2', '941896892.png', '2022-04-17', 'N'),
(14, 'test', '32323', '12', 2, '2022-04-17', '2', '3', '470081814.png', '2022-04-17', 'N'),
(15, 'titisan', '2323565', '08999', 2, '2022-04-17', '1', '2', '432131819.png', '2022-04-17', 'N'),
(18, '2311', '121321321', '123132123', 1, '2022-04-17', '2', '1', '651520538.png', '2022-04-17', 'N'),
(20, 'silma ', '1234567890', '08954637827893478', 1, '2022-04-18', '5', '6', '469155387.png', '2022-04-18', 'N'),
(21, 'melinda', '1234567890', '08954637827893478', 1, '2022-04-18', '5', '6', '634860717.png', '2022-04-18', 'N'),
(22, 'rahma', '1234567890', '08954637827893478', 1, '2022-04-18', '5', '6', '893579057.png', '2022-04-18', 'N'),
(23, 'rahma', '32547698034', '0978783265634', 1, '2022-04-18', '8', '10', '228211596.png', '2022-04-18', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `wisata_id` int(11) NOT NULL,
  `nama_tempat` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tiket_dewasa` int(11) DEFAULT NULL,
  `tiket_anak` int(11) DEFAULT NULL,
  `embed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`wisata_id`, `nama_tempat`, `lokasi`, `deskripsi`, `foto`, `tiket_dewasa`, `tiket_anak`, `embed`) VALUES
(1, 'Tonjong Canyon', 'Kabupaten Tasikmalaya', 'Tonjong Canyon hadir dengan keindahan alam yang begitu indah, berupa tebing kecoklatan dan jernihnya air sungai. Tempat wisata memukau ini terletak di Desa Nagrog, Kecamatan Cipatujah, Kabupaten Tasikmalaya.', 'https://asset.kompas.com/crops/iw3jiP9qJ-QnZOwoyyJ8fXnlhO0=/0x39:1040x732/750x500/data/photo/2020/10/19/5f8d58ded4daa.jpg', 10000, 5000, 'https://www.youtube.com/embed/kPszpag0B5I'),
(2, 'Pantai Karang Tawulan', 'Kabupaten Tasikmalaya', 'Salah satu pantai populer dan eksotis di Tasikmalaya adalah Pantai Karang Tawulan yang menawarkan pasir pantai putih dan tersembunyi di balik tebing. Pantai Karang Tawulan yang indah ini terletak di Desa Cimanuk, Kalapagenep, Kecamatan Cikalong, Tasikmalaya.', 'https://asset.kompas.com/crops/Fz0jDIh3z6Dxp642Di1MUK7KkkE=/0x0:800x533/750x500/data/photo/2020/10/19/5f8d5c603a93f.jpg', 15000, 5000, 'https://www.youtube.com/embed/td8EVbRbhog'),
(3, 'Karaha Bodas', 'Kabupaten Tasikmalaya', 'Karaha Bodas merupakan kawah gunung api muda yang terletak di Desa Kadipaten, Kecamatan Kadipaten, Kabupaten Tasikmalaya. Kawah ini menghasilkan panas bumi, juga fenomena fumarol dan solfatar, sehingga menimbulkan bau belerang.', 'https://imgx.sonora.id/crop/0x0:0x0/360x240/photo/2021/07/03/5f8d5d35605a0jpg-20210703050557.jpg', 10000, 5000, 'https://www.youtube.com/embed/cGNErqzkGfQ'),
(4, 'Gunung Galunggung', 'Kabupaten Tasikmalaya', 'Gunung Galunggung merupakan salah satu tempat wisata favorit yang ada di Kabupaten Tasikmalaya. Gunung ini masih aktif dan memiliki ketinggian 2.167 meter di atas permukaan laut (mdpl), sehingga pengunjung dapat merasakan udara yang sangat sejuk. Banyak keindahan yang dapat ditemukan di Gunung Galunggung, seperti Kawah Hijau, pemandian air panas, gardu pandang, sampai Curug Agung yang penuh warna.', 'https://kabaralam.com/img/2020/999/d355f7d1-0c2e-4868-aefd-522e9a0fd3c4.jpg', 10000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(5, 'Situ Gede', 'Kota Tasikmalaya', 'Situ Gede merupakan kawasan danau yang telah berdiri sejak zaman kolonial Belanda dengan menyajikan keindahan pemandangan alam, sehingga menarik banyak wisatawan. Di tengah danau, terdapat pulau dengan luas mencapai 1 hektar. Konon, di sana terdapat tiga makam yang juga menjadi asal-usul Situ Gede.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"25 Wisata Tasikmalaya, Pas Dikunjungi Saat Libur Panjang\", Klik untuk baca: https://travel.kompas.com/read/2020/10/24/165141327/25-wisata-tasikmalaya-pas-dikunjungi-saat-libur-panjang?page=all.\r\nPenulis : Lenny Septiani\r\nEditor : Anggara Wikan Prasetya\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'https://asset.kompas.com/crops/LOHvdFqjngDOa291rvyD8OnStFs=/0x0:1000x667/750x500/data/photo/2020/08/18/5f3b8e1fa6086.jpg', 10000, 5000, 'https://www.youtube.com/embed/H2jvOiGyz58'),
(6, 'Pantai Cipatujah', 'Kabupaten Tasikmalaya', 'Pantai Cipatujah menawarkan pesona alam yang masih sangat asri dan memesona karena dikelilingi tebing-tebing curam. Pantai Cipatujah merupakan pantai berkarang yang ada di kawasan selatan, tepatnya di Desa Cipatujah, Kecamatan Cipatujah, Tasikmalaya.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"25 Wisata Tasikmalaya, Pas Dikunjungi Saat Libur Panjang\", Klik untuk baca: https://travel.kompas.com/read/2020/10/24/165141327/25-wisata-tasikmalaya-pas-dikunjungi-saat-libur-panjang?page=all.\r\nPenulis : Lenny Septiani\r\nEditor : Anggara Wikan Prasetya\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'https://asset.kompas.com/crops/Ux06XTprjV-keyRxuOTf5CuL8L4=/0x0:1068x712/750x500/data/photo/2020/10/22/5f914668ce2e2.jpg', 12000, 6000, 'https://www.youtube.com/embed/Atsf4TsXmo8'),
(7, 'Alun Alun Tasikmalaya', 'Kota Tasikmalaya', 'Tempat yang harus dikunjungi saat berlibur ke Tasikmalaya adalah Alun-alun Tasikmalaya terletak di Jalan Otto Iskandardinata, Empangsari, Tawang, Tasikmalaya. Alun-Alun ini dilengkapi tugu yang menjadi daya tarik tersendiri, yaitu Tugu Mak Eroh dan Abdul Rozak untuk mengenang jasanya bagi lingkungan hidup di Tasikmalaya.', 'https://asset.kompas.com/crops/sMOpErqzerE2glA_wdek5hpdOiM=/0x408:1080x1128/750x500/data/photo/2020/10/22/5f9146d0d546c.jpg', 10000, 5000, 'https://www.youtube.com/embed/BO1WlsfRn3M'),
(8, 'Pantai Pangandaran', 'Kabupaten Tasikmalaya', 'Aktivitas yang dapat meliputi menikmati pemandanganyang indah, berfoto, hingga berenang jika kondisi air tidak sedang banjir. Di sini, masih belum ada fasilitas karena masih sangat baru dan masih masuk tahap penyadaran kepada warga desa akan potensi wisata yang dimiliki. Tiket masuknya pun masih gratis.', 'https://appback.pangandarankab.go.id/public/images/opd/galeri/04122019105319.JPG', 10000, 5000, 'https://www.youtube.com/embed/WG4ga7MCkcw');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_login_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pk_transaksi_id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`wisata_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `pk_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pk_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `wisata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
