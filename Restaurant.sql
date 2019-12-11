-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Des 2019 pada 14.53
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Restaurant`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `DETAIL_PESANAN`
--

CREATE TABLE `DETAIL_PESANAN` (
  `KD_PESANAN` char(6) NOT NULL,
  `NAMA_PESANAN` varchar(35) NOT NULL,
  `HARGA` int(11) NOT NULL,
  `QTY` int(11) NOT NULL,
  `SUB_TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `DETAIL_PESANAN`
--

INSERT INTO `DETAIL_PESANAN` (`KD_PESANAN`, `NAMA_PESANAN`, `HARGA`, `QTY`, `SUB_TOTAL`) VALUES
('BIL001', 'TEH ANGET', 2500, 1, 2500),
('BIL001', 'ES TEH', 3000, 2, 6000),
('BIL001', 'MIE AYAM', 7500, 5, 37500),
('BIL002', 'TEH ANGET', 2500, 2, 5000),
('BIL002', 'ES TEH', 3000, 1, 3000),
('BIL002', 'JUS BUAH', 7500, 1, 7500),
('BIL003', 'TEH ANGET', 2500, 2, 5000),
('BIL003', 'ES TEH', 3000, 1, 3000),
('BIL003', 'JUS BUAH', 7500, 1, 7500),
('BIL004', 'TEH ANGET', 2500, 1, 2500),
('BIL004', 'MEGA MENDUNG', 6000, 1, 6000),
('BIL004', 'ES JERUK', 3000, 1, 3000),
('BIL005', 'ES TEH', 3000, 1, 3000),
('BIL005', 'ES JERUK', 3000, 1, 3000),
('BIL005', 'KOPI HITAM', 7000, 1, 7000),
('BIL005', 'ES DAWET', 5000, 1, 5000),
('BIL006', 'TEH ANGET', 2500, 2, 5000),
('BIL006', 'JUS BUAH', 7500, 1, 7500),
('BIL006', 'ES JERUK', 3000, 1, 3000),
('BIL006', 'JERUK ANGET', 2500, 2, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `KASIR`
--

CREATE TABLE `KASIR` (
  `ID_KASIR` char(6) NOT NULL,
  `USERNAME` varchar(35) NOT NULL,
  `PASSWORD` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `KASIR`
--

INSERT INTO `KASIR` (`ID_KASIR`, `USERNAME`, `PASSWORD`) VALUES
('USR021', 'John', 'John'),
('USR022', 'a', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `PESANAN`
--

CREATE TABLE `PESANAN` (
  `ID_PESANAN` char(6) NOT NULL,
  `ID_USER` char(6) NOT NULL,
  `TANGGAL` date NOT NULL,
  `TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `KASIR`
--
ALTER TABLE `KASIR`
  ADD PRIMARY KEY (`ID_KASIR`);

--
-- Indeks untuk tabel `PESANAN`
--
ALTER TABLE `PESANAN`
  ADD PRIMARY KEY (`ID_PESANAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
