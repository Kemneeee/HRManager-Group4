-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanly_nhansu`

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ma_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_nv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `noi_sinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_cmnd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nguyen_quan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ho_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tam_tru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai_nv_id` int(11) NOT NULL,
  `phong_ban_id` int(11) NOT NULL,
  `chuc_vu_id` int(11) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `loai_nv`
--

CREATE TABLE `loai_nv` (
  `id` int(11) NOT NULL,
  `ma_loai_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_loai_nv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `id` int(11) NOT NULL,
  `ma_chuc_vu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_chuc_vu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `luong_ngay` double NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `phong_ban`
--

CREATE TABLE `phong_ban` (
  `id` int(11) NOT NULL,
  `ma_phong_ban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_phong_ban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `id` int(11) NOT NULL,
  `ma_luong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `luong_thang` double NOT NULL,
  `ngay_cong` int(11) NOT NULL,
  `phu_cap` double NOT NULL,
  `khoan_nop` double NOT NULL,
  `tam_ung` double NOT NULL,
  `thuc_lanh` double NOT NULL,
  `ngay_cham` date NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `chinh_luong`
--

CREATE TABLE `chinh_luong` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `so_qd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_ky_ket` datetime NOT NULL,
  `ngay_dieu_chinh` datetime NOT NULL,
  `heso_luong_cu` double NOT NULL,
  `heso_luong_moi` double NOT NULL,
  `nguoi_tao_id` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `nguoi_sua_id` int(11) NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `loi_vi_pham`
--

CREATE TABLE `loi_vi_pham` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `loi_id` int(11) NOT NULL,
  `ten_loi` varchar(255) NOT NULL,
  `phong_ban_id` int(11) NOT NULL,
  `ten_phong_ban` varchar(255) NOT NULL,
  `ngay_vi_pham` date NOT NULL,
  `hinh_thuc_phat` varchar(255) NOT NULL,
  `tinh_trang_nop_phat` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Cấu trúc bảng cho bảng `dang_ki_nghi`
--
CREATE TABLE `dang_ki_nghi` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) NOT NULL,
  `ten_nhan_vien` varchar(255) NOT NULL,
  `phong_ban_id` int(11) NOT NULL,
  `ten_phong_ban` varchar(255) NOT NULL,
  `ngay_dang_ki` date NOT NULL,
  `li_do` varchar(255) NOT NULL,
  `tinh_trang_phe_duyet` varchar(255) NOT NULL,
  `nguoi_phe_duyet_id` int(11) NOT NULL,
  `nguoi_phe_duyet` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_dt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Chỉ mục cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);



--
-- Chỉ mục cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`id`);


--
-- Chỉ mục cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai_nv_id` (`loai_nv_id`),
  ADD KEY `phong_ban_id` (`phong_ban_id`),
  ADD KEY `chuc_vu_id` (`chuc_vu_id`);

--
-- Chỉ mục cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  ADD PRIMARY KEY (`id`);


--
-- Chỉ mục cho bảng `loi_vi_pham`
--
ALTER TABLE `loi_vi_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`),
  ADD KEY `phong_ban_id` (`phong_ban_id`);


--
-- Chỉ mục cho bảng `dang_ki_nghi`
--
ALTER TABLE `dang_ki_nghi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_id` (`nhanvien_id`),
  ADD KEY `phong_ban_id` (`phong_ban_id`);


--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--

--
-- AUTO_INCREMENT cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;


--
-- AUTO_INCREMENT cho bảng `loai_nv`
--
ALTER TABLE `loai_nv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `luong`
--
ALTER TABLE `luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


--
-- AUTO_INCREMENT cho bảng `phong_ban`
--
ALTER TABLE `phong_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;


--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chinh_luong`
--
ALTER TABLE `chinh_luong`
  ADD CONSTRAINT `chinh_luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `loi_vi_pham`
--
ALTER TABLE `loi_vi_pham`
  ADD CONSTRAINT `loi_vi_pham_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loi_vi_pham_ibfk_2` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `dang_ki_nghi`
--
ALTER TABLE `dang_ki_nghi`
  ADD CONSTRAINT `dang_ki_nghi_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dang_ki_nghi_ibfk_2` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `luong`
--
ALTER TABLE `luong`
  ADD CONSTRAINT `luong_ibfk_1` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`loai_nv_id`) REFERENCES `loai_nv` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`phong_ban_id`) REFERENCES `phong_ban` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_ibfk_9` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
