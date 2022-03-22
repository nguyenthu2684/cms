-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Nov 09, 2020 at 09:49 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom7`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã hãng',
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Tên hãng',
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Realme'),
(2, 'Oppo'),
(3, 'Asus'),
(4, 'SamSung'),
(5, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `manu_id` int(11) NOT NULL COMMENT 'Mã hẫng sản xuất',
  `type_id` int(11) NOT NULL COMMENT 'Mã loại sản xuất',
  `price` int(20) NOT NULL COMMENT 'Giá sản phẩm',
  `pro_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình sản phẩm',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả sản phẩm',
  `feature` tinyint(4) NOT NULL COMMENT 'Sản phẩm nổi bật',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Ngày tạo sản phẩm',
  PRIMARY KEY (`id`),
  KEY `FKManuName_01` (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `pro_image`, `description`, `feature`, `created_at`) VALUES
(1, 'Samsung Galaxy Note 20 Ultra', 1, 111, 21700000, 'samsungGalaxyUltra.jpg', 'Galaxy S20 Ultra là thiết bị lớn nhất trong bộ ba Galaxy S20 mới được công bố. Máy có màn hình 6.9 inch, độ phân giải 1.440 x 3.200 pixel, cung cấp tỷ lệ khung hình 20:9. Màn hình trên Galaxy S20 Ultra có những đường cong Samsung Edge đặc trưng cho thiết kế thêm sang trọng, tỷ lệ màn hình so với thân máy đạt 90.7%.', 1, '2020-11-09 08:51:40'),
(2, 'Tai nghe Bluetooth Samsung MG900E', 2, 112, 850000, 'taiNgheBluetoothSamSung.jpg', 'Công nghệ chống ồn cho âm thanh trong trẻo và chất lượng.Đệm tai nghe êm ái, dễ chịu khi sử dụng thời gian dài.Thời gian thoại lên đến 9 giờ, thời gian chờ lên đến 300 giờ.Thời gian sạc khoảng 2 giờ. Thời gian nghe nhạc có thể lên đến 8 giờ.', 0, '2020-11-09 08:51:46'),
(3, 'Máy tính bảng Samsung Galaxy Tab A7 (2020)', 3, 113, 7990000, 'samsungGalaxyTablet.png', 'Bên trong Samsung Galaxy Tab A7 (2020) là bộ vi xử lý Snapdragon 662 gồm 4 lõi 2.0 GHz và 4 lỗi 1.8 Ghz được sản xuất theo tiến trình 11 nm mang đến hiệu năng ổn định, đảm bảo các tác vụ luôn được xử lý một cách mượt mà, hiếm khi xảy ra hiện tượng giật lag.', 1, '2020-11-09 08:51:51'),
(4, 'Samsung Notebook 9 NP900X5T-K01US Traditional Laptop', 4, 114, 24348645, 'LatopSamsungNotebook.jpg', 'The Notebook 9 is Samsung\'s lightest multimedia laptop with Intel\'s latest 8th generation Core i CPU, 256GB NVMe SSD, and 8GB of DDR4 RAM. Port options include: 1 x Thunderbolt 3 (USB-C), 2 x USB3.0, 1 x USB2.0', 1, '2020-11-08 20:08:00'),
(5, 'USB 3.1 Samsung BAR Plus 32GB MUF-32BE', 5, 115, 220000, 'USB_bar.jpg', 'Để cắm vào CPU', 0, '2020-11-08 20:24:00'),
(6, 'MacBook Air 2018 MREE2 13 inch Gold i5 1.6/8GB/128GB Secondhand', 6, 116, 18000000, 'Maxbook2018.jpg', 'Kích thước30.41 x 21.24 x 0.41-1.56cmTrọng lượng1.25 kgChất liệu chínhNhôm tái chế 100%, thân thiện với môi trườngDung lượng pin50.3Wh LiPo Battery, 12 hours wireless web, 13 hours iTunes movie playback, 30 days of standby time.', 1, '2020-11-08 20:48:00'),
(7, 'Apple MacBook Air 2020', 7, 117, 29000000, 'AppleAir.jpg', 'CPU:Intel Core i3 Thế hệ 10, , 1.10 GHz\r\nRAM:8 GB, LPDDR4X (On board), 3733 MHz\r\nỔ cứng:SSD: 256 GB\r\nMàn hình:13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:Card đồ họa tích hợp, Intel® Iris® Plus Graphics\r\nCổng kết nối:2 x Thunderbolt 3 (USB-C)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Mac OS\r\nThiết kế:Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:Dày 4.1 mm đến 16.1 mm, 1.29 kg.\r\n', 0, '2020-11-08 20:50:00'),
(8, 'MacBook Pro 16 inch 2019 New', 8, 118, 60000000, 'MacbookPro2016.jpg', 'Tình trạng: Mới, Nguyên Seal, Active Online\r\nMàu: Xám (Space Gray)\r\nCPU: 2.3GHz 8-core i9-9850H (12MB cache, Turbo 4.6GHz)\r\nRAM: 16GB 2666MHz DDR4 memory\r\nStorage: 1TB SSD storage\r\nMàn hình: 16-inch Retina with True Tone (3072×1920)\r\nVGA: AMD Radeon Pro 5500M with 4GB GDDR6 memory\r\nInterface: Four Thunderbolt 3 ports (USB-Type C)\r\nTouch Bar & Touch ID\r\nTrọng lượng: 2.0Kg\r\n', 1, '2020-11-08 20:53:00'),
(9, 'Asus X509M Pent', 9, 119, 7600000, 'Asus.jpg', 'Màn hình: 15.6\" (1366 x 768), không cảm ứng\r\n- RAM: 1 x 4GB DDR4 (1 Khe cắm, Hỗ trợ tối đa 8GB)\r\n- Đồ họa: Intel UHD Graphics 605\r\n- Lưu trữ: 256GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 2 cell 32 Wh Pin liền, Khối lượng: 1.8 kg.\r\n', 0, '2020-11-08 20:54:00'),
(10, 'iPad Gen 8 2020', 10, 120, 8800000, 'ipad-gen-8-silver.jpg', 'Năm nay, Apple quyết định nâng cấp cho dòng iPad giá rẻ của mình từ chipset A10 Fushion lên A12 Bionic. Con chip này đã được sử dụng trên thế hệ iPhone XS và XS Max. Thế nhưng, dù đã có mặt trên thị trường được hai năm nhưng A12 vẫn sẽ mang lại một hiệu suất cực kì mạnh mẽ, đặc biệt khi kết hợp với hệ sinh thái iPadOS. Theo công bố từ phía hãng công nghệ Mỹ, A12 nhanh gấp 2 lần laptop Windows, gấp 3 tablet Android và gấp 6 Chromebook. Với sức mạnh phần cứng thế này, iPad Gen 8 có thể đảm bảo nhu cầu mượt mà cho người dùng trong vòng ít nhất là 5 năm năm nữa. Thực tế đã cho thấy đến nay, nhờ vào việc tối ưu nền tảng iPadOS mà ngay cả con chip A10 Fusion, có mặt trên thế hệ iPhone 7 và 7 Plus vẫn hoạt động hiệu quả trên iPad Gen 7.', 0, '2020-11-08 20:56:00'),
(11, 'ASUS Transformer 3 T305CA', 11, 121, 9500000, 'AsusTransformer.jpg', 'Hệ điều hành: Windows 10 Home – ASUS khuyên dùng Windows 10 Pro.\r\nChip: Intel Core M3-7Y30\r\nRam: 4 GB LPDDR3 / 8 GB SDRAM\r\nMàn hình: 12,6 inch (3: 2) tấm lền LED WQHD + (2880×1920) 60Hz\r\nĐồ họa: Intel HD Graphics\r\nỔ cứng: SSD 256GB SATA3 M.2\r\n', 1, '2020-11-08 20:57:00'),
(12, 'Xiaomi Redmi 9', 12, 122, 3390000, 'xiaomi-redmi-9.png', 'Nhanh như một cơn gió, sức hot của Redmi Note 9 Pro chưa có dấu hiệu hạ nhiệt thì Xiaomi Redmi 9 vừa bất ngờ ra mắt sớm. Thiết bị mang một thiết kế mới, thời trang và nhỏ gọn, phần cứng được nâng cấp cùng thời lượng pin ấn tượng, đặc biệt đi kèm một mức giá bán không thể nào hấp dẫn hơn.', 0, '2020-11-08 21:00:00'),
(13, 'iPhone 6s', 13, 123, 3190000, 'iphone6s.jpg', 'iPhone 6s được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6) camera có tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.\r\n\r\nCamera trước với độ phân giải 5 MP cho hình ảnh với độ chi tiết rõ nét, đặc biệt máy còn có tính năng Retina Flash, sẽ giúp màn hình sáng lên như đèn Flash để bức ảnh khi bạn chụp trong điều kiện thiếu sáng tốt hơn.\r\n', 0, '2020-11-09 09:07:41'),
(14, 'Oppo A31', 14, 124, 3300000, 'OppoA31.jpg', 'Pin điện thoại rất trâu, t dùng 2 ngày mới hết. Màn hình tạm ổn, tuy nhiên khi dùng ốp, gây cảm giác rất dày, khá khó chịu. Nhìn chung là ổn trong tầm giá.', 0, '2020-11-09 09:07:52'),
(15, 'USB-AC55_B1', 15, 125, 350000, 'USB-AC55_B1.jpg', 'Nâng cấp ngay máy tính hoặc laptop lên WiFi AC1300 băng tần kép.Bộ điều hợp WiFi MU-MIMO USB 3.1 Gen 1 - Giao diện USB nhanh gấp 10 lần để mang lại WiFi mượt mà khi kết nối nhiều thiết bị tương thích MU-MIMO.Công nghệ 256QAM - Tăng tốc độ dữ liệu 2,4 GHz từ 300 Mbps lên 400 Mbps.Hoàn hảo để truyền phát trực tuyến và chơi game - Thiết kế ăng-ten băng tần kép cho phép máy tính/ laptop kết nối với băng tần 5GHz để truyền phát 4K UHD mượt mà và chơi game không giật lag.\r\n', 1, '2020-11-09 09:08:02'),
(16, 'USB-AC53 Nano', 16, 126, 400000, 'USB-AC53_Nano.jpg', 'Thiết bị thu Wi-Fi MU-MIMO dạng USB nhỏ nhất thế giớiKích thước nhỏ gọn để bạn có thể kết nối Wi-Fi.Nâng cấp Wi-Fi tức thời cho máy tính xách tayTận hưởng tốc độ Wi-Fi 802.11ac.Hoàn hảo để chơi game và phát trực tuyến.Hỗ trợ băng tần kép cung cấp cho bạn băng tần 5GHz để phát trực tuyến nội dung 4K UHD trơn tru và chơi game với độ trễ thấp.\r\n', 1, '2020-10-31 21:08:00'),
(17, 'USB-AC68', 17, 127, 500000, 'USB-AC68.jpg', 'Nhanh chóng nâng cấp máy tính hoặc máy tính xách tay của bạn lên Wi-Fi AC1900 dải kép!Thiết kế 3x4 MIMO mạnh mẽ với hai ăng-ten 3 vị trí lắp ngoài cùng công nghệ tạo chùm tia ASUS AiRadar cho khả năng bắt sóng Wi-Fi tuyệt vời.Giao diện USB 3.0 cho tốc độ truyền tải dữ liệu nhanh gấp 10 lần.Bao gồm giá đỡ để sắp xếp linh hoạt nhằm đạt hiệu năng tốt nhất\r\n', 1, '2020-11-01 21:06:00'),
(18, 'Tai nghe Bluetooth True Wireless Realme Buds Q RMA215', 18, 128, 709000, 'RMA215.jpg', 'Thiết kế tinh tế với từ cảm hứng viên đá cuội.Trọng lượng siêu nhẹ chỉ nặng 3.6g và được làm polymer tổng hợp cực nhẹ và chắc chắn.Trang bị driver bass lớn 10 mm, âm thanh sống động với Dynamic Bass Boost.Kết nối nhanh chóng qua Bluetooth 5.0 được hỗ trợ từ chip R1Q.Độ trễ siêu thấp 119 ms đem lại sự đồng bộ giữa âm thanh và hình ảnh.Thời gian sử dụng dài 3 giờ cho đàm thoại, 4.5 giờ nghe nhạc, 5 giờ chơi game, 6 giờ xem phim.Khi sử dụng cùng hộp sạc tổng số giờ nghe nhạc lên đến 20 giờ.Đạt chuẩn chống nước IPX4.Tùy chỉnh tai nghe thông qua ứng dụng Realme Link.\r\n', 0, '2020-11-02 21:12:00'),
(19, 'Tai nghe AirPods 2 Apple MV7N2', 19, 129, 4490000, 'MV7N2.jpg', 'Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.\r\nKích hoạt nhanh trợ lý ảo Siri bằng cách nói \"Hey, Siri\".\r\nCó thể sử dụng nghe nhạc lên đến 3 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.	Tích hợp công nghệ sạc nhanh hiện đại. Sạc nhanh 15 phút có thể nghe nhạc 3 giờ (âm lượng 50%).\r\nSử dụng song song với hộp sạc có thể dùng được lên đến 24 giờ.\r\nTính năng nhận cuộc gọi, kích hoạt Siri, nghe hoặc tạm dừng đoạn nhạc đang phát.\r\n	Sản phẩm chính hãng Apple, nguyên seal 100%.\r\n', 1, '2020-11-09 09:10:21'),
(20, 'Tai nghe Oppo Enco W31', 20, 130, 391000, 'OppoEncoW31.png', 'Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nKết nối nhanh, ổn định, mượt mà\r\nTương thích với hầu hết các dòng điện thoại thong minh\r\n', 0, '2020-11-04 21:16:00'),
(21, 'Tai nghe chụp tai Gaming Asus TUF H3 Đen Đỏ', 21, 131, 1090000, 'Gaming_Asus _TUF_H3.jpg', 'Thiết kế thời thượng, kiểu chụp tai ôm trọn đầu tiện dụng.\r\nÂm thanh rộng, chi tiết với màng loa ASUS Essence lớn 50 mm và công nghệ buồng cách âm độc quyền.\r\nTrải nghiệm âm thanh sống động qua công nghệ âm thanh vòm 7.1 được hỗ trợ bởi Windows Sonic.\r\nTương tích với các thiết bị điện thoại, PC, Mac, PS4, Nintendo Switch, Xbox,...\r\nMicro truyền tải âm thanh tốt, dễ dàng giao tiếp trong game.\r\n', 1, '2020-11-05 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(6, 'LapTop'),
(7, 'Điện Thoại'),
(8, 'Tai nghe'),
(9, 'Ipad'),
(10, 'USB');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
