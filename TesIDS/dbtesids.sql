-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2023 pada 20.53
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtesids`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` varchar(4) NOT NULL,
  `customerName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `customerName`) VALUES
('1372', 'abc'),
('1373', 'abc'),
('1374', 'abc'),
('1375', 'abc'),
('1376', 'abc'),
('1377', 'abc'),
('1378', 'abc'),
('1379', 'abc'),
('1380', 'abc'),
('1381', 'abc'),
('1382', 'abc'),
('1383', 'abc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `productID` varchar(5) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `amount` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`productID`, `productName`, `amount`) VALUES
('10001', 'Test 1', '1000'),
('10002', 'Test 2', '2000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` varchar(4) NOT NULL,
  `productID` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `transactionDate` date NOT NULL,
  `createBy` varchar(100) NOT NULL,
  `createOn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `productID`, `status`, `transactionDate`, `createBy`, `createOn`) VALUES
('1372', '10001', 'SUCCESS', '2022-07-10', 'abc', '2022-07-10'),
('1373', '10002', 'SUCCESS', '2022-07-11', 'abc', '2022-07-10'),
('1374', '10001', 'SUCCESS', '2022-08-10', 'abc', '2022-07-10'),
('1375', '10002', 'FAILED', '2022-08-10', 'abc', '2022-07-10'),
('1376', '10001', 'SUCCESS', '2022-08-10', 'abc', '2022-07-10'),
('1377', '10002', 'SUCCESS', '2022-08-12', 'abc', '2022-07-10'),
('1378', '10001', 'SUCCESS', '2022-08-12', 'abc', '2022-07-10'),
('1379', '10002', 'FAILED', '2022-09-13', 'abc', '2022-07-10'),
('1380', '10001', 'SUCCESS', '2022-09-13', 'abc', '2022-07-10'),
('1381', '10002', 'SUCCESS', '2022-09-14', 'abc', '2022-07-10'),
('1382', '10001', 'SUCCESS', '2022-09-14', 'abc', '2022-07-10'),
('1383', '10002', 'FAILED', '2022-08-15', 'abc', '2022-07-10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
