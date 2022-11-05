CREATE DATABASE CMS_DB

USE CMS_DB
GO
/****** Object:  Table [dbo].[Adresler]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresler](
	[AdresID] [int] IDENTITY(1,1) NOT NULL,
	[AdresTipi] [int] NOT NULL,
	[Baslik] [nvarchar](100) NOT NULL,
	[AdresDetay] [nvarchar](150) NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[Faks] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Adresler] PRIMARY KEY CLUSTERED 
(
	[AdresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BankaHesaplari]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankaHesaplari](
	[BankaHesapID] [int] IDENTITY(1,1) NOT NULL,
	[BankaAdi] [nvarchar](50) NOT NULL,
	[SubeNo] [nvarchar](10) NOT NULL,
	[SubeAdi] [nvarchar](50) NOT NULL,
	[SwiftKodu] [nvarchar](20) NOT NULL,
	[HesapNo] [nvarchar](50) NOT NULL,
	[ParaBirimi] [nvarchar](10) NOT NULL,
	[IBAN] [nvarchar](50) NOT NULL,
	[SiraNo] [int] NULL,
 CONSTRAINT [PK_BankaHesaplari] PRIMARY KEY CLUSTERED 
(
	[BankaHesapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diller]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diller](
	[DilID] [int] IDENTITY(1,1) NOT NULL,
	[DilAdi] [nvarchar](max) NULL,
	[Kisaltma] [nvarchar](max) NULL,
	[IconUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Diller] PRIMARY KEY CLUSTERED 
(
	[DilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Durumlar]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Durumlar](
	[DurumID] [int] IDENTITY(1,1) NOT NULL,
	[DurumAdi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Durumlar] PRIMARY KEY CLUSTERED 
(
	[DurumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gorevler]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gorevler](
	[GorevID] [int] IDENTITY(1,1) NOT NULL,
	[EklenmeTarihi] [datetime] NOT NULL,
	[GorevAdi] [nvarchar](max) NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.Gorevler] PRIMARY KEY CLUSTERED 
(
	[GorevID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gruplar]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gruplar](
	[GrupID] [int] IDENTITY(1,1) NOT NULL,
	[GrupAdi] [nvarchar](max) NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.Gruplar] PRIMARY KEY CLUSTERED 
(
	[GrupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrupRolHaklari]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupRolHaklari](
	[GrupRolHakID] [int] IDENTITY(1,1) NOT NULL,
	[GrupID] [int] NOT NULL,
	[RolID] [int] NOT NULL,
	[HakID] [int] NOT NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.GrupRolHaklari] PRIMARY KEY CLUSTERED 
(
	[GrupRolHakID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Haklar]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haklar](
	[HakID] [int] IDENTITY(1,1) NOT NULL,
	[HakAdi] [nvarchar](max) NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.Haklar] PRIMARY KEY CLUSTERED 
(
	[HakID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IcerikDetaylari]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IcerikDetaylari](
	[IcerikDetayID] [int] IDENTITY(1,1) NOT NULL,
	[IcerikID] [int] NOT NULL,
	[DilID] [int] NOT NULL,
	[IcerikTipiID] [int] NOT NULL,
	[Url] [nvarchar](max) NULL,
	[Baslik] [nvarchar](max) NULL,
	[KisaAciklama] [nvarchar](max) NULL,
	[Ozet] [nvarchar](max) NULL,
	[GenisOzet] [nvarchar](max) NULL,
	[Detay] [nvarchar](max) NULL,
	[KucukResimUrl] [nvarchar](max) NULL,
	[OrtaResimUrl] [nvarchar](max) NULL,
	[BuyukResimUrl] [nvarchar](max) NULL,
	[IcerikUrl] [nvarchar](max) NULL,
	[SiraNo] [int] NOT NULL,
	[Manset] [bit] NOT NULL,
	[DurumuID] [int] NOT NULL,
	[EkleyenKullaniciID] [int] NOT NULL,
	[KategoriID] [int] NULL,
	[AltKategoriID] [int] NULL,
	[EklenmeTarihi] [datetime] NOT NULL,
	[UrunKodu] [nvarchar](max) NULL,
	[StokKodu] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IcerikDetaylari] PRIMARY KEY CLUSTERED 
(
	[IcerikDetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Icerikler]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Icerikler](
	[IcerikID] [int] IDENTITY(1,1) NOT NULL,
	[UstIcerikID] [int] NULL,
	[IcerikTipiID] [int] NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[EkleyenKullaniciID] [int] NOT NULL,
	[EklenmeTarihi] [datetime] NOT NULL,
	[DurumuID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Icerikler] PRIMARY KEY CLUSTERED 
(
	[IcerikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IcerikTipleri]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IcerikTipleri](
	[IcerikTipiID] [int] IDENTITY(1,1) NOT NULL,
	[IcerikTipiAdi] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IcerikTipleri] PRIMARY KEY CLUSTERED 
(
	[IcerikTipiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[GorevID] [int] NOT NULL,
	[GrupID] [int] NOT NULL,
	[Ad] [nvarchar](20) NULL,
	[Soyad] [nvarchar](20) NULL,
	[KullaniciAdi] [nvarchar](20) NULL,
	[Sifre] [nvarchar](20) NULL,
	[FotoUrl] [nvarchar](100) NULL,
	[EklenmeTarihi] [datetime] NOT NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KullaniciRolHaklari]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciRolHaklari](
	[KullaniciRolHakID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NOT NULL,
	[RolID] [int] NOT NULL,
	[HakID] [int] NOT NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.KullaniciRolHaklari] PRIMARY KEY CLUSTERED 
(
	[KullaniciRolHakID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MailListesi]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailListesi](
	[MailListesiID] [int] IDENTITY(1,1) NOT NULL,
	[Eposta] [nvarchar](max) NULL,
	[EklenmeTarihi] [datetime] NOT NULL,
	[Durumu] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MailListesi] PRIMARY KEY CLUSTERED 
(
	[MailListesiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roller]    Script Date: 5.11.2022 15:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[RolID] [int] IDENTITY(1,1) NOT NULL,
	[RolNo] [int] NOT NULL,
	[UstRolNo] [int] NULL,
	[RolAdi] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[MenudeGoster] [bit] NOT NULL,
	[AnaMenu] [bit] NOT NULL,
	[Sira] [int] NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[EkleyenKullaniciID] [int] NULL,
	[GuncelleyenKullaniciID] [int] NULL,
 CONSTRAINT [PK_dbo.Roller] PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[GrupRolHaklari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupRolHaklari_dbo.Gruplar_GrupID] FOREIGN KEY([GrupID])
REFERENCES [dbo].[Gruplar] ([GrupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupRolHaklari] CHECK CONSTRAINT [FK_dbo.GrupRolHaklari_dbo.Gruplar_GrupID]
GO
ALTER TABLE [dbo].[GrupRolHaklari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupRolHaklari_dbo.Haklar_HakID] FOREIGN KEY([HakID])
REFERENCES [dbo].[Haklar] ([HakID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupRolHaklari] CHECK CONSTRAINT [FK_dbo.GrupRolHaklari_dbo.Haklar_HakID]
GO
ALTER TABLE [dbo].[GrupRolHaklari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupRolHaklari_dbo.Roller_RolID] FOREIGN KEY([RolID])
REFERENCES [dbo].[Roller] ([RolID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupRolHaklari] CHECK CONSTRAINT [FK_dbo.GrupRolHaklari_dbo.Roller_RolID]
GO
ALTER TABLE [dbo].[IcerikDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IcerikDetaylari_dbo.Diller_DilID] FOREIGN KEY([DilID])
REFERENCES [dbo].[Diller] ([DilID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IcerikDetaylari] CHECK CONSTRAINT [FK_dbo.IcerikDetaylari_dbo.Diller_DilID]
GO
ALTER TABLE [dbo].[IcerikDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IcerikDetaylari_dbo.Durumlar_DurumuID] FOREIGN KEY([DurumuID])
REFERENCES [dbo].[Durumlar] ([DurumID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IcerikDetaylari] CHECK CONSTRAINT [FK_dbo.IcerikDetaylari_dbo.Durumlar_DurumuID]
GO
ALTER TABLE [dbo].[IcerikDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IcerikDetaylari_dbo.Icerikler_IcerikID] FOREIGN KEY([IcerikID])
REFERENCES [dbo].[Icerikler] ([IcerikID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IcerikDetaylari] CHECK CONSTRAINT [FK_dbo.IcerikDetaylari_dbo.Icerikler_IcerikID]
GO
ALTER TABLE [dbo].[Icerikler]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Icerikler_dbo.Icerikler_UstIcerikID] FOREIGN KEY([UstIcerikID])
REFERENCES [dbo].[Icerikler] ([IcerikID])
GO
ALTER TABLE [dbo].[Icerikler] CHECK CONSTRAINT [FK_dbo.Icerikler_dbo.Icerikler_UstIcerikID]
GO
ALTER TABLE [dbo].[Icerikler]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Icerikler_dbo.IcerikTipleri_IcerikTipiID] FOREIGN KEY([IcerikTipiID])
REFERENCES [dbo].[IcerikTipleri] ([IcerikTipiID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Icerikler] CHECK CONSTRAINT [FK_dbo.Icerikler_dbo.IcerikTipleri_IcerikTipiID]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Kullanicilar_dbo.Gorevler_GorevID] FOREIGN KEY([GorevID])
REFERENCES [dbo].[Gorevler] ([GorevID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_dbo.Kullanicilar_dbo.Gorevler_GorevID]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Kullanicilar_dbo.Gruplar_GrupID] FOREIGN KEY([GrupID])
REFERENCES [dbo].[Gruplar] ([GrupID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_dbo.Kullanicilar_dbo.Gruplar_GrupID]
GO
ALTER TABLE [dbo].[KullaniciRolHaklari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KullaniciRolHaklari_dbo.Haklar_HakID] FOREIGN KEY([HakID])
REFERENCES [dbo].[Haklar] ([HakID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KullaniciRolHaklari] CHECK CONSTRAINT [FK_dbo.KullaniciRolHaklari_dbo.Haklar_HakID]
GO
ALTER TABLE [dbo].[KullaniciRolHaklari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KullaniciRolHaklari_dbo.Kullanicilar_KullaniciID] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullaniciID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KullaniciRolHaklari] CHECK CONSTRAINT [FK_dbo.KullaniciRolHaklari_dbo.Kullanicilar_KullaniciID]
GO
ALTER TABLE [dbo].[KullaniciRolHaklari]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KullaniciRolHaklari_dbo.Roller_RolID] FOREIGN KEY([RolID])
REFERENCES [dbo].[Roller] ([RolID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KullaniciRolHaklari] CHECK CONSTRAINT [FK_dbo.KullaniciRolHaklari_dbo.Roller_RolID]
GO
