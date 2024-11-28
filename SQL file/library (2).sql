-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 12:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Bouchra Aderdour', 'bouchra@gmail.com', 'admin2', '74c9de4f30399b69c7801af4ba2eee09', '2023-05-31 16:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Olivier HEURTEL', '2023-05-15 07:30:03', '2023-05-15 07:23:03'),
(2, 'Christophe AUBRY', '2023-05-15 07:31:03', '2023-05-15 07:23:03'),
(3, 'Raphaeil HUCHET', '2023-05-15 07:32:03', '2023-05-15 07:23:03'),
(4, 'Eric Le Nagard', '2023-05-15 07:33:03', '2023-05-15 07:23:03'),
(5, 'Victor FELEA ', '2023-05-15 07:34:03', '2023-05-15 00:23:03'),
(9, 'Lucas SZTANDAROWSKI', '2023-05-15 07:35:03', '2023-05-15 23:36:03'),
(10, 'Claude Deschamps', '2023-05-15 22:23:03', NULL),
(11, 'Daniel Fredon', '2023-05-15 21:23:03', NULL),
(12, 'Colas Bardavid', '2023-05-15 20:23:03', NULL),
(13, 'Bailleul Maxime', '2023-05-15 19:23:03', NULL),
(14, 'Steeve SARFATI ', '2023-05-15 17:23:03', NULL),
(15, 'Segarra Joseph', '2023-05-15 11:23:03', NULL),
(16, ' Fritjof Capra', '2023-05-15 09:23:03', NULL),
(17, 'Jay Young', '2023-05-15 08:23:03', NULL),
(18, 'Fabienne Chauvière', '2023-05-15 07:23:03', NULL),
(19, 'Jean Staune ', '2023-05-15 07:25:03', NULL),
(20, 'Charlo ROVELLI ', '2023-05-15 07:28:03', NULL),
(21, 'Iris Gottlieb', '2023-05-15 07:33:03', NULL),
(22, 'Ben Gilliland', '2023-05-15 07:43:03', NULL),
(23, 'Ian Graham  ', '2023-05-15 07:23:03', NULL),
(24, 'Francis Draillard ', '2023-05-15 07:55:03', NULL),
(25, 'Sébastien Castiel ', '2023-05-15 07:26:03', NULL),
(26, 'Paul Milan ', '2023-05-15 05:28:03', NULL),
(27, 'Marie Girard', '2023-05-15 17:21:03', NULL),
(28, 'Thierry DESMARAIS', '2023-05-15 16:22:03', NULL),
(29, 'Thierry Finot', '2023-05-15 18:27:03', NULL),
(30, 'Stéphane Cardini', '2023-05-15 18:53:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'HTML5,CSS3 et Bootstrap', 1, 2, '2409026060', 250.00, '81+GTZ3jiHL.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(2, 'PHP et MYSQL', 1, 1, '2409006469', 150.50, '91YhNSDtq-L.jpg', 0, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(3, 'Laravel', 1, 3, '2409013783', 300.00, '9782409013782_internet_h1400.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(6, 'Informatique , Initiation à l`algorithmique en Scilab et Python', 1, 4, 'B019MO3WCM', 450.00, '27440100938810L.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(7, 'Premiers pas en CSS3 et HTML5', 1, 24, '2416007300', 150.50, 'gjgh.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(8, 'Introduction à l`informatique: Apprendre à concevoir des algorithmes', 1, 5, '2311013882', 230.00, 'algo.jpg', NULL, '2023-05-15 07:23:03', NULL),
(9, 'React - Développez le Front End de vos applications web et mobiles avec JavaScript', 1, 25, '2409022723', 360.00, 'java.jpg', NULL, '2023-05-15 07:23:03', NULL),
(10, 'Manuel de l`autodidacte en informatique', 1, 9, '0244878013', 120.50, 'manuel.jpg', 0, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(11, 'Réussir son entrée en prépas. Maths: De la Terminale S aux Prépas MPSI - PCSI - PTSI - BCPST', 2, 26, '2311405756', 230.50, 'images (1).jpg', 0, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(12, 'Maths Tout-en-un PC/PC* - 2e éd', 2, 10, '2100841483', 200.00, 'images.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(13, 'Maths Tle S (spécifique & spécialité) - Prépabac Entraînement intensif: objectif filières sélectives - Terminale S', 2, 27, '2218978059', 250.00, 'images (2).jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(14, 'Toute la MP en fiches - Maths, physique, chimie', 2, 11, '978-2-10-071365-3', 250.00, 'toute.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(15, 'Cahier de calcul en maths', 2, 12, '6845321354553', 250.00, 'cahier.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(16, 'Mathématiques appliquées - ECG-1', 2, 13, '5646515348653132', 250.00, 'mathh.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(17, 'Méthodes savoir-faire et astuces', 2, 14, 'B64556465121565', 250.00, 'savoire.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(18, 'FORMULAIRE LYCÉE - MATHS - LES 3 ANNÉES EN 1 CLIN D`OEIL', 2, 15, '66465464566', 250.00, 'téléchargement.jpg', NULL, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(19, 'La science d’avant-garde: lhomme face à l`univers dans tous ses états (Science et Connaissance) ', 3, 16, 'H693131', 250.00, '1BKVhE8yeL._SY291_BO1,204,203,200_QL40_ML2_.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(20, 'Fou de science en trois dimensions Tome 1: Fou de science en trois dimensions ', 3, 17, '2409026060', 250.00, '9782020206211-475x500-1.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(21, 'Les promesses de la science (Sciences) ', 3, 18, '28484845', 250.00, '9782081493728.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(22, 'Hprépa Optique 1ére Année MPSI-PCSI-PTSI', 3, 28, '55456546', 250.00, 'optique.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(23, 'Physique chimie MPSI : nouveau programme', 3, 29, 'B89745025', 250.00, 'prog.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(24, 'Physique tout-en-un MPSI MP2I 2021 - 2e édition', 3, 30, '?78964265', 300.00, 'nov.jpg', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Informatique', 1, '2023-05-15 07:23:03', '2023-05-15 07:23:03'),
(2, 'Math', 1, '2023-05-15 17:33:03', '2023-05-15 20:58:10'),
(3, 'Science', 1, '2023-05-15 23:23:03', '2023-05-15 17:23:03'),
(4, 'Physique', 1, '2023-05-15 18:23:03', '2023-05-15 17:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2023-05-21 05:45:57', NULL, NULL, NULL),
(8, 1, 'SID002', '2023-05-22 05:59:17', '0000-00-00 00:00:00', 1, 0),
(9, 10, 'SID009', '2023-05-20 07:38:09', '0000-00-00 00:00:00', 1, 0),
(10, 11, 'SID009', '2023-05-16 08:15:02', '2023-05-26 08:15:23', 1, 0),
(11, 1, 'SID012', '2023-05-29 08:17:15', NULL, NULL, NULL),
(12, 10, 'SID012', '2023-05-20 08:18:08', '2023-05-22 08:18:22', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'Ahmed Rabih', 'ahmed@gmail.com', '0633990122', '757af758a311ef3c10727e73a76b0700', 1, '2023-05-17 09:00:00', '2023-05-31 20:25:25'),
(2, 'SID002', 'Malak Sabiri', 'malak@gmail.com', '0699447272', '757af758a311ef3c10727e73a76b0700', 1, '2023-05-17 09:10:14', '2023-05-29 16:25:53'),
(3, 'SID003', 'Khadija Bentmohammed', 'khadija@gmail.com', '757af758a31', 'khadija1234', 1, '2023-05-17 09:17:03', '2023-05-31 11:20:00'),
(4, 'SID004', 'Ali Taouil', 'ali@gmail.com', '0788552121', '757af758a311ef3c10727e73a76b0700', 1, '2023-05-17 10:04:17', '2023-06-02 17:26:02'),
(5, 'SID005', 'Anas Salim', 'anas@gmail.com', '0711525266', '757af758a311ef3c10727e73a76b0700', 1, '2023-05-17 10:30:00', '2023-06-02 17:51:04'),
(6, 'SID006', 'Hiba Nassimi', 'hiba@test.com', '0788768809', '757af758a311ef3c10727e73a76b0700', 1, '2023-05-17 11:10:18', NULL),
(7, 'SID013', 'Mohamed Mahir', 'mohamed.mahir@gmail.com', '0766992457', 'caf88b3013c76139077696222a40e594', 1, '2023-05-31 20:28:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
