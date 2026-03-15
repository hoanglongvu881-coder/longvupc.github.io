-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 15, 2026 lúc 08:46 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanli_banhang_it7`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ma_ctdh` int(11) NOT NULL,
  `ma_dh` int(11) NOT NULL,
  `ma_sp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ma_ctdh`, `ma_dh`, `ma_sp`, `soluong`, `dongia`) VALUES
(15, 1, 1, 1, 20900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chudegopy`
--

CREATE TABLE `chudegopy` (
  `ma_cdgy` int(11) NOT NULL,
  `ten_cdgy` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chudegopy`
--

INSERT INTO `chudegopy` (`ma_cdgy`, `ten_cdgy`) VALUES
(1, 'Chất lượng sản phẩm'),
(2, 'Giá cả'),
(3, 'Dịch vụ giao hàng'),
(4, 'Chăm sóc khách hàng'),
(5, 'Thanh toán'),
(6, 'Khuyến mãi'),
(7, 'Bảo hành - đổi trả'),
(8, 'Website / Ứng dụng'),
(9, 'Góp ý khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_dh` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tongtien` decimal(12,2) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ma_httt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ma_dh`, `ma_kh`, `ngaydat`, `tongtien`, `trangthai`, `ma_httt`) VALUES
(1, 1, '2024-12-15 09:30:00', 20900000.00, 1, 1),
(12, 2, '2026-03-13 19:50:18', 83500000.00, 0, 1),
(13, 2, '2026-03-13 19:50:30', 83500000.00, 0, 1),
(14, 2, '2026-03-13 19:51:34', 83500000.00, 0, 2),
(32, 2, '2026-03-16 00:33:27', 21799000.00, 0, 1),
(33, 2, '2026-03-16 00:48:17', 21799000.00, 0, 2),
(34, 2, '2026-03-16 00:48:28', 20800000.00, 0, 1),
(35, 2, '2026-03-16 00:53:09', 12000000.00, 0, 1),
(36, 2, '2026-03-16 01:05:03', 20800000.00, 0, 1),
(37, 2, '2026-03-16 01:47:50', 20800000.00, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gopy`
--

CREATE TABLE `gopy` (
  `ma_gy` int(11) NOT NULL,
  `hoten_gy` varchar(45) DEFAULT NULL,
  `email_gy` varchar(45) DEFAULT NULL,
  `diachi_gy` varchar(100) DEFAULT NULL,
  `dienthoai_gy` varchar(45) DEFAULT NULL,
  `tieude_gy` varchar(255) DEFAULT NULL,
  `noidung_gy` text DEFAULT NULL,
  `ngay_gy` datetime DEFAULT NULL,
  `ma_cdgy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gopy`
--

INSERT INTO `gopy` (`ma_gy`, `hoten_gy`, `email_gy`, `diachi_gy`, `dienthoai_gy`, `tieude_gy`, `noidung_gy`, `ngay_gy`, `ma_cdgy`) VALUES
(1, 'Nguyễn Văn An', 'annv@gmail.com', 'Hà Nội', '0901234567', 'Chất lượng sản phẩm rất tốt', 'Tôi đã mua điện thoại và cảm thấy rất hài lòng về chất lượng cũng như đóng gói sản phẩm.', '2024-12-20 09:15:00', 1),
(2, 'Trần Thị Lan', 'lantt@gmail.com', 'TP Hồ Chí Minh', '0912345678', 'Giá sản phẩm hơi cao', 'Giá của một số sản phẩm còn cao so với mặt bằng chung, mong shop có thêm khuyến mãi.', '2024-12-21 14:30:00', 2),
(3, 'Lê Minh Hiền', 'hienlm@gmail.com', 'Đà Nẵng', '0923456789', 'Giao hàng nhanh', 'Shop giao hàng rất nhanh, đóng gói cẩn thận, tôi rất hài lòng.', '2024-12-22 10:45:00', 3),
(4, 'Phạm Thị Dung', 'dungpt@gmail.com', 'Cần Thơ', '0934567890', 'Nhân viên hỗ trợ nhiệt tình', 'Bộ phận chăm sóc khách hàng hỗ trợ rất nhanh và thân thiện.', '2024-12-23 16:20:00', 4),
(5, 'Hoàng Văn Thắng', 'thanghv@gmail.com', 'Hải Phòng', '0945678901', 'Thanh toán tiện lợi', 'Các hình thức thanh toán đa dạng và rất tiện lợi cho khách hàng.', '2024-12-24 08:50:00', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhsanpham`
--

CREATE TABLE `hinhsanpham` (
  `ma_hsp` int(11) NOT NULL,
  `tentaptin_hsp` varchar(100) DEFAULT NULL,
  `ma_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhsanpham`
--

INSERT INTO `hinhsanpham` (`ma_hsp`, `tentaptin_hsp`, `ma_sp`) VALUES
(1, 'Hp_desktop_computer2022.jpg', 1),
(2, 'ipad25_1.jpg', 2),
(3, 'Tainghe_Pc_Gaming.jpg', 3),
(4, 'acer-nitro-5-tiger.png', 4),
(5, 'Acer_Nitro_pro.jpg', 5),
(6, 'Acer_Nitro_16.jpg', 6),
(7, 'Acer_Nitro_5.png', 7),
(8, 'Acer_Aspire_14.jpg', 8),
(9, 'Tainghe_Zidli.png', 9),
(10, 'Tainghe_Monster.jpg', 10),
(11, 'Tainghe_Somic_G941.jpg', 11),
(12, 'Tainghe_MicrolabG7.jpg', 12),
(13, 'may-tinh-bang-samsung-galaxy-tab-s9.jpg', 13),
(14, 'Máy tính bảngLenovo-Tab-M10-Fhd-Plu.jpg', 14),
(15, 'may-tinh-bang-lenovo-tab-m9.jpg', 15),
(16, 'Máy tính bảng samsunggalaxy-tab-s9-ult.jpg', 16),
(17, 'PC_ HACOM _DESIGNER_ D119.jpg', 17),
(18, 'pc-gaming-sniper-i4060ti-bl-01.jpg', 18),
(19, 'pc-gaming-supernova-i4060.jpg', 19),
(20, 'pc-gaming-sniper-i4060.jpg', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucthanhtoan`
--

CREATE TABLE `hinhthucthanhtoan` (
  `ma_httt` int(11) NOT NULL,
  `ten_httt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhthucthanhtoan`
--

INSERT INTO `hinhthucthanhtoan` (`ma_httt`, `ten_httt`) VALUES
(1, 'Tiền mặt'),
(2, 'Thẻ ATM ngân hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ma_kh` int(11) NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `ten_kh` varchar(50) NOT NULL,
  `gioitinh` char(10) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ngaysinh` datetime NOT NULL,
  `cccd` varchar(50) NOT NULL,
  `makichhoat` varchar(100) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `quantri_kh` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ma_kh`, `tendangnhap`, `matkhau`, `ten_kh`, `gioitinh`, `diachi`, `dienthoai`, `email`, `ngaysinh`, `cccd`, `makichhoat`, `trangthai`, `quantri_kh`) VALUES
(1, 'longvu', 'longvu123', 'Hoàng Long Vũ', 'Nam', 'Bắc Giang', '0368686869', 'longvu@gmail.com', '2005-12-16 00:00:00', '024222686868', 'LONGVU001', 1, 1),
(2, 'vu', '123456', 'Hoàng Long Vũ', 'Nam', 'Bắc Giang', '0333444566', 'vu@gmail.com', '2024-03-15 00:00:00', '024206003432', '', 1, 0),
(3, 'admin', '123', 'Quản trị', '', '', '', '', '0000-00-00 00:00:00', '', '', 1, 1),
(35, 'long', '1234567', 'Hoàng Long Vũ', 'Nam', 'Bắc Giang', '0368686869', 'vu2005@gmail.com', '2005-12-16 00:00:00', '02324009393', '', 0, 0),
(41, 'hung', '123456', 'Nguyen Van Hung', 'Nam', 'Ha Noi', '0988888888', 'hung@gmail.com', '2000-05-20 00:00:00', '123456789012', 'HUNG002', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `ma_km` int(11) NOT NULL,
  `ten_km` varchar(255) DEFAULT NULL,
  `noidung_km` longtext DEFAULT NULL,
  `tungay` date DEFAULT NULL,
  `denngay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`ma_km`, `ten_km`, `noidung_km`, `tungay`, `denngay`) VALUES
(1, 'Khuyến mãi Quốc khánh 2/9', 'Giảm giá tất cả sản phẩm 10%', '2025-09-01', '2025-09-10'),
(2, 'Khuyến mãi 20/10', 'Tặng voucher cho khách hàng nữ', '2025-10-01', '2025-10-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `ma_lsp` int(11) NOT NULL,
  `ten_lsp` varchar(100) NOT NULL,
  `mota_lsp` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`ma_lsp`, `ten_lsp`, `mota_lsp`) VALUES
(1, 'PC', 'Các dòng PC mới nhất'),
(2, 'Laptop', 'Máy tính xách tay văn phòng, đồ họa và gaming'),
(3, 'Phụ kiện', 'Chuột máy tính, Tai nghe'),
(4, 'Máy tính bảng', 'Các dòng iPad và máy tính bảng Android');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `ma_nsx` int(11) NOT NULL,
  `ten_nsx` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`ma_nsx`, `ten_nsx`) VALUES
(1, 'HP'),
(2, 'Apple'),
(3, 'Acer'),
(4, 'Xiaomi'),
(5, 'Samsung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(225) NOT NULL,
  `soluong` int(11) NOT NULL,
  `ngaycapnhat` datetime DEFAULT NULL,
  `gia_sp` int(11) NOT NULL,
  `giacu_sp` int(11) NOT NULL,
  `mota_sp` varchar(1000) NOT NULL,
  `mota_chitiet_sp` text NOT NULL,
  `ma_km` int(11) DEFAULT NULL,
  `ma_lsp` int(11) NOT NULL,
  `ma_nsx` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `soluong`, `ngaycapnhat`, `gia_sp`, `giacu_sp`, `mota_sp`, `mota_chitiet_sp`, `ma_km`, `ma_lsp`, `ma_nsx`) VALUES
(1, ' PC HP Desktop gaming2022', 10, '2024-12-01 11:20:30', 20900000, 22900000, 'Máy tính để bàn hiệu năng cao của HP dành cho game thủ.', 'PC gaming HP cấu hình mạnh, phù hợp chơi game và làm việc đồ họa.', NULL, 1, 1),
(2, 'Apple iPad 25 Wifi 256GB', 10, '2024-12-12 10:04:45', 20800000, 23400000, 'iPad hiệu năng ổn định, phù hợp học tập và giải trí.', 'Máy tính bảng Apple màn hình đẹp, dung lượng lớn 256GB.', NULL, 4, 2),
(3, 'Tai nghe PC Gaming', 25, '2024-12-15 09:30:00', 999000, 290000, 'Tai nghe dành cho game thủ với âm thanh rõ ràng.', 'Tai nghe gaming âm thanh sống động, có micro tiện lợi.\r\n', NULL, 3, 4),
(4, 'ACER NITRO 5 Tiger 2022 ', 50, '2024-12-18 14:10:00', 22490000, 25990000, 'Laptop gaming Acer với thiết kế hiện đại.', 'Laptop Acer Nitro màn hình lớn, hiệu năng tốt cho game.\r\n', NULL, 2, 3),
(5, 'Acer Nitro Pro', 10, '2026-03-12 00:49:58', 25000000, 27000000, 'Laptop Acer dành cho chơi game và làm việc nặng.', 'Laptop gaming Acer Nitro cấu hình mạnh, bàn phím LED đẹp.\r\n', NULL, 2, 3),
(6, 'Acer Nitro 16', 5, '2026-03-12 00:49:58', 22000000, 24000000, 'Máy tính xách tay Acer phù hợp chơi game và đồ họa.\r\n', 'Laptop gaming Acer hiệu năng cao với thiết kế mạnh mẽ.\r\n', NULL, 2, 3),
(7, 'Acer Nitro 5', 15, '2026-03-12 00:49:58', 18000000, 20000000, 'Laptop gaming tầm trung hiệu năng ổn định.', 'Laptop Acer Nitro phổ biến cho game và học tập.\r\n', NULL, 2, 3),
(8, 'Acer Aspire 14', 20, '2026-03-12 00:49:58', 12000000, 13500000, 'Máy tính xách tay gọn nhẹ cho công việc hằng ngày.', 'Laptop Acer Aspire mỏng nhẹ, phù hợp học tập và văn phòng.\r\n', NULL, 2, 3),
(9, 'Tai nghe Zidli', 20, '2026-03-12 01:31:36', 500000, 650000, 'Tai nghe tiện dụng cho nghe nhạc và chơi game.', 'Tai nghe Zidli âm thanh tốt, thiết kế gọn nhẹ.\r\n', NULL, 3, 4),
(10, 'Tai nghe Monster', 15, '2026-03-12 01:31:36', 1200000, 1500000, 'Tai nghe chất lượng cao cho giải trí và chơi game.', 'Tai nghe Monster âm thanh mạnh mẽ, hỗ trợ Bluetooth.\r\n', NULL, 3, 4),
(11, 'Tai nghe Somic G941', 30, '2026-03-12 01:31:36', 850000, 950000, 'Tai nghe chơi game âm thanh rõ và thoải mái khi đeo.', 'Tai nghe gaming Sonic G941 có micro và đèn LED đẹp.\r\n', NULL, 3, 4),
(12, 'Tai nghe Microlab G7', 25, '2026-03-12 01:31:36', 450000, 550000, 'Tai nghe phù hợp nghe nhạc và chơi game cơ bản.', 'Tai nghe Microlab thiết kế đơn giản, âm thanh ổn định.\r\n', NULL, 3, 4),
(13, 'Máy tính bảngSamsung Galaxy Tab S9', 10, '2026-03-12 01:50:06', 15000000, 17000000, 'Máy tính bảng Samsung cao cấp', 'Máy tính bảng Samsung màn hình lớn, hiệu năng mạnh.\r\n', NULL, 4, 5),
(14, 'Máy tính bảng Lenovo Tab M10 FHD Plus', 15, '2026-03-12 01:50:06', 5000000, 6000000, 'Máy tính bảng Lenovo tầm trung', 'Máy tính bảng Lenovo phù hợp học online và xem phim.', NULL, 3, 4),
(15, 'Máy tính bảng Lenovo Tab M9', 20, '2026-03-12 01:50:06', 3500000, 4000000, 'Máy tính bảng Lenovo giá rẻ', 'Tablet tiện dụng cho nhu cầu giải trí cơ bản.', NULL, 4, 5),
(16, 'Máy tính bảng Samsung Galaxy Tab S9 Ultra', 5, '2026-03-12 01:50:06', 25000000, 28000000, 'Máy tính bảng Samsung màn hình lớn', 'Tablet Samsung cao cấp màn hình lớn và cấu hình mạnh.', NULL, 4, 5),
(17, 'Bộ PC HACOM DESIGNER D119', 1, '2026-03-12 02:36:07', 35000000, 38000000, 'Máy tính chuyên đồ họa', 'Cấu hình tối ưu cho Designer', NULL, 1, 1),
(18, 'Bộ PC Gaming Sniper i4060Ti', 8, '2026-03-12 02:36:07', 28000000, 30000000, 'PC Gaming hiệu năng cao', 'Core i5 + RTX 4060Ti', NULL, 1, 1),
(19, 'Bộ PC Gaming Supernova i4060', 10, '2026-03-12 02:36:07', 22000000, 24000000, 'PC Gaming tầm trung', 'Cấu hình mạnh mẽ cân mọi game', NULL, 1, 1),
(20, 'Bộ PC Gaming Sniper i4060', 12, '2026-03-12 02:36:07', 20000000, 21500000, 'PC Gaming giá tốt', 'Core i5 + RTX 4060', NULL, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ma_ctdh`),
  ADD KEY `ma_dh` (`ma_dh`,`ma_sp`),
  ADD KEY `ma_sp` (`ma_sp`);

--
-- Chỉ mục cho bảng `chudegopy`
--
ALTER TABLE `chudegopy`
  ADD PRIMARY KEY (`ma_cdgy`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_dh`),
  ADD KEY `ma_kh` (`ma_kh`,`ma_httt`);

--
-- Chỉ mục cho bảng `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`ma_gy`),
  ADD KEY `ma_cdgy` (`ma_cdgy`);

--
-- Chỉ mục cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD PRIMARY KEY (`ma_hsp`),
  ADD KEY `ma_sp` (`ma_sp`);

--
-- Chỉ mục cho bảng `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  ADD PRIMARY KEY (`ma_httt`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`ma_km`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`ma_lsp`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`ma_nsx`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `ma_km` (`ma_km`,`ma_lsp`,`ma_nsx`),
  ADD KEY `ma_nsx` (`ma_nsx`),
  ADD KEY `ma_lsp` (`ma_lsp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ma_ctdh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `chudegopy`
--
ALTER TABLE `chudegopy`
  MODIFY `ma_cdgy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_dh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `gopy`
--
ALTER TABLE `gopy`
  MODIFY `ma_gy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  MODIFY `ma_hsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  MODIFY `ma_httt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `ma_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `ma_lsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `ma_nsx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`ma_dh`) REFERENCES `donhang` (`ma_dh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khachhang` (`ma_kh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gopy`
--
ALTER TABLE `gopy`
  ADD CONSTRAINT `gopy_ibfk_1` FOREIGN KEY (`ma_cdgy`) REFERENCES `chudegopy` (`ma_cdgy`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinhsanpham`
--
ALTER TABLE `hinhsanpham`
  ADD CONSTRAINT `hinhsanpham_ibfk_1` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ma_km`) REFERENCES `khuyenmai` (`ma_km`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ma_nsx`) REFERENCES `nhasanxuat` (`ma_nsx`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`ma_lsp`) REFERENCES `loaisanpham` (`ma_lsp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
