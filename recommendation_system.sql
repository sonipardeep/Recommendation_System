-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 11:17 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recommendation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(5, 'Alice'),
(6, 'Bob'),
(7, 'Charlie'),
(8, 'Damon'),
(9, 'Edie');

-- --------------------------------------------------------

--
-- Table structure for table `user_movies`
--

CREATE TABLE `user_movies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_movies`
--

INSERT INTO `user_movies` (`id`, `user_id`, `movie_name`, `movie_rating`) VALUES
(6, 5, 'Rambo', '5.0'),
(7, 5, 'Rockey', '3.0'),
(8, 5, 'Garden State', '2.0'),
(9, 6, 'Rambo', '2.0'),
(10, 6, 'Rockey', '2.0'),
(11, 6, 'Garden State', '5.0'),
(12, 6, 'Before sunset', '2.0'),
(13, 7, 'Rambo', '2.0'),
(14, 7, 'Before sunset', '4.0'),
(15, 7, 'Training day', '4.0'),
(16, 7, 'Thor', '5.0'),
(17, 8, 'Rambo', '5.0'),
(18, 8, 'Garden State', '3.0'),
(19, 8, 'Before sunset', '4.0'),
(20, 9, 'Rambo', '4.0'),
(21, 9, 'Rockey', '3.0'),
(22, 9, 'Garden State', '2.0'),
(23, 9, 'Before sunset', '4.0'),
(24, 9, 'Training day', '3.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_movies`
--
ALTER TABLE `user_movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_movies`
--
ALTER TABLE `user_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
