-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 01:15 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

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
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(1, 1, 'Biology, Concepts and Connections (3rd Ed)', 'produk/Semester 1/biologi.jpg', 'Campbell NA, Mitchell LG, Reece JB\r\n2000. Biology, Concepts and Connections (3rd Ed)\r\nBuku referensi Biologi Umum PPKU', 5, 50000, 35000, '2021-05-01 08:06:26'),
(2, 1, 'Pengantar Kewirausahaan dan Manajemen Bisnis Kecil', 'produk/Semester 1/pkwu.jpg', 'Zimmerer, Thomson W. and Norman M. Scarborough. \r\nPengantar Kewirausahaan dan Manajemen Bisnis Kecil. Edisi Keempat. \r\nPT.Indeks. Jakarta.\r\nBuku referensi Pengantar Kewirausahaan', 5, 50000, 35000, '2021-05-01 08:08:13'),
(3, 1, 'Diktat Fisika PPKU', 'produk/Semester 1/fisika.jpg', 'Penulis: Drs Sidikrubadi Pramudito, MSi\r\nUkuran : 21 × 29.7 cm \r\nCover : Kartu Tik 210, soft\r\nIsi : HVS 70, Hitam Putih, 265 halaman\r\nISBN : 978-602-440-617-2\r\nBuku Referensi Fisika PPKU', 5, 50000, 35000, '2021-05-01 08:09:13'),
(4, 2, 'Intisari Kimia Umum', 'produk/Semester 2/kimia.jpg', 'Intisari kimia umum merupakan buku tinjauan berkualitas tinggi yang efisien dan mudah di baca untuk kimia umum setingkat perguruan tinggi di tingkat perguruan tinggi di tahun pertama, buku ini memfoko', 5, 50000, 35000, '2020-01-15 08:26:18'),
(5, 2, 'Algoritma dan Pemrograman dalam Bahasa Pascal, C, ', 'produk/Semester 2/algoritme.jpg', 'Buku Algoritma dan Pemrograman dalam Bahasa Pascal, C, dan C++ merupakan edisi baru dari buku sebelumnya, yaitu Algoritma dan Pemrograman dalam Bahasa Pascal dan C. Buku ini disusun bagi siapapun (sis', 5, 50000, 35000, '2020-01-15 08:26:54'),
(6, 2, 'Penerapan Komputer: Modul Pembelajaran', 'produk/Semester 2/penkom.jpg', 'Setelah menyelesaikan seluruh pokok bahasan pada modul ini, mahasiswa akan dapat memahami konsep penggunaan aplikasi komputer baik dalam proses pembelajaran dengan metode Moodle, aplikasi Microsoft Wo', 5, 50000, 35000, '2020-01-15 08:27:35'),
(7, 3, 'Rangkaian Digital', 'produk/Semester 3/radig.jpg', 'Buku ini mengantarkan anda mencapai pemahaman yang komprehensif terhadap dasar-dasar analisis dan perancangan rangkaian digital. Penyajian yang sederhana dan sistematis serta didukung oleh kegiatan pe', 5, 50000, 35000, '2021-05-01 08:27:35'),
(8, 3, 'Matematika Diskrit dan Aplikasi Pada Ilmu Komputer', 'produk/Semester 3/matediskret.jpg', 'Pokok bahasan buku ini: - Logika - Logika Kuantor - Himpunan - Relasi - Fungsi - Metode Pembuktian - Induksi Matematika - Kombinatorika - Teori Graf - Aljabar Boole - Analisa Algoritma - Relasi Rekure', 5, 50000, 35000, '2021-05-01 08:27:35'),
(9, 3, 'Aljabar Linier & Aplikasinya', 'produk/Semester 3/alin.jpg', 'Dikenal akan ruang lingkupnya yang luas serta kemudahannya untuk dipahami, buku teks yang ditulis pleb salah satu figur terdepan dalam bidang aljabar linear ini menawarkan kepada mahasiswa suatu cara ', 5, 50000, 35000, '2021-05-01 08:27:35'),
(10, 4, 'Basis Data/database Dasar', 'produk/Semester 4/basdat.jpg', 'Buku Basis Data Dasar: Untuk Mahasiswa Ilmu Komputer\r\nDalam buku ini dibahas tentang ER-D dari simbol hingga langkah-langkah pembuatan ER-D yang baik dan benar. Selain itu buku ini juga membahas kasus', 5, 50000, 35000, '2021-05-01 08:27:35'),
(11, 4, 'Organisasi dan Arsitektur Komputer Edisi Revisi Ke', 'produk/Semester 4/oak.jpg', 'Pada edisi keempat ini terdapat satu bab yang ditambahkan yaitu tentang \"Pengenalan : Organisasi dan Arsitektur Komputer\". Bab ini ditambahkan pada awal buku sebagai pengenalan, semacam warming up kon', 5, 50000, 35000, '2021-05-01 08:27:35'),
(12, 4, 'REKAYASA PERANGKAT LUNAK', 'produk/Semester 4/rpl.jpg', 'Buku ini dapat digunakan sebagai panduan bagi para mahasiswa dalam mempelajari perekayasaan perangkat lunak.', 5, 50000, 35000, '2021-05-01 08:27:35'),
(13, 5, 'Grafika Komputer Teori Dan Implementasi', 'produk/Semester 5/grafika.jpg', 'Judul Buku	:	Grafika Komputer – Teori Dan Implementasi\r\nPengarang	:	Achmad Basuki & Nana Ramadijanti\r\nPenerbit	:	ANDI – Yogyakarta\r\nCetakan	:	Ke – 1	\r\nTahun Terbit	:	2006	\r\nBahasa	:	Indonesia	\r\nJumlah Halaman	:	118	\r\nCover	:	Soft	\r\nUkuran	:	16 x 23	', 5, 50000, 35000, '2021-05-01 08:27:35'),
(14, 5, 'Buku Teori dan Praktek Sistem Operasi', 'produk/Semester 5/sistemoperasi.jpg', 'Buku ini terdiri dari beberapa bab, bab pertama membahas tentang pengenalan sistem operasi, bab kedua tentang struktur sistem operasi, bab ketiga tentang sejarah Ms Windows dan DOS, bab keempat tentang sejarah UNIX dan Linux, bab kelima tentang manajemen file dan direktori, bab keenam tentang pemrograman dasar Bash Shell di Linux, bab ketujuh tentang security pada Linux, bab kedelapan tentang manajemen proses dan job kontrol, bab kesembilan adalah pengayaan dan soal, bab kesepuluh membahas input', 5, 50000, 35000, '2021-05-01 08:27:35'),
(15, 5, 'Buku Interaksi Manusia Dan Komputer', 'produk/Semester 5/IMK.jpg', 'Buku ini disusun untuk memberikan pemahaman bagaimana manusia sebagai sumber daya terpenting dalam membangun sistem. Materi yang dibahas meliputi manusia, komputer, interaksi, paradigma dan prinsip penggunaan, proses desain, model kognifit, analisis tugas, desain dan notasi dialog, model sistem, dukungan implementasi, teknik evaluasi, bantuan dan dokumentasi, groupware, teori dan permasalahan pekerjaan bersama yang didukung komputer, serta sistem banyak sensor.', 5, 50000, 35000, '2021-05-01 08:27:35'),
(16, 6, 'Komunikasi Data dan Jaringan Komputer serta Analog', 'produk/Semester 6/kdjk.jpg', 'Buku Ajar “Komunikasi Data dan Jaringan Komputer serta Analoginya dalam konsep Subak” merupakan hasil kajian dan analisis penulis bersama Tim Jurusan Pendidikan Teknik Informatika Undiksha, dalam menghasilkan sebuah karya yang inovatif tanpa meninggalkan warisan budaya leluhur sebagai kearifan lokal yang perlu dilestarikan di era digital sekarang ini. Buku ini diperuntukkan kepada para pembaca baik itu mahasiswa maupun akademisi yang ingin menambah wawasan dan tertarik untuk mendalami konsep jar', 5, 50000, 35000, '2021-05-01 08:27:35'),
(17, 6, 'Pengolahan Citra Digital', 'produk/Semester 6/pcd.jpg', 'Buku Pengolahan Citra Digital ini ditulis sebagai upaya untuk mendukung implementasi dari konsep-konsep dasar mengenai pengolahan citra digital. Penyajian materi dilakukan dengan menggunakan contoh-contoh perhitungan sederhana agar memudahkan pembaca dalam memahami algoritma-algoritma yang diberikan sehingga lebih mudah untuk diimplementasikan ke dalam program menggunakan bahasa pemrograman MATLAB. Materi yang dibahas dalam buku ini di antaranya meliputi pengenalan pola yang berisi tentang tahap', 5, 50000, 35000, '2021-05-01 08:27:35'),
(18, 6, 'Data Mining Untuk Perguruan Tinggi', 'produk/Semester 6/datamining.jpg', 'Pada buku ini akan membahas teori dan algoritma atau metode dalam data mining. Setiap algoritma atau metode yang dibahas akan diuraikan mulai dari teori, rumus, cara kerja algoritma atau metode, studi kasus dan penyelesaian studi kasus tersebut secara bertahap dan detail. Begitu juga bahasa yang digunakan, menggunakan bahasa yang formal atau umum digunakan dalam kehidupan sehari-hari sehingga mudah dimengerti.', 5, 50000, 35000, '2021-05-01 08:27:35'),
(19, 7, 'Prinsip Dasar Bioinformatika', 'produk/Semester 7/bioinformatika.jpg', 'Buku ini berisi pembahasan tentang bioinformatika dan elemen-elemen yang berada di dalamnya. Pembaca bisa mengetahui tentang proyek genom manusia, sumber informasi database, eksplorasi genebank database, piranti lunak analisis in silico, analisis penyejajaran dengan blast system, pensejajaran urutan DNA/protein, desain DNA primer untuk PCR dan peta enzim restriksi secara online, pemodelan struktur protein berbasis struktur kimia, analisis struktur protein 3 dimensi dan docking interaksi antar mo', 5, 50000, 35000, '2021-05-01 08:27:35'),
(20, 7, 'Buku Pedoman Penulisan Karya Ilmiah ', 'produk/Semester 7/metode.jpeg', 'Buku Pedoman Penulisan Karya Ilmiah (PPKI) Tugas Akhir Mahasiswa edisi ke-4\r\nini, merupakan revisi dari PPKI edisi sebelumnya, dan berisi panduan tentang penulisan\r\nkarya ilmiah tugas akhir mahasiswa IPB multistrata mulai dari vokasi, sarjana, magister,\r\nsampai doktor. Karya tugas akhir mahasiswa vokasi berupa laporan akhir yang berasal dari\r\nhasil praktik kerja lapangan. Karya tugas akhir mahasiswa sarjana berupa skripsi dapat\r\nberasal dari kegiatan penelitian (eksperimental atau non eksperimen', 5, 50000, 35000, '2021-05-01 08:27:35'),
(21, 7, 'Etika Komputer Tanggung Jawab Profesional di Bidang Teknologi', 'produk/Semester 7/etikakomputer.jpg', 'Buku Etika Komputer dan Tanggung Jawab Profesional di Bidang Teknologi Informasi ini mencoba membahas etika komputer secara lengkap, mulai dari tinjauan umum etika, etika komputer sampai pada etika profesi di bidang teknologi informasi. Pembahasan juga mencakup masalah akibat pengintegrasian teknologi informasi dalam kehidupan umat manusia.', 5, 50000, 35000, '2021-05-01 08:27:35'),
(22, 8, 'Pedoman Penulisan Karya Ilmiah IPB Edisi Ke-3', 'produk/Semester 8/pedoman.jpg', 'Pedoman Penulisan Karya Ilmiah edisi ke-3 ini memuat banyak perubahan baik dari segi sistematika maupun substansinya. Perubahan itu dilandasi oleh keinginan pimpinan IPB agar karya tulis peserta didik di IPB, dengan arahan dosen pembimbingnya, dapat menuangkan gagasan atau temuan ilmiahnya dalam dokumen yang ringkas tanpa mengorbankan mutu substansi. Efisiensi dalam hal tata tulis ini sudah berlaku di negara maju dan IPB sebagai perguruan tinggi terkemuka di tanah air juga dapat menjadi pelopor ', 5, 50000, 35000, '2021-05-01 08:27:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
