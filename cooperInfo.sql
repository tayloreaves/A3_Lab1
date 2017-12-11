-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2017 at 07:54 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a3_cooperInfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainmodel`
--

CREATE TABLE `mainmodel` (
  `id` int(11) NOT NULL,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodel`
--

INSERT INTO `mainmodel` (`id`, `model`, `modelName`, `pricing`, `modelDetails`) VALUES
(0, 'F55', 'Mini Cooper F55', '227,790', 'It’s the turbocharged motoring icon, with more handles to love. The MINI 5 door boasts the same iconic good looks as its 3 door brother, but features an extra pair of passenger doors for practical access to its spacious cabin. And despite its slightly longer frame, the MINI 5 door’s wide, athletic stance and wheels-pushed-out design deliver the corner-carving agility you’d expect from any MINI.'),
(1, 'F56', 'Mini Cooper F56', '22,190', 'A true style icon – reimagined for contemporary living. Paying tribute to the original 1959 Austin Seven, the MINI Seven Edition brings together our most distinctive elements into one model. Striking Melting Silver details, a unique bonnet stripe design, and exclusive interior elements put this special edition MINI into a class of its own.'),
(2, 'R58', 'Mini Cooper R58', '40,590', 'It’s almost time to re-discover the redesigned, re-engineered, and completely revamped MINI Convertible. From feistier more fuel-efficient engines, to smarter innovations that let you stay open at every point along the way, this all-new MINI Convertible brings an array of enhancements to get excited about. And although the next iteration of this sun-seeking MINI will look and feel more refined than its predecessor, the open-air exhilaration that awaits you behind the wheel remains the same. We can’t wait for you to experience it in person. Until then... stay open.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mainmodel`
--
ALTER TABLE `mainmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`),
  ADD UNIQUE KEY `modelDesc` (`modelName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mainmodel`
--
ALTER TABLE `mainmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
