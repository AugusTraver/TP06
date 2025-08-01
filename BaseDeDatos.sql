USE [master]
GO
/****** Object:  Database [InfoUsuario]    Script Date: 16/7/2025 08:50:12 ******/
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
ALTER DATABASE [InfoUsuario] SET  ENABLE_BROKER 
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
/****** Object:  User [alumno]    Script Date: 16/7/2025 08:50:12 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Integrante]    Script Date: 16/7/2025 08:50:12 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Integrante] ON 

INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (1, N'Mate', N'MateM', N'More', N'MrBeast', N'Pizza', N'Nike', N'San SIlencio', N'LBM', N'fotoMate.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (2, N'Tobi', N'TobiR', N'Mica', N'Ibai', N'Hamburguesas', N'Adidas', N'River', N'LBM', N'fotoTobi.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (3, N'Augus', N'AugusT', N'Nicki Nicole', N'Pimpeano', N'Milanesa con fideos', N'Puma', N'LBM FC', N'LBM', N'fotoAugus.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (4, N'Bart', N'AyCaramba', N'Rihanna', N'ElRubius', N'Donas', N'Krusty Brand', N'Springfield United', N'Caricaturas', N'bart.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (5, N'Bob', N'Calarmado', N'Selena Gomez', N'Mikecrack', N'Cangreburger', N'Pantalones Cuadrados Inc.', N'Fondo de Bikini FC', N'Caricaturas', N'bob.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (6, N'Bugs', N'BugsBu', N'Taylor Swift', N'Willyrex', N'Zanahorias', N'Acme', N'Toon Squad', N'Caricaturas', N'Bugs.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (7, N'Goku', N'Kamehameha', N'Emilia Clarke', N'TheGrefg', N'Ramen', N'Capsule Corp', N'Z Warriors', N'Caricaturas', N'Goku.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (8, N'Patricio', N'Bob', N'Margot Robbie', N'Vegetta777', N'Helado', N'StarWear', N'Bikini Bottom SC', N'Caricaturas', N'patricio.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (9, N'Scooby', N'Galletas', N'Megan Fox', N'Fernanfloo', N'Galletas de manteca', N'DogWear', N'Mystery Inc FC', N'Caricaturas', N'scooby.png')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (10, N'Shaggy', N'ScoobyGalletas', N'Emma Stone', N'Dross', N'Sándwich de mortadela', N'RetroStyle', N'Mystery Inc FC', N'Caricaturas', N'shaggy.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (11, N'Coscu', N'TitoCalderon', N'Cami Nair', N'Coscu', N'Milanesa con puré', N'Adidas', N'Argentina', N'Streamers', N'coscu.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (12, N'Momo', N'Momini', N'Lali Espósito', N'Momo', N'Papas Fritas', N'Nike', N'Boca Juniors', N'Streamers', N'momo.jiff')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (13, N'Pimpeano', N'PimpinelaLopez', N'Cazzu', N'Pimpeano', N'Tacos mexicanos', N'Supreme', N'River Plate', N'Streamers', N'pimpeano.jiff')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (14, N'Wos', N'Wrost', N'María Becerra', N'Wos', N'Tallarines con tuco', N'Nike', N'La Scaloneta FC', N'Streamers', N'wos.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (15, N'DePaul', N'Rodri34', N'Tini Stoessel', N'Luisito Comunica', N'Asado', N'Adidas', N'Argentina', N'Futbolistas', N'DePaul.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (16, N'Dibu', N'Eldibujo45', N'Gal Gadot', N'Jero Freixas', N'Empanadas de carne', N'Nike', N'Argentina', N'Futbolistas', N'dibu.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (17, N'DiMaria', N'Elfide*', N'Jorgelina Cardoso', N'Camilo', N'Fideos con salsa', N'Puma', N'Argentina', N'Futbolistas', N'DiMaria.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (18, N'Dybala', N'LaJoyita?', N'Oriana Sabatini', N'Ami Rodriguez', N'Pizza napolitana', N'Nike', N'Juventus', N'Futbolistas', N'dybala.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (19, N'Messi', N'Antonnella9', N'Antonela Roccuzzo', N'PewDiePie', N'Milanesas con papas', N'Adidas', N'Inter Miami', N'Futbolistas', N'messi.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (20, N'Scaloni', N'Scalo345', N'Carla Pereyra', N'LoconJuan', N'Asado con ensalada', N'Adidas', N'Argentina', N'Futbolistas', N'Scaloni.jpg')
INSERT [dbo].[Integrante] ([Id], [Nombre], [Contraseña], [AmorPlatonico], [YoutuberFav], [ComidaFav], [MarcaDeRopaFav], [EquipoDeFutbolFav], [Equipo], [Foto]) VALUES (21, N'Mini Pekka', N'Pankekes', N'Valquiria', N'Beniju', N'Pankekes', N'Clashvidad', N'Boquita', N'Caricaturas', N'MiniPekka.jpg')
SET IDENTITY_INSERT [dbo].[Integrante] OFF
GO
USE [master]
GO
ALTER DATABASE [InfoUsuario] SET  READ_WRITE 
GO
