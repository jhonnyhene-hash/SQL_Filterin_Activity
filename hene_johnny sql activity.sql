-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2026 at 05:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hene_johnny`
--

-- --------------------------------------------------------

--
-- Table structure for table `hene_johnny`
--

CREATE TABLE `hene_johnny` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `membership_level` varchar(20) DEFAULT NULL,
  `join_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hene_johnny`
--

INSERT INTO `hene_johnny` (`customer_id`, `customer_name`, `city`, `membership_level`, `join_date`) VALUES
(1, 'Alice', 'Cebu', 'Gold', '2025-01-10'),
(2, 'Bob', 'Bohol', 'Silver', '2025-01-15'),
(3, 'Charlie', 'Cebu', 'Bronze', '2025-02-10'),
(4, 'Diana', 'Tagbilaran', 'Gold', '2025-02-12'),
(5, 'Ethan', 'Bohol', 'Silver', '2025-03-01'),
(6, 'Fiona', 'Cebu', 'Gold', '2025-03-05'),
(7, 'George', 'Tagbilaran', 'Bronze', '2025-03-08'),
(8, 'Hannah', 'Cebu', 'Silver', '2025-04-01'),
(9, 'Ian', 'Bohol', 'Gold', '2025-04-10'),
(10, 'Julia', 'Cebu', 'Bronze', '2025-04-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hene_johnny`
--
--task 1
SELECT * FROM hene_johnny
WHERE city = 'Cebu';

--task 2
SELECT * FROM hene_johnny
WHERE membership_level = 'Gold';


--task 3
SELECT * FROM hene_johnny
WHERE customer_name LIKE 'A%' OR customer_name LIKE 'D%';

--task 4
SELECT * FROM hene_johnny
WHERE city='Cebu' AND (membership_level='Silver' OR membership_level='Gold');

--task 5
SELECT * FROM hene_johnny
WHERE join_date BETWEEN '2025-02-01' AND '2025-03-31';

--task 6
SELECT * FROM hene_johnny
WHERE city IN ('Bohol','Tagbilaran') AND membership_level='Bronze';

--task 7
SELECT * FROM hene_johnny
WHERE customer_name LIKE '%a%';

--task 8
SELECT * FROM hene_johnny
WHERE city='Cebu'
AND membership_level='Gold'
AND join_date < '2025-03-01';

--task 9
SELECT * FROM hene_johnny
WHERE city IN ('Bohol','Tagbilaran')
AND join_date <= '2025-02-28'
AND membership_level IN ('Silver','Bronze');

--task 10
SELECT * FROM hene_johnny
WHERE customer_id NOT IN (1,4,6)
AND join_date > '2025-02-28';

--task 11
SELECT * FROM hene_johnny
WHERE join_date BETWEEN '2025-04-01' AND '2025-04-30'
AND city IN ('Cebu','Bohol')
AND membership_level != 'Bronze';







ALTER TABLE `hene_johnny`
  ADD PRIMARY KEY (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
