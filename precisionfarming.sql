-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 10:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `precisionfarming`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('sakshi', '1307'),
('abhinav', '0987'),
('sakshi', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `Productid` int(50) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`Productid`, `quantity`, `price`) VALUES
(123, '25', 550),
(1, '3', 550),
(1, '50', 550),
(1, '25', 550),
(1, '25', 550),
(1, '25', 550),
(1, '25', 550),
(1, '10', 550),
(0, '5', 100),
(0, '10', 100),
(0, '5', 100),
(0, '1', 100),
(0, '--select the quantity--', 100);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `username` varchar(20) NOT NULL,
  `productid` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`username`, `productid`, `price`, `quantity`, `amount`) VALUES
('abhinav', 1, 550, 10, 5500),
('abhinav', 1, 550, 5, 2750),
('Sakshi Nilesh Shinde', 1, 550, 25, 13750),
('Rutuja', 1, 150, 5, 750),
('pra', 0, 100, 1, 100),
('pra', 1, 150, 10, 1500),
('pra', 0, 100, 1, 100),
('pra', 0, 100, 1, 100),
('Anuja gaikwad', 23, 150, 5, 750);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback` varchar(100) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback`, `EmailId`, `Name`) VALUES
('Pratiksha More', 'morepratiksha2222@gm', 'Good quality seeds at affordable  price.'),
('Sakshi Nilesh Shinde', 'shindesakshi1307@gma', 'Great seeds at reasonable price'),
('Shreya Sanjay Phalke', 'shreyaphalke0009@gmail.com', 'Got the good quality seeds and great guidance by the company'),
('Tajin Shafik Momin', 'tajinmomin@gmail.com', 'It is easy to sow seeds.Requires the less time to sow and gets the maximum crops and income'),
('pratiksha', 'morepratiksha2222@gmail.com', 'product is good'),
('pra', 'pratumore@gmail.com', 'it is very helpful website');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `problemname` varchar(50) NOT NULL,
  `Problemduration` varchar(50) NOT NULL,
  `Guidename` varchar(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdet`
--

CREATE TABLE `orderdet` (
  `ordno` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordermst`
--

CREATE TABLE `ordermst` (
  `odt` varchar(20) NOT NULL,
  `ordno` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `odt` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `mode` int(20) NOT NULL,
  `amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`odt`, `username`, `mode`, `amount`) VALUES
('0000-00-00', 'Rutuja', 0, 750),
('0000-00-00', 'Rutuja', 0, 750);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `Receiptdate` int(11) NOT NULL,
  `Receiptamount` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  `EmailId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNo` int(10) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `securityques` varchar(1000) NOT NULL,
  `securityanswer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `Address`, `ContactNo`, `EmailId`, `Password`, `securityques`, `securityanswer`) VALUES
('Pratiksha Rajendra More', 'Vaduth', 2147483647, 'morepratiksha2222@gmail.com', '12345', 'Which city do you like?', 'Pune'),
('Sakshi Nilesh Shinde', 'Asangaon', 2147483647, 'shindesakshi1307@gmail.com', '1307', 'What high school did you attend?', 'CEMS'),
('Shreya Sanjay Phalke', 'Satara', 2147483647, 'shreyaphalke0009@gmail.com', '2603', 'What is your favourite food?', 'Burger'),
('Tajin Shafik Momin', 'Vele', 2147483647, 'tajinmomin@gmail.com', '56789', 'What is your favourite food?', 'Biryani'),
('Rutuja', 'satara', 2147483647, 'rutuja12@gamil.com', 'ru123', 'What is name of your favourite movie?', 'ved'),
('pratiksha', 'vaduth', 2147483647, 'morepratu22@gmail.com', 'p980', 'In which city you born?', 'satara'),
('Anuja gaikwad', 'satara', 2147483647, 'anuja432@gmail.com', 'anu44', 'What is your most favourite hobby?', 'travelling');

-- --------------------------------------------------------

--
-- Table structure for table `uploadproduct`
--

CREATE TABLE `uploadproduct` (
  `productname` varchar(50) NOT NULL,
  `productid` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploadproduct`
--

INSERT INTO `uploadproduct` (`productname`, `productid`, `price`, `image`) VALUES
('o1', 0, 100, 'o1.jpg'),
('o2', 23, 150, 'o2.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
