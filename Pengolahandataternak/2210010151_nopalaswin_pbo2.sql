-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 06:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010151_nopalaswin_pbo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(50) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `username2` varchar(50) NOT NULL,
  `password2` varchar(50) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nama_desa`, `username2`, `password2`, `date_created`) VALUES
(1, 'bjm', '123', '12345', '1'),
(1234, 'naa', 'naa', '1234', '2');

-- --------------------------------------------------------

--
-- Table structure for table `peternak`
--

CREATE TABLE `peternak` (
  `id_peternak` int(50) NOT NULL,
  `id_desa` int(50) NOT NULL,
  `nama1` varchar(50) NOT NULL,
  `umur_peternak` varchar(50) NOT NULL,
  `kelamin` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nik` int(50) NOT NULL,
  `password2` varchar(50) NOT NULL,
  `date_created` varchar(59) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peternak`
--

INSERT INTO `peternak` (`id_peternak`, `id_desa`, `nama1`, `umur_peternak`, `kelamin`, `pekerjaan`, `alamat`, `nik`, `password2`, `date_created`) VALUES
(123, 123, 'ayam', 'sembilanbelas', 'pria', 'peternak', 'mangkahui', 123, '123', 'sembilan');

-- --------------------------------------------------------

--
-- Table structure for table `pl`
--

CREATE TABLE `pl` (
  `id_pl` int(59) NOT NULL,
  `id_upt` int(50) NOT NULL,
  `nama_pl` varchar(50) NOT NULL,
  `username1` varchar(50) NOT NULL,
  `password1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pl`
--

INSERT INTO `pl` (`id_pl`, `id_upt`, `nama_pl`, `username1`, `password1`) VALUES
(123, 123, 'nopal', 'mangkahui', '123'),
(234, 345, 'gdd', 'ers', '31');

-- --------------------------------------------------------

--
-- Table structure for table `ternak`
--

CREATE TABLE `ternak` (
  `id_ternak` int(50) NOT NULL,
  `id_peternak` int(50) NOT NULL,
  `jenis_ternak` varchar(50) NOT NULL,
  `jantan_betina` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `Jml_beranak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ternak`
--

INSERT INTO `ternak` (`id_ternak`, `id_peternak`, `jenis_ternak`, `jantan_betina`, `umur`, `Jml_beranak`) VALUES
(123, 123, 'ayam', 'bertelur', 'dua bulan', 'lima ekor');

-- --------------------------------------------------------

--
-- Table structure for table `upah_ternak`
--

CREATE TABLE `upah_ternak` (
  `id_upt` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upah_ternak`
--

INSERT INTO `upah_ternak` (`id_upt`, `username`, `password`) VALUES
(24, 'nopal', 'akai'),
(123, 'bali', '123'),
(456, 'ya', '456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `peternak`
--
ALTER TABLE `peternak`
  ADD PRIMARY KEY (`id_peternak`);

--
-- Indexes for table `pl`
--
ALTER TABLE `pl`
  ADD PRIMARY KEY (`id_pl`);

--
-- Indexes for table `ternak`
--
ALTER TABLE `ternak`
  ADD PRIMARY KEY (`id_ternak`);

--
-- Indexes for table `upah_ternak`
--
ALTER TABLE `upah_ternak`
  ADD PRIMARY KEY (`id_upt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peternak`
--
ALTER TABLE `peternak`
  MODIFY `id_peternak` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `pl`
--
ALTER TABLE `pl`
  MODIFY `id_pl` int(59) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `ternak`
--
ALTER TABLE `ternak`
  MODIFY `id_ternak` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `upah_ternak`
--
ALTER TABLE `upah_ternak`
  MODIFY `id_upt` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
