-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 12:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dnine`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_12_18_083707_create_nines_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nines`
--

CREATE TABLE `nines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nines`
--

INSERT INTO `nines` (`id`, `lastname`, `firstname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Markmimi', 'Tonye', 'marktony2080@example.com', '$2y$10$agI4sck0JaNab6nZKChv2ed.zYaiRHCUo4.ZyGLJZOoixcSPDhJNa', '2023-12-18 09:15:22', '2023-12-20 09:55:08'),
(2, 'Samuel', 'Faith', 'samuelfaith005@example.net', '$2y$10$TJ8qIVIaLFIMj38/CtQuTePyX00crFPM3RwZ5zyMoBP8hsC7lKa6G', '2023-12-18 09:15:22', '2023-12-20 09:51:51'),
(3, 'Paul', 'Carmela', 'deckow.elton@example.org', '$2y$10$FS/qruSfhN27tuYe.J0YX.7u2cKRPZsnGAxEnu4M5l7CtR9Iyg9mW', '2023-12-18 09:15:22', '2023-12-20 10:10:21'),
(5, 'Jackeline Daniel', 'Mrs. Breanna McDermott V', 'hermiston.maximillian@example.org', '$2y$10$6oE8E1hrMZAIA5NvQTQt8eYWtf4Yd889kLAQPjELY5G3UOPGstaAy', '2023-12-18 09:15:22', '2023-12-18 09:15:22'),
(6, 'Georgiana Runte', 'Adalberto Grant', 'koch.rowland@example.org', '$2y$10$fD1/DMU0DfewR7hLWeh30e14PEgllPz0na4or7i.Y1pFNLfuLdLW6', '2023-12-18 09:15:22', '2023-12-18 09:15:22'),
(7, 'Ezra Harris', 'Carter Schiller', 'lgrant@example.net', '$2y$10$JyshpM0AZBl/QhpYl.mQIOeXeyImVFHqbUtcYaxuF5Yk5SruhF/ou', '2023-12-18 09:15:22', '2023-12-18 09:15:22'),
(8, 'Adeline Haley', 'Blaze Kihn', 'diamond.hoppe@example.com', '$2y$10$3XOfLktNb22CBtZH9kjKmusDgTE5IFCeB15p0.RrtqESFabSYUD36', '2023-12-18 09:15:22', '2023-12-18 09:15:22'),
(9, 'Ping', 'Domingo', 'ping.123@example.org', '$2y$10$RqczlKKu.18cjahvR0UGbuYlhfs8Q99CgnuMhU6esJK82WZyUuLLy', '2023-12-18 09:15:22', '2023-12-20 10:31:51'),
(10, 'Jarret Haag DDS', 'Irma Connelly', 'hamill.lottie@example.net', '$2y$10$H9GoZWWv2G5VY0s1CctW1.G76Xu54GKTPgljqD/hRkZt77q6xpPeW', '2023-12-18 09:15:22', '2023-12-18 09:15:22'),
(11, 'Arne Labadie II', 'Brain Schmeler', 'cstanton@example.com', '$2y$10$didnVfMnfH9yGOVIl5kVLOoBCmHt7UAkY4gSYueyY8KCWP7hlcZ9i', '2023-12-18 09:15:22', '2023-12-18 09:15:22'),
(12, 'Prof. Monte Powlowski DDS', 'Mr. Ellsworth Dicki IV', 'akeem97@example.org', '$2y$10$gjJaaeLvfjwWQyFXGAN5COdtQF5cpSBwI6eaj.BQcOv7xLd2KyHLa', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(13, 'Wyatt Sanford', 'Casimer Streich', 'shanna.huel@example.org', '$2y$10$RBZG7OrHYVSMAft.jaAvBOkTqWdNSENP7bIGrFVFQcOsN6IkduJry', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(14, 'Darby Bahringer', 'Mr. Arden McGlynn', 'cruickshank.cecilia@example.net', '$2y$10$z6HhpNzgwJWWXDzA9XL8uunoaM2rTYdB2PwVNyzwtAfWxwyPPuAWS', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(15, 'Corrine Bruen DDS', 'Hollie Dietrich', 'emmalee06@example.org', '$2y$10$b.pnaCkMWmc9zHpwoS1noeNuwBvJ2X7ZQQlhOcnsscNr/uV7KiTAq', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(16, 'Herta Stamm', 'Prof. Wilbert Kuhlman MD', 'katlynn.hamill@example.org', '$2y$10$Tuw6pZZ865.FgkzFf3crFOUd3CaSg42JCRWiZr.JG3LxjvAPxw4mi', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(17, 'Berta Conroy', 'Ms. Karine Dibbert V', 'rfay@example.org', '$2y$10$8fMUTLZuGBCJRYOqHeRqmeobrCZp2OM2eG3wPRfnxu8nwQNTgE892', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(18, 'Sofia Roob', 'Darlene Boyle', 'ferry.milford@example.net', '$2y$10$QhwS.5s6uoG3SnIrEeYIIuGCfb1yxDpVvb2UHjy8XB.3P7dhlVFdS', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(19, 'Ansel Tillman DDS', 'Nella Boehm', 'antonette.leannon@example.com', '$2y$10$0jM/36EF1dyCE8nwC8fBUuMZXfCPgyj3We6LRM3uBSyDsnb3LoHhm', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(20, 'Jalyn Wyman', 'Kyla Champlin', 'shickle@example.net', '$2y$10$sgGDh.1hsHsclLki9hGplu.YefnT949TX3dkAxVZnSt0PlT6B2G8u', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(21, 'Sadie Konopelski', 'Mr. Adriel Koelpin IV', 'roberts.antonette@example.com', '$2y$10$VyMeWw0f/WuLRyuzYy/viuI0.hD3i45pUcSfTC4REk2SH94A1Zfla', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(22, 'Cyrus Wilkinson IV', 'Dr. Edison Kris', 'rfadel@example.com', '$2y$10$gTSN0JfigRaPyWbgmbuU7uBeoaNOXCORiU/3WBcItOV0U6HoEPG16', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(23, 'Dane Jacobs I', 'Modesta Keebler', 'lreilly@example.net', '$2y$10$bVYAkuUln899XGJzI15Za.GIZsS/pjvLmnXurNrtf6wISM7MhWAJe', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(24, 'Mr. Isom Greenholt II', 'Cleo Zboncak', 'vernie02@example.com', '$2y$10$4wcBIG2hnYQPRSs7piQtMeQftaIf1/NafksGYYEzHU0KhxjYUqsX6', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(25, 'Barrett Howell', 'Dee Schuster I', 'doris.osinski@example.org', '$2y$10$72qgF6OdrN1gyF0W6TOyf.UB8DpER7pEEatJ7PKi.2MnXhyJ.98w6', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(26, 'Porter Roob', 'Ms. Herta McDermott V', 'moriah.ritchie@example.net', '$2y$10$58bkBTtmrB6SjwND6qWwa.IKAxXKRTnvZsaNQ1xbVjYlnhy/ugBpS', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(27, 'Boris Spencer IV', 'Mr. Gonzalo Barrows MD', 'runolfsdottir.mozell@example.net', '$2y$10$Ga.XFScNIw0q.TiX5mDxtOd5NBphGUo4fJF94jvFfVvUGAmnBzn6W', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(28, 'Mr. Virgil Ruecker', 'Corbin Labadie', 'laila03@example.net', '$2y$10$KDgS0xJ2RMjdGpORxLiXo.QLhhTc9F1xkWCxXmO/Zyl7GL9UYXsLy', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(29, 'Gennaro Armstrong I', 'Mrs. Karine Durgan DDS', 'aubree16@example.com', '$2y$10$y0qWC6zpSFFP6Ex4SI3HlO3.mTsfDoDCtuQEL.qKpGa6a1zEg8UhG', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(30, 'Daren Kihn', 'Emerson Tillman', 'goodwin.tyshawn@example.org', '$2y$10$wgWj/BFHn28ozSeLSzS/1uS7HsxJ0/r8oqdJRe798bo/04FECUzNK', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(31, 'Evalyn Rempel', 'Waino Ledner', 'smertz@example.net', '$2y$10$FdnAMjOy94BS6GDTeVnEDOTlk0EkU2Ve5qCnvUpUXe9uSFFZNJcHe', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(32, 'Liliane Considine', 'Ena Funk', 'joey97@example.com', '$2y$10$61gcAWLS4yifqxLzfnyvH.UVLg3mm13EPX012mtHb6/TBIROWctQG', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(33, 'Antonietta Hoppe', 'Devan Kuphal IV', 'dgraham@example.net', '$2y$10$pm53LkMI.YE5acDnI2iOoOybpeIiVe2OK6o.GiWUtNtGWAEJuydJm', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(34, 'Jodie Grimes', 'Miss Flavie Kemmer DVM', 'amclaughlin@example.org', '$2y$10$qUsBejcRd5vM1TyDMiKDxe7wVX.nLllU1zmf/gHuZ8Wp8qM0TK2ai', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(35, 'Jerrold Hickle', 'Brandyn Abernathy', 'madisen13@example.com', '$2y$10$DvtMfLr/IKhxrfuVhuhtHuUcK50Tws1guhYujyQZj5nQ2IX1zbtgq', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(36, 'Dr. Ansley Osinski Sr.', 'Dr. Mariah Hackett III', 'thad89@example.org', '$2y$10$JO7hPL0FzL4TOB8bZViqje4nynPDbkyw6ju3oiCLAEz/bNVVoirhe', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(37, 'Mr. Perry Krajcik MD', 'Trenton Nikolaus', 'powlowski.reta@example.com', '$2y$10$xueFcoJMHtRailEpfl9dMuga41CrrJrwHAZuiO3BJ1FpI64Lazfaq', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(38, 'Prof. Lori Rau', 'Annamarie Bauch', 'armani.grant@example.com', '$2y$10$KYogW5Yd2.UjZkkmEvjGt.H0LTl5B9ECa3Qy7bYMmoaj6vSOinbxe', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(39, 'Kailey Glover', 'Julius Trantow', 'strosin.selina@example.com', '$2y$10$3YgHM3Sn77Pm75BO4kXVJOeXwlyuRahYuhmk4IGU1AcPKYHS8Y9W6', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(40, 'Ms. Giovanna Powlowski', 'Earlene Barrows DDS', 'hills.josianne@example.org', '$2y$10$ZgL42/LbFeRgDlGlatFAreuMFUKw8C3AueYG5jlb1Sr.5pT5U98ky', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(41, 'Arthur Nicolas', 'Marta Tremblay', 'cnienow@example.org', '$2y$10$05vZkeXT2D2IwNjYp2Tjq.AR5T./qfBPb3B72uSpdeWefl4B7iyxS', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(42, 'Colton Hyatt MD', 'Ike Dickens', 'greg.fisher@example.org', '$2y$10$2tFR3Wbwr9a2m7pYj7KyoeTExh9OXnhyvfCGwX3gKG8VW3YA.ymJu', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(43, 'Jordane McKenzie PhD', 'Margie Morissette', 'bhyatt@example.net', '$2y$10$Ya09K/GG909nof/LaUECtut4OdaIsPGcKAIenl4NInA2UE1sGU/IO', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(44, 'Gardner Schmitt', 'Wilhelm Eichmann MD', 'schulist.golda@example.org', '$2y$10$Jqb51nO1/T4CzwnjjfENKus44xtLYdfKcLsAO6YZswPHhhThkzTdm', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(45, 'Rhoda Baumbach', 'Greta Mayer', 'leannon.grayce@example.org', '$2y$10$UHEY416pfoh6SnrtkfQ9Q.mwqNbx2ukkFUfoYxDbTfeYM7vET568a', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(46, 'Jack Johnston', 'Mrs. Aletha Ratke', 'arden09@example.net', '$2y$10$ArtJRKGHWTemh3fwdHlAbeJdnz21eTuVDJKKe/pFfkKXv4Ac6uGNm', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(47, 'Felipa Johnston', 'Lilian Cummerata', 'nboyle@example.com', '$2y$10$Jkat4LkpI1Q59lm1ARjjBOrjaezTEKx4wmmEelTsp3R/5WuU8XIoK', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(48, 'Mrs. Leila Brakus Sr.', 'Doris Boyle MD', 'archibald.zieme@example.com', '$2y$10$EmFPVrPdVeOWuZMyByAV.u7gV2BOSjVwoXbEVYp3v/1SHc26XmlnW', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(49, 'Santino Will', 'Gabe Lubowitz DDS', 'jlemke@example.com', '$2y$10$BUjwjdnv.0ubP9n2OhLvNeL1QYJgwT.rUPtW3609iPB5Up9Z.wc06', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(50, 'Mr. Erik McClure PhD', 'Amelie Ankunding', 'umarks@example.org', '$2y$10$MHsv9.Qyt3e/7Jmq83SaduPhfn3c9JdcE1NbT1bC2v7A/4OKKMK.W', '2023-12-18 09:15:23', '2023-12-18 09:15:23'),
(51, 'faith', 'david', 'chidubemopara508@gmail.com', '$2y$10$MGCdBPfyY9zNDpfa7949oepWj92.N8qSMDh22nc4S.VrAk13rRsbW', '2023-12-18 11:16:28', '2023-12-18 11:16:28'),
(52, 'Henry', 'semister4', 'henry@gmail.com', '$2y$10$oYTLqZslWhQZ1bbscEQH.uHE3bCl/2zOoJMlNBSJlFqSaEHtcQB3y', '2023-12-20 07:32:45', '2023-12-20 07:32:45'),
(53, 'the boss man', 'reteyuioo', 'theboss@gmail.com', '$2y$10$2csHQ2pZsx76qQIH.1QhWeWi3LwLNcdW9tAT4pJrr3hBQuFUVWnDa', '2023-12-20 07:50:48', '2023-12-20 07:50:48'),
(54, 'mimido', 'mimimi', 'mimido@gmail.com', '$2y$10$rWGB1hAK8f16.LwscpS.V.4kaxZ9yv1stliw47OmccNemRf5/rS9q', '2023-12-20 07:54:16', '2023-12-20 07:54:16'),
(55, 'CHIDUBEM', 'HENRY OPARA', 'chidubem44@gmail.com', '$2y$10$4PzLiwv.AVnZjxaP5ixjkuDIPkugeIHdwHOhmo4LHmuyJQxZECeTG', '2023-12-20 07:55:32', '2023-12-20 07:55:32'),
(58, 'ertyuiowerty', 'ertyuio', 'ertyuiowerty@gmail.com', '$2y$10$7mb0Ut8AvfccXG9mKDL/huz2kTFF6HxR9KlqSdEMVa7mft926xCJu', '2023-12-20 07:56:53', '2023-12-20 07:56:53'),
(60, 'CHIDUBEM', 'HENRY OPARA', 'chidubem454@gmail.com', '$2y$10$TEnvnndSZvulHQ54J5Eo2.Gb.8.gQbV0XgseunN2bFaKJmkPr70Me', '2023-12-20 08:04:56', '2023-12-20 08:04:56'),
(61, 'CHIDUBEM', 'HENRY OPARA', 'chidubem445@gmail.com', '$2y$10$jXtCFweQQU489Jus8U56ou.CtxmkcFtv8ioBXDQAzqlpdnapkT/SC', '2023-12-20 08:06:16', '2023-12-20 08:06:16'),
(62, 'CHIDUBEM', 'HENRY OPARA', 'chidubem4r4@gmail.com', '$2y$10$9LCgndDhDueW74XzWGH.bey3.0JOk9ZpOgR05yA4KyrGjfeGiLJVq', '2023-12-20 08:13:11', '2023-12-20 08:13:11'),
(63, 'Henry', 'Opara', 'henryopara@gmail.com', '$2y$10$CrFnLWcsSlpGhm7zv4uYuenZodAXdtsKDEs2/pS7UlaD7A.cT9owq', '2023-12-20 08:16:31', '2023-12-20 09:52:58'),
(65, 'Zoe', 'Adeola', 'zoey009@gmail.com', '$2y$10$eYVyLLp90.INvCXRWWFG.uru8hBhdf7xUzlaJ.KqSsn0xre96Jh0q', '2023-12-20 10:45:32', '2023-12-20 10:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nines`
--
ALTER TABLE `nines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nines_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nines`
--
ALTER TABLE `nines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
