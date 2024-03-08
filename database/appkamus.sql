-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2024 pada 14.31
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appkamus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kosakata`
--

CREATE TABLE `kosakata` (
  `id` int(11) NOT NULL,
  `kosakata` varchar(50) NOT NULL,
  `pengucapan` varchar(50) NOT NULL,
  `terjemahan` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kosakata`
--

INSERT INTO `kosakata` (`id`, `kosakata`, `pengucapan`, `terjemahan`, `created`) VALUES
(1, 'Squisito', 'skoo-ee-zee-toh', 'Indah, lezat', '2024-03-05 19:24:17'),
(2, 'Fiammifero', 'phee-ahm-mee-pheh-roh', 'Cocok, batang korek api', '2024-03-05 19:24:17'),
(3, 'Mitico', 'mee-tee-koh', 'Keren, menakjubkan', '2024-03-05 19:26:58'),
(4, 'Barista', 'bah-ree-stah', 'Barista, server di kedai kopi', '2024-03-05 19:26:58'),
(5, 'Cappucino', 'kahp-poo-chee-noh', 'Cappuccino, minuman kopi Italia', '2024-03-05 19:28:13'),
(6, 'Organza', 'Organza, kain sutra tipis', 'ohr-gahn-tsah', '2024-03-05 19:28:13'),
(7, 'Paparazzo', 'pah-pah-hura-tsoh', 'Paparazzi, fotografer pers', '2024-03-05 19:29:14'),
(8, 'Pantofolaio', 'pahn-toh-pho-lahee-oh', 'Pembuat/penjual sandal', '2024-03-05 19:29:14'),
(9, 'Rugiada', 'roo-jee-ah-dah', 'Embun', '2024-03-05 19:33:58'),
(10, 'Aria', 'ah-ree-ah', 'Udara', '2024-03-05 19:33:58'),
(11, 'Allegria', 'ahl-leh-gree-ah', 'Kegembiraan', '2024-03-05 19:34:58'),
(12, 'Azzurro ', 'ah-tsoo-roh', 'Biru muda', '2024-03-05 19:34:58'),
(13, 'Farfalla', 'phar-phal-lah', 'kupu-kupu', '2024-03-05 19:36:40'),
(14, 'Meraviglia', 'meh-rah-vee-wlhee-ah', 'Keajaiban', '2024-03-05 19:36:40'),
(15, 'Figata', 'phee-gah-tah', 'Manis', '2024-03-05 19:37:48'),
(16, 'Ganzo', 'gahn-soh', 'Dingin', '2024-03-05 19:37:48'),
(17, 'maestro', 'mah-eh-stroh', 'Maestro, Guru', '2024-03-05 19:39:03'),
(18, 'Marina', 'Marina, pelabuhan untuk kapal kecil', 'mah-ree-nah', '2024-03-05 19:39:03'),
(19, 'Caschetto', 'kah-skeht-toh', 'Helm kecil, Potongan rambut bob', '2024-03-05 19:40:27'),
(20, 'Mama mia', 'mah-mah mee-ah', 'Ibu saya, Ya ampun', '2024-03-05 19:40:27'),
(21, 'Gattara', 'gaht-tah-hura', 'Wanita kucing, Seorang wanita (lansia) yang merawat kucing liar', '2024-03-05 19:42:36'),
(22, 'Abbiocco', 'ah-lebah-oh-koh', 'Koma makanan, Rasa kantuk setelah makan makanan', '2024-03-05 19:42:36'),
(23, 'Menefregista', 'meh-neh-phreh-ghee-stah', 'Seseorang yang acuh tak acuh, apatis, dan tidak peduli', '2024-03-05 19:43:57'),
(24, 'Fantastis', 'phan-tah-stee-koh', 'Epik', '2024-03-05 19:43:57'),
(25, 'Perenne', 'peh-reh-neh', 'Kekal', '2024-03-05 19:45:44'),
(26, 'Visibilio', 'vee-zee-bee-lee-oh', 'Pengangkatan', '2024-03-05 19:45:44'),
(27, 'Enigmatico ', 'eh-neeg-mah-tee-koh', 'penuh teka-teki', '2024-03-05 19:46:51'),
(28, 'Aurora', 'ah-oo-roh-hura', 'Fajar', '2024-03-05 19:46:51'),
(29, 'Nuvola', 'no--voh-lah', 'Awan', '2024-03-05 19:48:23'),
(30, 'inciodare', 'een-kee-oh-dah-reh', 'memaku, menginjak rem', '2024-03-05 19:48:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kosakata`
--
ALTER TABLE `kosakata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kosakata`
--
ALTER TABLE `kosakata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
