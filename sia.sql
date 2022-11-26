-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 01:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sia`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(128) NOT NULL,
  `email_user` varchar(128) NOT NULL,
  `username_user` varchar(128) NOT NULL,
  `image_user` varchar(128) NOT NULL,
  `password_user` varchar(256) NOT NULL,
  `id_role` int(10) NOT NULL,
  `is_active` int(11) NOT NULL,
  `datecreated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `email_user`, `username_user`, `image_user`, `password_user`, `id_role`, `is_active`, `datecreated`) VALUES
(1, 'Panggah Widiandana', 'admin-pmb@ba-university.ac.id', '81329128881', 'user.jpg', '$2y$10$0s/w9ui90up91Y2r6X1uo.AkAyTOkzffxn1rEIWschA04LoAjJTsu', 2, 1, 1669420000),
(2, 'aawa', 'panggah@gmail.com', 'panggah95', 'user.jpg', '$2y$10$uU54KbJbD2YyzQVTH5uJn.OhiD4Yw1FYVJ2zcGwq7gfPgEFhRRf0e', 2, 1, 1669420212),
(3, 'Panggah Widiandana', 'widiandanapanggah10@gmail.com', 'panggah_widiandana', 'user.jpg', '$2y$10$QlzBK8wUJZOyG7RlMM8MCeVl8ekl/.23WiydUt2BjFRnfRbJX/y7.', 2, 1, 1669421434),
(4, 'heeee', 'aas@gasa', 'sdawas', 'user.jpg', '$2y$10$9ByWY4UehKQn5IC8CKPBFepdr.HB33dRkNy.bDuSuzKCiyjY.gjCe', 2, 1, 1669421710);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
