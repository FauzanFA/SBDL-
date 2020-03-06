-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2020 pada 09.17
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `data_keluar_masuk_bahan_baku_gudang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE IF NOT EXISTS `data_barang` (
  `Kode_Barang` int(20) NOT NULL,
  `Nama_Barang` varchar(40) NOT NULL,
  `Jenis_Barang` varchar(10) NOT NULL,
  PRIMARY KEY (`Kode_Barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang_keluar`
--

CREATE TABLE IF NOT EXISTS `data_barang_keluar` (
  `Id_Keluar` int(20) NOT NULL,
  `Tgl` date NOT NULL,
  `Kode_Barang` varchar(30) NOT NULL,
  `Jumlah` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_Keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang_masuk`
--

CREATE TABLE IF NOT EXISTS `data_barang_masuk` (
  `Id_Masuk` int(20) NOT NULL,
  `Tgl` date NOT NULL,
  `Kode_Barang` varchar(30) NOT NULL,
  `Jumlah` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_Masuk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_persediaan`
--

CREATE TABLE IF NOT EXISTS `data_persediaan` (
  `Kode_Barang` varchar(40) NOT NULL,
  `Stok_Awal` varchar(10) NOT NULL,
  `Masuk` varchar(10) NOT NULL,
  `Keluar` varchar(10) NOT NULL,
  `Stok_Akhir` varchar(10) NOT NULL,
  `Rata_Keluar` varchar(10) NOT NULL,
  PRIMARY KEY (`Kode_Barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE IF NOT EXISTS `data_user` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Login_Hash` varchar(30) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
