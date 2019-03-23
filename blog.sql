-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- ����: localhost:3306
-- ����� ��������: ��� 22 2019 �., 13:45
-- ������ �������: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- ������ PHP: 7.1.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ���� ������: `blog`
--

-- --------------------------------------------------------

--
-- ��������� ������� `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `publishDate` date NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- ���� ������ ������� `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `publishDate`, `userId`) VALUES
(1, 'asdf', 'asdfasdfasdf', '2019-03-22', 1),
(2, 'asdf', 'asdfasdfasdf', '2019-03-22', 1),
(3, 'asdsafd', '&lt;h2&gt;asdsad&lt;/h2&gt;\r\n\r\n&lt;i&gt;asdasda&lt;/i&gt;', '2019-03-22', 1);

-- --------------------------------------------------------

--
-- ��������� ������� `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- ���� ������ ������� `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `dob`) VALUES
(1, '123a', 'zealotrahl@gmail.com', 'asd', 'asd', '2019-03-18');

--
-- ������� ����������� ������
--

--
-- ������� ������� `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- ������� ������� `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT ��� ����������� ������
--

--
-- AUTO_INCREMENT ��� ������� `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT ��� ������� `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- ����������� �������� ����� ����������� ������
--

--
-- ����������� �������� ����� ������� `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;