USE [QuanLyDoAn]
GO
/****** Object:  Table [dbo].[Baocao]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baocao](
	[Id] [int] NOT NULL,
	[Url] [nvarchar](max) NULL,
	[Ghichu] [nvarchar](max) NULL,
	[Id_da] [int] NULL,
 CONSTRAINT [PK_Baocao_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congviectuan]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congviectuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[Id_gv] [int] NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
	[Id_da] [int] NULL,
	[Id_sv] [int] NULL,
	[Tuan] [nvarchar](20) NULL,
 CONSTRAINT [PK_Congviectuan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doan]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tenda] [nvarchar](50) NULL,
	[Mota] [nvarchar](max) NULL,
	[Id_gv] [int] NULL,
	[Id_sv] [int] NULL,
	[Id_lda] [int] NULL,
	[Id_cv] [int] NULL,
 CONSTRAINT [PK_Doan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gvhd]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gvhd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Taikhoan] [varchar](50) NOT NULL,
	[Matkhau] [varchar](32) NULL,
	[Hoten] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Sdt] [nchar](20) NULL,
	[Hinh] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDA]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiDA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[MaRole] [int] IDENTITY(1,1) NOT NULL,
	[TenRole] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[MaRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 6/14/2020 3:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Matkhau] [nvarchar](32) NULL,
	[Email] [nchar](50) NULL,
	[Gioitinh] [bit] NULL,
	[Taikhoan] [nchar](32) NULL,
	[Sdt] [varchar](20) NULL,
	[Hinh] [nvarchar](50) NULL,
	[Lop] [nchar](50) NULL,
	[Id_gv] [int] NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_Sinhvien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Baocao]  WITH CHECK ADD  CONSTRAINT [FK_Baocao_Doan] FOREIGN KEY([Id_da])
REFERENCES [dbo].[Doan] ([Id])
GO
ALTER TABLE [dbo].[Baocao] CHECK CONSTRAINT [FK_Baocao_Doan]
GO
ALTER TABLE [dbo].[Congviectuan]  WITH CHECK ADD  CONSTRAINT [FK_Congviectuan_Sinhvien] FOREIGN KEY([Id_sv])
REFERENCES [dbo].[Sinhvien] ([Id])
GO
ALTER TABLE [dbo].[Congviectuan] CHECK CONSTRAINT [FK_Congviectuan_Sinhvien]
GO
ALTER TABLE [dbo].[Doan]  WITH CHECK ADD  CONSTRAINT [FK_Doan_Congviectuan] FOREIGN KEY([Id_cv])
REFERENCES [dbo].[Congviectuan] ([Id])
GO
ALTER TABLE [dbo].[Doan] CHECK CONSTRAINT [FK_Doan_Congviectuan]
GO
ALTER TABLE [dbo].[Doan]  WITH CHECK ADD  CONSTRAINT [FK_Doan_Gvhd] FOREIGN KEY([Id_gv])
REFERENCES [dbo].[Gvhd] ([Id])
GO
ALTER TABLE [dbo].[Doan] CHECK CONSTRAINT [FK_Doan_Gvhd]
GO
ALTER TABLE [dbo].[Doan]  WITH CHECK ADD  CONSTRAINT [FK_Doan_LoaiDA] FOREIGN KEY([Id_lda])
REFERENCES [dbo].[LoaiDA] ([Id])
GO
ALTER TABLE [dbo].[Doan] CHECK CONSTRAINT [FK_Doan_LoaiDA]
GO
ALTER TABLE [dbo].[Doan]  WITH CHECK ADD  CONSTRAINT [FK_Doan_Sinhvien] FOREIGN KEY([Id_sv])
REFERENCES [dbo].[Sinhvien] ([Id])
GO
ALTER TABLE [dbo].[Doan] CHECK CONSTRAINT [FK_Doan_Sinhvien]
GO
