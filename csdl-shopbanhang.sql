USE [master]
GO
/****** Object:  Database [SHOP]    Script Date: 8/10/2020 12:03:52 PM ******/
CREATE DATABASE [SHOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SHOP', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SHOP.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SHOP_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SHOP_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SHOP] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SHOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SHOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SHOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SHOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SHOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SHOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SHOP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SHOP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SHOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SHOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SHOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SHOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SHOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SHOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SHOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SHOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SHOP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SHOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SHOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SHOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SHOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SHOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SHOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SHOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SHOP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SHOP] SET  MULTI_USER 
GO
ALTER DATABASE [SHOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SHOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SHOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SHOP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SHOP]
GO
/****** Object:  StoredProcedure [dbo].[KHONGDAU]    Script Date: 8/10/2020 12:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KHONGDAU] @inputVar nvarchar(50)
AS
BEGIN    
    IF (@inputVar IS NULL OR @inputVar = '')  RETURN ''
   
    DECLARE @RT NVARCHAR(MAX)
    DECLARE @SIGN_CHARS NCHAR(256)
    DECLARE @UNSIGN_CHARS NCHAR (256)
 
    SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệếìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵýĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' + NCHAR(272) + NCHAR(208)
    SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeeeiiiiiooooooooooooooouuuuuuuuuuyyyyyAADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIIIOOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD'
 
    DECLARE @COUNTER int
    DECLARE @COUNTER1 int
   
    SET @COUNTER = 1
    WHILE (@COUNTER <= LEN(@inputVar))
    BEGIN  
        SET @COUNTER1 = 1
        WHILE (@COUNTER1 <= LEN(@SIGN_CHARS) + 1)
        BEGIN
            IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@inputVar,@COUNTER ,1))
            BEGIN          
                IF @COUNTER = 1
                    SET @inputVar = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)-1)      
                ELSE
                    SET @inputVar = SUBSTRING(@inputVar, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@inputVar, @COUNTER+1,LEN(@inputVar)- @COUNTER)
                BREAK
            END
            SET @COUNTER1 = @COUNTER1 +1
        END
        SET @COUNTER = @COUNTER +1
    END
    RETURN @inputVar
END

GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 8/10/2020 12:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MADM] [int] IDENTITY(1,1) NOT NULL,
	[TENDM] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MADM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 8/10/2020 12:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[MASP] [int] NULL,
	[MATK] [int] NULL,
	[GIA] [money] NULL,
	[SOLUONG] [int] NULL,
	[HTTT] [nvarchar](100) NULL,
	[tinhtrang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 8/10/2020 12:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[GIA] [money] NULL,
	[IMG] [nvarchar](100) NULL,
	[MOTA] [ntext] NULL,
	[MADM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 8/10/2020 12:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MATK] [int] IDENTITY(1,1) NOT NULL,
	[MK] [nvarchar](30) NULL,
	[TENTK] [nvarchar](50) NULL,
	[HOTEN] [nvarchar](100) NULL,
	[GT] [nchar](10) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[SDT] [nvarchar](100) NULL,
	[DIACHI] [ntext] NULL,
	[CAP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (1, N'Áo')
INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (2, N'Quần')
INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (3, N'Phụ kiện')
INSERT [dbo].[DANHMUC] ([MADM], [TENDM]) VALUES (10, N'Dép')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (1, 1, 2, 8000.0000, 4, N'Thanh toán tiền mặt khi nhận hàng', N'Đặt hàng')
INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (2, 2, 2, 2.0000, 3, N'Thanh toán tiền mặt khi nhận hàng', N'Đã hủy')
INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (4, 1, 4, 8.0000, 1, N'Thanh toán tiền mặt khi nhận hàng', N'Đặt hàng')
INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (5, 1, 5, 8.0000, 2, N'Thanh toán tiền mặt khi nhận hàng', N'Đặt hàng')
INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (6, 3, 5, 4.0000, 1, N'Thanh toán tiền mặt khi nhận hàng', N'Đã hủy')
INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (7, 3, 7, 4.0000, 1, N'Thanh toán tiền mặt khi nhận hàng', N'Đã hủy')
INSERT [dbo].[HOADON] ([MAHD], [MASP], [MATK], [GIA], [SOLUONG], [HTTT], [tinhtrang]) VALUES (8, 1, 8, 8.0000, 1, N'Thanh toán tiền mặt khi nhận hàng', N'Đã hủy')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [IMG], [MOTA], [MADM]) VALUES (1, N'Áo thun 1', 8.0000, N'1.jpg', N'Áo thun Polo nam Casual 1st có cổ tay ngắn cộc', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [IMG], [MOTA], [MADM]) VALUES (2, N'Áo thun 2', 2.0000, N'2.jpg', N'Áo thun Polo nam Casual 1st có cổ tay ngắn cộc', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [IMG], [MOTA], [MADM]) VALUES (3, N'Túi đeo chéo ', 4.0000, N'4.jpg', N'Túi đeo chéo dạng hộp chống thấm nước', 3)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [IMG], [MOTA], [MADM]) VALUES (4, N'Áo thun 3', 6.0000, N'3.jpg', N'Áo thun Polo nam Casual 1st có cổ tay ngắn cộc', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [GIA], [IMG], [MOTA], [MADM]) VALUES (9, N'Dép Lào', 11.0000, N'deplao.jpg', N'Dép lào 1', 10)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (1, N'123', NULL, N'a', N' NAM      ', N'a@g.com', N'444', N'112', 9)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (2, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'vr.numeron@gmail.com', N'aaaa', N'11', 1)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (3, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'ab@g.com', N'Hồ Chí Minh', N'12311', 1)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (4, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'abb@g.com', N'Hồ Chí Minh', N'1112334', 1)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (5, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'abbb@g.com', N'Hồ Chí Minh', N'11345', 1)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (6, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'ac@g.com', N'Hồ Chí Minh', N'11', 1)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (7, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'ad@g.com', N'Hồ Chí Minh', N'1111', 1)
INSERT [dbo].[TAIKHOAN] ([MATK], [MK], [TENTK], [HOTEN], [GT], [EMAIL], [SDT], [DIACHI], [CAP]) VALUES (8, N'123', NULL, N'Lê Thanh Lâm', N'Nam       ', N'ae@g.com', N'Hồ Chí Minh', N'115', 1)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
ALTER TABLE [dbo].[HOADON] ADD  DEFAULT ((1)) FOR [SOLUONG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_SANPHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_TAIKHOAN] FOREIGN KEY([MATK])
REFERENCES [dbo].[TAIKHOAN] ([MATK])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_TAIKHOAN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUC] FOREIGN KEY([MADM])
REFERENCES [dbo].[DANHMUC] ([MADM])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUC]
GO
USE [master]
GO
ALTER DATABASE [SHOP] SET  READ_WRITE 
GO
