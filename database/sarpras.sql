-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2022 at 04:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarpras`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(25) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `spesifikasi` varchar(255) NOT NULL,
  `Jumlah_barang` int(11) NOT NULL,
  `Harga_total` int(11) NOT NULL,
  `Sumber` varchar(60) NOT NULL,
  `Ruang` varchar(60) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `Kondisi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `merk`, `spesifikasi`, `Jumlah_barang`, `Harga_total`, `Sumber`, `Ruang`, `foto`, `Kondisi`) VALUES
(83, 'IAI/U.12/010701/2022', 'Meja Kayu Biro', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(84, 'IAI/U.12/010701/2022', 'Meja Kayu Bendahara', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(85, 'IAI/U.12/0107012022', 'Kursi Kayu Jok Biro', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(86, 'IAI/U.12/010701/2022', 'kursi Kayu Jok Bendahara', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(87, 'IAI/U.12/010701/2022', 'Meja Administrasi Staff', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(88, 'IAI/U.12/010701/2022', 'Kursi Staff', '-', '-', 2, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(89, 'IAI/U.12/010701/2022', 'Komputer Bendahara', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(90, 'IAI/U.12/010701/2022', 'Komputer Staff', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(91, 'IAI/U.12/010701/2022', 'Printer Bendahara', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(92, 'IAI/U.12/010701/2022', 'Printer Staff', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(93, 'IAI/U.12/010701/2022', 'Brangkas Uang', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(94, 'IAI/U.12/010701/2022', 'Lemari Kayu Rak', '-', '-', 2, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(95, 'IAI/U.12/010701/2022', 'Lemari Besi Locker', '-', '-', 6, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(96, 'IAI/U.12/010701/2022', 'Jam Dinding', '-', '-', 1, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK'),
(97, 'IAI/U.12/010701/2022', 'Payung', '-', '-', 2, 0, '-', 'Ruang Biro Keuangan dan Sarpras', '', 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `judul_buku` varchar(120) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `harga_satuan` varchar(255) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `tanggal_beli`, `judul_buku`, `pengarang`, `harga_satuan`, `Jumlah`, `Foto`) VALUES
(1, '2022-09-21', 'Rancangan Sistem Hukum di Indonesia', 'Sandi Nurhadiana', '', 2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_barang`
--

CREATE TABLE `kondisi_barang` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kondisi_barang`
--

INSERT INTO `kondisi_barang` (`id`, `kondisi`) VALUES
(1, 'BAIK'),
(2, 'RUSAK'),
(3, 'HILANG');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `kode_barang` varchar(60) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `Keterangan` text NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(382, 1, 'barang', 'list'),
(383, 1, 'barang', 'view'),
(384, 1, 'barang', 'add'),
(385, 1, 'barang', 'edit'),
(386, 1, 'barang', 'editfield'),
(387, 1, 'barang', 'delete'),
(388, 1, 'barang', 'import_data'),
(389, 1, 'ruangan', 'list'),
(390, 1, 'ruangan', 'view'),
(391, 1, 'ruangan', 'add'),
(392, 1, 'ruangan', 'edit'),
(393, 1, 'ruangan', 'editfield'),
(394, 1, 'ruangan', 'delete'),
(395, 1, 'kondisi_barang', 'list'),
(396, 1, 'kondisi_barang', 'view'),
(397, 1, 'kondisi_barang', 'add'),
(398, 1, 'kondisi_barang', 'edit'),
(399, 1, 'kondisi_barang', 'editfield'),
(400, 1, 'kondisi_barang', 'delete'),
(401, 1, 'user', 'list'),
(402, 1, 'user', 'view'),
(403, 1, 'user', 'add'),
(404, 1, 'user', 'edit'),
(405, 1, 'user', 'editfield'),
(406, 1, 'user', 'delete'),
(407, 1, 'user', 'userregister'),
(408, 1, 'user', 'accountedit'),
(409, 1, 'user', 'accountview'),
(410, 1, 'role_permissions', 'list'),
(411, 1, 'role_permissions', 'view'),
(412, 1, 'role_permissions', 'add'),
(413, 1, 'role_permissions', 'edit'),
(414, 1, 'role_permissions', 'editfield'),
(415, 1, 'role_permissions', 'delete'),
(416, 1, 'roles', 'list'),
(417, 1, 'roles', 'view'),
(418, 1, 'roles', 'add'),
(419, 1, 'roles', 'edit'),
(420, 1, 'roles', 'editfield'),
(421, 1, 'roles', 'delete'),
(422, 1, 'peminjaman', 'list'),
(423, 1, 'peminjaman', 'view'),
(424, 1, 'peminjaman', 'add'),
(425, 1, 'peminjaman', 'edit'),
(426, 1, 'peminjaman', 'editfield'),
(427, 1, 'peminjaman', 'delete'),
(428, 1, 'buku', 'list'),
(429, 1, 'buku', 'view'),
(430, 1, 'buku', 'add'),
(431, 1, 'buku', 'edit'),
(432, 1, 'buku', 'editfield'),
(433, 1, 'buku', 'delete'),
(434, 1, 'tanah', 'list'),
(435, 1, 'tanah', 'view'),
(436, 1, 'tanah', 'add'),
(437, 1, 'tanah', 'edit'),
(438, 1, 'tanah', 'editfield'),
(439, 1, 'tanah', 'delete'),
(440, 2, 'barang', 'list'),
(441, 2, 'barang', 'view'),
(442, 2, 'barang', 'add'),
(443, 2, 'barang', 'edit'),
(444, 2, 'barang', 'editfield'),
(445, 2, 'barang', 'import_data'),
(446, 2, 'ruangan', 'list'),
(447, 2, 'ruangan', 'view'),
(448, 2, 'ruangan', 'add'),
(449, 2, 'ruangan', 'edit'),
(450, 2, 'ruangan', 'editfield'),
(451, 2, 'kondisi_barang', 'list'),
(452, 2, 'kondisi_barang', 'view'),
(453, 2, 'kondisi_barang', 'add'),
(454, 2, 'kondisi_barang', 'edit'),
(455, 2, 'kondisi_barang', 'editfield'),
(456, 2, 'user', 'userregister'),
(457, 2, 'user', 'accountedit'),
(458, 2, 'user', 'accountview'),
(459, 2, 'buku', 'list'),
(460, 2, 'buku', 'view'),
(461, 2, 'buku', 'add'),
(462, 2, 'buku', 'edit'),
(463, 2, 'buku', 'editfield'),
(464, 2, 'tanah', 'list'),
(465, 2, 'tanah', 'view'),
(466, 2, 'tanah', 'edit'),
(467, 2, 'tanah', 'editfield');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `foto_ruangan` varchar(255) NOT NULL,
  `Kode_Gedung` varchar(55) NOT NULL,
  `Kelompok_Gedung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `foto_ruangan`, `Kode_Gedung`, `Kelompok_Gedung`) VALUES
(23, 'Ruang Rektor', '', '010101', 'Rektorat 01'),
(24, 'Ruang Warek I', '', '010201', 'Rektorat 01'),
(25, 'Ruang Warek II', '', '010301', 'Rektorat 01'),
(26, 'Ruang Warek III', '', '010401', 'Rektorat 01'),
(27, 'Ruang Biro BAK3HM', '', '010501', 'Rektorat 01'),
(28, 'Ruang Biro Umum', '', '010601', 'Rektorat 01'),
(29, 'Ruang Biro Keuangan dan Sarpras', '', '010701', 'Rektorat 01'),
(30, 'Ruang Kabag Akademik, Kemahasiswaan, Ketatausahaan, Kerjasama dan Hubangan Masyarakat', '', '010801', 'Rektorat 01'),
(31, 'Ruang Yayasan', '', '010901', 'Rektorat 01'),
(32, 'Ruang Tunggu Rektorat', '', '011001', 'Rektorat 01'),
(33, 'Ruang Lorong Rektorat', '', '011101', 'Rektorat 01'),
(34, 'Ruang WC Rektorat', '', '011201', 'Rektorat 01'),
(35, 'Ruang Aula', '', '011301', 'Rektorat 01'),
(36, 'Ruang LBH', '', '011401', 'Rektorat 01'),
(37, 'Ruang WC Aula', '', '011501', 'Rektorat 01'),
(38, 'Ruang PTI', '', '020101', 'Tarbiyah 02'),
(39, 'Ruang LPMP', '', '020201', 'Tarbiyah 02'),
(40, 'Ruang Laboratorium HKI', '', '020301', 'Tarbiyah 02'),
(41, 'Ruang Mikro Teaching', '', '020401', 'Tarbiyah 02'),
(42, 'Ruang Prodi PIAUD', '', '020501', 'Tarbiyah 02'),
(43, 'Ruang Laboratorium PIAUD', '', '020601', 'Tarbiyah 02'),
(44, 'Ruang Band OMIK', '', '020701', 'Tarbiyah 02'),
(45, 'Ruang Gudang', '', '020801', 'Tarbiyah 02'),
(46, 'Ruang Prodi MPI', '', '020102', 'Tarbiyah 02'),
(47, 'Ruang Prodi PAI', '', '020202', 'Tarbiyah 02'),
(48, 'Ruang Kelas II B', '', '020302', 'Tarbiyah 02'),
(49, 'Ruang Kelas II C', '', '020402', 'Tarbiyah 02'),
(50, 'Ruang Kelas II D', '', '020502', 'Tarbiyah 02'),
(51, 'Ruang Kelas II E', '', '020602', 'Tarbiyah 02'),
(52, 'Ruang Prodi PGMI', '', '020103', 'Tarbiyah 02'),
(53, 'Ruang Kelas III A', '', '020203', 'Tarbiyah 02'),
(54, 'Ruang Kelas III B', '', '020303', 'Tarbiyah 02'),
(55, 'Ruang Kelas III C', '', '020403', 'Tarbiyah 02'),
(56, 'Ruang Kelas III D', '', '020503', 'Tarbiyah 02'),
(57, 'Ruang Kelas III E', '', '020603', 'Tarbiyah 02'),
(58, 'Ruang WC Pria & Wanita', '', '022101', 'Tarbiyah 02'),
(59, 'Ruang WC PIAUD', '', '022201', 'Tarbiyah 02'),
(60, 'Ruang WC MPI', '', '022302', 'Tarbiyah 02'),
(61, 'Ruang WC PGMI', '', '022403', 'Tarbiyah 02'),
(62, 'Ruang Prodi Ekonomi Syari&#39;ah & Dekan  FEBIS', '', '030101', 'Syari&#39;ah dan 03 Ekonomi'),
(63, 'Ruang Kelas I F', '', '030201', 'Syari&#39;ah dan 03 Ekonomi'),
(64, 'Ruang Kelas I G', '', '030301', 'Syari&#39;ah dan 03 Ekonomi'),
(65, 'Ruang Kelas I H', '', '030401', 'Syari&#39;ah dan 03 Ekonomi'),
(66, 'Ruang WC Prodi Ekonomi Syari&#39;ah', '', '030601', 'Syari&#39;ah dan 03 Ekonomi'),
(67, 'Ruang WC Ekonomi Syari&#39;ah', '', '030601', 'Syari&#39;ah dan 03 Ekonomi'),
(68, 'Ruang Prodi HKI & Dekan Syari&#39;ah dan Hukum', '', '030102', 'Syari&#39;ah dan 03 Ekonomi'),
(69, 'Ruang Kelas II F', '', '030202', 'Syari&#39;ah dan 03 Ekonomi'),
(70, 'Ruang Kelas II G', '', '030302', 'Syari&#39;ah dan 03 Ekonomi'),
(71, 'Ruang Kelas II H', '', '030402', 'Syari&#39;ah dan 03 Ekonomi'),
(72, 'Ruang Prodi HTN', '', '030103', 'Syari&#39;ah dan 03 Ekonomi'),
(73, 'Ruang Kelas III F', '', '030203', 'Syari&#39;ah dan 03 Ekonomi'),
(74, 'Ruang Kelas III G', '', '030303', 'Syari&#39;ah dan 03 Ekonomi'),
(75, 'Ruang Kelas III H', '', '030403', 'Syari&#39;ah dan 03 Ekonomi'),
(76, 'Ruang WC Prodi HTN', '', '030503', 'Syari&#39;ah dan 03 Ekonomi'),
(77, 'Ruang Direktur dan Prodi Pascasarjana', '', '040101', 'Pascasarjana 04'),
(78, 'Ruang', '', '040201', 'Pascasarjana 04'),
(79, 'Ruang Kelas I I', '', '040301', 'Pascasarjana 04'),
(80, 'Ruang Kelas I J', '', '040401', 'Pascasarjana 04'),
(81, 'Ruang Kelas I K', '', '040501', 'Pascasarjana 04'),
(82, 'Ruang P3M', '', '040601', 'Pascasarjana 04'),
(83, 'Ruang WC Pascasarjana', '', '040701', 'Pascasarjana 04'),
(84, 'Ruang Sarpras', '', '050101', 'SERBAGUNA 05'),
(85, 'Ruang Dapur', '', '050201', 'SERBAGUNA 05'),
(86, 'Ruang Gudang', '', '050301', 'SERBAGUNA 05'),
(87, 'Ruang OMIK', '', '050401', 'SERBAGUNA 05'),
(88, 'Ruang LPPM', '', '050501', 'SERBAGUNA 05'),
(89, 'Ruang Podcast', '', '050601', 'SERBAGUNA 05'),
(90, 'Ruang PKA', '', '050701', 'SERBAGUNA 05'),
(91, 'Ruang xx', '', '050801', 'SERBAGUNA 05'),
(92, 'Ruang P2B', '', '050102', 'SERBAGUNA 05'),
(93, 'Ruang DKM', '', '050202', 'SERBAGUNA 05'),
(94, 'Ruang Masjid Al-Hasan', '', '050302', 'SERBAGUNA 05'),
(95, 'Ruang WC Sarpras', '', '050401', 'SERBAGUNA 05'),
(96, 'Ruang WC PKA', '', '050501', 'SERBAGUNA 05'),
(97, 'Ruang Satpam', '', '050601', 'SERBAGUNA 05'),
(98, 'Ruang Asrama', '', '050701', 'SERBAGUNA 05'),
(99, 'Ruang Kantin', '', '050801', 'SERBAGUNA 05');

-- --------------------------------------------------------

--
-- Table structure for table `tanah`
--

CREATE TABLE `tanah` (
  `id_tanah` int(11) NOT NULL,
  `nama_lokasi` varchar(50) NOT NULL,
  `kode_lokasi` varchar(25) NOT NULL,
  `luas_tanah` varchar(25) NOT NULL,
  `tahun_pengadaan` varchar(12) NOT NULL,
  `letak_alamat` varchar(150) NOT NULL,
  `tgl_sertifikat` date NOT NULL,
  `no_sertifikat` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanah`
--

INSERT INTO `tanah` (`id_tanah`, `nama_lokasi`, `kode_lokasi`, `luas_tanah`, `tahun_pengadaan`, `letak_alamat`, `tgl_sertifikat`, `no_sertifikat`, `asal`, `harga`, `keterangan`) VALUES
(1, 'Tanah Bangunan Pendidikan ', '1.3.1.01.001.004.002', ' 21.000,00', '2007', 'Jl. Jend Sudirman Kel. Tambah Asri Kec. Tugu Mulyo Kab. Musi Rawas', '0000-00-00', 'Akte No. 594/52/TGM/2006', 'Pembelian', 112800, 'Tanah Sekolah SMKN Tugumulyo');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2022-03-05 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `account_status` varchar(255) DEFAULT 'Pending',
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `account_status`, `user_role_id`) VALUES
(4, 'iaitasik', '$2y$10$sO0BCTdHfmlsu20NXNpa..Z9Bj3zNDyUfA8gnWk33qhexiQcwHSUC', 'iaitasik@gmail.com', 'http://localhost/aplikasisarpras/uploads/files/gr2snfy9um3p4ji.png', 'd9777377e90024b9078e10a41b769ab6', NULL, '2022-03-05 00:00:00', NULL, 'Active', 1),
(6, 'dede', '$2y$10$.6gEj1.KH4nwVe10L4ZkHOg2VGYn63EbtBgD73FWgwK3OfeCPG466', 'dedehub@gmail.com', 'http://localhost/aplikasisarpras/uploads/files/a150ck3f8enpvby.jpg', NULL, NULL, '2022-03-05 00:00:00', NULL, 'Active', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `kondisi_barang`
--
ALTER TABLE `kondisi_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanah`
--
ALTER TABLE `tanah`
  ADD PRIMARY KEY (`id_tanah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kondisi_barang`
--
ALTER TABLE `kondisi_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tanah`
--
ALTER TABLE `tanah`
  MODIFY `id_tanah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
