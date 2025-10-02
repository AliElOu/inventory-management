-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2025 at 08:12 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory2`
--

--
-- Dumping data for table `inventory_category`
--

INSERT INTO `inventory_category` (`id`, `name`, `is_deleted`) VALUES
(1, 'Toys', 0),
(2, 'Groceries', 0),
(3, 'Furniture', 0),
(4, 'Electronics', 0),
(5, 'Clothing', 0);

--
-- Dumping data for table `inventory_stock`
--

INSERT INTO `inventory_stock` (`id`, `name`, `quantity`, `price`, `discount`, `is_deleted`, `category_id`) VALUES
(1, 'Remote Control Robot', 300, 99.33, 10.00, 0, 1),
(2, 'Organic Cereal Pack', 253, 34.96, 0.00, 0, 2),
(3, 'Solid Wood Coffee Table', 98, 24.17, 5.00, 0, 3),
(4, '1000-Piece Jigsaw Puzzle', 156, 77.29, 10.00, 0, 1),
(5, 'RC Toy Car', 362, 96.72, 0.00, 0, 1),
(6, '3-Seater Sofa', 471, 71.30, 20.00, 0, 3),
(7, 'Orange Juice Pack', 19, 62.12, 10.00, 0, 2),
(8, 'Bluetooth Headphones', 409, 63.42, 5.00, 0, 4),
(9, 'Ergonomic Office Chair', 269, 87.70, 0.00, 0, 3),
(10, 'Light-Up Spinning Top', 308, 19.20, 0.00, 0, 1),
(11, 'Basmati Rice (1kg)', 155, 86.09, 0.00, 0, 2),
(12, 'Wireless Keyboard', 474, 36.94, 10.00, 0, 4),
(13, 'RGB Gaming Mouse', 389, 32.05, 0.00, 0, 4),
(14, 'Lego Building Set', 320, 66.50, 0.00, 0, 1),
(15, 'Wall-Mounted Bookshelf', 408, 83.26, 0.00, 0, 3),
(16, 'Extendable Dining Table', 96, 73.73, 20.00, 0, 3),
(17, 'Action Figure', 313, 82.57, 10.00, 0, 1),
(18, 'Organic Cotton T-Shirt', 248, 11.11, 10.00, 0, 5),
(19, 'Kids Mini Drone', 254, 53.14, 20.00, 0, 1),
(20, 'Semi-Skimmed Milk (1L)', 84, 78.39, 20.00, 0, 2),
(21, 'ahmedwxcwxcwx', 1, 10.00, 0.00, 1, 1);


--
-- Dumping data for table `inventory_salesforecast`
--

INSERT INTO `inventory_salesforecast` (`id`, `date`, `predictions`) VALUES
(2, '2025-05-11', '[10822, 10773, 10734, 10691, 10649, 10618, 10588]');

--
-- Dumping data for table `inventory_salesprediction`
--

INSERT INTO `inventory_salesprediction` (`id`, `predicted_units`, `weather_condition`, `seasonality`, `holiday`, `inventory_level`, `price`, `discount`, `date`, `day_offset`, `True_sales`, `stock_id`) VALUES
(292, 33.822547912597656, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 1),
(293, 108.48384857177734, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 2),
(294, 108.10821533203125, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 3),
(295, 34.311546325683594, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 4),
(296, 32.87593460083008, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 5),
(297, 141.32723999023438, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 6),
(298, 39.35878372192383, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 7),
(299, 101.2689437866211, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 8),
(300, 32.38435363769531, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 9),
(301, 167.5865936279297, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 10),
(302, 16.578704833984375, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 11),
(303, 232.607666015625, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 12),
(304, 167.42401123046875, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 13),
(305, 60.018882751464844, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 14),
(306, 53.00961685180664, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 15),
(307, 46.6361083984375, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 16),
(308, 54.95582580566406, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 17),
(309, 215.806640625, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 18),
(310, 138.59576416015625, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 19),
(311, 40.961551666259766, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 20),
(312, 80.96896362304688, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-10', 1, NULL, 21),
(313, 117.91837310791016, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 1),
(314, 255.6389923095703, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 2),
(315, 263.4286193847656, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 3),
(316, 120.70051574707031, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 4),
(317, 120.81700897216797, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 5),
(318, 315.39678955078125, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 6),
(319, 129.34646606445312, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 7),
(320, 261.91961669921875, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 8),
(321, 123.42371368408203, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 9),
(322, 339.0953674316406, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 10),
(323, 84.8804931640625, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 11),
(324, 408.7140808105469, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 12),
(325, 329.47119140625, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 13),
(326, 198.95684814453125, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 14),
(327, 168.6061248779297, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 15),
(328, 152.38970947265625, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 16),
(329, 165.63446044921875, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 17),
(330, 399.18505859375, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 18),
(331, 304.9940490722656, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 19),
(332, 148.5878143310547, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 20),
(333, 221.634521484375, 'Sunny', 'Spring', 1, NULL, NULL, 0.00, '2025-05-11', 1, NULL, 21),
(334, 33.822547912597656, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 1),
(335, 108.48384857177734, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 2),
(336, 108.10821533203125, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 3),
(337, 34.311546325683594, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 4),
(338, 32.87593460083008, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 5),
(339, 141.32723999023438, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 6),
(340, 39.35878372192383, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 7),
(341, 101.2689437866211, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 8),
(342, 32.38435363769531, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 9),
(343, 167.5865936279297, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 10),
(344, 16.578704833984375, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 11),
(345, 232.607666015625, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 12),
(346, 167.42401123046875, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 13),
(347, 60.018882751464844, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 14),
(348, 53.00961685180664, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 15),
(349, 46.6361083984375, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 16),
(350, 54.95582580566406, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 17),
(351, 215.806640625, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 18),
(352, 138.59576416015625, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 19),
(353, 40.961551666259766, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 20),
(354, 80.96896362304688, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-12', 1, NULL, 21),
(355, 33.822547912597656, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 1),
(356, 108.48384857177734, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 2),
(357, 108.10821533203125, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 3),
(358, 34.311546325683594, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 4),
(359, 34.38141632080078, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 5),
(360, 141.32723999023438, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 6),
(361, 39.35878372192383, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 7),
(362, 101.2689437866211, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 8),
(363, 27.7065486907959, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 9),
(364, 167.5865936279297, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 10),
(365, 16.578704833984375, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 11),
(366, 227.4138641357422, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 12),
(367, 167.42401123046875, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 13),
(368, 60.018882751464844, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 14),
(369, 53.00961685180664, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 15),
(370, 46.6361083984375, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 16),
(371, 54.95582580566406, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 17),
(372, 201.99093627929688, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 18),
(373, 121.03648376464844, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 19),
(374, 37.14186477661133, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 20),
(375, 80.96896362304688, 'Sunny', 'Spring', 0, NULL, NULL, 0.00, '2025-05-13', 1, NULL, 21),
(376, 23.02964973449707, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 1),
(377, 84.8720703125, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 2),
(378, 81.3604736328125, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 3),
(379, 25.472562789916992, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 4),
(380, 23.989662170410156, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 5),
(381, 116.09656524658203, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 6),
(382, 26.399898529052734, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 7),
(383, 84.55264282226562, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 8),
(384, 22.330678939819336, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 9),
(385, 144.35601806640625, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 10),
(386, 12.452980041503906, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 11),
(387, 188.95803833007812, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 12),
(388, 131.664306640625, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 13),
(389, 51.614078521728516, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 14),
(390, 39.175331115722656, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 15),
(391, 35.555870056152344, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 16),
(392, 43.437591552734375, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 17),
(393, 170.3102569580078, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 18),
(394, 96.97908020019531, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 19),
(395, 26.811059951782227, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 20),
(396, 57.614070892333984, 'Cloudy', 'Spring', 0, NULL, NULL, 0.00, '2025-05-14', 1, NULL, 21);


--
-- Dumping data for table `transactions_salebill`
--

INSERT INTO `transactions_salebill` (`billno`, `time`, `name`, `phone`, `address`, `email`, `gstin`) VALUES
(1, '2025-05-10 16:01:44.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(2, '2025-05-09 14:30:22.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(3, '2025-05-08 11:45:15.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(4, '2025-05-07 09:20:33.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(5, '2025-05-06 17:55:47.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(6, '2025-05-05 13:10:28.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(7, '2025-05-04 10:25:19.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(8, '2025-05-03 15:40:52.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(9, '2025-05-02 12:05:37.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(10, '2025-05-01 18:30:44.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(11, '2025-04-30 14:55:21.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(12, '2025-04-29 11:20:13.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(13, '2025-04-28 09:45:29.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(14, '2025-04-27 16:10:58.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(15, '2025-04-26 13:35:42.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(16, '2025-04-25 10:00:31.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(17, '2025-04-24 17:25:19.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(18, '2025-04-23 14:50:07.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(19, '2025-04-22 12:15:53.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(20, '2025-04-21 09:40:38.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(21, '2025-04-20 17:05:24.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(22, '2025-04-19 14:30:12.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(23, '2025-04-18 11:55:46.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(24, '2025-04-17 09:20:33.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(25, '2025-04-16 16:45:21.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(26, '2025-04-15 14:10:09.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(27, '2025-04-14 11:35:57.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(28, '2025-04-13 09:00:45.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(29, '2025-04-12 16:25:33.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(30, '2025-04-11 13:50:21.000000', 'Ali El Ouankrimi', '0158967940', 'HAY TAJZIAT LMOSTAKBAL AIT MELLOLUL', 'alielouankrimi@gmail.com', '456456456645456'),
(31, '2025-04-02 15:46:31.962915', 'Ali El Ouankrimi', '0606967940', 'HAY TAJZIAT NAIT EL KOLEA AIT MELLOUL', 'alielouankrimi@gmail.com', '456456456645456');

--
-- Dumping data for table `transactions_salebilldetails`
--

INSERT INTO `transactions_salebilldetails` (`id`, `eway`, `veh`, `destination`, `po`, `cgst`, `sgst`, `igst`, `cess`, `tcs`, `total`, `billno_id`) VALUES
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10712, 1),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10679, 2),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11027, 3),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10618, 4),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11040, 5),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10881, 6),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10647, 7),
(137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11119, 8),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11048, 9),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11565, 10),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10704, 11),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10850, 12),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11204, 13),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10787, 14),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10895, 15),
(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10512, 16),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10414, 17),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11013, 18),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10747, 19),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10687, 20),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10923, 21),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10549, 22),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10844, 23),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11008, 24),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10381, 25),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10294, 26),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10732, 27),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10379, 28),
(158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10051, 29),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10149, 30),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10350, 31);

--
-- Dumping data for table `transactions_saleitem`
--

INSERT INTO `transactions_saleitem` (`id`, `quantity`, `perprice`, `totalprice`, `billno_id`, `stock_id`) VALUES
(12, 50, 70, 3500, 31, 9),
(13, 50, 25, 1250, 31, 19),
(14, 30, 50, 1500, 31, 7),
(15, 30, 30, 900, 31, 20),
(16, 10, 10, 100, 31, 5),
(17, 30, 70, 2100, 31, 18),
(18, 10, 100, 1000, 31, 12);

--
-- Dumping data for table `auth_user` (Django superuser)
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$6wWeTmHXz76ySVzdeBzwYY$uTmC0Qq3S4GBB9hnHHDjINwGMn37Uz+LkKEXus5fY40=', '2025-10-01 21:04:11.955038', 1, 'ali', '', '', '', 1, 1, '2025-10-01 21:04:04.521925');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
