-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2025 at 11:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ulab_smart_lost_and_found_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  ulab_id VARCHAR(20) NOT NULL UNIQUE,   -- student/employee ID
  department VARCHAR(50) DEFAULT 'N/A',
  email VARCHAR(100) NOT NULL UNIQUE,
  phone VARCHAR(20) DEFAULT NULL,
  password_hash VARCHAR(255) NOT NULL,   -- hashed password (for login)
  role ENUM('admin', 'user') DEFAULT 'user',
  status ENUM('active', 'inactive') DEFAULT 'active',
  created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO users (user_id, name, ulab_id, department, email, phone, password_hash, role, status, created_date) VALUES
(1, 'Mst. Maimuna Hossain Maliha', '233014068', 'CSE', 'maimuna.hossain.cse@ulab.edu.bd', NULL, '$2a$12$22Ely3DnSwgVKt6ucKDfleuxXT6vlxHKilIfo2iJP.hHEFeDsLpNO', 'user', 'active', '2025-08-23'),
(2, 'Sumaya Akter', '242011272', 'BBA', 'sumaya.akter.bba@ulab.edu.bd', NULL, '$2a$12$PsvVv2hzh8NoPBRGbAzSMe3QSLyAdcxe1ks3cKfucfjgPzvvVluD.', 'user', 'active', '2025-08-23'),
(3, 'Jannatul Bushra Mou', '242013120', 'DEH', 'jannatul.bushra1.deh@ulab.edu.bd', NULL, '$2a$12$.XNt9XenGz1Z/ElHDZyuE.2AZCVucwUTw8P/zXWDv//EzaO.aZG3i', 'user', 'active', '2025-08-23'),
(4, 'Asif Ahamad', '223014215', 'CSE', 'asif.ahamad.cse@ulab.edu.bd', NULL, '$2a$12$xhLg/A6pcDRa5vPg5iklBubof47YhmRPiFCEsx0R8RkS0hlMfvVIe', 'user', 'active', '2025-08-23'),
(5, 'Md Samiul Alam', '223014176', 'CSE', 'samiul.alam.cse@ulab.edu.bd', NULL, '$2a$12$qbni3o1tLOAUxnTe7ItfOeezBalBXi3wNZBXBeVjXNpegbiv4nl3C', 'user', 'active', '2025-08-23'),
(6, 'Hasinar Khatun Laboni', '223011203', 'BBA', 'hasina.khatun.bba@ulab.edu.bd', NULL, '$2a$12$i4pvXhI4v7sh.i9tMm9w0.8dmDv.D2NPBn/cmNUVO77KMFqpaJYcS', 'user', 'active', '2025-08-23'),
(7, 'Nahida Afrin', '163014022', 'CSE', 'nahida.afrin.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(8, 'Shakil Ahmed Shawon', '201014081', 'CSE', 'shakil.ahmed.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(9, 'S.M.Ehasan Ul Islam', '241016002', 'EEE', 'ehasanul.islam.eee@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(10, 'Abonti Kanta Mandal', '221014057', 'CSE', 'abonti.kanta.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(11, 'Md. Abdullah Ahsan Sanim', '233014177', 'CSE', 'abdullah.ahsan.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(12, 'TANJINA JAMAL', '241011063', 'BBA', 'tanjina.jamal.bba@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(13, 'Halima Khatoon Oni', '172014040', 'CSE', 'halima.khatun.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(14, 'MD.Sharif Hasan', '233017008', 'BBA', 'sharif.hasan.bba@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(15, 'Afrida haque Maria', '212014009', 'CSE', 'afrida.haque.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(16, 'Md Nayeem Ahmed', '183014038', 'CSE', 'nayeem.ahmed1.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(17, 'Manish Chowdhury', '242013052', 'DEH', 'manish.chowdhury.deh@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23'),
(18, 'Nusrat Jahann Suchana', '171014014', 'CSE', 'nusrat.jahan7.cse@ulab.edu.bd', NULL, 'hashed_pass', 'user', 'active', '2025-08-23');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE users
  ADD PRIMARY KEY (user_id),
  ADD UNIQUE KEY email (email),
  ADD UNIQUE KEY ulab_id (ulab_id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
