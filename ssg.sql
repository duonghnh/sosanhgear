-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 08, 2018 lúc 01:33 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ssg`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `ID` int(11) NOT NULL,
  `Content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`ID`, `Name`) VALUES
(1, 'chuột'),
(2, 'ghế'),
(3, 'keyboard'),
(4, 'loa'),
(5, 'lưu trữ'),
(6, 'phone'),
(7, 'sạc'),
(8, 'tai nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh`
--

CREATE TABLE `hinh` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh`
--

INSERT INTO `hinh` (`id`, `ten`, `chu`) VALUES
(1, 'ghe.png', 'ghế'),
(2, 'Keyboard.png', 'Keyboard'),
(3, 'Loa.png', 'Loa'),
(4, 'Chuot.png', 'Chuột'),
(5, 'Luutru.png', 'Lưu trữ'),
(6, 'Sac.png', 'Sạc'),
(7, 'Phone.png', 'Phone'),
(8, 'Tainghe.png', 'Tai Nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `marketplace`
--

CREATE TABLE `marketplace` (
  `ID` int(255) NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LogoURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `marketplace`
--

INSERT INTO `marketplace` (`ID`, `Name`, `URL`, `LogoURL`) VALUES
(1, 'Shopee', 'https://shopee.vn/', 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Shopee-logo.jpg'),
(2, 'Lazada', 'https://lazada.vn/', 'http://mobile.aztech.com.vn/wp-content/uploads/2016/10/Logo_Lazada.jpg'),
(3, 'Tiki', 'https://tiki.vn/', 'https://cdn.itviec.com/employers/tiki-corporation/logo/social/DYAgHtdpQFHCtozRjPtxzpNs/tiki-corporation-logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Category` int(100) NOT NULL,
  `ImageURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ProductURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Marketplace` int(100) NOT NULL,
  `Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `Name`, `Category`, `ImageURL`, `ProductURL`, `Marketplace`, `Price`) VALUES
(1, 'Chuột máy tính Xiaomi mi Portable ', 1, 'https://img.sosanhgia.com/images/500x0/f9b2f1d333b844c88817d62ec20cc343/chuot-xiaomi-mi-portable.jpeg', 'https://shopee.vn/p-i.14734167.1051907273?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=1023e4040a89ecfb46ce58e67d59a6', 1, 229000),
(2, 'Chuột máy tính Fuhlen G90 Gaming', 1, 'https://img.sosanhgia.com/images/500x0/5f77ab55d7b74a458eff57670ab6f30c/chuot-fuhlen-g90-gaming.jpeg', 'https://shopee.vn/p-i.44227806.1636567368?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=10280fc25990d320ba401cb241371b', 1, 280000),
(3, 'Chuột máy tính Logitech M557', 1, 'https://img.sosanhgia.com/images/500x0/211447f1fcec4585b3db03c35bfbeafb/chuot-logitech-m557.jpeg', 'https://www.lazada.vn/products/chuot-bluetooth-logitech-m557-trang-tang-mieng-lot-chuot-hang-phan-phoi-chinh-thuc-i200056955-s250071530.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5u7raf1ctufn1r2kquq', 2, 550000),
(4, 'Chuột máy tính Newmen N500', 1, 'https://img.sosanhgia.com/images/500x0/6150262667e649068f9d1d7796dada0f/chuot-newmen-n500.jpeg', 'https://www.lazada.vn/products/chuot-co-day-newmen-n500-plus-gaming-i240610109-s307669199.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5u7raf1ctufp8n6ks15', 3, 179000),
(5, 'Chuột máy tính không dây NX-7015', 1, 'https://img.sosanhgia.com/images/500x0/a1ef7198916a4545b3f980e5e35b99b1/chuot-genius-nx-7015.jpeg', 'https://tiki.vn/chuot-khong-day-genius-nx-7015-p162894.html?spid=1016068&utm_source=accesstrade&aff_sid=EepYuKYtiMIikXTaR1bIr9PQPKO42DxQh3cap5sqRgGWiobi', 3, 149000),
(6, 'Chuột máy tính AZZOR EAGLE', 1, 'https://img.sosanhgia.com/images/500x0/f1b4dec5210d49eaa5c3179220638c99/chuot-azzor-eagle.jpg', 'https://tiki.vn/chuot-choi-game-khong-day-azzor-eagle-2400dpi-6-phim-hang-nhap-khau-p647001.html?spid=5723193&utm_source=accesstrade&aff_sid=fghHuc1Rl3UZNJNORyJ15LKNJrdiIMaPiyjj5sR7UveJ7eE3', 3, 138000),
(7, 'Ghế gamer Noblechairs EPIC Series', 2, 'https://img.sosanhgia.com/images/500x0/7abed0e665a747509e7e6a6e0715b699/ghe-gamer-noblechairs-epic-series.jpeg', 'https://tiki.vn/ghe-choi-game-noblechairs-epic-series-hang-chinh-hang-p1695651.html?spid=7299357&utm_source=accesstrade&aff_sid=Tdeli6lS3cT8Vppeqkz327Vkp2IkPVWx5dqCMlyHSWAE0cOk', 3, 11000000),
(8, 'Ghế Gamer Noblechairs ICON Series', 2, 'https://img.sosanhgia.com/images/500x0/3b602456dcf043579ed5483d1b5a0e54/ghe-gamer-noblechairs-icon-series.jpeg', 'https://tiki.vn/ghe-choi-game-noblechairs-icon-series-hang-chinh-hang-p1695633.html?spid=7299413&utm_source=accesstrade&aff_sid=D4zj5Ly989Insjz1tsdy58xS5ocNZ6cY6rvidete3UVtRnk5', 3, 12500000),
(9, 'Ghế gamer Extreme Zero', 2, 'https://img.sosanhgia.com/images/500x0/2f3327f621e143a198b8a0eb4e794951/ghe-gamer-extreme-zero.jpeg', 'https://shopee.vn/p-i.69550706.1279544560?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=1022bc93144b3c78faec38fa03cb2e', 1, 2400000),
(10, 'Ghế gamer Soloseat V6 L03', 2, 'https://img.sosanhgia.com/images/500x0/284b9f1aa67a40be9bb18667d9b08222/ghe-gamer-soleseat-v6-l03.jpeg', 'https://www.lazada.vn/products/ghe-game-soleseat-v6-l03-i246694425-s317633337.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5u7raf1ctuec7ahk4ms', 2, 6000000),
(11, 'Ghế gamer DXRacer KING SERIE K06', 2, 'https://img.sosanhgia.com/images/500x0/779891c3f7da4fcfb52a1d7c51cd3908/ghe-gamer-dxracer-king-series-k06.jpeg', 'https://www.lazada.vn/products/dxracer-gaming-chair-king-series-gc-k06-nw-s3-i153602703-s162764481.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5gro8u1ctue8idkjrte', 2, 8500000),
(12, 'Ghế Gamer NobleChairs ICON REAL LEATHER ', 2, 'https://img.sosanhgia.com/images/500x0/a71aaef505124cd2b6bf92668f84f76b/ghe-gamer-noblechairs-icon-real-leather.jpeg', 'https://tiki.vn/ghe-choi-game-noblechairs-icon-real-leather-hang-chinh-hang-p3072989.html?spid=3793301&utm_source=accesstrade&aff_sid=VEhu2Ivsck4gPzQ5xd6jb4Ef07TNP9WCgC8jjddCbp831LzO', 3, 20000000),
(13, 'Bàn phím Rapoo NK2500', 3, 'https://img.sosanhgia.com/images/500x0/141ada5f897c4814aca8504400983cbe/ban-phim-rapoo-nk2500.jpg', 'https://shopee.vn/p-i.7802544.405982398?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=102dea85b41d9e9ad0f976660a2c7e', 1, 95000),
(14, 'Bàn phím Boston MK917', 3, 'https://img.sosanhgia.com/images/500x0/05bf66dc53c84ee3a6023e9ea61d518a/ban-phim-bosston-mk917.jpg', 'https://shopee.vn/p-i.25681154.973398905?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=102ebc2b505a03492c974a5416278f', 1, 425000),
(15, 'Bàn phím Vision G9', 3, 'https://img.sosanhgia.com/images/500x0/1bd9ab27e124479f93e5896ae40cef1d/ban-phim-vision-g9.jpg', 'https://www.lazada.vn/products/ban-phim-may-tinh-vision-g9-bam-cuc-em-chu-khac-lazer-hang-bh-12-thang-i248289925-s324576417.html?la6z_trackid=2:mm_150021311_51103013_2010103007:clk5u7raf1ctuemregkadi', 2, 104000),
(16, 'Bàn phím Newmen E340', 3, 'https://img.sosanhgia.com/images/500x0/706de2d60ca94691936fad80ee90765d/ban-phim-motospeed-k68.jpeg', 'https://tiki.vn/ban-phim-newmen-e340-p1264453.html?spid=7433709&utm_source=accesstrade&aff_sid=nNsDg5kegcDCrJ2PyKb4IEqBYZVb4MXdVGBVRj2zbQ0bP87o', 3, 165000),
(17, 'Bàn phím E-Blue EKM075', 3, 'https://img.sosanhgia.com/images/500x0/7b4c582c94f546878c5d25c3b25863a9/ban-phim-e-blue-ekm046.jpg', 'https://www.lazada.vn/products/ban-phim-choi-game-e-blue-ekm075-i160836023-s174470051.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5h35dn1ctuf1pstk88r', 2, 205000),
(18, 'Bàn phím số R81810', 3, 'https://img.sosanhgia.com/images/500x0/819acc5f7ba949ccbb2a695cdbfeb233/ban-phim-so-r8-1810.jpeg', 'https://tiki.vn/ban-phim-led-gia-co-bosston-k330-den-hang-chinh-hang-p2883903.html?spid=2891237&utm_source=accesstrade&aff_sid=T5lDMDO66K3Xn5tm7z9UN2wGQpkyyU0RAA7keLxzI7dtQqEZ', 3, 179000),
(19, 'Loa Bluetooth Suntek S2025', 4, 'https://img.sosanhgia.com/images/500x0/ff48a07ee9c24911a5bd73a750063a17/loa-bluetooth-suntek-s2025.jpg', 'https://www.lazada.vn/products/loa-bluetooth-cao-cap-s2025-usb-the-nho-aux-den-i142936683-s147661104.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5guink1ctst3rse72ai', 2, 170000),
(20, 'Loa Bluetooth Sony SRS-XB10', 4, 'https://img.sosanhgia.com/images/500x0/73e48c70d00347a2afa41c43f26828ca/loa-di-dong-bluetooth-sony-srs-xb10.jpg', 'https://www.lazada.vn/products/loa-di-dong-sony-extra-bass-bluetooth-srs-xb10-hang-nhap-khau-i133372576-s134405689.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5gro8t1ctst44bf724j', 2, 1000000),
(21, 'Loa Sony SRS-XB21', 4, 'https://img.sosanhgia.com/images/500x0/4ec1162b929c4c919e23ef95eaed7c18/loa-di-dong-sony-srs-xb21.jpeg', 'https://www.lazada.vn/products/loa-di-dong-bluetooth-sony-xb21-hang-nhap-khau-i244576412-s313473683.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5gro8t1ctstkthh798o', 2, 1700000),
(22, 'Loa JBL Xtreme', 4, 'https://img.sosanhgia.com/images/500x0/98b144e3e958454ba816b04eaee629f9/loa-jbl-xtreme.jpeg', 'https://tiki.vn/loa-bluetooth-jbl-xtreme-p170684.html?spid=170689&utm_source=accesstrade&aff_sid=Lq4evcx5udsrjLHq1B4hpCelsBDUtfLitwJk2a5aBqXt2zLF', 3, 4000000),
(23, 'Loa di động JBL Go 2 ', 4, 'https://img.sosanhgia.com/images/500x0/6dd5d2c9dab548cda4e6f66014e402c9/loa-di-dong-bluetooth-jbl-go-2.jpeg', 'https://shopee.vn/p-i.19414087.1332038240?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=1021075a81ae81e892886b3e20090a', 1, 855000),
(24, 'Loa di động T2020', 4, 'https://img.sosanhgia.com/images/500x0/073b51fd1d2e498e9b63e3c6df67fd26/loa-di-dong-t2020.jpeg', 'https://shopee.vn/p-i.78095.1248786120?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=1026ad6cdecb31485032e8fde740c2', 1, 95000),
(25, 'Ram KINGSTON 4GB DDR3 ', 5, 'https://img.sosanhgia.com/images/500x0/8fbcfbce629a4db6a9bc8a4ef1179528/ram-kingston-4gb-ddr4-bus-2400mhz-non-ecc-kvr24n17s8/4.jpg', 'https://www.lazada.vn/products/ram-laptop-kingston-4g-pc3l-bus-1600mhz-hang-chinh-hang-i231764037-s294249507.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5h34e81ctssrnir6uvq', 2, 800000),
(26, 'Ram KINGMAX 4GB DDR4', 5, 'https://www.sosanhgia.com/p41965-ram-kingmax-4gb-ddr4-bus-2400.html', 'https://www.lazada.vn/products/ram-kingmax-ddr4-2400mhz-4gb-pc-memory-hang-phan-phoi-chinh-thuc-i206246499-s256644501.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5guink1ctssmh2p6sib', 2, 850000),
(27, 'Ổ cứng SDD Kingston 120GB', 5, 'https://img.sosanhgia.com/images/500x0/210f829545be4b499d8d824f754e89d8/o-cung-ssd-kingston-120gb-a400-sata-3-(sa400s37/120g).jpeg', 'https://shopee.vn/p-i.52797090.1028665464?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=10235477ad337665485d95d5144e39', 1, 520000),
(28, 'Ổ cứng SDD Western Digital 1TB', 5, 'https://img.sosanhgia.com/images/500x0/fa1d67a8262c4086a6a7f38a059e5ac4/o-cung-hdd-western-digital-1tb-blue-35-sata-3.jpeg', 'https://shopee.vn/p-i.10973.1129298713?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=1023e09aa422c6d0b19963cc1bb7ae', 1, 945000),
(29, 'USB Kingston 32GB DTSE9', 5, 'https://img.sosanhgia.com/images/500x0/e8e8aec32b2646ed994d5c96e5f2e31d/usb-kingston-32gb-dtse9.jpeg', 'https://tiki.vn/usb-kingston-dtse9g2-32gb-usb-3-0-p455622.html?spid=3253513&utm_source=accesstrade&aff_sid=wl5zm887KM2qb03WwIvCktJY0aTGfW3c38yF25qAyXl6ThHV', 3, 85000),
(30, 'USB Wifi TP-LINK TL-WN821N', 5, 'https://img.sosanhgia.com/images/500x0/3fe4588239a242b299e406170b0701fa/usb-wifi-tp-link-tl-wn821n.jpeg', 'https://tiki.vn/tp-link-tl-wn821n-usb-wifi-chuan-n-toc-do-300mbps-p416914.html?spid=993534&utm_source=accesstrade&aff_sid=zWBRaY3Bx34L394lxKlyrciggH7IkCGIi6OjrjyhQH9WxGZ3', 3, 155000),
(31, 'Iphone Xs Max 256GB', 6, 'https://img.sosanhgia.com/images/500x0/f306c1ad8de1414699e028868b0b489b/apple-iphone-xs-max-256gb.jpeg', 'https://tiki.vn/dien-thoai-iphone-xs-max-256gb-nhap-khau-chinh-hang-p4539483.html?spid=4540137&utm_source=accesstrade&aff_sid=E6BsXbF1esE978BF8US5AqFC3ZE29qKAmI7v2HEGBzIYJCYV', 3, 30000000),
(32, 'Samsung Galaxy Note 9 128GB', 6, 'https://img.sosanhgia.com/images/500x0/e1531ecf3dd449d5bc83671a6e642919/samsung-galaxy-note-9-128gb/6gb.jpeg', 'https://www.lazada.vn/products/samsung-galaxy-note-9-128gb-mau-tim-hang-nhap-khau-i244377109-s313108985.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5h34e81ctsufkr47kbu', 2, 15000000),
(33, 'Iphone 8 Plus 64GB', 6, 'https://img.sosanhgia.com/images/500x0/580e427b1bd24300a3f574d6301c3b0e/iphone-8-plus-64gb.jpg', 'https://tiki.vn/dien-thoai-iphone-8-plus-64gb-nhap-khau-chinh-hang-p938174.html?spid=943048&utm_source=accesstrade&aff_sid=ErzMB9gwCw1xAtJIcJiAVovd15yBrlnydtVJmUzGRtkQJoHT', 3, 15000000),
(34, 'Xiaomi Redmi 6A 16GB', 6, 'https://img.sosanhgia.com/images/500x0/a6602e28f65c4481888044793c3c45ae/xiaomi-redmi-6a-16gb/2gb.jpeg', 'https://www.lazada.vn/products/xiaomi-redmi-6a-16gb-ram-2gb-xanh-hang-nhap-khau-i223486411-s281589127.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5ob2b21ctsumrdc7dtc', 3, 1800000),
(35, 'Samsung Galaxy S8 ', 6, 'https://img.sosanhgia.com/images/500x0/575403e1439d493ebc2b5bb038994cbe/samsung-galaxy-s8.jpeg', 'https://www.lazada.vn/products/samsung-galaxy-s8-64gb-den-hang-nhap-khau-tang-dan-man-hinh-va-op-silicon-i200033400-s250036681.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5ob2b21ctsv0tu07hkf', 2, 8300000),
(36, 'Samsung Galaxy J4', 6, 'https://img.sosanhgia.com/images/500x0/7d45bbfda39b46b5901a8f98d228aa18/samsung-galaxy-j4.jpeg', 'https://shopee.vn/p-i.74089654.1257023457?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=10281ec390f98aecd4f7158daf76f8', 1, 4000000),
(37, 'Sạc dự phòng Xiaomi Gen 2S ', 7, 'https://img.sosanhgia.com/images/500x0/ee53807bcdd34a8ab779ab44a515bb27/sac-du-phong-xiaomi-10000mah-gen-2/2s-(2018).jpeg', 'https://shopee.vn/p-i.49370068.819683268?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=1028ccd7930cf76ad7b2384bf35c68', 1, 240000),
(38, 'Sạc dự phòng QI 10000mAh', 7, 'https://img.sosanhgia.com/images/500x0/6e66f4758a564b99a79ab30f72d07b5f/sac-du-phong-qi-10000mah.jpeg', 'https://www.lazada.vn/products/sac-khong-day-chuan-qi-kiem-pin-du-phong-10000-mah-cho-cac-dong-smartphone-iphone-8-iphone-x-samsung-note8-hang-nhap-khau-at-i156209196-s166327490.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5h35dn1ctudbg97jbdo', 2, 185000),
(39, 'Sạc dự phòng Xiaomi 20000mAh', 7, 'https://img.sosanhgia.com/images/500x0/cd60c8c54dbf4fdbbb56f8c7f68cce3c/sac-du-phong-xiaomi-20000mah.jpg', 'https://shopee.vn/p-i.49370068.1495444090?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=102e8c7a46969b021c42bb8fc8d0dc', 1, 400000),
(40, 'Sạc dự phòng ORICO LD100 10000mAh', 7, 'https://img.sosanhgia.com/images/500x0/b9daf9c4a1c044d79c5dab9f7d77281c/sac-du-phong-orico-ld100-10000mah.jpeg', 'https://www.lazada.vn/products/pin-sac-du-phong-10000mah-orico-ld100-i205935599-s256301946.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5guink1ctudh807jmrm', 2, 280000),
(41, 'Sạc dự phòng HOCO B21A 30000mAh', 7, 'https://img.sosanhgia.com/images/500x0/16428a9e75ba4779a288840745bc48b8/sac-du-phong-hoco-b31a-30000mah.jpeg', 'https://tiki.vn/pin-sac-du-phong-30-000-mah-hoco-b31a-hang-chinh-hang-p2356383.html?spid=2356387&utm_source=accesstrade&aff_sid=zDUZ4sQWvONTLVzFWQ8pfjGxDM73h8yntzDfvIiZw52OqQkW', 3, 400000),
(42, 'Sạc dự phòng Ego 6800mAh', 7, 'https://img.sosanhgia.com/images/500x0/9e6f8c7446214a82a1b67293f636524c/sac-du-phong-ego-6800mah.jpeg', 'https://www.lazada.vn/products/dock-sac-du-phong-da-nang-ego-chuan-wireless-qi-cong-micro-i217098628-s271992169.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5guink1ctudv9gmju8d', 2, 500000),
(43, 'Tai nghe Sony MDR-H600A', 8, 'https://img.sosanhgia.com/images/500x0/8c1ecacf3a7940c18ae54fd66979e15f/tai-nghe-sony-mdr-h600a.jpeg', 'https://tiki.vn/tai-nghe-chup-tai-sony-hi-res-mdr-h600a-hang-chinh-hang-p807965.html?spid=808727&utm_source=accesstrade&aff_sid=mHOhhKpA0jXhKopBNhaTQNWTy8cUlPoQvLWvAPdXAvFV7MjE', 3, 3190000),
(44, 'Tai nghe Sony WI-1000X', 8, 'https://img.sosanhgia.com/images/500x0/e08e222761e843b29467349ca57d46dd/tai-nghe-sony-wi-1000x.jpeg', 'https://www.lazada.vn/products/tai-nghe-khong-day-chong-on-sony-wi-1000x-den-i143109341-s147863423.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5gro8t1ctugm0jslb52', 2, 4990000),
(45, 'Tai nghe Sony MDR-1AM2', 8, 'https://img.sosanhgia.com/images/500x0/08f3801efd284ba185110adf1c713468/tai-nghe-sony-mdr-1am2.jpeg', 'https://www.lazada.vn/products/tai-nghe-hi-res-sony-mdr-1am2-hang-phan-phoi-i231779560-s294268126.html?laz_trackid=2:mm_150021311_51103013_2010103007:clk5ob2b21ctugn5nml3ep', 2, 6690000),
(46, 'Tai nghe Sony MH-EX300AP', 8, 'https://img.sosanhgia.com/images/500x0/243500344d034005ac4d4f7956e6f2ec/tai-nghe-sony-mh-ex300ap.jpg', 'https://shopee.vn/p-i.18113796.858966979?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=102a6e884b3e7dfcf2b614', 1, 129000),
(47, 'Tai nghe Sony SBH56', 8, 'https://img.sosanhgia.com/images/500x0/6d590d49b95e40f4bf752cb3a19e38ef/tai-nghe-bluetooth-sony-sbh56.jpeg', 'https://tiki.vn/tai-nghe-sony-bluetooth-stereo-sbh56-p6623165.html?spid=6623167&utm_source=accesstrade&aff_sid=XA7Y07VeHwp3c1NeBZSr7jdX9z3QiTlsvyWwrsA3BxFevaU0', 3, 1790000),
(48, 'Tai nghe chụp tai Sony XP450AP', 8, 'https://img.sosanhgia.com/images/500x0/00e9dc51fa4f455dafb20afd63d0e080/tai-nghe-chup-tai-sony-xp450ap.jpeg', 'https://shopee.vn/p-i.69550706.1291169172?utm_medium=affiliate&utm_source=KEYCAP&utm_content=1025&utm_campaign=10242204715000d964bbf650cd444d', 1, 94000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_article`
--

CREATE TABLE `product_article` (
  `ID_Product` int(255) NOT NULL,
  `ID_Article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hinh`
--
ALTER TABLE `hinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PRODUCT_fk0` (`Category`),
  ADD KEY `PRODUCT_fk1` (`Marketplace`);

--
-- Chỉ mục cho bảng `product_article`
--
ALTER TABLE `product_article`
  ADD PRIMARY KEY (`ID_Product`,`ID_Article`),
  ADD KEY `ID_Article` (`ID_Article`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hinh`
--
ALTER TABLE `hinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `PRODUCT_fk0` FOREIGN KEY (`Category`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `PRODUCT_fk1` FOREIGN KEY (`Marketplace`) REFERENCES `marketplace` (`ID`);

--
-- Các ràng buộc cho bảng `product_article`
--
ALTER TABLE `product_article`
  ADD CONSTRAINT `PRODUCT_ARTICLE_fk0` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`ID`),
  ADD CONSTRAINT `product_article_ibfk_1` FOREIGN KEY (`ID_Article`) REFERENCES `article` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
