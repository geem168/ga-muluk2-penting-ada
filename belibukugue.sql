-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2021 pada 06.08
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belibukugue`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Payment'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Confirmed'),
(18, '16W6pS9ETqisA', 7, '2021-01-15 14:28:06', 'Cart'),
(19, '16BRXGp.4b7aU', 10, '2021-01-20 13:40:25', 'Confirmed'),
(22, '16vFrdzFasVZg', 10, '2021-01-21 13:35:37', 'Cart'),
(24, '16QoK3ftklTtM', 16, '2021-01-22 04:16:18', 'Cart'),
(25, '16abh8E.Wqqro', 17, '2021-02-17 14:32:28', 'Payment'),
(26, '16VxWkUtxl9Rs', 17, '2021-02-19 17:02:45', 'Confirmed'),
(27, '16xnpEpjDaC4k', 17, '2021-04-27 10:35:57', 'Confirmed'),
(28, '161W.mWicfFB6', 17, '2021-04-29 15:50:20', 'Confirmed'),
(29, '166OrG/JjTTT.', 17, '2021-05-01 05:06:37', 'Confirmed'),
(30, '16LxxOkqvsrf6', 17, '2021-05-02 08:39:23', 'Cart');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(13, '15wKVT0nej25Y', 1, 100),
(14, '15PzF03ejd8W2', 2, 1),
(15, '15Swf8Ye0Fm.M', 1, 5),
(22, '16W6pS9ETqisA', 2, 2),
(23, '16BRXGp.4b7aU', 2, 2),
(28, '16abh8E.Wqqro', 2, 9),
(29, '16VxWkUtxl9Rs', 1, 9),
(30, '16xnpEpjDaC4k', 1, 1),
(31, '16xnpEpjDaC4k', 2, 1),
(32, '161W.mWicfFB6', 1, 1),
(34, '166OrG/JjTTT.', 1, 2),
(35, '16LxxOkqvsrf6', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, 'Semester 1', '2020-01-15 07:28:34'),
(2, 'Semester 2', '2020-01-15 07:34:17'),
(4, 'Semester 3', '2020-01-15 07:34:17'),
(5, 'Semester 4', '2020-01-15 07:34:17'),
(6, 'Semester 5', '2020-01-15 07:34:17'),
(7, 'Semester 6', '2020-01-15 07:34:17'),
(8, 'Semester 7', '2020-01-15 07:34:17'),
(9, 'Semester 8', '2020-01-15 07:34:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(10) NOT NULL,
  `nama` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `komentar` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `tanggal` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(13, '166OrG/JjTTT.', 17, 'Bank BCA', 'irgi', '2021-05-02', '2021-05-02 08:39:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `code` mediumint(50) NOT NULL,
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `code`, `lastlogin`) VALUES
(17, 'irgi', 'irgi168@gmail.com', '$2y$10$WVlHOWUS6sEbjqMeFaMRVu1WQXnaLZm8mambnyT4D0eBtc4zWMx86', '08', 'sbg', '2021-02-17 14:31:04', 'Member', 0, NULL),
(18, 'irgi', 'irgi168@gmail.com', '$2y$10$w2cImfCoVgrhHuxIdUH28OzuqetggJhExlZhjxht.9fsQ42ybhR1u', '0812', 'sbg', '2021-02-19 17:02:15', 'Member', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '2026573412', 'images/bca.png', 'Belibukugue'),
(2, 'Bank Mandiri', '9436025184629', 'images/mandiri.png', 'Belibukugue'),
(3, 'DANA', '0812 6485 7027', 'images/dana.png', 'Belibukugue'),
(4, 'BNI', '0600904501', 'images/bni.png', 'Belibukugue');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(1, 1, 'BUKU BIOLOGI', 'produk/sems1/biologi.jpg', 'Semester 1 - Buku Biologi', 5, 40000, 30000, '2020-01-15 08:06:26'),
(2, 1, 'BUKU FISIKA', 'produk/sems1/fisika.jpg', 'Semester 1 - Buku Fisika', 5, 40000, 30000, '2020-01-15 08:08:13'),
(4, 1, 'BUKU PENDIDIKAN KEWIRAUSAHAAN', 'produk/sems1/pkwu.jpg', 'Semester 1 - Pendidikan Kewirausahaan', 5, 40000, 30000, '2020-01-15 08:09:13'),
(5, 2, 'BUKU ALGORITME', 'produk/sems2/algoritme.jpg', 'Semester 2 - Buku Algoritme', 5, 50000, 40000, '2020-01-15 08:26:18'),
(6, 2, 'BUKU KIMIA', 'produk/sems2/kimia.jpg', 'Semester 2 - Buku Kimia', 5, 50000, 40000, '2020-01-15 08:26:54'),
(7, 2, 'BUKU PENKOM', 'produk/sems2/penkom.jpg', 'Semester 2 - Penerapan Komputer', 5, 50000, 40000, '2020-01-15 08:27:35'),
(9, 4, 'BUKU ALJABAR LINEAR', 'produk/sems3/alin.jpg', 'Semester 3 - Aljabar Linear', 5, 50000, 40000, '2020-01-15 08:27:35'),
(10, 4, 'BUKU MATEMATIKA DISKRIT', 'produk/sems3/matediskret.jpg', 'Semester 3 - Matematika Diskrit', 5, 50000, 40000, '2020-01-15 08:27:35'),
(11, 4, 'BUKU RANGKAIAN DIGITAL', 'produk/sems3/radig.jpg', 'Semester 3 - Rangkaian Digital', 5, 50000, 40000, '2020-01-15 08:27:35'),
(12, 5, 'BUKU REKAYASA PERANGKAT LUNAK', 'produk/sems4/rpl.jpg', 'Semester 4 - Rekayasa Perangkat Lunak', 5, 50000, 40000, '2020-01-15 08:27:35'),
(13, 5, 'BUKU  ORG ARSITEKTUR KOM', 'produk/sems4/oak.jpg', 'Semester 4 - Organisasi Arsitektur Komputer', 5, 50000, 40000, '2020-01-15 08:27:35'),
(14, 5, 'BUKU  BASIS DATA', 'produk/sems4/basdat.jpg', 'Semester 4 - Basis Data', 5, 50000, 40000, '2020-01-15 08:27:35'),
(15, 6, 'BUKU INTERAKSI MANUSIA & KOM', 'produk/sems5/IMK.jpg', 'Semester 5 - Interaksi Manusia dan Komputer', 5, 50000, 40000, '2020-01-15 08:27:35'),
(16, 6, 'BUKU GRAFIKA KOMPUTER', 'produk/sems5/grafika.jpg', 'Semester 5 - Grafika Komputer', 5, 50000, 40000, '2020-01-15 08:27:35'),
(17, 6, 'BUKU SISTEM OPERASI', 'produk/sems5/sistemoperasi.jpg', 'Semester 5 - Sistem Operasi', 5, 50000, 40000, '2020-01-15 08:27:35'),
(18, 7, 'BUKU DATA MINING', 'produk/sems6/datamining.jpg', 'Semester 6 - Data Mining', 5, 50000, 40000, '2020-01-15 08:27:35'),
(19, 7, 'BUKU KOM DATA & JARINGAN KOM', 'produk/sems6/kdjk.jpg', 'Semester 6 - Komunikasi Data & Jaringan Komputer', 5, 50000, 40000, '2020-01-15 08:27:35'),
(20, 7, 'BUKU PENGOLAHAN CITRA DIGITAL', 'produk/sems6/pcd.jpg', 'Semester 6 - Pengolahan Citra Digital', 5, 50000, 40000, '2020-01-15 08:27:35'),
(21, 8, 'BUKU BIO INFORMATIKA', 'produk/sems7/bioinformatika.jpg', 'Semester 7 - Prinsip Dasar Bio Informatika', 5, 50000, 40000, '2020-01-15 08:27:35'),
(22, 8, 'BUKU ETIKA KOMPUTER', 'produk/sems7/etikakomputer.jpg', 'Semester 7 - Etika Komputer', 5, 50000, 40000, '2020-01-15 08:27:35'),
(23, 8, 'BUKU PENULISAN KARYA ILMIAH', 'produk/sems7/metode.jpeg', 'Semester 7 - Pedoman Penulisan Karya Ilmiah Tugas Akhir Mahasiswa', 5, 50000, 40000, '2020-01-15 08:27:35'),
(24, 9, 'BUKU PEDOMAN KARYA ILMIAH', 'produk/sems8/pedoman.jpg', 'Semester 8 - Pedoman Penulisan Karya Ilmiah ', 5, 50000, 40000, '2020-01-15 08:27:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indeks untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
