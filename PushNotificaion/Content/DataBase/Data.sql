USE [master]
GO
/****** Object:  Database [MyPushNotification]    Script Date: 13/10/2020 5:14:59 PM ******/
CREATE DATABASE [MyPushNotification]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyPushNotification', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MyPushNotification.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyPushNotification_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MyPushNotification_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyPushNotification] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyPushNotification].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyPushNotification] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyPushNotification] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyPushNotification] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyPushNotification] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyPushNotification] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyPushNotification] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyPushNotification] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MyPushNotification] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyPushNotification] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyPushNotification] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyPushNotification] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyPushNotification] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyPushNotification] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyPushNotification] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyPushNotification] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyPushNotification] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MyPushNotification] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyPushNotification] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyPushNotification] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyPushNotification] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyPushNotification] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyPushNotification] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyPushNotification] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyPushNotification] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyPushNotification] SET  MULTI_USER 
GO
ALTER DATABASE [MyPushNotification] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyPushNotification] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyPushNotification] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyPushNotification] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MyPushNotification]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 13/10/2020 5:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [varchar](100) NOT NULL,
	[ContactNo] [varchar](50) NOT NULL,
	[AddedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (1, N'cuong', N'2564', CAST(0x0000AC5301156958 AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (2, N'cuong2', N'2564', CAST(0x0000AC53011572AD AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (3, N'cuong3', N'2564', CAST(0x0000AC530115790F AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (4, N'cuong3', N'2564', CAST(0x0000AC530115C196 AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (5, N'cuong3', N'2564', CAST(0x0000AC5301173212 AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (6, N'cuong3', N'2564', CAST(0x0000AC53011AA8F1 AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (7, N'cuong3', N'2564', CAST(0x0000AC53011AC368 AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (8, N'cuong3', N'2564', CAST(0x0000AC53011AC49B AS DateTime))
INSERT [dbo].[Contacts] ([ContactID], [ContactName], [ContactNo], [AddedOn]) VALUES (9, N'cuong3', N'2564', CAST(0x0000AC53011AC5AF AS DateTime))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
USE [master]
GO
ALTER DATABASE [MyPushNotification] SET  READ_WRITE 
GO
