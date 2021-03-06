﻿USE [DFizly]
GO
/****** Object:  Table [dbo].[Actor_tbl]    Script Date: 1.03.2021 21:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[awards] [text] NULL,
 CONSTRAINT [PK_Actor_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actor-Movie_tbl]    Script Date: 1.03.2021 21:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor-Movie_tbl](
	[Movie_id] [int] NOT NULL,
	[Actor_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actor-Series_tbl]    Script Date: 1.03.2021 21:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor-Series_tbl](
	[Series_id] [int] NOT NULL,
	[Actor_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catagories_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catagories_tbl](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Movie_id] [int] NOT NULL,
	[Series_id] [int] NOT NULL,
 CONSTRAINT [PK_Catagories_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapter_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Season_id] [int] NOT NULL,
 CONSTRAINT [PK_Chapter_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[awards] [text] NULL,
 CONSTRAINT [PK_Director_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List-Movie_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List-Movie_tbl](
	[Movie_id] [int] NOT NULL,
	[List_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lists_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lists_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lists_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List-Series_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List-Series_tbl](
	[Series_id] [int] NOT NULL,
	[List_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List-Sub_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List-Sub_tbl](
	[Sub_id] [int] NOT NULL,
	[List_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[p_date] [date] NOT NULL,
	[view] [int] NOT NULL,
	[m_country] [varchar](20) NOT NULL,
	[awards] [text] NULL,
	[Likes] [int] NULL,
	[director_id] [int] NOT NULL,
 CONSTRAINT [PK_Movie_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package_tbl](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[specifications] [text] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_Package_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SeasonNumber] [int] NOT NULL,
	[Series_id] [int] NOT NULL,
 CONSTRAINT [PK_Season_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[s_date] [date] NOT NULL,
	[about] [text] NOT NULL,
	[seasons] [int] NOT NULL,
	[view] [int] NOT NULL,
	[s_country] [varchar](20) NOT NULL,
	[awards] [text] NULL,
	[Likes] [int] NULL,
	[director_id] [int] NOT NULL,
 CONSTRAINT [PK_Series_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subs_tbl]    Script Date: 1.03.2021 21:53:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subs_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[e-mail] [varchar](50) NOT NULL,
	[tel_no] [varchar](11) NOT NULL,
	[bdate] [date] NOT NULL,
	[sex] [varchar](15) NULL,
	[Country] [varchar](20) NULL,
	[s_stdate] [date] NOT NULL,
	[s_enddate] [date] NOT NULL,
	[package_id] [int] NOT NULL,
 CONSTRAINT [PK_Subs_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Package_tbl] ([id], [Name], [specifications], [price]) VALUES (1, N'Standart', N'1 Ay boyunca HD kalitede sınırsız dizi ve film keyfi.', 25)
INSERT [dbo].[Package_tbl] ([id], [Name], [specifications], [price]) VALUES (2, N'Premium', N'1 Ay boyunca 4K ve FullHD kalitede sınırsız dizi ve film keyfi.', 45)
SET IDENTITY_INSERT [dbo].[Subs_tbl] ON 

INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (1, N'Halil Can Yurtman', N'halil123', N'hldlcnyrtmn@gmail.com', N'05355584968', CAST(N'1996-05-06' AS Date), N'Erkek', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 2)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (2, N'Orkun Kabalcı', N'asdasd123', N'orkdn23@gmail.com', N'05355584268', CAST(N'1998-09-05' AS Date), N'Erkek', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (3, N'Samed Can Çiçek', N'aasldsd123', N'smdcncck@gmail.com', N'05965539268', CAST(N'1998-11-11' AS Date), N'Erkek', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (4, N'Gökhan Yücel Turkhan', N'aafsdsd123', N'fdsff@gmail.com', N'05965779268', CAST(N'1998-01-11' AS Date), N'Erkek', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (5, N'Hamdiye Kaya', N'adghd123', N'hdiy2e@gmail.com', N'05940639268', CAST(N'1998-01-08' AS Date), N'Kadın', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (6, N'Oğuzhan Dede', N'oguzhd123', N'ogu3zdd@gmail.com', N'05443246968', CAST(N'1998-09-16' AS Date), N'Erkek', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (7, N'Tulin AKTAŞ ', N'tulinad123', N'tuldnnn@gmail.com', N'05554964682', CAST(N'1998-12-05' AS Date), N'Kadın', N'Türkiye', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (8, N'Orçun İzmirli ', N'orcnizm459', N'orcndizm@gmail.com', N'05333073558', CAST(N'1998-06-08' AS Date), N'Erkek', N'ABD', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (9, N'Steve Jobs ', N'steveeee', N'appledisgood@gmail.com', N'08854924652', CAST(N'1956-06-08' AS Date), N'Erkek', N'ABD', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
INSERT [dbo].[Subs_tbl] ([id], [Name], [Password], [e-mail], [tel_no], [bdate], [sex], [Country], [s_stdate], [s_enddate], [package_id]) VALUES (10, N'Gigi Hadid ', N'gigiisgood', N'impderfect@gmail.com', N'09455565479', CAST(N'1995-06-08' AS Date), N'Kadın', N'ABD', CAST(N'2019-12-01' AS Date), CAST(N'2020-01-01' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Subs_tbl] OFF
ALTER TABLE [dbo].[Actor-Movie_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Actor-Movie_tbl_Actor_tbl] FOREIGN KEY([Actor_id])
REFERENCES [dbo].[Actor_tbl] ([id])
GO
ALTER TABLE [dbo].[Actor-Movie_tbl] CHECK CONSTRAINT [FK_Actor-Movie_tbl_Actor_tbl]
GO
ALTER TABLE [dbo].[Actor-Movie_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Actor-Movie_tbl_Movie_tbl] FOREIGN KEY([Movie_id])
REFERENCES [dbo].[Movie_tbl] ([id])
GO
ALTER TABLE [dbo].[Actor-Movie_tbl] CHECK CONSTRAINT [FK_Actor-Movie_tbl_Movie_tbl]
GO
ALTER TABLE [dbo].[Actor-Series_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Actor-Series_tbl_Actor_tbl] FOREIGN KEY([Actor_id])
REFERENCES [dbo].[Actor_tbl] ([id])
GO
ALTER TABLE [dbo].[Actor-Series_tbl] CHECK CONSTRAINT [FK_Actor-Series_tbl_Actor_tbl]
GO
ALTER TABLE [dbo].[Actor-Series_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Actor-Series_tbl_Series_tbl] FOREIGN KEY([Series_id])
REFERENCES [dbo].[Series_tbl] ([id])
GO
ALTER TABLE [dbo].[Actor-Series_tbl] CHECK CONSTRAINT [FK_Actor-Series_tbl_Series_tbl]
GO
ALTER TABLE [dbo].[Chapter_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_tbl_Season_tbl] FOREIGN KEY([Season_id])
REFERENCES [dbo].[Season_tbl] ([id])
GO
ALTER TABLE [dbo].[Chapter_tbl] CHECK CONSTRAINT [FK_Chapter_tbl_Season_tbl]
GO
ALTER TABLE [dbo].[List-Movie_tbl]  WITH CHECK ADD  CONSTRAINT [FK_List-Movie_tbl_Lists_tbl] FOREIGN KEY([List_id])
REFERENCES [dbo].[Lists_tbl] ([id])
GO
ALTER TABLE [dbo].[List-Movie_tbl] CHECK CONSTRAINT [FK_List-Movie_tbl_Lists_tbl]
GO
ALTER TABLE [dbo].[List-Movie_tbl]  WITH CHECK ADD  CONSTRAINT [FK_List-Movie_tbl_Movie_tbl] FOREIGN KEY([Movie_id])
REFERENCES [dbo].[Movie_tbl] ([id])
GO
ALTER TABLE [dbo].[List-Movie_tbl] CHECK CONSTRAINT [FK_List-Movie_tbl_Movie_tbl]
GO
ALTER TABLE [dbo].[List-Series_tbl]  WITH CHECK ADD  CONSTRAINT [FK_List-Series_tbl_Lists_tbl] FOREIGN KEY([List_id])
REFERENCES [dbo].[Lists_tbl] ([id])
GO
ALTER TABLE [dbo].[List-Series_tbl] CHECK CONSTRAINT [FK_List-Series_tbl_Lists_tbl]
GO
ALTER TABLE [dbo].[List-Series_tbl]  WITH CHECK ADD  CONSTRAINT [FK_List-Series_tbl_Series_tbl] FOREIGN KEY([Series_id])
REFERENCES [dbo].[Series_tbl] ([id])
GO
ALTER TABLE [dbo].[List-Series_tbl] CHECK CONSTRAINT [FK_List-Series_tbl_Series_tbl]
GO
ALTER TABLE [dbo].[List-Sub_tbl]  WITH CHECK ADD  CONSTRAINT [FK_List-Sub_tbl_Lists_tbl] FOREIGN KEY([List_id])
REFERENCES [dbo].[Lists_tbl] ([id])
GO
ALTER TABLE [dbo].[List-Sub_tbl] CHECK CONSTRAINT [FK_List-Sub_tbl_Lists_tbl]
GO
ALTER TABLE [dbo].[List-Sub_tbl]  WITH CHECK ADD  CONSTRAINT [FK_List-Sub_tbl_Subs_tbl] FOREIGN KEY([Sub_id])
REFERENCES [dbo].[Subs_tbl] ([id])
GO
ALTER TABLE [dbo].[List-Sub_tbl] CHECK CONSTRAINT [FK_List-Sub_tbl_Subs_tbl]
GO
ALTER TABLE [dbo].[Movie_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Movie_tbl_Director_tbl] FOREIGN KEY([director_id])
REFERENCES [dbo].[Director_tbl] ([id])
GO
ALTER TABLE [dbo].[Movie_tbl] CHECK CONSTRAINT [FK_Movie_tbl_Director_tbl]
GO
ALTER TABLE [dbo].[Season_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Season_tbl_Series_tbl] FOREIGN KEY([Series_id])
REFERENCES [dbo].[Series_tbl] ([id])
GO
ALTER TABLE [dbo].[Season_tbl] CHECK CONSTRAINT [FK_Season_tbl_Series_tbl]
GO
ALTER TABLE [dbo].[Series_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Series_tbl_Director_tbl] FOREIGN KEY([director_id])
REFERENCES [dbo].[Director_tbl] ([id])
GO
ALTER TABLE [dbo].[Series_tbl] CHECK CONSTRAINT [FK_Series_tbl_Director_tbl]
GO
ALTER TABLE [dbo].[Subs_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Subs_tbl_Package_tbl] FOREIGN KEY([package_id])
REFERENCES [dbo].[Package_tbl] ([id])
GO
ALTER TABLE [dbo].[Subs_tbl] CHECK CONSTRAINT [FK_Subs_tbl_Package_tbl]
GO
