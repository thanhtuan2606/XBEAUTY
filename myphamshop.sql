-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2024 lúc 07:25 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myphamshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBinhLuan` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `NgayBinhLuan` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBinhLuan`, `NoiDung`, `MaKhachHang`, `MaSanPham`, `NgayBinhLuan`) VALUES
(2, 'sản phẩm chất lương', 2, 13, '2023-10-18 15:37:58'),
(3, 'sản phẩm tốt', 2, 8, '2023-10-18 15:44:45'),
(4, 'sản phẩm có giá tốt', 2, 8, '2023-10-18 15:45:36'),
(5, 'sản phẩm dùng ok', 2, 6, '2023-10-19 14:32:14'),
(6, '', 1, 7, '2024-05-30 18:31:53'),
(7, 'ádsad', 1, 7, '2024-05-30 18:31:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaChiTietDH` int(11) NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDH`, `MaDonHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(4, 18, 7, 1, 450000),
(5, 18, 10, 1, 330000),
(6, 19, 14, 1, 370000),
(7, 19, 7, 2, 450000),
(8, 31, 7, 2, 450000),
(9, 31, 11, 4, 550000),
(10, 31, 16, 1, 240000),
(13, 33, 11, 1, 550000),
(14, 33, 6, 2, 400000),
(15, 33, 12, 2, 380000),
(16, 34, 10, 1, 330000),
(17, 34, 15, 2, 360000),
(18, 34, 16, 5, 240000),
(19, 289327284, 5, 1, 500000),
(20, 644736661, 9, 1, 200000),
(21, 412609745, 27, 1, 150000),
(22, 572947534, 27, 1, 150000),
(23, 563235530, 11, 1, 550000),
(24, 746864597, 5, 1, 500000),
(25, 102326523, 5, 1, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(100) NOT NULL,
  `HinhAnh` text NOT NULL,
  `TrangThai` varchar(100) NOT NULL DEFAULT 'Đang hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDanhMuc`, `TenDanhMuc`, `HinhAnh`, `TrangThai`) VALUES
(1, 'CHĂM SÓC CÁ NHÂN', 'dm1.jpg', 'Đang hoạt động'),
(2, 'Chăm Sóc Cá Nhân', 'banner3.jpg', 'Đang hoạt động'),
(3, 'Chăm Sóc Tóc', 'banner2.jpg', 'Đang hoạt động'),
(4, 'Ưu đãi Hot', '', 'Đang hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL DEFAULT current_timestamp(),
  `MaKhachHang` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TrangThai` varchar(100) NOT NULL DEFAULT 'Đang chờ xử lý',
  `GhiChu` text DEFAULT NULL,
  `PhuongThucGiaoHang` varchar(255) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(255) DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `diachi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `NgayDatHang`, `MaKhachHang`, `TongTien`, `TrangThai`, `GhiChu`, `PhuongThucGiaoHang`, `PhuongThucThanhToan`, `sdt`, `ten`, `diachi`) VALUES
(18, '2023-08-30 09:06:26', 1, 780000, 'Đang chờ xử lý', '', NULL, NULL, '', '', ''),
(19, '2023-08-30 14:32:09', 2, 1270000, 'Đang chờ xử lý', 'Nhớ chuyển trước 7h', NULL, NULL, '', '', ''),
(20, '2023-09-07 22:50:47', 1, 450000, 'Đã duyệt đơn hàng', '', NULL, NULL, '', '', ''),
(21, '2023-09-07 23:10:08', 1, 900000, 'Đang chờ xử lý', '', NULL, NULL, '', '', ''),
(22, '2023-09-07 23:10:24', 1, 900000, 'Đang giao hàng', '', NULL, NULL, '', '', ''),
(23, '2023-09-07 23:12:43', 1, 1450000, 'Đã duyệt đơn hàng', '', NULL, NULL, '', '', ''),
(24, '2023-09-07 23:18:27', 1, 3100000, 'Đã hủy', '', NULL, NULL, '', '', ''),
(25, '2023-09-07 23:19:16', 1, 3340000, 'Đã giao hàng', '', NULL, NULL, '', '', ''),
(26, '2023-09-07 23:20:05', 1, 3340000, 'Đang giao hàng', '', NULL, NULL, '', '', ''),
(27, '2023-09-07 23:21:03', 1, 3340000, 'Đã hủy', '', NULL, NULL, '', '', ''),
(28, '2023-09-07 23:22:39', 1, 3340000, 'Đã giao hàng', '', NULL, NULL, '', '', ''),
(29, '2023-09-07 23:34:46', 1, 3340000, 'Đã hủy', '', NULL, NULL, '', '', ''),
(30, '2023-09-07 23:35:09', 1, 3340000, 'Đã giao hàng', '', NULL, NULL, '', '', ''),
(31, '2023-09-07 23:36:18', 1, 3340000, 'Đã giao hàng', '', NULL, NULL, '', '', ''),
(33, '2023-09-24 15:13:45', 2, 2110000, 'Đã giao hàng', '', NULL, NULL, '', '', ''),
(34, '2023-09-24 15:25:04', 2, 2250000, 'Đang chờ xử lý', '', NULL, NULL, '', '', ''),
(102326523, '2024-05-27 08:24:39', 31, 530000, 'Đang chờ xử lý', NULL, NULL, NULL, '', '', ''),
(289327284, '2024-05-08 07:13:55', 30, 530000, 'Đã xác nhận đơn', NULL, NULL, NULL, '', '', ''),
(412609745, '2024-05-17 07:29:27', 31, 180000, 'Đang chờ xử lý', NULL, NULL, NULL, '', '', ''),
(563235530, '2024-05-27 07:27:53', 1, 580000, 'Đang chờ xử lý', NULL, NULL, NULL, '', '', ''),
(572947534, '2024-05-17 07:29:37', 31, 180000, 'Đang chờ xử lý', NULL, NULL, NULL, '', '', ''),
(644736661, '2024-05-10 07:30:30', 1, 230000, 'Đang chờ xử lý', NULL, NULL, NULL, '', '', ''),
(746864597, '2024-05-27 08:24:31', 31, 530000, 'Đang chờ xử lý', NULL, NULL, NULL, '', '', ''),
(746864600, '2024-05-29 13:14:37', 40, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864601, '2024-05-29 13:29:23', 41, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864602, '2024-05-29 13:30:15', 42, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864603, '2024-05-29 13:30:35', 43, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864604, '2024-05-29 13:30:47', 44, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864605, '2024-05-29 13:31:18', 45, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864606, '2024-05-29 13:31:21', 46, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864607, '2024-05-29 13:31:40', 47, 400000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864608, '2024-05-29 19:12:30', 48, 119000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864609, '2024-05-29 19:22:24', 49, 119000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864610, '2024-05-29 19:42:23', 51, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864611, '2024-05-29 19:42:58', 52, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864612, '2024-05-29 20:01:49', 53, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864613, '2024-05-29 20:01:55', 54, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864614, '2024-05-29 20:11:38', 55, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864615, '2024-05-29 20:12:25', 56, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864616, '2024-05-29 20:13:06', 57, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864617, '2024-05-29 20:40:35', 58, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864618, '2024-05-29 20:40:47', 59, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864619, '2024-05-29 20:40:52', 60, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864620, '2024-05-29 21:46:55', 61, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864621, '2024-05-29 21:56:09', 62, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864622, '2024-05-29 21:56:43', 63, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864623, '2024-05-29 21:56:44', 64, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864624, '2024-05-29 21:57:52', 65, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864625, '2024-05-29 21:58:18', 66, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864626, '2024-05-29 21:58:55', 67, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864627, '2024-05-29 22:04:44', 68, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864628, '2024-05-29 22:06:58', 69, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864629, '2024-05-30 18:07:16', 70, 480000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864630, '2024-05-31 12:16:19', 71, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864631, '2024-05-31 12:30:12', 72, 48000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864632, '2024-05-31 12:33:54', 73, 48000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864633, '2024-05-31 12:36:41', 75, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864634, '2024-05-31 12:42:12', 76, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864635, '2024-05-31 12:43:15', 77, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864636, '2024-05-31 12:46:11', 78, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864637, '2024-05-31 12:46:45', 79, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864638, '2024-05-31 12:55:30', 80, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864639, '2024-05-31 12:58:46', 81, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864640, '2024-05-31 12:59:40', 82, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864641, '2024-05-31 13:00:05', 83, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864642, '2024-05-31 13:01:00', 84, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864643, '2024-05-31 13:01:19', 85, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864644, '2024-05-31 13:01:29', 86, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864645, '2024-05-31 13:01:34', 87, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864646, '2024-05-31 13:01:36', 88, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864647, '2024-05-31 13:02:00', 89, 129000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864648, '2024-05-31 13:02:47', 90, 139000, 'Đang chờ xử lý', NULL, 'ghn', 'cash', '', '', ''),
(746864649, '2024-06-01 19:47:02', 91, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864650, '2024-06-01 19:53:16', 92, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864651, '2024-06-01 19:57:51', 93, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864652, '2024-06-01 19:57:55', 94, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864653, '2024-06-01 19:58:38', 95, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864654, '2024-06-01 20:01:04', 96, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864655, '2024-06-01 20:02:46', 97, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864656, '2024-06-01 20:04:01', 98, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864657, '2024-06-01 20:05:38', 99, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864658, '2024-06-01 20:09:30', 100, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864659, '2024-06-01 20:10:39', 101, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864660, '2024-06-01 20:10:56', 102, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864661, '2024-06-01 20:17:33', 103, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864662, '2024-06-01 20:28:03', 104, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864663, '2024-06-03 10:56:49', 105, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864664, '2024-06-03 11:02:15', 106, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864665, '2024-06-03 11:14:16', 107, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864666, '2024-06-03 11:14:17', 108, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864667, '2024-06-03 11:14:18', 109, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864668, '2024-06-03 11:14:18', 110, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864669, '2024-06-03 11:14:18', 111, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864670, '2024-06-03 11:15:11', 112, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864671, '2024-06-03 11:15:12', 113, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864672, '2024-06-03 11:15:36', 114, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864673, '2024-06-03 11:15:40', 115, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864674, '2024-06-03 12:08:42', 116, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864675, '2024-06-03 12:08:43', 117, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864676, '2024-06-03 12:08:43', 118, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864677, '2024-06-03 12:11:12', 119, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864678, '2024-06-03 12:11:19', 120, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864679, '2024-06-03 12:12:07', 121, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864680, '2024-06-03 12:14:34', 122, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864681, '2024-06-03 13:25:28', 123, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864682, '2024-06-03 13:25:29', 124, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864683, '2024-06-03 13:29:28', 125, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864684, '2024-06-03 13:32:00', 126, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864685, '2024-06-03 13:32:25', 127, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864686, '2024-06-03 13:32:32', 128, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864687, '2024-06-03 13:34:55', 129, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864688, '2024-06-03 13:35:13', 130, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864689, '2024-06-03 13:36:03', 131, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864690, '2024-06-03 13:36:42', 132, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864691, '2024-06-03 13:52:54', 133, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864692, '2024-06-03 13:52:55', 134, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864693, '2024-06-03 13:54:15', 135, 280000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864694, '2024-06-04 18:13:47', 136, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864695, '2024-06-04 18:18:46', 137, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864696, '2024-06-04 18:18:50', 138, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864697, '2024-06-04 18:18:59', 139, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864698, '2024-06-04 18:23:07', 140, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864699, '2024-06-04 18:23:11', 141, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864700, '2024-06-04 18:23:11', 142, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864701, '2024-06-04 18:28:58', 143, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864702, '2024-06-04 18:29:45', 144, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864703, '2024-06-04 18:29:48', 145, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864704, '2024-06-04 18:30:57', 146, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864705, '2024-06-04 18:32:11', 147, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864706, '2024-06-04 18:33:03', 148, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864707, '2024-06-04 18:36:39', 149, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864708, '2024-06-04 18:43:23', 150, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864709, '2024-06-04 19:06:57', 151, 580000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864710, '2024-06-05 12:22:37', 152, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864711, '2024-06-05 12:23:30', 153, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864712, '2024-06-05 12:24:05', 154, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864713, '2024-06-05 12:24:22', 155, 65000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864714, '2024-06-05 12:34:18', 156, 465000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', ''),
(746864715, '2024-06-07 12:03:14', 157, 48000, 'Đang chờ xử lý', NULL, 'ghtk', 'cash', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `SDT` varchar(100) DEFAULT NULL,
  `Admin` int(1) NOT NULL DEFAULT 0,
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL,
  `Anh` varchar(100) DEFAULT NULL,
  `TrangThai` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `Email`, `MatKhau`, `HoTen`, `DiaChi`, `SDT`, `Admin`, `reset_token`, `token_expiry`, `Anh`, `TrangThai`) VALUES
(1, 'admin@gmail.com', 'pass', 'administrator', 'HCM', '0987654321', 1, NULL, NULL, 'admin.png', 1),
(2, 'khachhang@gmail.com', '123', 'Nguyễn thanh tuan', 'Quận 12, HCM', '0987654321', 0, NULL, NULL, '3df98a9990ae777a85a708776498fee3.jpg', 0),
(23, 'khachhang2@gmail.com', '12345', 'khách hàng 2', 'hcm', '1234567890', 0, NULL, NULL, '3d2d6e5e1e11cd6327777c32ba632ecb.jpg', 0),
(30, 'thanhtuan09052004@gmail.com', 'DQzfhhp14F', 'thanh tuan', 'quan 12 , tp hcm', '0837587731', 0, 'eee17d579751c488d3f70a0a6cafd5e9', '2024-06-04 14:08:04', '', 1),
(31, 'sbtctuan9977@gmail.com', 'Lne0ocWpw5', 'tuan', 'q12', '123456789', 0, 'bfb58f5e6cbaa880488fd0351651f217', '2024-06-05 07:36:23', '', 1),
(40, '', '', 'tuan2', '123', '123', 0, NULL, NULL, NULL, 1),
(41, '', '', 'trung', 'q11', '9876543', 0, NULL, NULL, NULL, 1),
(42, '', '', 'trung', 'q11', '9876543', 0, NULL, NULL, NULL, 1),
(43, '', '', 'nam1', 'ytr', '9876543', 0, NULL, NULL, NULL, 1),
(44, '', '', 'nam1', 'ytr', '9876543', 0, NULL, NULL, NULL, 1),
(45, '', '', 'tre', 'ytrew', '65432', 0, NULL, NULL, NULL, 1),
(46, '', '', 'tre', 'ytrew', '65432', 0, NULL, NULL, NULL, 1),
(47, '', '', 'tre', 'ytrew', '65432', 0, NULL, NULL, NULL, 1),
(48, '', '', 'yin', 'q12', '450654869', 0, NULL, NULL, NULL, 1),
(49, '', '', 'tuan', '123', '123', 0, NULL, NULL, NULL, 1),
(50, 'parkkimtan@gmail.com', '123', 'parkkimtan', 'korean', '8987978', 0, NULL, NULL, '', 1),
(51, '', '', 'qưe', 'qưe', 'qưe', 0, NULL, NULL, NULL, 1),
(52, '', '', 'jhgjgf', '123', '123123', 0, NULL, NULL, NULL, 1),
(53, '', '', 'shiett', '124', '123', 0, NULL, NULL, NULL, 1),
(54, '', '', 'shiett', '124', '123', 0, NULL, NULL, NULL, 1),
(55, '', '', 'hoanduocsu', '123', '39845794', 0, NULL, NULL, NULL, 1),
(56, '', '', 'hoanduocsu', '123', '39845794', 0, NULL, NULL, NULL, 1),
(57, '', '', 'hoanduocsu', '123', '39845794', 0, NULL, NULL, NULL, 1),
(58, '', '', 'powpow', '19283712', '9308473894', 0, NULL, NULL, NULL, 1),
(59, '', '', 'powpow', '19283712', '9308473894', 0, NULL, NULL, NULL, 1),
(60, '', '', 'powpow', '19283712', '9308473894', 0, NULL, NULL, NULL, 1),
(61, '', '', 'kim111', '123123', '35435', 0, NULL, NULL, NULL, 1),
(62, '', '', 'tulosdr', '12389', '10924729', 0, NULL, NULL, NULL, 1),
(63, '', '', 'tulosdr', '12389', '10924729', 0, NULL, NULL, NULL, 1),
(64, '', '', 'tulosdr', '12389', '10924729', 0, NULL, NULL, NULL, 1),
(65, '', '', 'tammmm', '12389', '10924729', 0, NULL, NULL, NULL, 1),
(66, '', '', 'tammmm', '12389', '10924729', 0, NULL, NULL, NULL, 1),
(67, '', '', 'fuckkk', '2937612983', '920382', 0, NULL, NULL, NULL, 1),
(68, '', '', 'fuckkk', '2937612983\\', '920382', 0, NULL, NULL, NULL, 1),
(69, '', '', 'qưeoui', '123', '123', 0, NULL, NULL, NULL, 1),
(70, '', '', 'thanhtuan', '37894', '123', 0, NULL, NULL, NULL, 1),
(71, '', '', 'sfdf', 'asdsad', 'dsas', 0, NULL, NULL, NULL, 1),
(72, '', '', 'nam1', '2312', '123', 0, NULL, NULL, NULL, 1),
(73, '', '', 'yinyin', '123', '123', 0, NULL, NULL, NULL, 1),
(74, 'yinyin@gmail.com', '123', 'yinyin', 'korean', '109238293', 0, NULL, NULL, '', 1),
(75, '', '', 'son', '21', '124', 0, NULL, NULL, NULL, 1),
(76, '', '', 'son12', '123', '1231', 0, NULL, NULL, NULL, 1),
(77, '', '', 'son12', '123', '1231', 0, NULL, NULL, NULL, 1),
(78, '', '', 'son', '24234', '123', 0, NULL, NULL, NULL, 1),
(79, '', '', 'son', '24234', '123', 0, NULL, NULL, NULL, 1),
(80, '', '', 'son1', '123', '123', 0, NULL, NULL, NULL, 1),
(81, '', '', 'son', '123', '123', 0, NULL, NULL, NULL, 1),
(82, '', '', 'son', '123', '123', 0, NULL, NULL, NULL, 1),
(83, '', '', 'son', '123', '123', 0, NULL, NULL, NULL, 1),
(84, '', '', 'son', '123', '123', 0, NULL, NULL, NULL, 1),
(85, '', '', 'son', '123', '231', 0, NULL, NULL, NULL, 1),
(86, '', '', 'son', '123', '231', 0, NULL, NULL, NULL, 1),
(87, '', '', 'son', '123', '231', 0, NULL, NULL, NULL, 1),
(88, '', '', 'son', '123', '231', 0, NULL, NULL, NULL, 1),
(89, '', '', 'son1', '123', '231', 0, NULL, NULL, NULL, 1),
(90, '', '', 'kbbkim', '123', '231', 0, NULL, NULL, NULL, 1),
(91, '', '', 'pư', 'ádasd', 'adasd', 0, NULL, NULL, NULL, 1),
(92, '', '', 'travis', 'q12', '123414', 0, NULL, NULL, NULL, 1),
(93, '', '', 'kdot', 'tes', '67564', 0, NULL, NULL, NULL, 1),
(94, '', '', 'kdot', 'tes', '67564', 0, NULL, NULL, NULL, 1),
(95, '', '', 'kdott', 'tes', '67564', 0, NULL, NULL, NULL, 1),
(96, '', '', 'drake', '23434', '123', 0, NULL, NULL, NULL, 1),
(97, '', '', 'mck', '12321', '12314', 0, NULL, NULL, NULL, 1),
(98, '', '', 'mck1', '12321', '12314', 0, NULL, NULL, NULL, 1),
(99, '', '', 'ádkjahs', 'ádkjahsd', 'skdahsdjk', 0, NULL, NULL, NULL, 1),
(100, '', '', 'tlinh', '124214', '13151234', 0, NULL, NULL, NULL, 1),
(101, '', '', 'retrt', '124', '1234', 0, NULL, NULL, NULL, 1),
(102, '', '', 'retrt', '124', '1234', 0, NULL, NULL, NULL, 1),
(103, '', '', 'retrt', '124', '1234', 0, NULL, NULL, NULL, 1),
(104, '', '', 'pet12', '12312', '124124', 0, NULL, NULL, NULL, 1),
(105, '', '', 'nnk1', '123214', '124', 0, NULL, NULL, NULL, 1),
(106, '', '', 'kkb21', '12323', '124124', 0, NULL, NULL, NULL, 1),
(107, '', '', 'emkhi', '12423', '123', 0, NULL, NULL, NULL, 1),
(108, '', '', 'emkhi', '12423', '123', 0, NULL, NULL, NULL, 1),
(109, '', '', 'emkhi', '12423', '123', 0, NULL, NULL, NULL, 1),
(110, '', '', 'emkhi', '12423', '123', 0, NULL, NULL, NULL, 1),
(111, '', '', 'emkhi', '12423', '123', 0, NULL, NULL, NULL, 1),
(112, '', '', 'gf', '214', '123', 0, NULL, NULL, NULL, 1),
(113, '', '', 'gf', '214', '123', 0, NULL, NULL, NULL, 1),
(114, '', '', 'gf', '214', '123', 0, NULL, NULL, NULL, 1),
(115, '', '', 'gf', '214', '123', 0, NULL, NULL, NULL, 1),
(116, '', '', 'qiweuyqwie', '123123', '12412', 0, NULL, NULL, NULL, 1),
(117, '', '', 'qiweuyqwie', '123123', '12412', 0, NULL, NULL, NULL, 1),
(118, '', '', 'qiweuyqwie', '123123', '12412', 0, NULL, NULL, NULL, 1),
(119, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(120, '', '', 'rtertr', '12312', '312312', 0, NULL, NULL, NULL, 1),
(121, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(122, '', '', 'ẻtrt', '2323', '1242', 0, NULL, NULL, NULL, 1),
(123, '', '', 'tuan213', '2343', '34234', 0, NULL, NULL, NULL, 1),
(124, '', '', 'tuan213', '2343', '34234', 0, NULL, NULL, NULL, 1),
(125, '', '', 'tuấn321', '124124', '1232', 0, NULL, NULL, NULL, 1),
(126, '', '', 'tuan', '12421', '324732', 0, NULL, NULL, NULL, 1),
(127, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(128, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(129, '', '', 'fgdg', '21321', '2321', 0, NULL, NULL, NULL, 1),
(130, '', '', 'fgdg', '21321', '2321', 0, NULL, NULL, NULL, 1),
(131, '', '', 'cvxcv', '2312', 'cvxc', 0, NULL, NULL, NULL, 1),
(132, '', '', 'cvxcv', '2312', 'cvxc', 0, NULL, NULL, NULL, 1),
(133, '', '', 'erert', '123', '1412', 0, NULL, NULL, NULL, 1),
(134, '', '', 'erert', '123', '1412', 0, NULL, NULL, NULL, 1),
(135, '', '', 'sfjsfh', '12w', '38RE', 0, NULL, NULL, NULL, 1),
(136, '', '', 'thanhtaasd', '1231', '12314', 0, NULL, NULL, NULL, 1),
(137, '', '', 'khtsjkdr', '1242', '1233', 0, NULL, NULL, NULL, 1),
(138, '', '', 'khtsjkdr', '1242', '1233', 0, NULL, NULL, NULL, 1),
(139, '', '', '23123', '23123', '1242134', 0, NULL, NULL, NULL, 1),
(140, '', '', 'tuán', 'q341324', '234213', 0, NULL, NULL, NULL, 1),
(141, '', '', 'tuán', 'q341324', '234213', 0, NULL, NULL, NULL, 1),
(142, '', '', 'tuán', 'q341324', '234213', 0, NULL, NULL, NULL, 1),
(143, '', '', 'jwehtejkt', '123', '124', 0, NULL, NULL, NULL, 1),
(144, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(145, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(146, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(147, '', '', 'dfsdf', '123', '213123', 0, NULL, NULL, NULL, 1),
(148, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(149, '', '', 'rtert', '12313', '12312', 0, NULL, NULL, NULL, 1),
(150, '', '', '12321', '21412', '124124', 0, NULL, NULL, NULL, 1),
(151, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(152, '', '', 'kkb', '23123', '231212', 0, NULL, NULL, NULL, 1),
(153, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(154, '', '', 'kkb', '12214', '121124', 0, NULL, NULL, NULL, 1),
(155, '', '', 'erewr', 'werewr', 'ewrer', 0, NULL, NULL, NULL, 1),
(156, '', '', '', '', '', 0, NULL, NULL, NULL, 1),
(157, '', '', 'bbk', 'q12', '24124', 0, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(10) NOT NULL,
  `TenSanPham` varchar(100) NOT NULL,
  `HinhAnh` text DEFAULT NULL,
  `Gia` int(10) DEFAULT NULL,
  `GiaKhuyenMai` int(10) DEFAULT NULL,
  `MaDanhMuc` int(10) NOT NULL,
  `SoLuong` int(10) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `Hot` int(11) DEFAULT NULL,
  `TrangThai` varchar(100) NOT NULL DEFAULT 'Đang hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhAnh`, `Gia`, `GiaKhuyenMai`, `MaDanhMuc`, `SoLuong`, `MoTa`, `Hot`, `TrangThai`) VALUES
(5, 'Bioderma Sebium Sensitive – Kem Dưỡng Da Dành Cho Da Mụn, Yếu Và Nhạy Cảm – 30ml', '1.png', 620000, 500000, 1, 97, NULL, 1, 'Đang hoạt động'),
(6, 'Balance Active Formula Gold Collagen Rejuvenating Serum – Tinh Chất Vàng Dưỡng Căng Bóng Da, Ngừa Lã', '2.jpeg', 450000, 400000, 1, 50, '', 0, 'Đang hoạt động'),
(7, 'SuzanObagiMD Physical Defense Broad Spectrum SPF 40 – Kem Chống Nắng Vật Lý Đến Từ Mỹ 96.3 G', '12.jpg', 550000, 450000, 1, 50, '', 1, 'Đang hoạt động'),
(8, 'Fixderma FCL Hydrating Mask – Mặt Nạ Dưỡng Ẩm Sáng Da, Cải Thiện Da Cháy Nắng 100g', '5.png', 400000, 350000, 1, 40, '', 0, 'Đang hoạt động'),
(9, 'Dermalogica Barrier Repair – Kem Dưỡng Ẩm Phục Hồi Da Nhạy Cảm 30m', '5.png', 280000, 200000, 2, 29, NULL, 0, 'Đang hoạt động'),
(10, 'Mesoestetic Mineral Matt Antiaging Fluid Mesoprotech SPF 50+- Kem Chống Nắng Thế Hệ Mới 50ml', '6.png', 450000, 330000, 2, 30, NULL, NULL, 'Đang hoạt động'),
(11, 'The Original MakeUp Eraser Original Pink – Khăn Mặt Tẩy Trang Màu Hồng', '7.jpeg', 600000, 550000, 2, 9, '', 1, 'Đang hoạt động'),
(12, 'NUXE Creme Fraiche De Beaute 48HR Moisturising Cream – Kem Dưỡng Cung Cấp Độ Ẩm Trong Suốt 48h 30ml', '13.webp', 400000, 380000, 2, 30, '', 0, 'Đang hoạt động'),
(13, 'Christina Biophyto Enlightening Eye And Neck Cream – Kem Dưỡng Làm Sáng Da Vùng Mắt Và Cổ 30ml', '25.jpg', 300000, 280000, 3, 30, '', 0, 'Đang hoạt động'),
(14, 'IS Clinical Pro-Heal Serum Advance+ – Tinh Chất Phục Hồi Da 15m/30ml', '5.png', 400000, 370000, 3, 40, '', 1, 'Đang hoạt động'),
(15, 'Paula’s Choice 5% Niacinamide Body Serum – Tinh Chất Làm Sáng Và Phục Hồi Da Cơ Thể 118ml', '11.jpeg', 450000, 360000, 3, 50, '', 0, 'Đang hoạt động'),
(16, 'Priori TTC Natural Soothing Balm – Sáp Dưỡng Ẩm, Làm Dịu Da 20gr/ 90gr', '24.jpg', 300000, 240000, 3, 30, '', 1, 'Đang hoạt động'),
(22, 'Neova Body Repair Daily Lotion – Kem DNA Phục Hồi, Sửa Chữa, Dưỡng Da Toàn Thân 250ml', '15.jpg', 400000, 350000, 4, 30, '', 0, 'Đang hoạt động'),
(23, 'Klairs Midnight Blue Calming Cream – Kem Dưỡng Ẩm, Phục Hồi Da 60ml', '20.jpg', 350000, 250000, 1, NULL, NULL, NULL, 'Đang hoạt động'),
(24, 'Wellmaxx Hyaluron Gentle Deep Clean Face Wash- Sữa Rửa Mặt Không Chứa Xà Phòng, Phù Hợp Cho Tất Cả C', '21.jpg', 350000, 200000, 2, 30, NULL, NULL, 'Đang hoạt động'),
(25, 'Fixderma Shadow SPF 30+ Gel – Gel Chống Nắng 75g', '22.jpg', 500000, 350000, 2, 20, NULL, NULL, 'Đang hoạt động'),
(26, 'Sugarbear Pro Collagen – Kẹo Gấu Bổ Sung Collagen 60 Viên', '23.jpg', 400000, 300000, 3, 10, NULL, NULL, 'Đang hoạt động'),
(27, 'Sugarbear Hair Vegan Vitamin Gummies – Kẹo Gấu Kích Thích Mọc Tóc 75 Viên', '24.jpg', 300000, 150000, 3, 28, NULL, NULL, 'Đang hoạt động'),
(29, ' Trị Mụn Megaduo', '29.jpg', 100000, 89000, 4, 6, '', 0, 'Đang hoạt động'),
(52, 'Profa Nucos Collagen 100% – Thực Phẩm Bảo Vệ Sức Khỏe Ngăn Ngừa Lão Hóa Da – 90 Viên', '25.jpg', 150000, 130000, 1, 122, '', 1, 'Tạm ngưng'),
(54, 'Mặt Nạ Miếng Dưỡng Ẩm, Hỗ Trợ Dưỡng Trắng, Cải Thiện Làn Da Hàn Quốc BNBG (Vitamin A, B C, E)', '30.webp', 30000, 18000, 4, 10, 'Mặt Nạ Vitamin BNBG Vita Genic Jelly Mask là mặt nạ tập trung giải quyết những vấn đề khác nhau trên da của thương hiệu BNBG có tác dụng cấp ẩm, hỗ trợ làm sáng da, thư giãn và nâng cơ với các thành phần hoàn toàn thiên nhiên, mặt nạ chất cotton mỏng mịn và thẩm thấu tốt đem lại hiệu quả và cảm giác sảng khoái vào mỗi buổi sáng thức dậy. ', 0, 'Đang hoạt động'),
(55, 'Bông Tẩy Trang 100% Cotton Ceiba Tree', '34.jpg', 65000, 35000, 4, 10, '', 0, 'Đang hoạt động'),
(56, 'Nước Tẩy Trang Dịu Nhẹ Silkygirl Gentle Micellar Cleansing Water', '35.webp', 158000, 99000, 4, 6, 'Nước Tẩy Trang Dịu Nhẹ Silkygirl Gentle Micellar Cleansing Water là nước tẩy trang thuộc thương hiệu Silkygirl. Là sản phẩm đa nhiệm có khả năng tẩy trang và làm sạch da chỉ trong một bước. Với nguồn gốc là sản phẩm chăm sóc da chủ yếu được sử dụng ở Pháp, nước tẩy trang micellar là sản phẩm được tạo thành từ các phân tử micelle nhỏ (phân tử dầu) hoạt động giống như nam châm hút bụi bẩn, dầu và lớp trang điểm, giúp da sạch sẽ và tươi mát.', 0, 'Đang hoạt động'),
(57, 'Nước Tẩy Trang Làm Sạch Sâu, Dưỡng Ẩm & Hỗ Trợ Dưỡng Trắng Hada Labo Micellar Water', '36.jpg', 155000, 135000, 4, 8, 'Nước Tẩy Trang Làm Sạch Sâu, Dưỡng Ẩm & Hỗ Trợ Dưỡng Trắng Hada Labo Micellar Water là nước tẩy trang sạch sâu lớp trang điểm lâu trôi, kem chống nắng, bụi mịn PM2.5 và không gây khô da mà còn có thành phần cấp ẩm cho da thuộc thương hiệu Hada Labo.', 0, 'Đang hoạt động');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBinhLuan`),
  ADD KEY `MaKhachHang` (`MaKhachHang`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaChiTietDH`),
  ADD KEY `MaDonHang` (`MaDonHang`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaDanhMuc` (`MaDanhMuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaChiTietDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=746864716;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmuc` (`MaDanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
