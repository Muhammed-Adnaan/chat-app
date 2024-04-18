-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 06:28 AM
-- Server version: 8.0.36
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `admin_name` varchar(225) NOT NULL,
  `admin_password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_password`) VALUES
(1, 'Adnaan', 'adnaan@123'),
(2, 'Sinchana', 'sinchana@123');

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `date_of_birth` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `username`, `email`, `date_of_birth`, `Password`) VALUES
(2, 'Tamim Unnisa', 'muhammedafnaan3@gmail.com', '2024-03-06', 'asd'),
(3, 'Noor Ahmed', 'nnoor12c@gamil.com', '2024-03-05', 'asdqwe'),
(4, 'sinchana', 'sinchana@gmail.com', '2024-03-22', '123'),
(5, 'adnaan', 'muhammedafnaan33@gmail.com', '2024-03-06', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int NOT NULL,
  `email` varchar(225) NOT NULL,
  `login_time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `email`, `login_time`) VALUES
(1, 'adnaan', 'Tue Mar 26 2024 09:35:29 GMT+0530 (India Standard Time)'),
(3, 'sinchana', 'Tue Mar 26 2024 09:38:54 GMT+0530 (India Standard Time)'),
(4, 'adnaan', 'Tue Mar 26 2024 09:39:25 GMT+0530 (India Standard Time)'),
(5, 'Noor Ahmed', 'Tue Mar 26 2024 09:40:12 GMT+0530 (India Standard Time)'),
(6, 'Tamim Unnisa', 'Tue Mar 26 2024 09:45:08 GMT+0530 (India Standard Time)'),
(7, 'adnaan', 'Tue Mar 26 2024 09:45:08 GMT+0530 (India Standard Time)');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int NOT NULL,
  `username` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `datetime` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `username`, `message`, `datetime`) VALUES
(1, 'adnaan', 'aslm, r u free', 'Tue Mar 26 2024 09:45:08 GMT+0530 (India Standard Time)'),
(2, 'Noor Ahmed', 'yes , bro ', 'Tue Mar 26 2024 09:45:08 GMT+0530 (India Standard Time)'),
(4, 'Tamim Unnisa', 'son can u bring home milk and bread', 'Tue Mar 26 2024 09:45:08 GMT+0530 (India Standard Time)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
