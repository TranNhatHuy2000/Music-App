-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 29, 2020 lúc 04:22 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id10692690_mp3zing`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `idAlbum` int(11) NOT NULL,
  `TenAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenCaSiAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`idAlbum`, `TenAlbum`, `TenCaSiAlbum`, `HinhAlbum`) VALUES
(1, 'DreAMEE', 'AMEE', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/dreAMEE.jpg'),
(2, 'Xua đi huyền thoại', 'Hương Ngọc Vân', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/xuadihuyenthoai.jpg'),
(3, 'Vợ tuyệt vời nhất', 'Vũ Duy Khánh', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/votuyetvoinhat.jpg'),
(4, 'Mr.Siro-Piano version', 'Mr.Siro', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/MrSiroPiano.jpg'),
(5, 'Hẹn hò - Khúc tình xưa', 'Lệ Quyên', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/khuctinhxua5.jpg'),
(6, 'Cô bé ngày xưa', 'Hoài Lâm', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/cobengayxua.jpg'),
(7, 'Chàng trai năm ấy', 'Sơn Tùng - MTP', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Album/changtrainamay.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `idBaiHat` int(11) NOT NULL,
  `idAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idPlayList` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CaSi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LinkBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LuotThich` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`idBaiHat`, `idAlbum`, `idTheLoai`, `idPlayList`, `TenBaiHat`, `HinhBaiHat`, `CaSi`, `LinkBaiHat`, `LuotThich`) VALUES
(1, '1', '0', '0', 'Anh Nhà Ở Đâu Thế', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/anhnhaodauthe.jpg', 'AMEE', 'https://binbeo90.000webhostapp.com/Anh-Nha-O-Dau-The-Solo-Version-AMEE.mp3', 38),
(3, '0', '1', '0', 'Trái Tim Khắc Tên Anh Và Em (Cover)', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/traitimkahctenanhvaem.jpg', 'Dương Edward, Yanbi', 'https://binbeo90.000webhostapp.com/Trai-Tim-Khac-Ten-Anh-Va-Em-Cover-Duong-Edward-Yanbi.mp3', 2),
(4, '0', '0', '1', 'Hồng Nhan', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/hongnhan.jpg', 'Jack', 'https://binbeo90.000webhostapp.com/Hong-Nhan-Jack.mp3', 0),
(5, '0', '0', '0', 'nếu còn yêu', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/neuconyeu1.jpg', 'SG Prider', 'https://binbeo90.000webhostapp.com/Neu-Con-Yeu-SG-Prider-MAEKO-Pyshu.mp3', 16),
(6, '0', '27', '1', 'Bigcity Boy', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/bigcityboy.jpg', 'Binz', 'https://binbeo90.000webhostapp.com/Bigcityboi-Binz-Touliver.mp3', 73),
(7, '2', '16', '0', 'Căn nhà mong ước', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/cannhamonguoc.jpg', 'Hương Ngọc Vân', 'https://binbeo90.000webhostapp.com/Can-Nha-Mong-Uoc-Huong-Ngoc-Van.mp3', 15),
(8, '0', '27', '1,5', 'Đóa Quỳnh Lan', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/doaquynhlan.jpg', 'YuniBoo-H2K', 'https://binbeo90.000webhostapp.com/Doa-Quynh-Lan-YuniBoo-H2K.mp3', 27),
(9, '6', '0', '0', 'Gặp nhau làm ngơ', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/gapnhaulamngo.jpg', 'Hoài Lâm', 'https://binbeo90.000webhostapp.com/Gap-Nhau-Lam-Ngo-Hoai-Lam.mp3', 15),
(10, '7', '27,28', '5', 'Nắng ấm xa dần', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/nangamxadan.jpg', 'Sơn Tùng MTP', 'https://binbeo90.000webhostapp.com/Nang-Am-Xa-Dan-Son-Tung-M-TP.mp3', 50),
(11, '0', '40', '1', 'Người lạ ơi', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/nguoilaoi.jpg', 'Karik-Orange', 'https://binbeo90.000webhostapp.com/Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3', 2),
(12, '6', '0', '5', 'Nối lại tình xưa', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/noilaitinhxua.jpg', 'Hoài Lâm ', 'https://binbeo90.000webhostapp.com/Noi-Lai-Tinh-Xua-Hoai-Lam.mp3', 7),
(13, '6', '0', '0', 'Phố buồn', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/Phobuon.jpg', 'Hoài Lâm ', 'https://binbeo90.000webhostapp.com/Pho-Buon-Hoai-Lam.mp3', 4),
(14, '1', '35', '5', 'Trời giấu trời mang đi', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/troigiautroimangdi.jpg', 'AMEE', 'https://binbeo90.000webhostapp.com/Troi-Giau-Troi-Mang-Di-Solo-Version-AMEE.mp3', 54),
(15, '3', '33', '0', 'Vợ Yêu', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/votuyetvoinhat.jpg', 'Vũ Duy Khánh', 'https://binbeo90.000webhostapp.com/Vo-Tuyet-Voi-Nhat-Vu-Duy-Khanh.mp3', 44),
(16, '3', '36', '0', 'Vợ yêu', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/voyeu.jpg', 'Vũ Duy Khánh- Khắc Anh', 'https://binbeo90.000webhostapp.com/Vo-Yeu-Vu-Duy-Khanh-Khac-Anh.mp3', 19),
(17, '0', '16', '0', 'Xua đi huyền thoại', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/xuadihuyenthoai.jpg', 'Hương Ngọc Văn', 'https://binbeo90.000webhostapp.com/Xua-Di-Huyen-Thoai-Huong-Ngoc-Van.mp3', 49),
(18, '1', '27,28', '5', 'Yêu thì yêu Không yêu thì yêu', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/yeuthiyeukoyeuthiyeu.jpg', 'AMEE', 'https://binbeo90.000webhostapp.com/Yeu-Thi-Yeu-Khong-Yeu-Thi-Yeu-AMEE.mp3', 52),
(21, '5', '9', '3', 'Quên một người từng yêu', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/quenmotnguoitungyeu.jpg', 'Châu Khải Phong', 'https://trannhathuy18it3.000webhostapp.com/Nhac/Quen-Mot-Nguoi-Tung-Yeu-Chau-Khai-Phong.mp3', NULL),
(22, '7', '16', '4', 'Yêu em nhiều hơn mình', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/yeuemnhieuhonminh.jpg', 'K-ICM', 'https://trannhathuy18it3.000webhostapp.com/Nhac/Yeu-Em-Nhieu-Hon-Minh-K-ICM-Huyen-Tam-Mon.mp3', NULL),
(23, '3', '13', '1', 'Bin', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Baihat/background2.png', 'heo', 'https://trannhathuy18it3.000webhostapp.com/Nhac/Xua-Di-Huyen-Thoai-Huong-Ngoc-Van.mp3', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `idChuDe` int(11) NOT NULL,
  `TenChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`idChuDe`, `TenChuDe`, `HinhChuDe`) VALUES
(1, 'Acoustic', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/Acoustic.jpg'),
(2, 'Âu Mỹ', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/AuMy.jpg'),
(3, 'Cà Phê', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/CaPhe.jpg'),
(4, 'Nhạc Jazz', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/Jazz.jpg'),
(5, 'Nhạc Hàn', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/nhachan.jpg'),
(6, 'Nhạc Trịnh', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/NhacTrinh.jpg'),
(7, 'Nhạc R&B', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/R&B.jpg'),
(8, 'Rock', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/Rock.jpg'),
(9, 'Tình Yêu', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/tinhyeu.jpg'),
(10, 'Nhạc Chuông', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/ChuDe/NhacChuong.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `idPlayList` int(11) NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhNen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinhicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`idPlayList`, `Ten`, `HinhNen`, `Hinhicon`) VALUES
(1, 'Top 100 Nhạc Rap Việt Nam Hay Nhất', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/background100rap.jpg', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/100rap.jpg'),
(2, 'Top 100 Nhạc EDM Việt Hay Nhất', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/BG100edm.jpg', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/100edm.jpg'),
(3, 'Nhạc Hoa Bất Hủ', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/BGnhachoa.jpg', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/nhachoa.jpg'),
(4, 'Top 100 nhac Country', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/BGcountry.jpg', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/100country.jpg'),
(5, 'Nhạc trẻ hay nhất hiện nay', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/BG100nhactre.jpg', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/100nhactre.jpg'),
(6, 'Top 100 nhạc Trịnh Công Sơn', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/BG100nhactrinh.jpg', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/Playlist/100nhactrinh.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(11) NOT NULL,
  `Hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idbaihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `Hinhanh`, `Noidung`, `idbaihat`) VALUES
(1, 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/quangcao/neuconyeu.jpg', 'Bài hát lãng mạng mới nhất của SG Prider gửi đến các bạn', 5),
(2, 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/quangcao/quenmotnguoitungyeu.jpg', 'Bảng tình ca mang màu nhạc buồn trong tình yêu !!!', 21),
(3, 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/quangcao/yeuemnhieuhonminh.jpg', 'Ca khúc mới nhất của ca sĩ K-icm gửi đến các bạn ', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTheLoai` int(11) NOT NULL,
  `idChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTheLoai`, `idChuDe`, `TenTheLoai`, `HinhTheLoai`) VALUES
(1, '1', 'Acoustic 50: Zing Choice', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/zingchoice.jpg'),
(2, '1', 'Acooustic EDM', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/acousticedm.jpg'),
(3, '1', 'Acoustic Relax', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/acousticrelax.jpg'),
(4, '1', 'Sài Gòn Acoustic và mưa', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/SaigonAcousticvamua.jpg'),
(5, '2', 'Nhạc Country nổi bật 2020', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/USUKconntry.jpg'),
(6, '2', 'Nhạc EDM nổi bật 2020', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/USUKedm.jpg'),
(7, '2', 'Nhạc Latin nổi bật 2020', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/USUKlatin.jpg'),
(8, '2', 'Nhạc US-UK nghe nhiều nhất', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/USUKnghenhieu.jpg'),
(9, '3', 'Coffe & Chill', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/coffechill.jpg'),
(10, '3', 'Coffe & Jazz', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/coffejazz.jpg'),
(11, '3', 'Cofffe & Piano', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/coffepiano.jpg'),
(12, '3', 'You,Me and Coffe', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/youmecoffee.jpg'),
(13, '4', 'Jazz Classic', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/JazzClassic.jpg'),
(14, '4', 'Jazz Legends', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/JazzLegends.jpg'),
(15, '4', 'Jazz Pop', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/JazzPop.jpg'),
(16, '4', 'Jazz Việt', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/Jazzviet.jpg'),
(17, '5', 'K-POP Collab US-Uk', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/KpopCollab_usuk.jpg'),
(18, '5', 'K-POP Dance', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/KpopDance.jpg'),
(19, '5', 'K-POP Hits!', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/KpopHits.jpg'),
(20, '5', 'K-POP Nhạc mới Nổi Bật', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/KpopNoibat.jpg'),
(21, '6', 'Mãi mãi Trịnh Công Sơn', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/MaimaiTrinhCongSon.jpg'),
(22, '6', 'Khánh Ly Hát Trịnh', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacTinh_KhanhLy.jpg'),
(23, '6', 'Hồng Nhung Hát Trịnh', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacTrinh_HongNhung.jpg'),
(24, '6', 'Quang Dũng Hát Trịnh', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacTrinh_QuangDung.jpg'),
(25, '7', 'R&B Hàn', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/R&Bhan.jpg'),
(26, '7', 'R&B Urban Hits', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/R&BUrbanHits.jpg'),
(27, '7', 'R&B Việt', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/R&Bviet.jpg'),
(28, '7', 'R&B: Zing Choice', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/R&Bzingchoice.jpg'),
(29, '8', 'Rock Ballad', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/RockBallad.jpg'),
(30, '8', 'Rock Classic', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/RockClassic.jpg'),
(31, '8', 'Rock Legends', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/RockLegends.jpg'),
(32, '8', 'Rock Việt', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/RockViet.jpg'),
(33, '9', 'Cưới đi chờ chi', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/Cuoidichochi.jpg'),
(34, '9', 'Cậu là của tớ', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/Caulacuato.jpg'),
(35, '9', 'Thả thính là dính', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/Thanhthinhladinh.jpg'),
(36, '9', 'Yêu là phải nói', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/Yeulaphainoi.jpg'),
(37, '10', 'Nhạc chuông K-POP', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacchuongKpop.jpg'),
(38, '10', 'Nhạc chuông sôi động', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacchuongSoidong.jpg'),
(39, '10', 'Nhạc chuông USUK', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacchuongUsuk.jpg'),
(40, '10', 'Nhạc chuông V-pop\r\n', 'https://trannhathuy18it3.000webhostapp.com/Hinhanh/TheLoai/NhacchuongVpop.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`idBaiHat`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`idChuDe`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`idPlayList`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTheLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `baihat`
--
ALTER TABLE `baihat`
  MODIFY `idBaiHat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `idChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `idPlayList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
