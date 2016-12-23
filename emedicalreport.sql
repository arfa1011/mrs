-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 09:37 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emedicalreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `id` int(11) NOT NULL,
  `consultant_name` varchar(155) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_reports`
--

CREATE TABLE `medical_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_name` varchar(155) NOT NULL,
  `IC_number` varchar(12) NOT NULL,
  `MRN` varchar(9) NOT NULL,
  `application_date` date NOT NULL,
  `due_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `collect_date` date NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `consultant_name` varchar(155) NOT NULL,
  `price_charge` varchar(12) NOT NULL,
  `type_of_report` varchar(50) NOT NULL,
  `company_insurance_name` varchar(50) NOT NULL,
  `patient_contact_number` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `days` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `app_month` varchar(10) NOT NULL,
  `finish_month` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_reports`
--

INSERT INTO `medical_reports` (`id`, `user_id`, `patient_name`, `IC_number`, `MRN`, `application_date`, `due_date`, `finish_date`, `collect_date`, `consultant_id`, `consultant_name`, `price_charge`, `type_of_report`, `company_insurance_name`, `patient_contact_number`, `ip`, `days`, `status`, `app_month`, `finish_month`, `created`, `modified`) VALUES
(1, 0, 'nur arfahida', '931412055780', '123456', '2016-12-06', '2016-12-06', '2016-12-06', '2016-12-06', 0, 'Dr. Wan Maziah Dato Hj Wan Mohamed', 'rm100', 'Full', 'AIA', '0123456789', '', '1', 'Complete', '11', '', '2016-11-21 05:16:57', '2016-12-06 04:03:04'),
(2, 0, 'nurul ain', '931111055555', '12345', '2016-11-29', '2016-12-13', '2016-12-01', '2016-12-01', 0, 'Dr. Wilson Pau Shu Ceng', 'rm100', 'Full', 'Takaful', '011-1111111', '', '', 'Pending', '12', '', '2016-12-01 02:30:40', '2016-12-01 02:30:40'),
(3, 0, 'noor suhaila', '931110055280', '789012', '2016-12-03', '2016-12-17', '2016-12-01', '2016-12-01', 0, 'Dr. Tun Fizi Bin Ambrose', 'rm100', 'Police', 'AIA', '0183238901', '', '', 'Pending', '12', '', '2016-12-01 02:32:36', '2016-12-01 02:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_logout` datetime NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `position`, `last_login`, `last_logout`, `role`, `status`, `ip`, `created`, `modified`) VALUES
(4, 'arfahida', 'MR1011', 'e0ce852dbd146ec94990d9ad5c9c75a6d96d2dfd', 'm.r.clerk', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Administrator', '1', '::1', '2016-11-21 05:17:44', '2016-12-21 09:05:39'),
(6, 'nur arfahida', 'MC1110', 'd7080cc8ed0ab00c87914a05eac36bf0d17406ac', 'med rec clerk', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Administrator', '', '::1', '2016-12-15 08:37:15', '2016-12-15 08:37:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_reports`
--
ALTER TABLE `medical_reports`
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
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medical_reports`
--
ALTER TABLE `medical_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
