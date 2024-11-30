-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mywebsite
CREATE DATABASE IF NOT EXISTS `mywebsite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mywebsite`;

-- Dumping structure for table mywebsite.danhgia
CREATE TABLE IF NOT EXISTS `danhgia` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `makhachhang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_diadiem` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int NOT NULL,
  `binhluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ngaydanhgia` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `makhachhang` (`makhachhang`),
  KEY `ID_diadiem` (`ID_diadiem`),
  CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`),
  CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`ID_diadiem`) REFERENCES `diadiem` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.danhgia: ~2 rows (approximately)
DELETE FROM `danhgia`;
INSERT INTO `danhgia` (`ID`, `makhachhang`, `ID_diadiem`, `diem`, `binhluan`, `ngaydanhgia`) VALUES
	(1, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 05:08:45'),
	(2, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 05:08:45'),
	(3, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 05:52:17'),
	(4, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 05:52:17'),
	(5, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:11:08'),
	(6, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:11:08'),
	(7, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:13:22'),
	(8, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:13:22'),
	(9, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:15:56'),
	(10, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:15:56'),
	(11, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:20:02'),
	(12, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:20:02'),
	(13, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:20:40'),
	(14, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:20:40'),
	(15, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:29:54'),
	(16, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:29:54'),
	(17, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 06:31:09'),
	(18, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 06:31:09'),
	(19, '1667732670893', '19LTT', 5, 'Địa điểm này rất tuyệt vời, tôi đã có một chuyến đi tuyệt vời tại đây!', '2024-11-30 07:50:53'),
	(20, '1667732836737', '334', 4, 'Trường học này rất đẹp, nhưng dịch vụ có thể cải thiện thêm một chút.', '2024-11-30 07:50:53');

-- Dumping structure for table mywebsite.diadiem
CREATE TABLE IF NOT EXISTS `diadiem` (
  `ID` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioithieu` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatour` int DEFAULT '0',
  `thoigian` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoiluong` float DEFAULT '0',
  `diadiem` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkggmap` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiem1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_dd1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_dd1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiem2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_dd2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_dd2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiem3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_dd3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_dd3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiem4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_dd4` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_dd4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.diadiem: ~6 rows (approximately)
DELETE FROM `diadiem`;
INSERT INTO `diadiem` (`ID`, `name`, `gioithieu`, `giatour`, `thoigian`, `thoiluong`, `diadiem`, `linkggmap`, `img`, `img2`, `img3`, `diadiem1`, `img_dd1`, `mota_dd1`, `diadiem2`, `img_dd2`, `mota_dd2`, `diadiem3`, `mota_dd3`, `img_dd3`, `diadiem4`, `mota_dd4`, `img_dd4`) VALUES
	('19', 'Phú Thọ', 'Tour du lịch Phú Thọ 1 ngày đưa du khách về miền đất tổ thiêng liêng, tham quan Khu di tích Đền Hùng, tìm hiểu lịch sử tại Bảo tàng Hùng Vương và thưởng thức Hát Xoan – di sản văn hóa phi vật thể của nhân loại. Hành trình còn mang đến cơ hội thưởng thức đặc sản địa phương và mua quà lưu niệm từ vùng đất giàu truyền thống này. Hãy cùng trải nghiệm một ngày ý nghĩa và đầy cảm xúc tại Phú Thọ!', 400000, '7 tháng 4 năm 2025', 24, 'Tour du ngoạn Phú Thọ', 'https://maps.app.goo.gl/j9ZfmBbpcsBeQNME8', 'img/slider/PT1.png', 'img/slider/PT2.png', 'img/slider/PT3.png', 'Khu di tích lịch sử Đền Hùng', 'img/diadiem/PT_dd1.png', ' Đây là nơi thờ các Vua Hùng - những người đã dựng nước Văn Lang, nhà nước đầu tiên trong lịch sử Việt Nam, bao gồm các đền Hạ, Trung, Thượng, và Lăng Vua Hùng.', 'Bảo tàng Hùng Vương', 'img/diadiem/PT_dd2.png', 'Bảo tàng trưng bày các hiện vật về lịch sử, văn hóa thời đại Hùng Vương, tái hiện quá trình dựng nước và giữ nước.', 'Trình diễn Hát Xoan', 'Làn điệu Hát Xoan độc đáo, di sản văn hóa phi vật thể của nhân loại. Đây là nét văn hóa đặc trưng của vùng đất Phú Thọ.', 'img/diadiem/PT_dd3.png', 'Tuyệt tình cốc Phú Thọ - Hồ Ly', 'Hồ Ly được hình thành từ hai khe: khe Ly và khe Chanh nhưng người dân lấy tên khe Ly làm tên gọi cho hồ. Hồ được chia làm hai nhánh lớn và được bao quanh bởi núi đồi trập trùng, khung cảnh thơ mộng. Cũng bởi phong cảnh hữu tình, đẹp như chốn bồng lai tiên cảnh khiến hồ Ly được ví von như “tuyệt tình cốc” phiên bản ở Phú Thọ.', 'img/diadiem/PT_dd4.png'),
	('29', 'Hà Nội', 'Hà Nội luôn thu hút du khách với một màu sắc đặc trưng, một nét văn hóa đậm đà bản sắc và một lối sống riêng chẳng thể lẫn với bất kỳ nơi nào khác. Cùng khám phá Hà Nội với chương trình Du lịch Hà Nội 1 ngày với nhiều hoạt động thú vị: tham quan Văn Miếu Quốc Tử Giám, lăng chủ tịch Hồ Chí Minh, hoàng thành Thăng Long,..', 500000, '1 tháng 1 năm 2025', 24, 'Tour tham quan Hà Nội', 'https://maps.app.goo.gl/j9ZfmBbpcsBeQNME8', 'img/slider/HN1.png', 'img/slider/HN2.png', 'img/slider/HN3.png', 'Chùa Trấn Quốc', 'img/diadiem/HN_dd1.png', 'Ngôi chùa cổ kính và lâu đời nhất tại Hà Nội. Với tuổi đời hơn 1500 tuổi, ngôi chùa đã trở thành địa điểm văn hóa tiêu biểu là nơi chiêm bái của các Phật tử đến để cầu an, tịnh tâm. Đứng tại đây, Quý khách sẽ có thể ngắm trọn mặt Hồ Tây yên ả, xanh ngắt cùng không khí linh thiêng trong chùa mang đến cảm giác vô cùng đặc biệt.', 'Khu di tích Lăng Chủ tịch Hồ Chí Minh', 'img/diadiem/HN_dd2.png', 'Khu di tích lăng Chủ tịch Hồ Chí Minh - một trong những địa điểm lịch sử quan trọng của đất nước này. Đây là nơi tưởng nhớ và biết ơn Chủ tịch Hồ Chí Minh - người lãnh tụ vĩ đại của dân tộc Việt Nam. Khi đến thăm khu di tích, Quý khách sẽ được tham quan những công trình kiến trúc như lăng Bác, nhà sàn và ao cá Bác Hồ. Đối với các ngày thứ 2 và thứ 6, Quý khách chỉ tham quan bên ngoài lăng và các khu vực như nhà sàn, ao cá và chùa Một Cột.', 'Văn Miếu Quốc Tử Giám', 'Trường đại học đầu tiên của Việt Nam, tìm hiểu về lịch sử và truyền thống học thuật của dân tộc.', 'img/diadiem/HN_dd3.png', 'Nhà tù Hỏa Lò', ' Nhà tù Hỏa Lò (Hanoi Hilton)- một di tích lịch sử gắn liền với cuộc kháng chiến chống Pháp và Mỹ, nơi đã giam giữ hàng ngàn chiến sĩ cách mạng.', 'img/diadiem/HN_dd4.png'),
	('34', 'Hải Dương', 'Hành trình 1 ngày khám phá vùng đất Hải Dương với những địa danh giàu giá trị lịch sử, văn hóa và thiên nhiên. Quý khách sẽ chiêm bái Chùa Côn Sơn và Đền Kiếp Bạc, nơi gắn liền với Thiền phái Trúc Lâm và Hưng Đạo Đại Vương Trần Quốc Tuấn. Tiếp tục khám phá Làng gốm Chu Đậu, tìm hiểu nghệ thuật làm gốm truyền thống và trải nghiệm thực hành cùng các nghệ nhân, sau đó cùng hòa mình vào thiên nhiên tại Đảo Cò Chi Lăng Nam, nơi cư trú của hàng ngàn loài chim quý hiếm, và thưởng thức đặc sản Hải Dương như bánh đậu xanh, bánh gai, vải thiều Thanh Hà.', 300000, '23 tháng 1 năm 2025', 24, 'Tour tham quan Hải Dương', 'https://maps.app.goo.gl/j9ZfmBbpcsBeQNME8', 'img/slider/HD1.png', 'img/slider/HD2.png', 'img/slider/HD3.png', 'Côn Sơn Kiếp Bạc', 'img/diadiem/HD_dd1.png', 'Chùa Côn Sơn và Đền Kiếp Bạc, nơi gắn liền với Thiền phái Trúc Lâm.', 'Làng Gốm Chu Đậu', 'img/diadiem/HD_dd2.png', 'Làng Gốm Chu Đậu nổi tiếng với nghệ thuật làm gốm truyền thống nổi tiếng với những sản phẩm gốm tinh xảo, mang đậm nét văn hóa truyền thống Việt Nam.', 'Đảo Cò Chi Lăng Nam', 'Tham quan khu sinh thái Đảo Cò, nằm tại xã Chi Lăng Nam, huyện Thanh Miện. Đây là nơi cư trú của hàng chục nghìn loài cò, vạc và các loài chim khác. Khám phá vẻ đẹp yên bình của thiên nhiên và chụp ảnh lưu niệm.', 'img/diadiem/HD_dd3.png', 'Mua sắm đặc sản Hải Dương', 'Ghé thăm các cửa hàng đặc sản để mua quà như bánh đậu xanh, bánh gai, và vải thiều Thanh Hà.', 'img/diadiem/HD_dd4.png'),
	('36', 'Thanh Hóa', 'Tour du lịch Thanh Hóa 2 ngày 1 đêm Biển Sầm Sơn – Danh thắng Trường Lệ , hành trình đưa quý khách khám phá vẻ đẹp biển Sầm Sơn thơ mộng với bãi cát vàng, làn nước trong xanh và không khí trong lành. Tận hưởng khoảnh khắc thư giãn với các hoạt động thể thao bãi biển, thưởng thức hải sản tươi ngon, và dạo chơi phố đêm rực rỡ.', 1000000, '1 tháng 7 năm 2025', 48, 'Tour du lịch Thanh Hóa', 'https://maps.app.goo.gl/j9ZfmBbpcsBeQNME8', 'img/slider/TH1.png', 'img/slider/TH2.png', 'img/slider/TH3.png', 'Biển Sầm Sơn', 'img/diadiem/TH_dd1.png', 'Bãi biển Sầm Sơn nổi tiếng với hình trăng khuyết, cát mịn và nước trong xanh. Đây là nơi lý tưởng để tắm biển và tham gia các hoạt động thể thao dưới nước.', 'Hòn Trống Mái', 'img/diadiem/TH_dd2.png', 'Đây là điểm check-in nổi tiếng với ba tảng đá xếp chồng lên nhau, mang vẻ đẹp kỳ thú và gắn liền với truyền thuyết về tình yêu chung thủy.', 'Đền Độc Cước', 'Ngôi đền tọa lạc trên đỉnh núi Cổ Giải, thờ người khổng lồ một chân đã bảo vệ dân làng khỏi quỷ biển và giặc ngoại xâm. Quý khách có thể ngắm nhìn toàn cảnh biển Sầm Sơn từ đỉnh núi.', 'img/diadiem/TH_dd3.png', 'Chùa Cô Tiên', 'Chùa tọa lạc ở phía Nam núi Trường Lệ, là nơi gắn liền với truyền thuyết về cô gái tiên giúp đỡ dân làng. Không gian yên bình của chùa mang đến cảm giác thanh tịnh cho du khách.', 'img/diadiem/TH_dd4.png'),
	('98', 'Bắc Giang', 'Hành trình 1 ngày khám phá vùng đất Bắc Giang, nơi lưu giữ những giá trị văn hóa và tâm linh đặc sắc. Quý khách sẽ được chiêm ngưỡng vẻ đẹp hùng vĩ của Tây Yên Tử, trải nghiệm cáp treo lên Chùa Đồng linh thiêng ở độ cao 1.068m. Buổi chiều, tham quan Chùa Vĩnh Nghiêm, nơi phát tích Thiền phái Trúc Lâm với kho mộc bản quý giá và Thiền Viện Trúc Lâm Phượng Hoàng thanh tịnh giữa thiên nhiên yên bình.', 350000, '1 tháng 3 năm 2025', 24, 'Tour du ngoạn Bắc Giang', 'https://maps.app.goo.gl/j9ZfmBbpcsBeQNME8', 'img/slider/BG1.png', 'img/slider/BG2.png', 'img/slider/BG3.png', 'Khu di tích Tây Yên Tử', 'img/diadiem/BG_dd1.png', 'Khu di tích nổi tiếng với các điểm tham quan như Hoàng Thành, Chùa Hạ, Chùa Thượng, và Chùa Đồng, cùng hành trình cáp treo đầy thú vị.', 'Chùa Vĩnh Nghiêm', 'img/diadiem/BG_dd2.png', 'Ngôi chùa được xem là nơi phát tích của Tam Tổ Thiền phái Trúc Lâm trong Phật giáo Việt Nam. Ngôi chùa nổi tiếng với bộ mộc bản kinh Phật quý giá có niên đại hơn 700 năm, được lưu giữ trong không gian rộng tới 10 gian nhà. Đây là di sản văn hóa độc đáo, từng được người xưa gọi là "mộc thư khố".', 'Thiền Viện Trúc Lâm Phượng Hoàng', 'Một công trình kiến trúc Phật giáo đặc sắc nằm giữa khung cảnh thiên nhiên yên bình. Thiền viện không chỉ là nơi tu tập mà còn mang ý nghĩa tôn vinh và bảo tồn các giá trị văn hóa tinh thần của Thiền phái Trúc Lâm Yên Tử.', 'img/diadiem/BG_dd3.png', 'Thác Suối Mỡ', 'Thác Suối Mỡ một khu du lịch sinh thái nổi tiếng với khung cảnh thiên nhiên vừa mang nét đẹp hoang dã, kỳ vĩ, vừa mang nét thơ mộng, bình yên. Đến với nơi đây du khách sẽ có cơ hội tận hưởng không gian trong lành và những khoảnh khắc bình yên hiếm có. Xung quanh khu du lịch có nhiều đền thờ lớn nhỏ, vì thế nhiều du khách tìm đến đây vừa thăm thú cảnh đẹp vừa có chuyến du lịch tâm linh đầy thú vị.', 'img/diadiem/BG_dd4.png'),
	('99', 'Bắc Ninh', 'Tour du lịch Bắc Ninh 1 ngày đưa quý khách khám phá vùng đất Kinh Bắc – cái nôi của văn hóa Phật giáo và lịch sử Việt Nam. Hành trình ghé thăm các di tích nổi tiếng như Chùa Bút Tháp cổ kính, Chùa Dâu – trung tâm Phật giáo đầu tiên của nước ta, Chùa Phật Tích linh thiêng với những bức tượng đá kỳ công, và Đền Đô uy nghi – nơi thờ 8 vị vua triều Lý. Đan xen trong chuyến đi là những khoảnh khắc hòa mình vào cảnh sắc thanh bình và tận hưởng các món ăn đặc sản Bắc Ninh.', 300000, '6 tháng 2 năm 2025', 24, 'Tour du ngoạn Bắc Ninh', 'https://maps.app.goo.gl/j9ZfmBbpcsBeQNME8', 'img/slider/BN1.png', 'img/slider/BN2.png', 'img/slider/BN3.png', ' Chùa Dâu', 'img/diadiem/BN_dd1.png', 'Chùa Dâu, còn có tên là Diên Ứng (延應寺), Pháp Vân (法雲寺), hay Cổ Châu, là một ngôi chùa nằm ở phường Thanh Khương, thị xã Thuận Thành, tỉnh Bắc Ninh, cách Hà Nội khoảng 30 km. Đây là trung tâm Phật giáo cổ xưa nhất của Việt Nam. Đây là ngôi chùa được coi là có lịch sử hình thành sớm nhất Việt Nam mặc dù các dấu tích vật chất không còn, nó đã được xây dựng lại.[1]. \r\n	Chùa là một danh lam bậc nhất của xứ kinh Bắc xưa nay. Đây cũng là một di tích quốc gia đặc biệt của Việt Nam được xếp hạng đợt 4. Chùa Dâu được xem là ngôi chùa cổ nhất Việt Nam.', 'Đền Đô', 'img/diadiem/BN_dd2.png', 'Tại đây, quý khách tìm hiểu về 8 vị vua triều Lý được thờ tại đền và kiến trúc độc đáo mang phong cách kết hợp giữa cung đình và dân gian.', 'Chùa Phật Tích', 'nằm ở sườn phía Nam núi Phật Tích (còn gọi núi Lạn Kha, non Tiên), xã Phật Tích, huyện Tiên Du, tỉnh Bắc Ninh. Trong chùa có tượng đức Phật bằng đá thời nhà Lý lớn nhất Việt Nam', 'img/diadiem/BN_dd3.png', 'Đền thờ Trạng nguyên Lê Văn Thịnh', 'Lịch sử di tích: Đền thờ Thái sư Lê Văn Thịnh được xây dựng trên núi Thiên Thai, thuộc thôn Bảo Tháp, xã Đông Cứu, huyện Gia Bình. Là nơi tôn thờ, tưởng niệm danh nhân Lê Văn Thịnh người đỗ đầu trong kỳ thi Minh Kinh bác học năm 1075.', 'img/diadiem/BN_dd4.png');

-- Dumping structure for table mywebsite.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `makhachhang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tendangnhap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachinhanhang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachimuahang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dangkinhanbangtin` tinyint DEFAULT NULL,
  `maxacthuc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoigianhieulucmaxacthuc` datetime DEFAULT NULL,
  `trangthaixacthuc` tinyint DEFAULT NULL,
  `duongdananh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`makhachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.khachhang: ~25 rows (approximately)
DELETE FROM `khachhang`;
INSERT INTO `khachhang` (`makhachhang`, `tendangnhap`, `matkhau`, `hoten`, `gioitinh`, `diachi`, `diachinhanhang`, `diachimuahang`, `ngaysinh`, `sodienthoai`, `email`, `dangkinhanbangtin`, `maxacthuc`, `thoigianhieulucmaxacthuc`, `trangthaixacthuc`, `duongdananh`) VALUES
	('1667732670893', 'tungitv', '123456', 'Le Nhat Tung', 'Nam', 'Poland', 'France', 'Vietnam', '2022-11-06', '+48123456789', 'abc123@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1667732836737', 'tung456', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Le Nhat Tung', 'Nam', 'Poland', 'France', 'Vietnam', '2022-11-06', '+48123456789', 'abc123@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1667826672782', 'tung4567', 'B+4zZ7z0Okk8LmjVpPHTNHEQQNE=', 'Le Nhat Tung', 'Nam', 'Poland 100', 'France 300', 'Vietnam 200', '2022-11-07', '+48123456789', 'abc123@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1668435194168', 'tungnew', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung New 123', 'Nam', 'Poland', 'France', 'Vietnam', '2022-11-14', '+48123456789', 'tungnew@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1668934786489', 'tung2011', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456789', 'tungnew@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1668935133463', 'tung20112', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tungnew@gmail.com', 0, '813842', '2022-11-21 00:00:00', 0, NULL),
	('1668936004618', 'tung20115', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '', 'tungnew@gmail.com', 0, '388175', '2022-11-21 00:00:00', 0, NULL),
	('1668936062581', 'tung20116', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tn.le@uw.edu.pl', 0, '546129', '2022-11-21 00:00:00', 0, NULL),
	('1668936750222', 'tung20117', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tn.le@uw.edu.pl', 0, '844825', '2022-11-21 00:00:00', 0, NULL),
	('1668936887622', 'tung20118', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tn.le@uw.edu.pl', 0, '266553', '2022-11-21 00:00:00', 1, '16689458899311-removebg-preview.png'),
	('1732584744361', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'phat', 'Nam', 'yt', 'yty', 'tyt', '2024-11-30', '33545', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732584842253', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-13', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732584976318', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-08', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732585084151', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-01', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732585234680', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-23', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732585524661', 'Nguyen Phat555', 'zCZM1aOSMbcIGkbHfjRK3y/8px4=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-23', '112', '', 1, NULL, NULL, NULL, NULL),
	('1732586279740', 'Nguyen Phat', 'dkY0kSZpUYPO+ki4Ww3cG1NS/LA=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-16', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732586344404', 'Nguyen Phat111', 'zCZM1aOSMbcIGkbHfjRK3y/8px4=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-22', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732637304265', 'Phuong Anh', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'PA', 'Nữ', 'BG', 'HN', 'HN', '2024-11-28', '123', 'ngph1538@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1732674303478', 'Nguyen Phat111', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'PA', 'Nam', 'BG', 'HN', 'HN', '2024-11-14', '123', 'ngph1538@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH1', 'abc123', '147258', 'Nguyen Chau Anh', 'Nu', 'HCM', 'q2 tp.hcm', 'q10 tp.hcm', '2000-10-31', '0123654789', 'xyz@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH2', 'qwerty', 'abcdef', 'Ngoc Long', 'Nam', 'Ha Noi', 'Dong Da, Ha Noi', 'Hai Phong', '1950-12-07', '0987456321', 'eghugkjv@gmail.com', 1, NULL, NULL, NULL, NULL),
	('KH3', 'zxcvbnm', 'asdfgh', 'Phi Hoang', 'Nam', 'Gia Lai', 'Thu Duc', 'Binh Dinh', '2003-06-14', '0123654725', 'poiuyt@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH4', 'abcxyz', '159753', 'Duy Vu', 'Nam', 'Dong Nai', 'Ben Tre', 'Kien Giang', '1989-10-31', '0123457896', 'lmxjcnan@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH5', 'jafueasd123', 'zxcvbnm123', 'k', 'k', '123', 'k', 'k', NULL, 'k', 'k', 0, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
