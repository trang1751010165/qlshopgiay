USE [master]
GO
/****** Object:  Database [qlbanhang]    Script Date: 17/02/2020 11:36:34 AM ******/
CREATE DATABASE [qlbanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlbanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\qlbanhang.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlbanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\qlbanhang_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [qlbanhang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlbanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlbanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlbanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlbanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlbanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlbanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlbanhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qlbanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlbanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlbanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlbanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlbanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlbanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlbanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlbanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlbanhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlbanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlbanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlbanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlbanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlbanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlbanhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlbanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlbanhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlbanhang] SET  MULTI_USER 
GO
ALTER DATABASE [qlbanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlbanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlbanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlbanhang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [qlbanhang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [qlbanhang]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 17/02/2020 11:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [nvarchar](5) NOT NULL,
	[MaSP] [nvarchar](4) NOT NULL,
	[Soluong] [smallint] NULL,
	[DongiaBan] [real] NULL,
	[Giamgia] [real] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 17/02/2020 11:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](5) NOT NULL,
	[MaKH] [nvarchar](4) NULL,
	[MaNV] [int] NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[NgayGiaoHang] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 17/02/2020 11:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](4) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](30) NULL,
	[DienThoai] [nvarchar](7) NULL,
	[Fax] [nvarchar](12) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 17/02/2020 11:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] NOT NULL,
	[TenLoaiSP] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 17/02/2020 11:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 17/02/2020 11:36:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[Donvitinh] [nvarchar](8) NULL,
	[Dongia] [float] NULL,
	[MaLoaiSP] [int] NULL,
	[HinhSP] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH01', N'Anh Hang', N'120 Ha Ton Quyen', N'8171717', N'084088171717', N'hang@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH02', N'Bong Hong', N'24 Ky Con', N'', N'084088800256', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH03', N'Em Anh', N'6 Ky Hoa', N'', N'084088852258', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH04', N'Ho Han', N'8 Pham van Khoe', N'8430156', N'084088430156', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH05', N'Koko Company', N'90 An Duong Vuong', N'8250102', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH06', N'Queen Cozinha', N'891 An Duong Vuong', N'', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH07', N'Quoc Cuong', N'10 Tan Da', N'8950203', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH08', N'Suoi Tra', N'2817 Minh Phung', N'8356210', N'084088356210', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH09', N'Song Trang', N'187 Lao Tu', N'9450210', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH10', N'Vinh Vien', N'45 Su Van hanh', N'', N'084088654790', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH11', N'TRần Vĩnh Viễn', N'87 Trần Hưng Đạo', N'8855464', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH12', N'Lý Văn Trung', N'123 Tân Tẩn', N'', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH13', N'Cty Minh Hằng', N'456 Công Hòa', N'', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH14', N'Cty Nghĩa Đường', N'12 Lý chính Thắng', N'9874564', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH15', N'Minh Anh', N'15/1 Hậu Giang', N'6548797', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH16', N'Trần Tùng', N'12/15 Hậu Nghĩa', N'6547898', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH17', N'Cty Vĩnh Lợi', N'1812 TRần Quang Khải', N'', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH18', N'Cty Thái Bình Dương', N'145 Nguyễn Huệ', N'6548797', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH19', N'Cty Thần Tài', N'14 Lê Lợi', N'6523154', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH20', N'Cty Trần Văn Thời', N'45 Nguyễn Thị Minh Khai', N'4561234', N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH21', N'Công ty Thành Lợi', N'Q1 TP.HCM', N'0913123', N'0913123456', N'hung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH22', N'Trần Hùng', N'Công ty TNHH Thành Lợi', N'0913123', N'0913123456', N'hung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax], [Email]) VALUES (N'KH23', N'aaa', N'aaa', N'0913123', N'0913123456', N'hung@gmail.com')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Giày Nam')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Giày Nữ')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Giày Trẻ Em')
SET IDENTITY_INSERT [dbo].[Nhanvien] ON 

INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (1, N'Lê văn', N'Tâm', N'45 Trần Phú', N'8663447')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (2, N'Trần thị', N'An', N'15 Nguyễn Trãi', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (3, N'Tạ Thành', N'Tâm', N'20 Võ thị Sáu', N'8565666')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (4, N'Ngô Thành', N'Sơn', N'122 Trần Phú', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (5, N'Lê thị', N'Thuỷ', N'25 Ngô Quyền', N'9767677')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (6, N'Nguyễn Hữu', N'An', N'12 Lê Thánh Tôn', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (7, N'Thái Chí', N'An', N'97 Võ văn Tần', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (8, N'Trần Văn', N'Thanh', N'25 Trần Văn Đang', N'0918158')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (9, N'Nguyễn Dũng', N'Nghi', N'65 Trần Văn Thời', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (10, N'Lê Thế', N'Bảo', N'12 Lê Quý Đôn', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (11, N'Lê Dũng', N'Nguyễn', N'321 Lê Lợi', N'6987456')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (12, N'Nguyễn Thị', N'Thủy', N'654 Nguyễn Huệ', N'9998745')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (13, N'Nguyễn Thu', N'Hồng', N'987 Lê Lợi', N'9874561')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (14, N'Trần Thị Thủy', N'Tiên', N'6543 Nguyễn Huệ', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (15, N'Lê Thị', N'Hiền', N'654 Mai Xuân Thời', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (16, N'Trần Văn', N'Thanh', N'Tân Bình', N'123456')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (17, N'Trần Văn', N'Thành', N'Tân Bình', N'12345')
SET IDENTITY_INSERT [dbo].[Nhanvien] OFF
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N01', N'ADIDAS ULTRA BOOST 20 BLACK', N'đôi', 3500000, 1, N'images/giaynam1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N02', N'ADIDAS ULTRA BOOST 20 WHITE', N'đôi', 3500000, 1, N'images/giaynam2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N03', N'ADIDAS YEZY BOOST 350 YELLOW', N'đôi', 3300000,1, N'images/giaynam3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N04', N'ADIDAS ULTRA BOOST 20 BLUE ', N'đôi', 300000, 1, N'images/giaynam4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N05', N'ADIDAS YEEZY 700 V3', N'đôi',4500000, 1, N'Images/giaynam5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N06', N'ADIDAS ULTRA BOOST 5.0 ', N'đôi', 5500000,1, N'images/giaynam6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N07', N'ADIDAS ULTRA BOOST 20 ', N'đôi', 2500000, 1, N'images/giaynam7.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N08', N'ADIDAS ZEEZY BOOST 350  ', N'đôi', 3700000,1, N'images/giaynam8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'N09', N'ADIDAS ULTRA BOOST 5.0', N'đôi', 4200000,1, N'images/giaynam9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G01', N'ADIDAS YEEZY 700 V3 PINK', N'đôi',5000000,2, N'images/giaynu1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G02', N'NIKE WHITE ', N'đôi', 2100000,2, N'images/giaynu2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G03', N'ADIDAS ULTRA BOOST 20 MULTI CORLOR', N'đôi', 200000, 2, N'images/giaynu3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G04', N'ADIDAS YELLOW', N'đôi',3200000, 2, N'images/giaynu4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G05', N'ADIDAS WHITE', N'đôi', 1100000, 2, N'images/giaynu5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G06', N'NIKE MULTI CORLOR', N'đôi', 1500000,2, N'images/giaynu6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G07', N'NIKE AIR FORCE 1', N'đôi', 3600000, 2, N'images/giaynu7.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G08', N'NIKE JORDAN 1 ', N'đôi', 5500000,2, N'images/giaynu8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'G09', N'NIKE SF AF', N'đôi', 2700000,2, N'Images/giaynu9.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T01', N'NIKE POPULAR', N'đôi', 4000000,3, N'images/giaytreem1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T02', N'NIKE AIR', N'đôi', 1200000, 3, N'images/giaytreem2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T03', N'NIKE KID REVOLUTION', N'đôi', 1500000, 3, N'Images/giaytreem3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T04', N'NIKE KID UNISEX', N'đôi', 2100000, 3, N'Images/giaytreem4.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T05', N'NIKE AIR MAX', N'đôi', 2300000,3, N'images/giaytreem5.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T06', N'NIKE KID FREE RN"', N'đôi', 1700000, 3, N'images/giaytreem6.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T07', N'NIKE KID AIR FORCE', N'đôi', 900000,3, N'images/giaytreem7.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T08', N'ADIDAS KID FREE', N'đôi', 1400000,3, N'images/giaytreem8.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'T09', N'PUMA', N'đôi', 1900000, 3, N'images/giaytreem9.jpg')
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[Nhanvien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Nhanvien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
USE [master]
GO
ALTER DATABASE [qlbanhang] SET  READ_WRITE 
GO