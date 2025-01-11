-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2025 at 03:21 AM
-- Server version: 10.4.11-MariaDB-log
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+62 812 3456 789', 'admin@gmail.com', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(3, 'Handphone'),
(4, 'Laptop'),
(5, 'Tablet'),
(6, 'Monitor'),
(7, 'Keyboard & Mouse'),
(8, 'Controller'),
(9, 'Console Game');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(35, 9, 'Nintendo Switch OLED', 3850000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. At minima praesentium temporibus adipisci maiores odit accusamus suscipit in velit mollitia ratione id explicabo facilis placeat exercitationem consectetur cumque, voluptas nostrum?</p>\r\n', 'produk1700972058.jpg', 1, '2023-11-26 04:14:19'),
(30, 7, 'Asus ROG Azoth', 3999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores, molestiae consectetur, doloribus illum minus, expedita sit, exercitationem obcaecati nam ex libero! Dicta aperiam quos perferendis ex labore soluta. Laboriosam, minima!</p>\r\n', 'produk1700923826.jpg', 1, '2023-11-25 14:50:26'),
(31, 7, 'SteelSeries Apex Pro TKL', 2999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro necessitatibus atque quisquam quis facere perspiciatis corporis expedita repellat nam dolores pariatur, vero incidunt sapiente nobis eaque, doloremque ab aperiam delectus.</p>\r\n', 'produk1700923912.jpg', 1, '2023-11-25 14:51:52'),
(32, 8, 'DualSense Edge Wireless Controller ', 3599000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi sed vel odio sit quos dignissimos minus reiciendis quo! Aspernatur perspiciatis porro aliquam blanditiis possimus voluptatibus excepturi magnam quia nam architecto!</p>\r\n', 'produk1701073811.jpg', 1, '2023-11-25 14:54:45'),
(33, 8, 'Victrix PRO BFG', 3699000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis unde eius quasi debitis mollitia, in vel quidem ratione amet voluptas optio assumenda exercitationem nihil cumque repellendus, illum eum, animi quae!</p>\r\n', 'produk1700924248.jpg', 1, '2023-11-25 14:57:28'),
(34, 9, ' Xbox Series X', 8099000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae repellendus vitae molestias nihil quidem deserunt perferendis at eveniet tempora maiores iure veniam consequuntur aut quasi, amet eaque nisi labore iusto!</p>\r\n', 'produk1700924442.jpg', 1, '2023-11-25 15:00:42'),
(26, 5, 'Samsung Galaxy Tab S8 Ultra', 9999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt aspernatur asperiores voluptatem quis, illum itaque nisi ducimus! Cupiditate ipsa aut laboriosam placeat excepturi non hic, at praesentium! Iste excepturi, quia.</p>\r\n', 'produk1700923494.jpg', 1, '2023-11-25 14:44:54'),
(27, 5, 'ROG Flow Z13', 33999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium asperiores tempore necessitatibus molestias. Deserunt, quo aliquid at eveniet fuga sapiente. Provident, neque architecto! Odit nostrum cupiditate, id incidunt voluptas fugiat.</p>\r\n', 'produk1700923597.jpg', 1, '2023-11-25 14:46:37'),
(28, 6, ' Samsung Odyssey Neo G9', 34999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aperiam odit, libero, officiis ratione delectus beatae, labore necessitatibus, repudiandae at vel dolorem! Vitae ducimus dolore, distinctio similique eveniet eaque quos.</p>\r\n', 'produk1700923660.jpg', 1, '2023-11-25 14:47:40'),
(29, 6, 'Dell G3223Q', 16999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima, dolore. Sapiente reprehenderit, maiores modi sunt, itaque, temporibus nisi illum eum nulla ut, voluptatibus cumque dolores ratione. Eos repudiandae maiores amet.</p>\r\n', 'produk1700923756.jpg', 1, '2023-11-25 14:49:16'),
(25, 4, 'ROG Strix SCAR 18', 73999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus nisi voluptatibus doloremque unde itaque eos autem aliquam reiciendis facilis nesciunt ipsam voluptatem, perferendis ad quam nemo quaerat iure, et id.</p>\r\n', 'produk1700923340.jpg', 1, '2023-11-25 14:42:20'),
(22, 3, 'ROG Phone 7 Ultimate', 18999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit esse doloremque quas harum, explicabo maxime, aperiam omnis rem odit aut earum laborum rerum, tempore fugiat aspernatur. Accusamus dignissimos, obcaecati minus?</p>\r\n', 'produk1700922202.jpg', 1, '2023-11-25 14:23:22'),
(36, 7, 'Razer DeathAdder V3 Pro', 2505000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, culpa! Cupiditate, mollitia praesentium labore eaque, eligendi deserunt commodi quaerat dolor. Facilis adipisci commodi autem assumenda dolorem reprehenderit, necessitatibus quos perspiciatis.</p>\r\n', 'produk1701074809.jpg', 1, '2023-11-27 08:43:34'),
(37, 7, '.Logitech G Pro', 1999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem impedit aliquid quod eos, ullam dignissimos dicta repellat perferendis saepe. Reprehenderit ea quisquam odit officiis porro assumenda id at sequi amet.</p>\r\n', 'produk1701074938.jpg', 1, '2023-11-27 08:48:58'),
(24, 4, 'Acer Predator Triton 900', 64999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis repellat culpa aut quasi molestiae nulla itaque eos delectus nesciunt alias consequatur expedita quos minus, maiores quia autem repudiandae quisquam modi.</p>\r\n', 'produk1700922928.jpg', 1, '2023-11-25 14:35:28'),
(23, 3, 'Redmagic 8S Pro', 14999000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae ipsum officia, eos similique quasi perspiciatis quis ad consectetur, recusandae vero exercitationem, doloremque rerum neque unde facilis pariatur ut aliquam accusantium.</p>\r\n', 'produk1700922582.jpg', 1, '2023-11-25 14:29:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
