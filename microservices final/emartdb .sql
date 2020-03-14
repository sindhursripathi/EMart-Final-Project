-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 09:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(20) NOT NULL,
  `bill_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `item_id`) VALUES
(701, 601, 301),
(704, 607, 301),
(705, 608, 303),
(706, 609, 303),
(707, 610, 303),
(737, 632, 302),
(738, 633, 303),
(739, 634, 303),
(740, 635, 302),
(741, 636, 311),
(742, 637, 303),
(743, 637, 311),
(744, 637, 307),
(745, 638, 307),
(746, 638, 311),
(747, 638, 304),
(748, 639, 301),
(749, 639, 302),
(750, 640, 306),
(751, 640, 302),
(752, 640, 301),
(753, 641, 312),
(754, 641, 303),
(755, 642, 302),
(756, 642, 301),
(757, 643, 301),
(758, 644, 301),
(759, 645, 301),
(760, 646, 302),
(761, 646, 301),
(762, 646, 304),
(763, 646, 303),
(764, 647, 301),
(765, 648, 303),
(766, 649, 306),
(767, 650, 311),
(768, 651, 302),
(769, 652, 301),
(770, 653, 303),
(771, 653, 303),
(772, 654, 307),
(773, 655, 303),
(774, 656, 302),
(775, 657, 303),
(776, 658, 302),
(777, 659, 303);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(20) NOT NULL,
  `buyer_id` int(20) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remarks` varchar(20) NOT NULL,
  `bill_amount` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_id`, `bill_type`, `bill_date`, `bill_remarks`, `bill_amount`) VALUES
(601, 501, 'cash', '2020-02-27', 'good', 5000),
(607, 501, 'cash', '2020-02-26', 'good', 5000),
(608, 501, 'Debit', '2020-03-05', 'paid', 90000),
(609, 501, 'Debit', '2020-03-05', 'paid', 90000),
(610, 501, 'Debit', '2020-03-05', 'paid', 90000),
(632, 501, 'Debit', '2020-03-06', 'paid', 130000),
(633, 501, 'Debit', '2020-03-04', 'paid', 90000),
(634, 501, 'Debit', '2020-03-07', 'paid', 90000),
(635, 501, 'Debit', '2020-03-07', 'paid', 130000),
(636, 501, 'Debit', '2020-03-07', 'paid', 25000),
(637, 501, 'Debit', '2020-03-07', 'paid', 116100),
(638, 501, 'Debit', '2020-03-07', 'paid', 42100),
(639, 501, 'Debit', '2020-03-07', 'paid', 250000),
(640, 501, 'Debit', '2020-03-07', 'paid', 255000),
(641, 501, 'Debit', '2020-03-08', 'paid', 97000),
(642, 501, 'Debit', '2020-03-10', 'paid', 250000),
(643, 501, 'Debit', '2020-03-10', 'paid', 120000),
(644, 501, 'Debit', '2020-03-10', 'paid', 120000),
(645, 501, 'Debit', '2020-03-10', 'paid', 120000),
(646, 501, 'Debit', '2020-03-10', 'paid', 356000),
(647, 506, 'Debit', '2020-03-11', 'paid', 120000),
(648, 506, 'Debit', '2020-03-11', 'paid', 90000),
(649, 506, 'Debit', '2020-03-12', 'paid', 5000),
(650, 506, 'Debit', '2020-03-12', 'paid', 25000),
(651, 506, 'Debit', '2020-03-12', 'paid', 130000),
(652, 506, 'Debit', '2020-03-12', 'paid', 120000),
(653, 506, 'Debit', '2020-03-13', 'paid', 180000),
(654, 502, 'Debit', '2020-03-13', 'paid', 1100),
(655, 506, 'Debit', '2020-03-13', 'paid', 90000),
(656, 506, 'Debit', '2020-03-13', 'paid', 130000),
(657, 506, 'Debit', '2020-03-13', 'paid', 90000),
(658, 502, 'Debit', '2020-03-13', 'paid', 130000),
(659, 502, 'Debit', '2020-03-13', 'paid', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_signup_table`
--

CREATE TABLE `buyer_signup_table` (
  `buyer_id` int(20) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL,
  `buyer_email` varchar(200) NOT NULL,
  `buyer_mobile` bigint(200) NOT NULL,
  `buyer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_signup_table`
--

INSERT INTO `buyer_signup_table` (`buyer_id`, `buyer_username`, `buyer_password`, `buyer_email`, `buyer_mobile`, `buyer_date`) VALUES
(501, 'kalpana', 'kalpana', 'kalpana@gmail.com', 2000, '2020-02-27'),
(502, 'pooja', 'pooja', 'pooja@gmail.com', 3000, '2020-02-27'),
(503, 'sravani', 'sravani', 'sravani@gmail.com', 4000, '2020-02-28'),
(504, 'kalpana', 'kalpana', 'kalpana@gmail.com', 2000, '2020-02-26'),
(505, 'kalpana', 'kalpana', 'kalpana@gmail.com', 2000, '2020-02-26'),
(506, 'sindhu', 'sindhu', 'sin@gmail.com', 1111111111, '2020-03-11'),
(507, 'kalpana', 'kalpana', 'kalpana@gmail.com', 2000, '2020-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(150) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_brief` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(101, 'Electronics', 'electronics like mob'),
(102, 'Footwear', 'footwear like slippe'),
(103, 'Clothes', 'clothes like jeans,d');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_image` varchar(500) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_stock` int(20) NOT NULL,
  `item_description` varchar(200) NOT NULL,
  `subcategory_id` int(20) NOT NULL,
  `item_remarks` varchar(200) NOT NULL,
  `seller_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remarks`, `seller_id`) VALUES
(301, 'LG TV', 'https://images.unsplash.com/photo-1567690187548-f07b1d7bf5a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 85000, 300, 'LG tv 46 inches', 201, 'good', 401),
(302, 'Samsung', 'https://images.unsplash.com/photo-1577979749830-f1d742b96791?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 70000, 300, 'Samsung 55 Inch 4K  TV', 201, 'good', 401),
(303, 'iphone11', 'https://images.unsplash.com/photo-1569328869944-e7cf0bd09dd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 90000, 300, 'iphone11', 202, 'best', 401),
(304, 'redmi 8', 'https://images.unsplash.com/photo-1548094891-c4ba474efd16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 16000, 300, ' 64GB', 202, 'good', 401),
(305, 'puma shoe', 'https://images.unsplash.com/photo-1545289414-1c3cb1c06238?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 4000, 300, 'water proof shoes', 203, 'good', 401),
(306, 'Nike shoe', 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 5000, 200, 'water proof', 203, 'good', 401),
(307, 'adidas', 'https://images.unsplash.com/photo-1529447105779-c529acf6d60b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 1100, 200, 'water proof', 204, 'good', 401),
(308, 'Woolrich', 'https://images.unsplash.com/photo-1456163195787-d80d558a2786?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 800, 300, 'water proof', 204, 'good', 401),
(309, 'Calini ', 'https://images.unsplash.com/photo-1576208230153-d898a0a89ce0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 2000, 300, 'solid sweat shirt', 205, 'good', 401),
(310, 'jack ', 'https://images.unsplash.com/photo-1549335004-8852e61808cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 3000, 300, 'sweat shirt', 205, 'good', 401),
(311, 'ikath saree', 'https://www.virajafashionista.com/uploaded_files/products/IMG-20181004-WA01858QEg.jpg', 25000, 300, 'wedding wear ', 206, 'good', 401),
(312, 'Silk saree', 'https://images.unsplash.com/photo-1572470176170-98fa8abcb741?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 7000, 100, 'pink party wear ', 206, 'good', 401);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(20) NOT NULL,
  `seller_username` varchar(20) NOT NULL,
  `seller_password` varchar(20) NOT NULL,
  `seller_company` varchar(20) NOT NULL,
  `seller_brief` varchar(200) NOT NULL,
  `seller_gst` int(20) NOT NULL,
  `seller_address` varchar(200) NOT NULL,
  `seller_email` varchar(20) NOT NULL,
  `seller_contact` int(50) NOT NULL,
  `seller_website` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `seller_username`, `seller_password`, `seller_company`, `seller_brief`, `seller_gst`, `seller_address`, `seller_email`, `seller_contact`, `seller_website`) VALUES
(401, 'sindhu', 'sindhu', 'reddy', 'seller', 5, 'perungudi', 'sripathi@gmail.com', 5555, 'www.sripathi.com'),
(403, 'sripathi', 'sripathi', 'reddy', 'seller', 5, 'perungudi', 'sripathi@gmail.com', 5555, 'www.sripathi.com'),
(404, 'ashu', 'ashu', 'reddy', 'seller', 5, 'perungudi', 'ashu@gmail.com', 6666, 'www.ashu.com'),
(405, 'ashu', 'ashu', 'reddy', 'seller', 5, 'perungudi', 'ashu@gmail.com', 6666, 'www.ashu.com'),
(407, 'rohit', 'rohit', 'rohit', 'seller', 5, 'perungudi', 'sripathi@gmail.com', 5555, 'www.sripathi.com');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_table`
--

CREATE TABLE `subcategory_table` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_brief` varchar(300) NOT NULL,
  `subcategory_gst` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory_table`
--

INSERT INTO `subcategory_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(201, 'TV', 101, 'TV', 5),
(202, 'Mobile', 101, 'mobile', 5),
(203, 'shoes', 102, 'footwear', 5),
(204, 'slippers', 102, 'footwear', 5),
(205, 'Winterwear', 103, 'winterwear', 5),
(206, 'sarees', 103, 'sarees', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_table_ibfk_2` (`seller_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  MODIFY `buyer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  MODIFY `seller_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_details_table_ibfk_4` FOREIGN KEY (`item_id`) REFERENCES `item_table` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_signup_table` (`buyer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_table_ibfk_3` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory_table` (`subcategory_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory_table`
--
ALTER TABLE `subcategory_table`
  ADD CONSTRAINT `subcategory_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
