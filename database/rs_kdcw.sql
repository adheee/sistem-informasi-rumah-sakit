-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2019 pada 22.44
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rs_kdcw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_tlp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `no_tlp`) VALUES
(1, 'adhe', 'DEKU', '1234567', '1234567890'),
(2, 'adhe', 'adhe', '1234567', '1234567890'),
(3, 'adhee', 'ad', '123456789', '123456790'),
(4, 'aaaa', 'bbb', '123456789', '1234567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_dokter`
--

CREATE TABLE `data_dokter` (
  `kode_dokter` varchar(4) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `umur` int(2) NOT NULL,
  `alumni` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_dokter`
--

INSERT INTO `data_dokter` (`kode_dokter`, `nama_dokter`, `spesialis`, `alamat`, `no_hp`, `umur`, `alumni`) VALUES
('12', 'qwerty', 'qwert', 'esdrftgy', '123456', 34, 'awsedrft');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pasien`
--

CREATE TABLE `data_pasien` (
  `No_RM` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `gol_darah` varchar(2) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `kode_dokter` varchar(4) NOT NULL,
  `kode_ruangan` varchar(4) NOT NULL,
  `penyakit` varchar(50) NOT NULL,
  `tgl_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pasien`
--

INSERT INTO `data_pasien` (`No_RM`, `nama`, `umur`, `alamat`, `gol_darah`, `tgl_daftar`, `kode_dokter`, `kode_ruangan`, `penyakit`, `tgl_keluar`) VALUES
('2019-01-100.731', 'www', 56, 'fcvyhyh', 'A', '2019-01-10', '12', '33', 'edxcgtv', '2019-01-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `kode_ruangan` varchar(4) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `status` enum('Terisi','Kosong') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`kode_ruangan`, `nama_ruangan`, `status`) VALUES
('33', 'qwertyu', 'Kosong');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_dokter`
--
ALTER TABLE `data_dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indeks untuk tabel `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD PRIMARY KEY (`No_RM`),
  ADD KEY `kode_dokter` (`kode_dokter`),
  ADD KEY `kode_ruangan` (`kode_ruangan`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kode_ruangan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD CONSTRAINT `data_pasien_ibfk_1` FOREIGN KEY (`kode_dokter`) REFERENCES `data_dokter` (`kode_dokter`),
  ADD CONSTRAINT `data_pasien_ibfk_2` FOREIGN KEY (`kode_ruangan`) REFERENCES `ruangan` (`kode_ruangan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
