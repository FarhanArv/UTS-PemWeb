-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 12:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemweb-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `created_at`, `updated_at`) VALUES
(61, 'Marjan', 18000, '/pwbuts/upload/1700045250-11b28e38137c43edd560cf58e8d081a8-F-GTA.png', '2023-11-15 10:47:30', NULL),
(62, 'Chitato', 8000, '/pwbuts/upload/1700045272-bfdceb54174801cfb8e8109b88f1e590-F-S13.png', '2023-11-15 10:47:52', NULL),
(63, 'Indomie', 3000, '/pwbuts/upload/1700045287-dc7519689b345608c0f1b6c088d15564-F-Skyline.png', '2023-11-15 10:48:07', NULL),
(64, 'Biskuit', 5000, '/pwbuts/upload/1700045330-6ea6e60c868d005577f2f4eab2894899-F-Skyline.png', '2023-11-15 10:48:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `photo`, `created_at`, `updated_at`) VALUES
(5, 'Yusuf Eka Wicaksana', 'ekayusuf.wicaksana@gmail.com', 'user', '$2y$10$rLNoxFGQoNddoiWy/ebYdOkjhU0ff14xHdXPc2yJIi2APAWvQ.Cra', NULL, '2023-10-26 13:45:09', NULL),
(13, 'Farhan Mutawakkil', 'if22.farhanhaidar@mhs.ubpkarawang.ac.id', 'admin', '$2y$10$AS81unQEYpG4GwkpOY0uqORN7fRoTBGfdC1Fey2RTP2Ec2vx4ZGF2', NULL, '2023-11-06 02:50:57', NULL),
(14, 'Farhan', 'if22.farhan@mhs.ubpkarawang.ac.id', 'user', '$2y$10$SeWkUaXTvi3wPCs2yonPUObgpnr2I9T7cXpi6aEE0k3VwUtGYMs1.', NULL, '2023-11-06 02:53:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
