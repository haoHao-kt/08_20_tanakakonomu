-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2019 年 2 月 14 日 10:23
-- サーバのバージョン： 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_f02_db20`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `CODE_TABLE`
--

CREATE TABLE `CODE_TABLE` (
  `code_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(16) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `CODE_TABLE`
--

INSERT INTO `CODE_TABLE` (`code_name`, `id`, `name`) VALUES
('age', 100, 'バロック'),
('age', 200, '古典派'),
('age', 300, 'ロマン派'),
('age', 305, 'aaaaaaaaa'),
('country', 100, 'ドイツ'),
('country', 200, 'チェコ'),
('country', 300, 'フランス'),
('country', 400, 'ロシア'),
('country', 500, 'イギリス'),
('country', 600, 'オーストリア');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, 'aaaaaaa', 'aaaaa', 'aaaaaa', '2019-02-04 18:55:15'),
(2, 'aaaaaaa', 'aaaaa', 'aaaaaa', '2019-02-04 18:55:26'),
(3, 'aaaaa', 'aaaa', 'aaaa', '2019-02-04 18:55:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `M_COMPOSER`
--

CREATE TABLE `M_COMPOSER` (
  `id` int(16) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(8) NOT NULL,
  `age_id` int(8) NOT NULL,
  `img_url` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `wiki_url` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `M_COMPOSER`
--

INSERT INTO `M_COMPOSER` (`id`, `name`, `country_id`, `age_id`, `img_url`, `wiki_url`) VALUES
(1000, 'Johann Sebastian Bach', 100, 100, 'image/Bach.jpg', 'https://ja.wikipedia.org/wiki/%E3%83%A8%E3%83%8F%E3%83%B3%E3%83%BB%E3%82%BC%E3%83%90%E3%82%B9%E3%83%86%E3%82%A3%E3%82%A2%E3%83%B3%E3%83%BB%E3%83%90%E3%83%83%E3%83%8F%E3%81%AE%E4%BD%9C%E5%93%81%E4%B8%80%E8%A6%A7'),
(1010, 'Georg Friedrich Händel', 100, 100, 'image/Haendel.jpg', 'https://ja.wikipedia.org/wiki/%E3%83%98%E3%83%B3%E3%83%87%E3%83%AB%E3%81%AE%E6%A5%BD%E6%9B%B2%E4%B8%80%E8%A6%A7'),
(1020, 'Antonio Vivaldi', 500, 100, 'image/Antonio_Vivaldi.jpg', 'https://ja.wikipedia.org/wiki/%E3%83%B4%E3%82%A3%E3%83%B4%E3%82%A1%E3%83%AB%E3%83%87%E3%82%A3%E3%81%AE%E6%A5%BD%E6%9B%B2%E4%B8%80%E8%A6%A7'),
(2000, 'Franz Joseph Haydn', 600, 200, 'image/Haydn_portrait.jpg', 'https://ja.wikipedia.org/wiki/%E3%83%8F%E3%82%A4%E3%83%89%E3%83%B3%E3%81%AE%E4%BA%A4%E9%9F%BF%E6%9B%B2%E4%B8%80%E8%A6%A7'),
(2010, 'Ludwig van Beethoven', 600, 200, 'image/Beethoven.jpg', 'https://ja.wikipedia.org/wiki/%E3%83%99%E3%83%BC%E3%83%88%E3%83%BC%E3%83%B4%E3%82%A7%E3%83%B3%E3%81%AE%E6%A5%BD%E6%9B%B2%E4%B8%80%E8%A6%A7'),
(2020, 'Wolfgang Amadeus Mozart', 600, 200, 'image/mozart.jpg', 'https://ja.wikipedia.org/wiki/%E3%83%A2%E3%83%BC%E3%83%84%E3%82%A1%E3%83%AB%E3%83%88%E3%81%AE%E6%A5%BD%E6%9B%B2%E4%B8%80%E8%A6%A7');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(1, '課題', '2019-02-07', '難しい！', '2019-02-02 15:20:15'),
(2, '課題', '2019-02-08', '難しい！', '2019-02-02 15:22:03'),
(3, '課題', '2019-02-09', '難しい！', '2019-02-02 15:22:21'),
(4, '課題34', '2019-02-09', '難しい！', '2019-02-02 15:22:42'),
(5, '課題', '2019-02-10', '難しい！', '2019-02-02 15:22:59'),
(7, '課題', '2019-02-11', '難しい！', '2019-02-02 15:23:33'),
(8, '課題7', '2019-02-12', '難しい！', '2019-02-02 15:23:54'),
(9, '課題7', '2019-02-14', '難しい！', '2019-02-02 15:24:12'),
(10, '課題7', '2019-02-13', '難しい！', '2019-02-02 15:24:22'),
(11, '課題', '2019-02-07', 'むずかしいいいいい', '2019-02-02 16:19:07'),
(12, '課題', '2019-02-08', 'むずかしいいいいい', '2019-02-02 16:19:20'),
(13, '課題', '2019-02-03', '2回入ってる？', '2019-02-02 16:19:58'),
(14, '課題', '2019-02-09', 'aaaa', '2019-02-02 16:56:45'),
(15, '課題', '2019-02-09', 'kkkkkkkkkkkk', '2019-02-09 14:38:59'),
(16, '課題', '2019-02-09', 'aaaaaaaaaa', '2019-02-09 14:40:31'),
(17, '課題', '2019-02-14', 'aaaaa', '2019-02-13 20:32:43'),
(18, '課題', '2019-02-15', 'aaaa', '2019-02-13 20:32:55');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'admin', 'admin', 'admin', 0, 0),
(2, 'normal_user', 'user', 'user', 0, 0),
(3, 'myname', 'myid', 'ad', 1, 0),
(4, 'aaaaaa', 'bbbbbbb', 'rrrrrrr', 0, 0),
(6, 'ユーザーネーム', 'aaaaa', 'aaaaaa', 1, 0),
(7, 'ユーザーネーム', 'userID', 'aaaa', 0, 0),
(8, 'ユーザーネーム', 'userID', 'lllll', 0, 0),
(9, 'ユーザーネーム', 'userID', 'aaaa', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CODE_TABLE`
--
ALTER TABLE `CODE_TABLE`
  ADD PRIMARY KEY (`code_name`,`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `M_COMPOSER`
--
ALTER TABLE `M_COMPOSER`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
