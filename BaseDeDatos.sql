USE [master]
GO
/****** Object:  Database [InfoUsuario]    Script Date: 4/7/2025 15:42:11 ******/
CREATE DATABASE [InfoUsuario]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InfoUsuario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\InfoUsuario.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InfoUsuario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\InfoUsuario_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InfoUsuario] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InfoUsuario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InfoUsuario] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InfoUsuario] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InfoUsuario] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InfoUsuario] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InfoUsuario] SET ARITHABORT OFF 
GO
ALTER DATABASE [InfoUsuario] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InfoUsuario] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InfoUsuario] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InfoUsuario] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InfoUsuario] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InfoUsuario] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InfoUsuario] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InfoUsuario] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InfoUsuario] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InfoUsuario] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InfoUsuario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InfoUsuario] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InfoUsuario] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InfoUsuario] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InfoUsuario] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InfoUsuario] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InfoUsuario] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InfoUsuario] SET RECOVERY FULL 
GO
ALTER DATABASE [InfoUsuario] SET  MULTI_USER 
GO
ALTER DATABASE [InfoUsuario] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InfoUsuario] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InfoUsuario] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InfoUsuario] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InfoUsuario] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'InfoUsuario', N'ON'
GO
ALTER DATABASE [InfoUsuario] SET QUERY_STORE = OFF
GO
USE [InfoUsuario]
GO
/****** Object:  User [alumno]    Script Date: 4/7/2025 15:42:11 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Integrante]    Script Date: 4/7/2025 15:42:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integrante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[AmorPlatonico] [varchar](50) NOT NULL,
	[YoutuberFav] [varchar](50) NOT NULL,
	[ComidaFav] [varchar](50) NOT NULL,
	[MarcaDeRopaFav] [varchar](50) NOT NULL,
	[EquipoDeFutbolFav] [varchar](50) NOT NULL,
	[Equipo] [varchar](50) NOT NULL,
	[Foto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Integrante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Integrante] ON 

INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (1, N'Goku', N'kamehameha', N'Milk', N'El Demente', N'Arroz con leche', N'Adidas', N'Boca Juniors', N'Caricaturas', N'goku.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (2, N'Bugs Bunny', N'ehquehay', N'Lola Bunny', N'Marito Baracus', N'Zanahorias', N'Gucci', N'Newell''s', N'Caricaturas', N'bugs.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (3, N'Bob Esponja', N'mojarropa123', N'Arenita', N'MrBeast', N'Cangreburger', N'H&M', N'Estudiantes', N'Caricaturas', N'bob.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (4, N'Shaggy', N'sandwichXD', N'Velma', N'Luisito Comunica', N'Sándwich triple', N'Nike', N'Atlanta', N'Caricaturas', N'shaggy.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (5, N'Bart Simpson', N'aycaramba', N'Laura Powers', N'El Rubius', N'Pizza fría', N'Supreme', N'Argentinos Jrs', N'Caricaturas', N'bart.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (6, N'Lionel Messi', N'goat10', N'Antonela Roccuzzo', N'Ibai', N'Milanesa', N'Adidas', N'Inter Miami', N'Futbolistas', N'messi.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (7, N'Ángel Di María', N'fideo11', N'Jorgelina Cardoso', N'Coscu', N'Empanadas', N'Kappa', N'Rosario Central', N'Futbolistas', N'dimaria.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (8, N'Emiliano Martínez', N'dibu1', N'María Sol', N'El Demente', N'Asado', N'Nike', N'Arsenal', N'Futbolistas', N'dibu.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (9, N'Paulo Dybala', N'dybala21', N'Oriana Sabatini', N'Spreen', N'Fideos', N'Puma', N'AS Roma', N'Futbolistas', N'dybala.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (10, N'Rodrigo De Paul', N'motorcito', N'Tini Stoessel', N'Alejo Igoa', N'Tarta', N'Balenciaga', N'Atlético Madrid', N'Futbolistas', N'depaul.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (11, N'Coscu', N'coscuArmy', N'Cami Mayan', N'Ibai', N'Hamburguesas', N'Nike', N'Boca Juniors', N'Streamers', N'coscu.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (12, N'Momo', N'momodefe', N'Tini Stoessel', N'Spreen', N'Panchos', N'Adidas', N'Gimnasia', N'Streamers', N'momo.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (13, N'Spreen', N'spreendmc', N'Pimpeano', N'El Demente', N'Arepas', N'Fila', N'Lanús', N'Streamers', N'spreen.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (14, N'Pimpeano', N'elquepimpea', N'Nicki Nicole', N'Coscu', N'Tacos', N'Puma', N'Argentinos Jrs', N'Streamers', N'pimpeano.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (15, N'El Demente', N'demencial', N'Lali Espósito', N'Yao Cabrera', N'Milanesa', N'Reebok', N'Vélez', N'Streamers', N'demente.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (16, N'Vegeta', N'principeSayayin', N'Bulma', N'Spreen', N'Asado', N'Puma', N'River Plate', N'Caricaturas', N'vegeta.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (17, N'Daffy Duck', N'patodesquiciado', N'Tina Russo', N'Dross', N'Tarta de espinaca', N'Zara', N'Racing Club', N'Caricaturas', N'daffy.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (18, N'Patricio Estrella', N'rocoso', N'Nadie', N'Coscu', N'Helado', N'Fila', N'Tigre', N'Caricaturas', N'patricio.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (19, N'Scooby-Doo', N'scooby2024', N'Galletas Scooby', N'Ibai', N'Galletas', N'Columbia', N'Huracán', N'Caricaturas', N'scooby.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (20, N'Homero Simpson', N'cervezaDuff', N'Marge', N'Alejo Igoa', N'Donas', N'Kosiuko', N'San Lorenzo', N'Caricaturas', N'homero.jpg')
SET IDENTITY_INSERT [dbo].[Integrante] OFF
GO
USE [master]
GO
ALTER DATABASE [InfoUsuario] SET  READ_WRITE 
GO
