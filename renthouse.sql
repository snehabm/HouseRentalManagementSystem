-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 07:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renthouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_property`
--

CREATE TABLE `add_property` (
  `property_id` int(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `vdc_municipality` varchar(50) NOT NULL,
  `ward_no` int(10) NOT NULL,
  `tole` varchar(100) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `estimated_price` bigint(10) NOT NULL,
  `total_rooms` int(10) NOT NULL,
  `bedroom` int(10) NOT NULL,
  `living_room` int(10) NOT NULL,
  `kitchen` int(10) NOT NULL,
  `bathroom` int(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `booked` varchar(10) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_property`
--

INSERT INTO `add_property` (`property_id`, `country`, `province`, `zone`, `district`, `city`, `vdc_municipality`, `ward_no`, `tole`, `contact_no`, `property_type`, `estimated_price`, `total_rooms`, `bedroom`, `living_room`, `kitchen`, `bathroom`, `description`, `latitude`, `longitude`, `owner_id`, `booked`) VALUES
(123, 'india', 'karnataka', 'north', 'mysore urban', 'mysore', 'Municipality', 3, 'lakeside', 9860462146, 'Full House Rent', 2000000, 2, 3, 3, 3, 3, 'beautiful house', '27.679130', '85.327872', 1, 'Yes'),
(130, 'India', 'karnataka', 'south', 'bengalure urban', 'bengalure', 'Municipality', 301, 'near M chinnaswamy stadium', 8876543234, 'Full House Rent', 5000000, 6, 2, 1, 1, 2, 'beautiful,lovingly maintained', '12.979405', '77.597901', 3, 'No'),
(131, 'India', 'karnataka', 'north', 'manglore', 'manglore', 'Municipality', 302, 'near devas main road', 9176543234, 'Full House Rent', 4000000, 5, 2, 1, 1, 1, 'beautiful', '12.917230', '74.856030', 4, 'Yes'),
(132, 'India', 'karnataka', 'north', 'hassan', 'hassan', 'Municipality', 303, 'near vatsalya hospital', 8876543234, 'Full House Rent', 5000000, 7, 3, 1, 1, 2, 'beautiful,lovingly maintained', '13.009711', '76.102898', 5, 'No'),
(138, 'India', 'karnataka', 'Raichur south', 'Raichur', 'kallur', 'Municipality', 111, 'near fort', 9976543234, 'Full House Rent', 6000000, 6, 2, 1, 1, 2, 'pet friendly neighborhood', '13.169279', '76.834618', 6, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'snavi@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `property_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `property_id`, `tenant_id`) VALUES
(1, 123, 18),
(8, 131, 18),
(9, 138, 22);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `m_id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `tenant_id` int(10) NOT NULL,
  `sender` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`m_id`, `message`, `owner_id`, `tenant_id`, `sender`) VALUES
(6, 'im interested in your home', 5, 19, 0),
(7, 'im interested in this home', 4, 18, 0),
(8, 'i totally liked this home,i would like to raise my family here and would enjoy many years creating memories in this home..', 6, 22, 0),
(9, 'hi', 4, 23, 0),
(11, 'ok please contact me', 6, 22, 1),
(12, 'ok send your contact details', 6, 22, 0),
(13, '940532445', 6, 22, 1),
(14, 'ok', 6, 22, 1),
(15, 'ok', 6, 22, 0),
(16, 'ok contact me', 4, 18, 1),
(17, 'can i get your number ?', 4, 18, 0),
(18, '8976543223', 4, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_type` varchar(100) NOT NULL,
  `id_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `full_name`, `email`, `password`, `phone_no`, `address`, `id_type`, `id_photo`) VALUES
(1, 'Nikesh', 'nikesh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 987654321, 'Kirtipur-3', 'Citizenship', 'owner-photo/nikesh.png'),
(3, 'tina', 'tina@gmail.com', 'ef2afe0ea76c76b6b4b1ee92864c4d5c', 8899776655, 'hasan', 'Citizenship', 'owner-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(4, 'ramesh', 'ramesh@gmail.com', '65a1223dae83b8092c4edba0823a793c', 9123456782, 'bidar', 'Citizenship', 'owner-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(5, 'mahesh', 'mahesh@gmail.com', '49bb197bec17b7d20b2df6b1f3c3434a', 7867543557, 'manglore', 'Citizenship', 'owner-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(6, 'ravi', 'ravi@gmail.com', '63dd3e154ca6d948fc380fa576343ba6', 9675433457, 'bangalore', 'Citizenship', 'owner-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(7, 'pooja', 'poojarao@gmail.com', '9cbb6aebcf5ae14a9248b4c08165212e', 9123456787, 'banglore', 'Citizenship', 'owner-photo/OIP.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `property_photo`
--

CREATE TABLE `property_photo` (
  `property_photo_id` int(12) NOT NULL,
  `p_photo` varchar(500) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_photo`
--

INSERT INTO `property_photo` (`property_photo_id`, `p_photo`, `property_id`) VALUES
(174, 'product-photo/a.jpg', 123),
(200, 'product-photo/bg_home.jpg', 130),
(201, 'product-photo/c9aaf8853557c381c80ee827db0dad64.jpg', 131),
(202, 'product-photo/bg_home.jpg', 132),
(207, 'product-photo/rrrr.jfif', 138);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `rating` int(5) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `comment`, `rating`, `property_id`) VALUES
(5, 'This property is very nice.', 5, 123),
(9, 'i just love this home', 4, 131),
(10, 'i totally loved this home', 5, 132),
(13, '', 2, 138),
(14, '', 4, 138);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `tenant_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_type` varchar(100) NOT NULL,
  `id_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`tenant_id`, `full_name`, `email`, `password`, `phone_no`, `address`, `id_type`, `id_photo`) VALUES
(18, 'savi', 'savi@gmail.com', 'df2784434538e5668177f94507b764ea', 8877665544, 'RR nagar', 'Citizenship', 'tenant-photo/c9aaf8853557c381c80ee827db0dad64.jpg'),
(19, 'nitin', 'nitin@gmail.com', 'b585c4415b1fe50f2c31fa1698b271b7', 9684738291, 'bidar', 'Citizenship', 'tenant-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(20, 'smita', 'smita@gmail.com', 'de60c6dd0634fb42e2a707f1539201f9', 9876535466, 'kalburgi', 'Citizenship', 'tenant-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(21, 'anand', 'anand@gmail.com', '8bda8e915e629a9fd1bbca44f8099c81', 9988336655, 'dharwad', 'Citizenship', 'tenant-photo/Overseas_Citizen_of_India_card-600x381.jpg'),
(22, 'kanika', 'kanika@gmail.com', '96f33af4311f72a1f16ba00dc2a5441d', 8976543236, 'banglore', 'Citizenship', 'tenant-photo/OIP (2).jfif'),
(23, 'pallavi', 'pallavi@gmail.com', 'e3480a8108a815dcfacfecda86a31889', 9675675432, 'gulbarga', 'Citizenship', 'tenant-photo/OIP (2).jfif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_property`
--
ALTER TABLE `add_property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD UNIQUE KEY `property_id` (`property_id`),
  ADD KEY `tenant_id` (`tenant_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `property_photo`
--
ALTER TABLE `property_photo`
  ADD PRIMARY KEY (`property_photo_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`tenant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_property`
--
ALTER TABLE `add_property`
  MODIFY `property_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_photo`
--
ALTER TABLE `property_photo`
  MODIFY `property_photo_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `tenant_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_property`
--
ALTER TABLE `add_property`
  ADD CONSTRAINT `add_property_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_photo`
--
ALTER TABLE `property_photo`
  ADD CONSTRAINT `property_photo_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `add_property` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `add_property` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
