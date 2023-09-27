-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 05:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_award`
--

-- --------------------------------------------------------

--
-- Table structure for table `music_band`
--

CREATE TABLE `music_band` (
  `MB_ID` int(11) NOT NULL COMMENT 'PK music_band',
  `MB_NAME` varchar(100) NOT NULL COMMENT 'ชื่อวงดนตรี',
  `MT_ID` int(11) NOT NULL COMMENT 'FK music_TYPE',
  `MB_VOTE` int(11) NOT NULL DEFAULT 0 COMMENT 'ผลโหวต',
  `MB_IMAGE` varchar(100) NOT NULL COMMENT 'ชื่อรูปภาพวงดนตรี',
  `MB_DETAILS` text NOT NULL COMMENT 'รายละเอียดวงดนตรี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='ตาราง ข้อมูลวงดนตรี';

--
-- Dumping data for table `music_band`
--

INSERT INTO `music_band` (`MB_ID`, `MB_NAME`, `MT_ID`, `MB_VOTE`, `MB_IMAGE`, `MB_DETAILS`) VALUES
(1, 'Justin Bieber', 3, 0, 'Justin Bieber.jpg', 'Justin Drew Bieber (/biːbər/ BEE-bər; born March 1, 1994)[1][2] is a Canadian singer. Bieber is recognized for his genre-melding musicianship and has played an influential role in modern-day popular music.[3] He was discovered by American record executive Scooter Braun and signed with RBMG Records in 2008, gaining recognition with the release of his debut seven-track EP My World (2009) and soon establishing himself as a teen idol.'),
(2, 'มนต์แคน แก่นคูน', 2, 0, 'มนต์แคน แก่นคูน.webp', 'มนต์แคน แก่นคูน มีชื่อจริงว่า สิบเอก กิตติคุณ บุญค้ำจุน (ชื่อเดิม เพชรพร บุญค้ำจุน) เกิดเมื่อวันอาทิตย์ที่ 20 กรกฎาคม 2516 ที่บ้านม่วงกาชัง ตำบลสวาท อำเภอเลิงนกทา จังหวัดยโสธร จบการศึกษาชั้นประถมศึกษาจากโรงเรียนบ้านม่วงกาชัง และระดับมัธยมศึกษาตอนต้นจากโรงเรียนเลิงนกทา ในวัยเด็กนั้น มนต์แคน ไม่เคยคิดว่าจะได้มาเป็นนักร้องที่มีชื่อเสียงอย่างทุกวันนี้ แต่เขาได้ซึมซับการร้องเพลงมาจาก \"พ่อทองคำ\" พ่อแท้ ๆ ที่เป็นหมอลำกลอนคู่'),
(3, 'BLACKPINK', 4, 0, 'Blackpink.jpg', 'Blackpink (Korean: 블랙핑크; RR: Beullaekpingkeu, commonly stylized in all caps or as BLɅϽKPIИK) is a South Korean girl group formed by YG Entertainment, consisting of members Jisoo, Jennie, Rosé, and Lisa. The group debuted in August 2016 with their single album Square One, which featured \"Whistle\" and \"Boombayah\", their first number-one entries on South Korea\'s Gaon Digital Chart and the US Billboard World Digital Song Sales chart, respectively.'),
(4, 'โจอี้ ภูวศิษฐ์', 2, 0, 'โจอี้ ภูวศิษฐ์.jpg', 'โจอี้ ภูวศิษฐ์ JOEY PHUWASIT หรือ โจอี้ ภูวศิษฐ์ อนันต์พรสิริ หนุ่มร็อกเสียงดี สายเลือดอีสานข้น ๆ จาก เมืองร้อยเอ็ด ที่ฝันอยากเป็นนักร้องตั้งแต่เด็ก ๆ ทำให้ตลอดระยะเวลาแห่งการเดินทางสู่ความฝันของเขามุ่งมั่นไม่เคยยอมแพ้ \"โจอี้\" จบการศึกษาจาก ม.ราชภัฎร้อยเอ็ด สาขาดนตรีไทย ทำให้สามารถเล่นเครื่องดนตรีได้อย่างชำนาญคือ กีตาร์ และ พิณ เป็นคนขี้อาย อารมณ์ดี และมองโลกในแง่บวกเสมอ โดยเปิดตัวด้วย \"ดวงเดือน\" เพลงแรกในฐานะศิลปินเดี่ยวค่าย Genie Records ล่าสุด เพลง \"นะหน้าทอง\" เพลงใหม่ ยอดวิวทะลุ 10 ล้านวิว และมาแรงอันดับ 1 หมวดเพลง ใน Youtube'),
(5, 'Tilly Birds (ทิลลี่เบิร์ด)', 1, 0, 'Tilly Birds (ทิลลี่เบิร์ด).jpg', 'ทิลลี่เบิร์ด หรือ ทิลลี่เบิร์ดส (อังกฤษ: Tilly Birds) เป็นวงดนตรีอัลเทอร์เนทีฟร็อก จากกรุงเทพมหานคร ภายใต้สังกัด ยีนแลป ในเครือจีเอ็มเอ็ม แกรมมี่ เป็นที่รู้จักจากเพลง \"คิดแต่ไม่ถึง\" \"เพื่อนเล่น ไม่เล่นเพื่อน\" และ \"ถ้าเราเจอกันอีก\"'),
(6, 'Taylor Swift', 3, 0, 'Taylor Swift.webp', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Her discography spans multiple genres, and her songwriting—often inspired by her personal life—has received critical praise and wide media coverage. Born in West Reading, Pennsylvania, Swift moved to Nashville at age 14 to become a country artist. She signed a songwriting deal with Sony/ATV Music Publishing in 2004 and a recording contract with Big Machine Records in 2005. Her 2006 self-titled debut album made her the first female country singer to write or co-write a U.S. platinum-certified album entirely.\r\n\r\n'),
(7, 'มีนตรา อินทิรา', 2, 0, 'มีนตรา อินทิรา.jpg', 'มีนตรา อินทิรา มีชื่อจริงว่า อินทิรา โมราเลส ชื่อเล่น มีนตรา เกิดเมื่อวันที่ 19 พฤศจิกายน 2539 ที่จังหวัดอุดรธานี มีนตรา เริ่มต้นเส้นทางการเป็นนักร้องจากการเข้าประกวด คว้าไมค์คว้าแชมป์ ปี 3 เมื่อตอนอายุ 15 ปี และได้รางวัลชนะเลิศ Champ Of The Year และทำให้เธอได้เซ็นสัญญาเป็นศิลปินสังกัด Grammy Gold เป็นระยะเวลา 1 ปี ต่อมา หลังจากที่เธอหมดสัญญา ในปี 2558 เธอก็ได้เข้าร่วมแข่งขันในรายการเวที The Voice Thailand Season 4 ทีมโค้ชโจอี้บอย และได้เข้าไปถึงรอบ Knock Out หลังจากนั้นก็เข้าแข่งขันในรายการ สมรภูมิชิงเพลง และสามารถโค่นบัลลังก์ศิลปินต้นฉบับอย่าง เต๋า ภูศิลป์ ได้ ในเพลง ความคึดฮอดบ่เคยพาไผกลับมา และได้มาเป็นนักร้องและออกอัลบั้มในสังกัด Grammy Gold และมีเพลงฮิตติดชาร์ตมาแล้วหลายเพลง'),
(8, 'Three Man Down', 1, 0, 'Three Man Down.jpg', 'ทรีแมนดาวน์เริ่มต้นจากกิตที่กำลังเข้าเรียนมหาวิทยาลัย แล้วเขาต้องการทำวงดนตรีก็เลยหาเพื่อนมารวมวง จนมาเจอกับเตเข้าจึงตกลงทำวงด้วยกัน แล้วเตก็ชวนตูนและโอม เพื่อนของเขามาเป็นสมาชิกด้วย โดยแรกเริ่มวงเป็นวงร็อก โดยชื่อทรีแมนดาวน์นั้นมาจากการที่สมาชิกวงทรีแมนดาวน์เคยมีวงสมัยมัธยมกัน 3 วง แล้ววงก็ยุบไปเมื่อขึ้นมหาวิทยาลัย ทรีแมนดาว์นก็เหมือน 3 คนที่ตายไปแล้วนั่นเอง'),
(9, '4EVE (โฟร์อีฟ)', 1, 0, '4EVE (โฟร์อีฟ).jpg', 'โฟร์อีฟ (อังกฤษ: 4EVE) เป็นเกิร์ลกรุปสัญชาติไทย และเป็นศิลปินกลุ่มแรกในสังกัดเอ็กซ์โอเอ็กซ์โอเอนเตอร์เทนเมนต์ ในเครือเวิร์คพอยท์ เอ็นเทอร์เทนเมนท์ สมาชิกภายในวงเป็นผู้ชนะจากรายการ โฟร์อีฟเกิร์ลกรุปสตาร์ ซึ่งเป็นรายการค้นหาศิลปินหญิง ประกอบด้วยสมาชิกจำนวนเจ็ดคนคือ มายด์, โจริญ, ตาออม, แฮนน่า, ฝ้าย, พั้นช์ และอ๊ะอาย เปิดตัวอย่างเป็นทางการด้วยซิงเกิลแรกคือ อูห์ลาล่า! (Oohlala!) เมื่อวันที่ 23 ธันวาคม พ.ศ. 2563 และมีอัลบั้มแรกคือ เดอะเฟิสต์อัลบั้ม (The First Album) เพลงวัดป่ะหล่ะ? ขึ้น 10 อันดับแรกของ Spotify Thailand Charts'),
(10, 'GOT7', 4, 0, 'GOT7.webp', 'ก็อตเซเวน (อังกฤษ: GOT7; เกาหลี: 갓세븐) เป็นบอยแบนด์เกาหลีใต้ ก่อตั้งโดยเจวายพีเอนเตอร์เทนเมนต์ ประกอบด้วยสมาชิกจำนวนเจ็ดคนคือ เจบี, มาร์ก, แจ็กสัน, จินย็อง, ย็องแจ, แบมแบม และยูกย็อม เปิดตัวครั้งแรกในวันที่ 16 มกราคม 2014 กับอีพีชื่อ Got it ? ซึ่งขึ้นสูงสุดที่อันดับที่ 2 บนแกออนอัลบั้มชาร์ต และอันดับที่ 1 บนชาร์ต บิลบอร์ด เวิลด์อัลบั้มชาร์ต กลุ่มได้รับความสนใจจากการแสดงบนเวทีของพวกเขา ซึ่งรวมถึงองค์ประกอบศิลปะการต่อสู้แบบทริกกิง (martial arts tricking) ปัจจุบันตัววง GOT7 ได้อยู่ในการดูแลของ Warner Music Korea โดยที่สมาชิกแต่ละคนอยู่ต่างสังกัดกัน'),
(11, 'PiXXiE', 1, 0, 'PiXXiE.jpg', 'PiXXiE ประกอบไปด้วย 3 สาว 3 สไตล์ เบล–สุชาดา สอนพันธ์, พิมมา–พิมพ์มาดา ใจสักเสริญ และ อิงโกะ–อินท์ปาลี โชติหิรัญธนนนท์ ที่บอกได้เลยว่าพกพาความสามารถทั้งร้องเเละเต้นมาแบบเต็มที่ ทั้งสวย ใส ซน เท่ เเละน่ารัก'),
(12, 'OneRepublic', 3, 0, 'OneRepublic.jpg', 'วันรีพับลิก (อังกฤษ: OneRepublic) เป็นวงดนตรีแนวป็อปร็อกชาวอเมริกันมาจากโคโลราโดสปริงส์ รัฐโคโลราโด ก่อตั้งในปี ค.ศ. 2003 โดยไรอัน เท็ดเดอร์ และแซ็ก ฟิลคินส์ วงประสบความสำเร็จผ่านทางมายสเปซตั้งแต่ยังไม่เซ็นสัญญากับค่ายเพลงใด ๆ จนกระทั่งในปี ค.ศ. 2003 วงได้พบกับนักแสดงจากฮอลลีวูด เคลลี แบร์เร็ตต์ เธอโทรศัพท์ไปยังตัวแทนฝ่ายคัดสรรและพัฒนาศิลปิน เพื่อติดต่อลูกพี่ลูกน้อง จิมมี เอียนเนอร์ และดอนนี เอียนเนอร์ ซึ่งเป็นประธานบริษัทโซนีในขณะนั้น ให้มาชมการแสดงของวง พวกเขาเซ็นสัญญากับค่ายเพลงโซนี บีเอ็มจี เป็นเวลาสามปี ก่อนย้ายไปอยู่ค่ายมอสลีย์มิวสิกกรุ๊ป'),
(13, 'BTS', 4, 0, 'BTS.jpg', 'BTS หรือชื่อเต็ม ๆ คือ Bangtans Boy (บังทัน บอยส์) หรือ บังทันโซยอนดัน ในภาษาเกาหลี มีความหมายว่า Bulletproof Boy Scouts (เด็กผู้ชายในเกราะกันกระสุน, เหล่าเด็กชายผู้กีดขวางการกดขี่และการมีอคติ) และต่อมาได้มีการปรับเปลี่ยนความหมายของชื่อเป็น Beyond the Scene ซึ่งแปลว่า วัยรุ่นผู้พัฒนาสู่ความใฝ่ฝันอย่างไม่หยุดยั้งและไม่ยึดติดกับสถานภาพปัจจุบัน\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `music_type`
--

CREATE TABLE `music_type` (
  `MT_ID` int(11) NOT NULL COMMENT 'PK music_type',
  `MT_NAME` varchar(100) NOT NULL COMMENT 'ชื่อประเภทเพลง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='ตาราง ข้อมูลประเภทเพลง';

--
-- Dumping data for table `music_type`
--

INSERT INTO `music_type` (`MT_ID`, `MT_NAME`) VALUES
(1, 'ไทย'),
(2, 'ไทยลูกทุ่ง'),
(3, 'สากล'),
(4, 'เกาหลี');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music_band`
--
ALTER TABLE `music_band`
  ADD PRIMARY KEY (`MB_ID`),
  ADD KEY `FK` (`MT_ID`);

--
-- Indexes for table `music_type`
--
ALTER TABLE `music_type`
  ADD PRIMARY KEY (`MT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music_band`
--
ALTER TABLE `music_band`
  MODIFY `MB_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK music_band', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `music_type`
--
ALTER TABLE `music_type`
  MODIFY `MT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK music_type', AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `music_band`
--
ALTER TABLE `music_band`
  ADD CONSTRAINT `FK` FOREIGN KEY (`MT_ID`) REFERENCES `music_type` (`MT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
