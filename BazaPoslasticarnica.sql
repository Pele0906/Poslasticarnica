USE [master]
GO
/****** Object:  Database [Poslasticarnica]    Script Date: 6/2/2020 2:53:05 PM ******/
CREATE DATABASE [Poslasticarnica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Poslasticarnica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Poslasticarnica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Poslasticarnica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Poslasticarnica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Poslasticarnica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Poslasticarnica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Poslasticarnica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Poslasticarnica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Poslasticarnica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Poslasticarnica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Poslasticarnica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Poslasticarnica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Poslasticarnica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Poslasticarnica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Poslasticarnica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Poslasticarnica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Poslasticarnica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Poslasticarnica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Poslasticarnica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Poslasticarnica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Poslasticarnica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Poslasticarnica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Poslasticarnica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Poslasticarnica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Poslasticarnica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Poslasticarnica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Poslasticarnica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Poslasticarnica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Poslasticarnica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Poslasticarnica] SET  MULTI_USER 
GO
ALTER DATABASE [Poslasticarnica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Poslasticarnica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Poslasticarnica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Poslasticarnica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Poslasticarnica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Poslasticarnica] SET QUERY_STORE = OFF
GO
USE [Poslasticarnica]
GO
/****** Object:  Table [dbo].[Posetilac]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posetilac](
	[IDPosetioca] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Lozinka] [nvarchar](50) NOT NULL,
	[KorisnickoIme] [nvarchar](50) NOT NULL,
	[PosetilacJeAdministrator] [bit] NOT NULL,
 CONSTRAINT [PK_Posetilac] PRIMARY KEY CLUSTERED 
(
	[IDPosetioca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poslastice]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poslastice](
	[IDPoslastice] [int] IDENTITY(1,1) NOT NULL,
	[VrstaPoslastice] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPoslastice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recepti]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recepti](
	[IDRecepta] [int] IDENTITY(1,1) NOT NULL,
	[NazivRecepta] [nvarchar](50) NOT NULL,
	[NacinPripremeRecepta] [nvarchar](max) NOT NULL,
	[SastojciRecepta] [nvarchar](max) NOT NULL,
	[IDPoslastice] [int] NOT NULL,
	[IDPosetioca] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Recepti]  WITH CHECK ADD FOREIGN KEY([IDPosetioca])
REFERENCES [dbo].[Posetilac] ([IDPosetioca])
GO
ALTER TABLE [dbo].[Recepti]  WITH CHECK ADD FOREIGN KEY([IDPoslastice])
REFERENCES [dbo].[Poslastice] ([IDPoslastice])
GO
/****** Object:  StoredProcedure [dbo].[DajPosetiocaPremaKorisnickomImenu]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DajPosetiocaPremaKorisnickomImenu]
@KorisnickoIme nvarchar(50)
as
begin

	select * from Posetilac where KorisnickoIme = @KorisnickoIme
end
GO
/****** Object:  StoredProcedure [dbo].[DajSvePosetioce]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DajSvePosetioce]
as
begin 
	select * from Posetilac
end
GO
/****** Object:  StoredProcedure [dbo].[DajSvePoslastice]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DajSvePoslastice]
AS
BEGIN
 SELECT * FROM Poslastice
END
GO
/****** Object:  StoredProcedure [dbo].[DajSvePoslasticePremaVrsti]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DajSvePoslasticePremaVrsti]
(
@VrstaPoslastice nvarchar(50)
)
AS
select * from Poslastice where VrstaPoslastice=@VrstaPoslastice
GO
/****** Object:  StoredProcedure [dbo].[DajSveRecepte]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DajSveRecepte]
AS
BEGIN
 select *
 from Recepti
 inner join Poslastice on Poslastice.IDPoslastice = Recepti.IDPoslastice
END
GO
/****** Object:  StoredProcedure [dbo].[DodajNoviRecept]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DodajNoviRecept]
( 
@NazivRecepta nvarchar(50),
@SastojciRecepta nvarchar(50),
@NacinPripremeRecepta nvarchar(max),
@IDPoslastice int,
@IDPosetioca int
)
AS
BEGIN
Insert into Recepti(NazivRecepta, SastojciRecepta, NacinPripremeRecepta, IDPoslastice, IDPosetioca) values (@NazivRecepta, @SastojciRecepta, @NacinPripremeRecepta, @IDPoslastice, @IDPosetioca)
END
GO
/****** Object:  StoredProcedure [dbo].[DodajNovogPosetioca]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DodajNovogPosetioca]
@Email nvarchar(50),
@Lozinka nvarchar(50),
@KorisnickoIme nvarchar(50),
@PosetilacJeAdministrator bit
AS
BEGIN
INSERT INTO [dbo].[Posetilac]
           ([Email]
           ,[Lozinka]
           ,[KorisnickoIme]
           ,[PosetilacJeAdministrator])
     VALUES
           (@Email
		   ,@Lozinka
           ,@KorisnickoIme
           ,@PosetilacJeAdministrator)
END
GO
/****** Object:  StoredProcedure [dbo].[DodajNovuPoslasticu]    Script Date: 6/2/2020 2:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DodajNovuPoslasticu]
(@VrstaPoslastice nvarchar (50))
AS
BEGIN
insert into Poslastice (VrstaPoslastice) values (@VrstaPoslastice)
end
GO
USE [master]
GO
ALTER DATABASE [Poslasticarnica] SET  READ_WRITE 
GO
