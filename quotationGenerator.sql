-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2020 at 07:56 PM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.3.20-1+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotationGenerator`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(500) NOT NULL,
  `production_cost` text NOT NULL,
  `cloth_reqd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `slug`, `production_cost`, `cloth_reqd`) VALUES
(3, 'Skirt', 'skirt', '[\"26\",\"26\",\"26\",\"26\",\"26\",\"26\",\"26\",\"26\",\"26\",\"26\",\"26\"]', '[\"0.59\",\"0.63\",\"0.67\",\"0.71\",\"0.91\",\"0.96\",\"1.05\",\"1.15\",\"1.20\",\"1.23\",\"1.27\"]'),
(4, 'Tunic', 'tunic', '[\"31\",\"31\",\"31\",\"31\",\"31\",\"31\",\"31\",\"31\",\"31\",\"31\",\"31\"]', '[\"0.64\",\"0.68\",\"0.73\",\"0.80\",\"0.97\",\"1.02\",\"1.07\",\"1.112\",\"1.2\",\"1.24\",\"1.3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(1, 'Ratnesh', 'Karbhari', 'rkarbhari49@gmail.com', '$2y$10$eLSOysJ.g5O0igJCCVcNie/EhHiHj0JMTreSQ7MquWw.silhuBY2i');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
