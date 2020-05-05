-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 09:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplephp`
CREATE DATABASE simplephp;

USE simplephp;

--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actorid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `born` varchar(100) DEFAULT NULL,
  `personal_life` text DEFAULT NULL,
  `url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actorid`, `name`, `born`, `personal_life`, `url`) VALUES
(1, 'Allu arjun', '8 April 1983 (age 37 years), Chennai, India', 'Arjun was born on 8 April 1982[11] in Chennai, Tamil Nadu to film producer Allu Aravind and Nirmala. His paternal grandfather was the film comedian Allu Ramalingaiah, while his paternal aunt is married to Chiranjeevi.\nOn 6 March 2011, Arjun married Sneha Reddy in Hyderabad.[12] He has a son named Ayaan and a daughter named Arha. In 2016, Allu Arjun started a nightclub named 800 Jubilee in collaboration with M Kitchens and Buffalo Wild Wings.[13]', 'https://i.pinimg.com/originals/70/b3/1a/70b31afe7b5fc7803bf650d74adf5a5e.jpg'),
(2, 'Prabhas', '23 October 1979 (age 40 years), Chennai, India', 'Prabhas was born to film producer U. Suryanarayana Raju and his wife Siva Kumari. He has two siblings, a brother named Prabodh and a sister Pragathi.[2][6][7] He is the youngest of the three children.[8] He is the nephew of Telugu actor Uppalapati Krishnam Raju.[2] Prabhas attended the DNR School, Bhimavaram and graduated with a B.Tech. degree from Sri Chaitanya College, Hyderabad.[9]', 'https://th.thgim.com/entertainment/movies/article17902276.ece/alternates/FREE_435/Prabhas'),
(3, 'Jr NTR', '20 May 1983 (age 36 years), Hyderabad, India', 'Rao married Lakshmi Pranathi, on 5 May 2011 at Hyderabad : Hitex Exhibition Center, Madhapur.[42] They have two sons.[43]\r\n\r\nPolitical stint and accident\r\nRao was one of the campaigners for the Telugu Desam Party, for the 2009 Indian general election from April to May 2009.[16][17][44][45][46][47] On 26 March 2009, after electioneering, en route to Hyderabad, the SUV in which he was a passenger, was struck head-on with another vehicle, at Suryapet. He and his companions were thrown out off the SUV and suffered injuries. He was treated at Krishna Institute of Medical Sciences, in Secunderabad, where he recuperated well.[48]\r\n\r\nPhilanthropy\r\nIn 2009, Rao announced that he intended to donate 20 lakhs to Chief Minister\'s Relief Fund to take up relief operations for flood victims.[49] During Baadshah audio function in 2013, a fan died due to a heavy stampede, NTR donated 5 lakhs to his family. Rao also promised to take care of his family, due to the fan\'s sudden demise.[50]\r\n\r\nIn 2014, Rao announced that he intended to donate 20 lakhs to CM\'s Relief Fund to take up relief operations for victims of Cyclone Hudhud in Andhra Pradesh.[51]', 'https://www.filmibeat.com/ph-big/2019/05/jr-ntr_1558329150190.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
