USE [tkb]
GO
/****** Object:  Table [dbo].[Giaovien]    Script Date: 15/04/2025 1:57:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giaovien](
	[magv] [varchar](12) NOT NULL,
	[tengv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Giaovien] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 15/04/2025 1:57:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[malop] [varchar](12) NOT NULL,
	[tenlop] [nvarchar](50) NOT NULL,
	[magv] [varchar](12) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Monhoc]    Script Date: 15/04/2025 1:57:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Monhoc](
	[mamon] [varchar](10) NOT NULL,
	[tenmon] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Monhoc_1] PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phonghoc]    Script Date: 15/04/2025 1:57:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phonghoc](
	[maphong] [varchar](20) NOT NULL,
	[tenphong] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Phonghoc] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thoikhoabieu]    Script Date: 15/04/2025 1:57:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thoikhoabieu](
	[stt] [int] NOT NULL,
	[magv] [varchar](12) NULL,
	[malop] [varchar](12) NULL,
	[mamon] [varchar](10) NOT NULL,
	[maphong] [varchar](20) NULL,
	[thu] [int] NULL,
	[tietbatdau] [int] NULL,
	[sotiet] [int] NULL,
	[giovao] [time](7) NOT NULL,
	[giora] [time](7) NOT NULL,
	[ngay] [date] NULL,
 CONSTRAINT [PK_Thoikhoabieu] PRIMARY KEY CLUSTERED 
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_magvkey] FOREIGN KEY([magv])
REFERENCES [dbo].[Giaovien] ([magv])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_magvkey]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [FK_Thoikhoabieu_Giaovien] FOREIGN KEY([magv])
REFERENCES [dbo].[Giaovien] ([magv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [FK_Thoikhoabieu_Giaovien]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [FK_Thoikhoabieu_Lop] FOREIGN KEY([malop])
REFERENCES [dbo].[Lop] ([malop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [FK_Thoikhoabieu_Lop]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [FK_Thoikhoabieu_Monhoc] FOREIGN KEY([mamon])
REFERENCES [dbo].[Monhoc] ([mamon])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [FK_Thoikhoabieu_Monhoc]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [FK_Thoikhoabieu_Phonghoc] FOREIGN KEY([maphong])
REFERENCES [dbo].[Phonghoc] ([maphong])
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [FK_Thoikhoabieu_Phonghoc]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [CK_Thoikhoabieu_ngay] CHECK  (([ngay]<='2025-6-1'))
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [CK_Thoikhoabieu_ngay]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [CK_Thoikhoabieu_sotiet] CHECK  (([sotiet]<=(4) AND [sotiet]>=(1)))
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [CK_Thoikhoabieu_sotiet]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [CK_Thoikhoabieu_thu] CHECK  (([thu]>=(2) AND [thu]<=(7)))
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [CK_Thoikhoabieu_thu]
GO
ALTER TABLE [dbo].[Thoikhoabieu]  WITH CHECK ADD  CONSTRAINT [CK_Thoikhoabieu_tietbatdau] CHECK  (([tietbatdau]<=(10) AND [tietbatdau]>=(1)))
GO
ALTER TABLE [dbo].[Thoikhoabieu] CHECK CONSTRAINT [CK_Thoikhoabieu_tietbatdau]
GO
